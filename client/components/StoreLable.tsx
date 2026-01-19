"use client";

export default function StatusLabelBox1({ item }: { item: any }) {
  return (
    <div className="w-[150px] border-2 border-black bg-white text-[11px] text-center">
      <div className="border-b-2 border-black py-2 font-semibold">
        {item.styleNo}
      </div>

      <div className="border-b-2 border-black py-2">
        {item.size}
      </div>

      <div className="border-b-2 border-black py-2 uppercase">
        {item.color}
      </div>

      <div className="border-b-2 border-black py-2 px-1 font-semibold break-words">
        {item.purchaseOrderNo}
      </div>

      {item.barcode && (
        <div className="py-2 flex justify-center">
          <img
            src={`https://bwipjs-api.metafloor.com/?bcid=code128&text=${item.barcode}&scale=2&height=8&includetext=false`}
            width={120}
            height={40}
          />
        </div>
      )}
    </div>
  );
}