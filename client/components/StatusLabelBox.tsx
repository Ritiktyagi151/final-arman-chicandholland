// "use client";

// export default function StatusLabelBox({ item }: { item: any }) {
//   return (
//     <div className="w-[150px] border-2 border-black bg-white text-[11px] text-center">
//       <div className="border-b-2 border-black py-2 font-semibold">
//         {item.styleNo}
//       </div>

//       <div className="border-b-2 border-black py-2">
//         {item.size}
//       </div>

//       <div className="border-b-2 border-black py-2 uppercase">
//         {item.color}
//       </div>

//       <div className="border-b-2 border-black py-2 px-1 font-semibold break-words">
//         {item.purchaseOrderNo}
//       </div>

//       {item.barcode && (
//         <div className="py-2 flex justify-center">
//           <img
//             src={`https://bwipjs-api.metafloor.com/?bcid=code128&text=${item.barcode}&scale=2&height=8&includetext=false`}
//             width={120}
//             height={40}
//           />
//         </div>
//       )}
//     </div>
//   );
// }
"use client";

export default function StatusLabelBox({ item }: { item: any }) {
  return (
    <div className="w-[210px] border-2 border-gray-800 bg-gradient-to-b from-white to-gray-50 rounded-lg shadow-lg overflow-hidden">
      {/* Header with style number */}
      <div className="bg-gradient-to-r from-gray-900 to-gray-700 text-white py-3 px-3 text-center">
        <div className="text-sm font-bold tracking-wide">{item.styleNo}</div>
        {/* <div className="text-[10px] text-gray-300 mt-1">STYLE NO.</div> */}
      </div>

      {/* Main details container */}
      <div className="p-3">
        {/* Size and Color in row */}
        <div className="flex justify-between mb-3">
          <div className="text-center">
            <div className="text-xs font-semibold text-gray-500 mb-1">SIZE</div>
            <div className="text-lg font-bold text-gray-800 bg-gray-100 py-1 px-3 rounded-md border border-gray-300">
              {item.size}
            </div>
          </div>
          <div className="text-center">
            <div className="text-xs font-semibold text-gray-500 mb-1">COLOR</div>
            <div className="text-lg font-bold text-gray-800 bg-gray-100 py-1 px-3 rounded-md border border-gray-300 uppercase">
              {item.color}
            </div>
          </div>
        </div>

        {/* PO Number with highlight */}
        <div className="mb-4">
          <div className="text-xs font-semibold text-gray-500 mb-2 text-center">PURCHASE ORDER</div>
          <div className="bg-yellow-50 border-2 border-yellow-300 rounded-lg py-2 px-3 text-center">
            <div className="text-sm font-bold text-gray-900 break-all">{item.purchaseOrderNo}</div>
          </div>
        </div>

        {/* Barcode with improved styling */}
        {item.barcode && (
          <div className="mt-4 pt-4 border-t border-gray-200">
            <div className="text-center mb-2">
              <div className="text-xs font-semibold text-gray-500">SCAN TO VERIFY</div>
              <div className="text-[10px] text-gray-400">ITEM ID: {item.barcode}</div>
            </div>
            
            <div className="bg-white p-3 rounded-lg border border-gray-300 shadow-inner">
              <img
  src={`https://bwipjs-api.metafloor.com/?bcid=code128&text=${encodeURIComponent(
    item.barcode
  )}&scale=2&height=18&includetext=false`}
  alt="barcode"
  style={{
    display: "block",
    width: "100%",
    maxWidth: "160px",
    height: "auto",
    imageRendering: "pixelated", // 🔥 CRITICAL
  }}
/>

            </div>
            
            {/* Barcode footer */}
            <div className="flex justify-between text-[9px] text-gray-500 mt-2 px-1">
              {/* <span>CODE128</span> */}
              <span>✓ VERIFIED</span>
            </div>
          </div>
        )}
      </div>

      {/* Footer */}
      <div className="bg-gray-800 text-white text-[8px] py-1 px-3 text-center">
        <div className="flex justify-between">
          <span>Chic&Holland</span>
          <span>{new Date().toLocaleDateString('en-US', { 
            month: 'short', 
            day: '2-digit',
            year: 'numeric'
          })}</span>
        </div>
      </div>
    </div>
  );
}