"use client";

import { useState, useRef } from "react";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { toast } from "sonner";
import { QrReader } from "react-qr-reader";
import { API_URL } from "@/lib/constants";

export default function StoreQRScanPage() {
  const [barcode, setBarcode] = useState("");
  const [scannedData, setScannedData] = useState<any>(null);
  const [scanLock, setScanLock] = useState(false);
  const inputRef = useRef<HTMLInputElement>(null);

  const fetchBarcode = async (code: string) => {
    const res = await fetch(
      `${API_URL}/orders/store-scan/${encodeURIComponent(code)}`
    );
    const r = await res.json();
    if (r.success) setScannedData({ data: r.data });
  };

  // 🔥 EXACT RETAILER STYLE
  const handleScan = async (data: string | null) => {
    if (!data || scanLock) return;

    setScanLock(true);
    setBarcode(data);

    try {
      const res = await fetch(`${API_URL}/orders/store-scan-update`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ barcode: data }),
      });

      const r = await res.json();

      if (!r.success) {
        toast.error(r.message);
      } else {
        toast.success(`Stage Updated: ${r.nextStage}`);
        await fetchBarcode(data);
      }
    } catch {
      toast.error("Scan failed");
    }

    setBarcode("");
    inputRef.current?.focus();
    setTimeout(() => setScanLock(false), 1500);
  };

  return (
    <div className="p-6">
      <h1 className="text-xl font-bold mb-4">📦 Store Barcode Scanner</h1>

      <QrReader
        onResult={(r) => r?.text && handleScan(r.text)}
        constraints={{ facingMode: "environment" }}
      />

      <div className="mt-4">
        <Input
          ref={inputRef}
          placeholder="Enter barcode manually"
          value={barcode}
          onChange={(e) => setBarcode(e.target.value)}
        />
        <Button onClick={() => handleScan(barcode)}>Process</Button>
      </div>

      {scannedData && (
        <Card className="mt-6 p-4">
          <h2 className="font-semibold">{scannedData.data.styleNo}</h2>
          <p>Order: {scannedData.data.purchaeOrderNo}</p>
          <p>Status Flow working ✔️</p>
        </Card>
      )}
    </div>
  );
}
