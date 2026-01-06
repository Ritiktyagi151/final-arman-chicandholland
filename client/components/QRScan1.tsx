"use client";

import { useEffect, useState, useRef } from "react";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { toast } from "sonner";
import { QrReader } from "react-qr-reader";
import { API_URL } from "@/lib/constants";
import WebLabelBox from "@/components/WebLabelBox";

export default function QRScanPage() {
  const [barcode, setBarcode] = useState("");
  const [result, setResult] = useState<any>(null);
  const inputRef = useRef<any>(null);

  // Autofocus on load
  useEffect(() => {
    if (inputRef.current) inputRef.current.focus();
  }, []);

  // 🔥 AUTO SCAN — AUTO PROCESS
  const handleScan = async (data: string | null) => {
    if (data && data !== barcode) {
      setBarcode(data);
      await processBarcode(data);
    }
  };

  // 🔥 Process barcode (fresh → if fail → stock)
  const processBarcode = async (code: string) => {
    try {
      // 1️⃣ Fresh order scan API
      let res = await fetch(`${API_URL}/scan/scan`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ barcode: code }),
      });

      let json = await res.json();

      // ❗ If fresh failed → try stock scan
      if (!json.success) {
        res = await fetch(`${API_URL}/scan/stock/scan`, {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ barcode: code }),
        });
        json = await res.json();
      }

      if (json.success) {
        toast.success(`Stage Updated: ${json.nextStage}`);
        setResult(json);
      } else {
        toast.error(json.message || "Invalid Barcode");
      }
    } catch {
      toast.error("Something went wrong");
    }

    setBarcode("");
    if (inputRef.current) inputRef.current.focus();
  };

  return (
    <div className="p-6">
      <h1 className="text-xl font-bold mb-4">📦 Barcode Scan (Auto Stage Update)</h1>

      {/* CAMERA SCANNER */}
      <div className="w-full max-w-md">
        <QrReader
          onResult={(result) => result?.text && handleScan(result.text)}
          constraints={{ facingMode: "environment" }}
          containerStyle={{ width: "100%" }}
        />
      </div>

      {/* Manual Input */}
      <div className="mt-4">
        <Input
          ref={inputRef}
          placeholder="Enter barcode manually"
          value={barcode}
          onChange={(e) => setBarcode(e.target.value)}
          className="mb-3"
        />
        <Button onClick={() => processBarcode(barcode)}>Process</Button>
      </div>

      {/* RESULT CARD */}
      {result && (
        <Card className="mt-6 p-4 border-2">
          <h2 className="text-lg font-semibold">
            {result.success ? "✔ Success" : "❌ Failed"}
          </h2>

          {result.success ? (
            <>
              <p className="mt-2 text-sm">Barcode: {result.barcode}</p>
              <p>Previous Stage: {result.currentStage || "---"}</p>
              <p className="font-bold text-green-600 text-lg">
                Updated To: {result.nextStage}
              </p>
            </>
          ) : (
            <p className="text-red-600 mt-2">{result.message}</p>
          )}

          {/* LABEL BOX SHOW */}
          {result.success && (
            <div className="mt-6 flex justify-center">
              <WebLabelBox
                quantity={1}
                styleNo={result.styleNo || "N/A"}
                size={result.size || "N/A"}
                po={result.po || "N/A"}
                color={result.color || "N/A"}
                barcode={result.barcode}
              />
            </div>
          )}
        </Card>
      )}
    </div>
  );
}
