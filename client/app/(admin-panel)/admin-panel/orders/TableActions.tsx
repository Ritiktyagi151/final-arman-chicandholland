// // "use client";

// // import { Button } from "@/components/custom/button";
// // import { File, Mail } from "lucide-react";
// // import { useEffect, useState } from "react";
// // import { toast } from "sonner";
// // import useHttp from "@/lib/hooks/usePost";
// // import {
// //   Sheet,
// //   SheetContent,
// //   SheetDescription,
// //   SheetHeader,
// //   SheetTitle,
// //   SheetTrigger,
// // } from "@/components/ui/sheet";
// // import { API_URL } from "@/lib/constants";
// // import {
// //   getProductColorsCheck,
// //   getProductColours,
// //   getRetailerAdminFreshOrderDetails,
// //   getRetailerAdminStockOrderDetails,
// // } from "@/lib/data";
// // import { convertWebPToJPG } from "../request/StockAcceptedForm";
// // // import { Reject } from "../order-list/Reject"; // still unused, keep/comment as needed

// // const TableActions = ({ data }: { data: any }) => {
// //   const [open, setOpen] = useState(false);

// //   const [previewData, setData] = useState<any>(null);
// //   const [orderDetails, setOrderDetails] = useState<any>(null);
// //   const [normalOrder, setNormalOrder] = useState<any>(null);

// //   const {
// //     error,
// //     executeAsync: Stock,
// //     loading,
// //   } =  useHttp("/stock-email", "POST", true, false);

// //   // ------------------- STORE / ONLINE ORDERS (regular) -------------------
// //   const fetchData = () => {
// //     fetch(API_URL + `/orders/orderDetails?orderId=${data.id}`).then(
// //       async (res) => {
// //         const colours = await getProductColours({});
// //         const dataRes = await res.json();

// //         const dataOrder = dataRes.orders[0];

// //         const colors = colours.productColours;
// //         const getColorName = (hexcode: string) =>
// //           hexcode !== "SAS"
// //             ? colors.find((colour: any) => colour.hexcode === hexcode)?.name ||
// //               hexcode
// //             : "SAS";

// //         const loop = dataOrder.styles.reduce((acc: any[], currentItem: any) => {
// //           const currentReturnValue = {
// //             quantity:
// //               currentItem.customSizesQuantity.length < 1
// //                 ? currentItem.quantity
// //                 : currentItem.customSizesQuantity.reduce(
// //                     (sum: any, item: any) => sum + Number(item.quantity),
// //                     0,
// //                   ),
// //             size:
// //               currentItem.customSizesQuantity.length < 1
// //                 ? `${currentItem.size}/${currentItem.quantity}`
// //                 : currentItem.customSizesQuantity
// //                     .map((item: any) => `${item.size}/${item.quantity}`)
// //                     .join(", "),
// //             styleNo: currentItem.styleNo,
// //             size_country: currentItem.sizeCountry,
// //             comments: currentItem.comments.join(", "),
// //             color: currentItem.colorType,
// //             image: currentItem.convertedFirstProductImage,
// //             meshColor:
// //               currentItem.mesh_color == "SAS"
// //                 ? "SAS "
// //                 : getColorName(currentItem.mesh_color),
// //             beadingColor:
// //               currentItem.beading_color == "SAS"
// //                 ? "SAS "
// //                 : getColorName(currentItem.beading_color),
// //             lining: currentItem.lining,
// //             liningColor:
// //               currentItem.lining_color == "SAS"
// //                 ? "SAS "
// //                 : getColorName(currentItem.lining_color),
// //             refImg: currentItem.photoUrls,
// //           };

// //           const existingItemIndex = acc.findIndex(
// //             (item) =>
// //               item.styleNo === currentReturnValue.styleNo &&
// //               item.meshColor === currentReturnValue.meshColor &&
// //               item.beadingColor === currentReturnValue.beadingColor &&
// //               item.lining === currentReturnValue.lining &&
// //               item.liningColor === currentReturnValue.liningColor &&
// //               item.color === currentReturnValue.color &&
// //               item.comments === currentReturnValue.comments &&
// //               JSON.stringify(item.refImg) ===
// //                 JSON.stringify(currentReturnValue.refImg),
// //           );

// //           if (existingItemIndex >= 0) {
// //             acc[existingItemIndex].quantity += currentReturnValue.quantity;
// //             acc[existingItemIndex].size = `${acc[existingItemIndex].size}, ${currentReturnValue.size}`;
// //           } else {
// //             acc.push(currentReturnValue);
// //           }

// //           return acc;
// //         }, []);

// //         const preData = {
// //           customerId: dataOrder.customer.id,
// //           manufacturingEmailAddress: dataOrder.manufacturingEmailAddress,
// //           orderCancellationDate: dataOrder.orderCancellationDate,
// //           orderReceivedDate: dataOrder.orderReceivedDate,
// //           orderType: dataOrder.orderType,
// //           purchaseOrderNo: dataOrder.purchaeOrderNo,
// //           details: loop,
// //         };

// //         setNormalOrder(preData);
// //         setOrderDetails(dataRes);
// //       },
// //     );
// //   };

// //   // ------------------- RETAILER ORDERS (stock / fresh) -------------------
// //   const fetchDetails = async () => {
// //     const colours = await getProductColours({});

// //     const colors = colours.productColours;
// //     const getColorName = (hexcode: string) =>
// //       hexcode !== "SAS"
// //         ? colors.find((colour: any) => colour.hexcode === hexcode)?.name ||
// //           hexcode
// //         : "SAS";

// //     const productColorSAS = async (id: number) => {
// //       const res = await getProductColorsCheck(id);
// //       return res.data;
// //     };

// //     try {
// //       if (data.orderType == "Fresh") {
// //         const fresh = await getRetailerAdminFreshOrderDetails(
// //           data.favouriteOrder.id,
// //           1,
// //         );

// //         const details = await Promise.all(
// //           fresh.data.map(async (i: any) => {
// //             const refImgPromises = i.reference_image
// //               ? JSON.parse(i.reference_image).map((item: any) =>
// //                   convertWebPToJPG(item),
// //                 )
// //               : [];
// //             const standardColors = await productColorSAS(i.product_id);

// //             const isMeshColorSAS =
// //               i.mesh_color === standardColors.mesh_color
// //                 ? `SAS( ${getColorName(standardColors.mesh_color)} )`
// //                 : getColorName(i.mesh_color);
// //             const isBeadingColorSAS =
// //               i.beading_color === standardColors.beading_color
// //                 ? `SAS( ${getColorName(standardColors.beading_color)} )`
// //                 : getColorName(i.beading_color);
// //             const isLiningTypeSAS =
// //               i.lining === standardColors.lining
// //                 ? `SAS(${standardColors.lining})`
// //                 : i.lining;
// //             const isLiningColorSAS =
// //               i.lining_color === standardColors.lining_color
// //                 ? `SAS( ${getColorName(standardColors.lining_color)} )`
// //                 : getColorName(i.lining_color);

// //             return {
// //               quantity: i.quantity,
// //               size: `${i.size}/${i.quantity}`,
// //               styleNo: i.productCode,
// //               comments: i.comments,
// //               color: i.color,
// //               size_country: i.size_country,
// //               image: await convertWebPToJPG(i.image),
// //               refImg: await Promise.all(refImgPromises),
// //               meshColor: isMeshColorSAS,
// //               beadingColor: isBeadingColorSAS,
// //               lining: isLiningTypeSAS,
// //               liningColor: isLiningColorSAS,
// //             };
// //           }),
// //         );

// //         const combinedDetails = (details as any[]).reduce(
// //           (acc: any[], current: any) => {
// //             const comparisonKey = `${current.styleNo}-${current.meshColor}-${current.beadingColor}-${current.lining}-${current.liningColor}-${current.color}-${current.comments}`;

// //             const existingItemIndex = acc.findIndex((item: any) => {
// //               const itemKey = `${item.styleNo}-${item.meshColor}-${item.beadingColor}-${item.lining}-${item.liningColor}-${item.color}-${item.comments}`;
// //               return itemKey === comparisonKey;
// //             });

// //             if (existingItemIndex !== -1) {
// //               const existingItem = acc[existingItemIndex];
// //               const totalQuantity =
// //                 Number(existingItem.quantity) + Number(current.quantity);
// //               existingItem.quantity = totalQuantity;
// //               existingItem.size = `${existingItem.size}, ${current.size}`;
// //               existingItem.refImg = [
// //                 ...new Set([...existingItem.refImg, ...current.refImg]),
// //               ];
// //               existingItem.image = current.image;
// //             } else {
// //               acc.push(current);
// //             }

// //             return acc;
// //           },
// //           [],
// //         );

// //         const preData: any = {
// //           manufacturingEmailAddress: data.manufacturingEmailAddress,
// //           orderCancellationDate: data.orderCancellationDate,
// //           orderReceivedDate: data.orderReceivedDate,
// //           purchaseOrderNo: data.purchaeOrderNo,
// //           name: data.retailer_name,
// //           email: data.retailer_email,
// //           details: combinedDetails,
// //           orderType: "Fresh",
// //           styleNo: fresh.data[0]?.productCode || "",
// //         };

// //         setData(preData);
// //       } else {
// //         const stock: any = await getRetailerAdminStockOrderDetails(
// //           data.Stock_order.id,
// //           1,
// //         );

// //         const productColorSASCheck = await productColorSAS(
// //           Number(stock.details[0].product_id),
// //         );

// //         const isMeshColorSAS =
// //           stock.details[0].mesh_color === productColorSASCheck.mesh_color
// //             ? `SAS( ${getColorName(productColorSASCheck.mesh_color)} )`
// //             : getColorName(stock.details[0].mesh_color);
// //         const isBeadingColorSAS =
// //           stock.details[0].beading_color === productColorSASCheck.beading_color
// //             ? `SAS( ${getColorName(productColorSASCheck.beading_color)} )`
// //             : getColorName(stock.details[0].beading_color);
// //         const isLiningTypeSAS =
// //           stock.details[0].lining === productColorSASCheck.lining
// //             ? `SAS(${productColorSASCheck.lining})`
// //             : stock.details[0].lining;
// //         const isLiningColorSAS =
// //           stock.details[0].lining_color === productColorSASCheck.lining_color
// //             ? `SAS( ${getColorName(productColorSASCheck.lining_color)} )`
// //             : getColorName(stock.details[0].lining_color);

// //         const preData: any = {
// //           manufacturingEmailAddress: data.manufacturingEmailAddress,
// //           orderCancellationDate: data.orderCancellationDate,
// //           orderReceivedDate: data.received_date,
// //           orderType: "Stock",
// //           purchaseOrderNo: data.purchaeOrderNo,
// //           details: [
// //             {
// //               quantity: stock.details[0].quantity,
// //               size: `${stock.details[0].size}/${stock.details[0].quantity}`,
// //               styleNo: stock.details[0].productCode,
// //               color: "Stock",
// //               size_country: stock.details[0].size_country,
// //               image: await convertWebPToJPG(stock.details[0]?.image),
// //               meshColor: isMeshColorSAS,
// //               beadingColor: isBeadingColorSAS,
// //               lining: isLiningTypeSAS,
// //               liningColor: isLiningColorSAS,
// //             },
// //           ],
// //         };

// //         setData(preData);
// //       }
// //     } catch (error) {
// //       console.log(error);
// //     }
// //   };

// //   const sent = async () => {
// //     const res = await Stock({ orderData: previewData });

// //     if (res.success) {
// //       toast.success("Email sent successfully");
// //     } else {
// //       toast.error("Something went wrong");
// //     }
// //   };

// //   // PPT download helper
// //   const downloadPpt = async (orderData: any) => {
// //     if (!orderData) return;

// //     try {
// //       const res = await fetch("/api/fresh-order-ppt", {
// //         method: "POST",
// //         headers: { "Content-Type": "application/json" },
// //         body: JSON.stringify({ orderData }),
// //       });

// //       if (!res.ok) {
// //         throw new Error("Failed to generate PPT");
// //       }

// //       const blob = await res.blob();
// //       const url = window.URL.createObjectURL(blob);
// //       const a = document.createElement("a");
// //       a.href = url;
// //       a.download = `${orderData.purchaseOrderNo || "order"}.pptx`;
// //       a.click();
// //       window.URL.revokeObjectURL(url);
// //     } catch (err) {
// //       console.error(err);
// //       toast.error("Failed to download PPT");
// //     }
// //   };

// //   useEffect(() => {
// //     if (!open) return;
// //   }, [open]);

// //   return (
// //     <div className="my-2 flex gap-4">
// //       <Sheet open={open} onOpenChange={setOpen}>
// //         <SheetTrigger asChild>
// //           {data.orderSource == "regular" ? (
// //             <Button
// //               variant={"default"}
// //               className="col-span-2"
// //               onClick={fetchData}
// //             >
// //               Preview / Mail <File className="ml-2" />
// //             </Button>
// //           ) : (
// //             <Button
// //               variant={"default"}
// //               className="col-span-2"
// //               onClick={fetchDetails}
// //             >
// //               Preview / Mail <File className="ml-2" />
// //             </Button>
// //           )}
// //         </SheetTrigger>
// //         <SheetContent className="min-w-[100%] overflow-y-auto">
// //           <SheetHeader>
// //             <SheetTitle>Order details PPT</SheetTitle>
// //             <SheetDescription>
// //               Send mail and download the order details as a PowerPoint file.
// //             </SheetDescription>
// //           </SheetHeader>

// //           {/* -------- REGULAR ORDERS -------- */}
// //           {data.orderSource == "regular" && (
// //             <>
// //               {orderDetails === null && <p>Loading...</p>}

// //               {orderDetails && orderDetails?.success && normalOrder && (
// //                 <>
// //                   <Button
// //                     className="mt-8 w-full"
// //                     onClick={async () => {
// //                       try {
// //                         const res = await Stock({
// //                           orderData: normalOrder,
// //                         });
// //                         if (res?.success) {
// //                           toast("Order details sent successfully", {
// //                             description:
// //                               "The order details has been successfully sent to the customer",
// //                           });
// //                         } else {
// //                           toast.error("Something went wrong", {
// //                             description: "Please try again later",
// //                           });
// //                         }
// //                       } catch (err) {
// //                         toast.error(
// //                           "Something went wrong, please try again later",
// //                           {
// //                             className: "bg-destructive",
// //                           },
// //                         );
// //                       }
// //                     }}
// //                     loading={loading}
// //                   >
// //                     Send Mail <Mail className="ml-2" />
// //                   </Button>

// //                   <div className="mt-4 flex justify-end">
// //                     <Button
// //                       type="button"
// //                       className="rounded bg-purple-600 px-4 py-2 text-white shadow"
// //                       onClick={() => downloadPpt(normalOrder)}
// //                     >
// //                       Download PPT
// //                     </Button>
// //                   </div>

// //                   {/* PREVIEW BLOCK FOR REGULAR ORDER */}
// //                   <div className="mt-6 rounded-lg border p-4">
// //                     <h3 className="mb-2 text-lg font-semibold">
// //                       Order Preview
// //                     </h3>
// //                     <div className="mb-4 grid gap-2 text-sm md:grid-cols-2">
// //                       <p>
// //                         <span className="font-medium">PO No:</span>{" "}
// //                         {normalOrder.purchaseOrderNo}
// //                       </p>
// //                       <p>
// //                         <span className="font-medium">Order Type:</span>{" "}
// //                         {normalOrder.orderType}
// //                       </p>
// //                       <p>
// //                         <span className="font-medium">Received:</span>{" "}
// //                         {normalOrder.orderReceivedDate
// //                           ? new Date(
// //                               normalOrder.orderReceivedDate,
// //                             ).toLocaleDateString()
// //                           : "-"}
// //                       </p>
// //                       <p>
// //                         <span className="font-medium">Shipping:</span>{" "}
// //                         {normalOrder.orderCancellationDate
// //                           ? new Date(
// //                               normalOrder.orderCancellationDate,
// //                             ).toLocaleDateString()
// //                           : "-"}
// //                       </p>
// //                     </div>

// //                     <div className="max-h-[400px] overflow-auto rounded-md border">
// //                       <table className="min-w-full text-xs md:text-sm">
// //                         <thead className="bg-gray-100">
// //                           <tr>
// //                             <th className="px-2 py-1 text-left">Style No</th>
// //                             <th className="px-2 py-1 text-left">Color</th>
// //                             <th className="px-2 py-1 text-left">Mesh</th>
// //                             <th className="px-2 py-1 text-left">Beading</th>
// //                             <th className="px-2 py-1 text-left">Lining</th>
// //                             <th className="px-2 py-1 text-left">Lining Color</th>
// //                             <th className="px-2 py-1 text-left">Size(s)</th>
// //                             <th className="px-2 py-1 text-left">Qty</th>
// //                             <th className="px-2 py-1 text-left">Comments</th>
// //                           </tr>
// //                         </thead>
// //                         <tbody>
// //                           {normalOrder.details.map((item: any, idx: number) => (
// //                             <tr
// //                               key={idx}
// //                               className={idx % 2 === 0 ? "bg-white" : "bg-gray-50"}
// //                             >
// //                               <td className="px-2 py-1">{item.styleNo}</td>
// //                               <td className="px-2 py-1">{item.color}</td>
// //                               <td className="px-2 py-1">{item.meshColor}</td>
// //                               <td className="px-2 py-1">{item.beadingColor}</td>
// //                               <td className="px-2 py-1">{item.lining}</td>
// //                               <td className="px-2 py-1">{item.liningColor}</td>
// //                               <td className="px-2 py-1">{item.size}</td>
// //                               <td className="px-2 py-1">{item.quantity}</td>
// //                               <td className="px-2 py-1">{item.comments}</td>
// //                             </tr>
// //                           ))}
// //                         </tbody>
// //                       </table>
// //                     </div>
// //                   </div>
// //                 </>
// //               )}
// //             </>
// //           )}

// //           {/* -------- RETAILER ORDERS -------- */}
// //           {data.orderSource == "retailer" && (
// //             <>
// //               {previewData && data.orderType !== "Fresh" && (
// //                 <>
// //                   <Button
// //                     className="mt-4 w-full"
// //                     onClick={sent}
// //                     loading={loading}
// //                   >
// //                     Mail
// //                   </Button>

// //                   <div className="mt-4 flex justify-end">
// //                     <Button
// //                       type="button"
// //                       className="rounded bg-purple-600 px-4 py-2 text-white shadow"
// //                       onClick={() => downloadPpt(previewData)}
// //                     >
// //                       Download PPT
// //                     </Button>
// //                   </div>

// //                   {/* PREVIEW BLOCK FOR RETAILER STOCK ORDER */}
// //                   <div className="mt-6 rounded-lg border p-4">
// //                     <h3 className="mb-2 text-lg font-semibold">
// //                       Retailer Order Preview
// //                     </h3>
// //                     <div className="mb-4 grid gap-2 text-sm md:grid-cols-2">
// //                       <p>
// //                         <span className="font-medium">PO No:</span>{" "}
// //                         {previewData.purchaseOrderNo}
// //                       </p>
// //                       <p>
// //                         <span className="font-medium">Order Type:</span>{" "}
// //                         {previewData.orderType}
// //                       </p>
// //                       <p>
// //                         <span className="font-medium">Received:</span>{" "}
// //                         {previewData.orderReceivedDate
// //                           ? new Date(
// //                               previewData.orderReceivedDate,
// //                             ).toLocaleDateString()
// //                           : "-"}
// //                       </p>
// //                       <p>
// //                         <span className="font-medium">Shipping:</span>{" "}
// //                         {previewData.orderCancellationDate
// //                           ? new Date(
// //                               previewData.orderCancellationDate,
// //                             ).toLocaleDateString()
// //                           : "-"}
// //                       </p>
// //                     </div>

// //                     <div className="max-h-[400px] overflow-auto rounded-md border">
// //                       <table className="min-w-full text-xs md:text-sm">
// //                         <thead className="bg-gray-100">
// //                           <tr>
// //                             <th className="px-2 py-1 text-left">Style No</th>
// //                             <th className="px-2 py-1 text-left">Color</th>
// //                             <th className="px-2 py-1 text-left">Mesh</th>
// //                             <th className="px-2 py-1 text-left">Beading</th>
// //                             <th className="px-2 py-1 text-left">Lining</th>
// //                             <th className="px-2 py-1 text-left">Lining Color</th>
// //                             <th className="px-2 py-1 text-left">Size(s)</th>
// //                             <th className="px-2 py-1 text-left">Qty</th>
// //                             <th className="px-2 py-1 text-left">Comments</th>
// //                           </tr>
// //                         </thead>
// //                         <tbody>
// //                           {previewData.details.map((item: any, idx: number) => (
// //                             <tr
// //                               key={idx}
// //                               className={idx % 2 === 0 ? "bg-white" : "bg-gray-50"}
// //                             >
// //                               <td className="px-2 py-1">{item.styleNo}</td>
// //                               <td className="px-2 py-1">{item.color}</td>
// //                               <td className="px-2 py-1">{item.meshColor}</td>
// //                               <td className="px-2 py-1">{item.beadingColor}</td>
// //                               <td className="px-2 py-1">{item.lining}</td>
// //                               <td className="px-2 py-1">{item.liningColor}</td>
// //                               <td className="px-2 py-1">{item.size}</td>
// //                               <td className="px-2 py-1">{item.quantity}</td>
// //                               <td className="px-2 py-1">{item.comments}</td>
// //                             </tr>
// //                           ))}
// //                         </tbody>
// //                       </table>
// //                     </div>
// //                   </div>
// //                 </>
// //               )}

// //               {data && data.orderType == "Fresh" && previewData && (
// //                 <>
// //                   <Button
// //                     className="mt-4 w-full"
// //                     onClick={sent}
// //                     loading={loading}
// //                   >
// //                     Mail
// //                   </Button>

// //                   <div className="mt-4 flex justify-end">
// //                     <Button
// //                       type="button"
// //                       className="rounded bg-purple-600 px-4 py-2 text-white shadow"
// //                       onClick={() => downloadPpt(previewData)}
// //                     >
// //                       Download PPT
// //                     </Button>
// //                   </div>

// //                   {/* PREVIEW BLOCK FOR RETAILER FRESH ORDER */}
// //                   <div className="mt-6 rounded-lg border p-4">
// //                     <h3 className="mb-2 text-lg font-semibold">
// //                       Retailer Fresh Order Preview
// //                     </h3>
// //                     <div className="mb-4 grid gap-2 text-sm md:grid-cols-2">
// //                       <p>
// //                         <span className="font-medium">PO No:</span>{" "}
// //                         {previewData.purchaseOrderNo}
// //                       </p>
// //                       <p>
// //                         <span className="font-medium">Order Type:</span>{" "}
// //                         {previewData.orderType}
// //                       </p>
// //                       <p>
// //                         <span className="font-medium">Received:</span>{" "}
// //                         {previewData.orderReceivedDate
// //                           ? new Date(
// //                               previewData.orderReceivedDate,
// //                             ).toLocaleDateString()
// //                           : "-"}
// //                       </p>
// //                       <p>
// //                         <span className="font-medium">Shipping:</span>{" "}
// //                         {previewData.orderCancellationDate
// //                           ? new Date(
// //                               previewData.orderCancellationDate,
// //                             ).toLocaleDateString()
// //                           : "-"}
// //                       </p>
// //                     </div>

// //                     <div className="max-h-[400px] overflow-auto rounded-md border">
// //                       <table className="min-w-full text-xs md:text-sm">
// //                         <thead className="bg-gray-100">
// //                           <tr>
// //                             <th className="px-2 py-1 text-left">Style No</th>
// //                             <th className="px-2 py-1 text-left">Color</th>
// //                             <th className="px-2 py-1 text-left">Mesh</th>
// //                             <th className="px-2 py-1 text-left">Beading</th>
// //                             <th className="px-2 py-1 text-left">Lining</th>
// //                             <th className="px-2 py-1 text-left">Lining Color</th>
// //                             <th className="px-2 py-1 text-left">Size(s)</th>
// //                             <th className="px-2 py-1 text-left">Qty</th>
// //                             <th className="px-2 py-1 text-left">Comments</th>
// //                           </tr>
// //                         </thead>
// //                         <tbody>
// //                           {previewData.details.map((item: any, idx: number) => (
// //                             <tr
// //                               key={idx}
// //                               className={idx % 2 === 0 ? "bg-white" : "bg-gray-50"}
// //                             >
// //                               <td className="px-2 py-1">{item.styleNo}</td>
// //                               <td className="px-2 py-1">{item.color}</td>
// //                               <td className="px-2 py-1">{item.meshColor}</td>
// //                               <td className="px-2 py-1">{item.beadingColor}</td>
// //                               <td className="px-2 py-1">{item.lining}</td>
// //                               <td className="px-2 py-1">{item.liningColor}</td>
// //                               <td className="px-2 py-1">{item.size}</td>
// //                               <td className="px-2 py-1">{item.quantity}</td>
// //                               <td className="px-2 py-1">{item.comments}</td>
// //                             </tr>
// //                           ))}
// //                         </tbody>
// //                       </table>
// //                     </div>
// //                   </div>
// //                 </>
// //               )}
// //             </>
// //           )}
// //         </SheetContent>
// //       </Sheet>
// //       {/* <Reject
// //         id={data.id}
// //         type={data.orderType == "Store" ? "Store" : "retailer"}
// //       /> */}
// //     </div>
// //   );
// // };

// // export default TableActions;

// "use client";

// import { Button } from "@/components/custom/button";
// import { File, Mail } from "lucide-react";
// import { useEffect, useState } from "react";
// import { toast } from "sonner";
// import useHttp from "@/lib/hooks/usePost";
// import {
//   Sheet,
//   SheetContent,
//   SheetDescription,
//   SheetHeader,
//   SheetTitle,
//   SheetTrigger,
// } from "@/components/ui/sheet";
// import { API_URL } from "@/lib/constants";
// import {
//   getProductColorsCheck,
//   getProductColours,
//   getRetailerAdminFreshOrderDetails,
//   getRetailerAdminStockOrderDetails,
// } from "@/lib/data";
// import { convertWebPToJPG } from "../request/StockAcceptedForm";
// // import { Reject } from "../order-list/Reject"; // still unused, keep/comment as needed

// const TableActions = ({ data }: { data: any }) => {
//   const [open, setOpen] = useState(false);

//   const [previewData, setData] = useState<any>(null);
//   const [orderDetails, setOrderDetails] = useState<any>(null);
//   const [normalOrder, setNormalOrder] = useState<any>(null);

//   const {
//     error,
//     executeAsync: Stock,
//     loading,
//   } =  useHttp("/stock-email", "POST", true, false);
//   const { executeAsync: fetchOrderDetails } = useHttp(
//   "/orders/orderDetails",
//   "GET",
//   true,
//   false
// );


//   // ------------------- STORE / ONLINE ORDERS (regular) -------------------
//   // const fetchData = () => {
//   //   fetch(API_URL + `/orders/orderDetails?orderId=${data.id}`).then(
//   //     async (res) => {
//   //       const colours = await getProductColours({});
//   //       const dataRes = await res.json();

//   //       const dataOrder = dataRes.orders[0];

//   //       const colors = colours.productColours;
//   //       const getColorName = (hexcode: string) =>
//   //         hexcode !== "SAS"
//   //           ? colors.find((colour: any) => colour.hexcode === hexcode)?.name ||
//   //             hexcode
//   //           : "SAS";

//   //       const loop = dataOrder.styles.reduce((acc: any[], currentItem: any) => {
//   //         const currentReturnValue = {
//   //           quantity:
//   //             currentItem.customSizesQuantity.length < 1
//   //               ? currentItem.quantity
//   //               : currentItem.customSizesQuantity.reduce(
//   //                   (sum: any, item: any) => sum + Number(item.quantity),
//   //                   0,
//   //                 ),
//   //           size:
//   //             currentItem.customSizesQuantity.length < 1
//   //               ? `${currentItem.size}/${currentItem.quantity}`
//   //               : currentItem.customSizesQuantity
//   //                   .map((item: any) => `${item.size}/${item.quantity}`)
//   //                   .join(", "),
//   //           styleNo: currentItem.styleNo,
//   //           size_country: currentItem.sizeCountry,
//   //           comments: currentItem.comments.join(", "),
//   //           color: currentItem.colorType,
//   //           image: currentItem.convertedFirstProductImage,
//   //           meshColor:
//   //             currentItem.mesh_color == "SAS"
//   //               ? "SAS "
//   //               : getColorName(currentItem.mesh_color),
//   //           beadingColor:
//   //             currentItem.beading_color == "SAS"
//   //               ? "SAS "
//   //               : getColorName(currentItem.beading_color),
//   //           lining: currentItem.lining,
//   //           liningColor:
//   //             currentItem.lining_color == "SAS"
//   //               ? "SAS "
//   //               : getColorName(currentItem.lining_color),
//   //           refImg: currentItem.photoUrls,
//   //         };

//   //         const existingItemIndex = acc.findIndex(
//   //           (item) =>
//   //             item.styleNo === currentReturnValue.styleNo &&
//   //             item.meshColor === currentReturnValue.meshColor &&
//   //             item.beadingColor === currentReturnValue.beadingColor &&
//   //             item.lining === currentReturnValue.lining &&
//   //             item.liningColor === currentReturnValue.liningColor &&
//   //             item.color === currentReturnValue.color &&
//   //             item.comments === currentReturnValue.comments &&
//   //             JSON.stringify(item.refImg) ===
//   //               JSON.stringify(currentReturnValue.refImg),
//   //         );

//   //         if (existingItemIndex >= 0) {
//   //           acc[existingItemIndex].quantity += currentReturnValue.quantity;
//   //           acc[existingItemIndex].size = `${acc[existingItemIndex].size}, ${currentReturnValue.size}`;
//   //         } else {
//   //           acc.push(currentReturnValue);
//   //         }

//   //         return acc;
//   //       }, []);

//   //       const preData = {
//   //         customerId: dataOrder.customer.id,
//   //         manufacturingEmailAddress: dataOrder.manufacturingEmailAddress,
//   //         orderCancellationDate: dataOrder.orderCancellationDate,
//   //         orderReceivedDate: dataOrder.orderReceivedDate,
//   //         orderType: dataOrder.orderType,
//   //         purchaseOrderNo: dataOrder.purchaeOrderNo,
//   //         details: loop,
//   //       };

//   //       setNormalOrder(preData);
//   //       setOrderDetails(dataRes);
//   //     },
//   //   );
//   // };
// const fetchData = async () => {
//   try {
//     const dataRes: any = await fetchOrderDetails({ orderId: data.id });

//     if (!dataRes || dataRes.success === false) {
//       toast.error(dataRes?.message || "Failed to load order details");
//       return;
//     }

//     const dataOrder = dataRes.orders?.[0];
//     if (!dataOrder) {
//       toast.error("Order not found for this ID");
//       return;
//     }

//     const colours = await getProductColours({});
//     const colors = colours.productColours;

//     const getColorName = (hex: string) =>
//       hex !== "SAS"
//         ? colors.find((c: any) => c.hexcode === hex)?.name || hex
//         : "SAS";

//     const loop = dataOrder.styles.reduce((acc: any[], current: any) => {
//       // 🔥 SAFE FIX FOR customSizesQuantity
//       const customSizes = Array.isArray(current.customSizesQuantity)
//         ? current.customSizesQuantity
//         : typeof current.customSizesQuantity === "string"
//           ? JSON.parse(current.customSizesQuantity || "[]")
//           : [];

//       const obj = {
//         quantity:
//           customSizes.length < 1
//             ? current.quantity
//             : customSizes.reduce(
//                 (sum: number, item: any) => sum + Number(item.quantity),
//                 0
//               ),
//         size:
//           customSizes.length < 1
//             ? `${current.size}/${current.quantity}`
//             : customSizes
//                 .map((item: any) => `${item.size}/${item.quantity}`)
//                 .join(", "),

//         styleNo: current.styleNo,
//         size_country: current.sizeCountry,
//         comments: Array.isArray(current.comments)
//           ? current.comments.join(", ")
//           : typeof current.comments === "string"
//           ? current.comments
//           : "",

//         color: current.colorType,
//         image: current.convertedFirstProductImage,

//         meshColor:
//           current.mesh_color === "SAS"
//             ? "SAS"
//             : getColorName(current.mesh_color),

//         beadingColor:
//           current.beading_color === "SAS"
//             ? "SAS"
//             : getColorName(current.beading_color),

//         lining: current.lining,
//         liningColor:
//           current.lining_color === "SAS"
//             ? "SAS"
//             : getColorName(current.lining_color),

//         refImg: current.photoUrls || [],
//       };

//       const match = acc.findIndex(
//         (i) =>
//           JSON.stringify({ ...i, refImg: undefined }) ===
//           JSON.stringify({ ...obj, refImg: undefined })
//       );

//       if (match >= 0) {
//         acc[match].quantity += obj.quantity;
//         acc[match].size += `, ${obj.size}`;
//       } else acc.push(obj);

//       return acc;
//     }, []);

//     const preData = {
//       customerId: dataOrder.customer.id,
//       manufacturingEmailAddress: dataOrder.manufacturingEmailAddress,
//       orderCancellationDate: dataOrder.orderCancellationDate,
//       orderReceivedDate: dataOrder.orderReceivedDate,
//       orderType: dataOrder.orderType,
//       purchaseOrderNo: dataOrder.purchaeOrderNo,
//       details: loop,
//     };

//     setNormalOrder(preData);
//     setOrderDetails(dataRes);
//   } catch (err: any) {
//     toast.error(err?.message || "Something went wrong while loading order");
//     console.error(err);
//   }
// };



//   // ------------------- RETAILER ORDERS (stock / fresh) -------------------
//   const fetchDetails = async () => {
//     const colours = await getProductColours({});

//     const colors = colours.productColours;
//     const getColorName = (hexcode: string) =>
//       hexcode !== "SAS"
//         ? colors.find((colour: any) => colour.hexcode === hexcode)?.name ||
//           hexcode
//         : "SAS";

//     const productColorSAS = async (id: number) => {
//       const res = await getProductColorsCheck(id);
//       return res.data;
//     };

//     try {
//       if (data.orderType == "Fresh") {
//         const fresh = await getRetailerAdminFreshOrderDetails(
//           data.favouriteOrder.id,
//           1,
//         );

//         const details = await Promise.all(
//           fresh.data.map(async (i: any) => {
//             const refImgPromises = i.reference_image
//               ? JSON.parse(i.reference_image).map((item: any) =>
//                   convertWebPToJPG(item),
//                 )
//               : [];
//             const standardColors = await productColorSAS(i.product_id);

//             const isMeshColorSAS =
//               i.mesh_color === standardColors.mesh_color
//                 ? `SAS( ${getColorName(standardColors.mesh_color)} )`
//                 : getColorName(i.mesh_color);
//             const isBeadingColorSAS =
//               i.beading_color === standardColors.beading_color
//                 ? `SAS( ${getColorName(standardColors.beading_color)} )`
//                 : getColorName(i.beading_color);
//             const isLiningTypeSAS =
//               i.lining === standardColors.lining
//                 ? `SAS(${standardColors.lining})`
//                 : i.lining;
//             const isLiningColorSAS =
//               i.lining_color === standardColors.lining_color
//                 ? `SAS( ${getColorName(standardColors.lining_color)} )`
//                 : getColorName(i.lining_color);

//             return {
//               quantity: i.quantity,
//               size: `${i.size}/${i.quantity}`,
//               styleNo: i.productCode,
//               comments: i.comments,
//               color: i.color,
//               size_country: i.size_country,
//               image: await convertWebPToJPG(i.image),
//               refImg: await Promise.all(refImgPromises),
//               meshColor: isMeshColorSAS,
//               beadingColor: isBeadingColorSAS,
//               lining: isLiningTypeSAS,
//               liningColor: isLiningColorSAS,
//             };
//           }),
//         );

//         const combinedDetails = (details as any[]).reduce(
//           (acc: any[], current: any) => {
//             const comparisonKey = `${current.styleNo}-${current.meshColor}-${current.beadingColor}-${current.lining}-${current.liningColor}-${current.color}-${current.comments}`;

//             const existingItemIndex = acc.findIndex((item: any) => {
//               const itemKey = `${item.styleNo}-${item.meshColor}-${item.beadingColor}-${item.lining}-${item.liningColor}-${item.color}-${item.comments}`;
//               return itemKey === comparisonKey;
//             });

//             if (existingItemIndex !== -1) {
//               const existingItem = acc[existingItemIndex];
//               const totalQuantity =
//                 Number(existingItem.quantity) + Number(current.quantity);
//               existingItem.quantity = totalQuantity;
//               existingItem.size = `${existingItem.size}, ${current.size}`;
//               existingItem.refImg = [
//                 ...new Set([...existingItem.refImg, ...current.refImg]),
//               ];
//               existingItem.image = current.image;
//             } else {
//               acc.push(current);
//             }

//             return acc;
//           },
//           [],
//         );

//         const preData: any = {
//           manufacturingEmailAddress: data.manufacturingEmailAddress,
//           orderCancellationDate: data.orderCancellationDate,
//           orderReceivedDate: data.orderReceivedDate,
//           purchaseOrderNo: data.purchaeOrderNo,
//           name: data.retailer_name,
//           email: data.retailer_email,
//           details: combinedDetails,
//           orderType: "Fresh",
//           styleNo: fresh.data[0]?.productCode || "",
//         };

//         setData(preData);
//       } else {
//         const stock: any = await getRetailerAdminStockOrderDetails(
//           data.Stock_order.id,
//           1,
//         );

//         const productColorSASCheck = await productColorSAS(
//           Number(stock.details[0].product_id),
//         );

//         const isMeshColorSAS =
//           stock.details[0].mesh_color === productColorSASCheck.mesh_color
//             ? `SAS( ${getColorName(productColorSASCheck.mesh_color)} )`
//             : getColorName(stock.details[0].mesh_color);
//         const isBeadingColorSAS =
//           stock.details[0].beading_color === productColorSASCheck.beading_color
//             ? `SAS( ${getColorName(productColorSASCheck.beading_color)} )`
//             : getColorName(stock.details[0].beading_color);
//         const isLiningTypeSAS =
//           stock.details[0].lining === productColorSASCheck.lining
//             ? `SAS(${productColorSASCheck.lining})`
//             : stock.details[0].lining;
//         const isLiningColorSAS =
//           stock.details[0].lining_color === productColorSASCheck.lining_color
//             ? `SAS( ${getColorName(productColorSASCheck.lining_color)} )`
//             : getColorName(stock.details[0].lining_color);

//         const preData: any = {
//           manufacturingEmailAddress: data.manufacturingEmailAddress,
//           orderCancellationDate: data.orderCancellationDate,
//           orderReceivedDate: data.received_date,
//           orderType: "Stock",
//           purchaseOrderNo: data.purchaeOrderNo,
//           details: [
//             {
//               quantity: stock.details[0].quantity,
//               size: `${stock.details[0].size}/${stock.details[0].quantity}`,
//               styleNo: stock.details[0].productCode,
//               color: "Stock",
//               size_country: stock.details[0].size_country,
//               image: await convertWebPToJPG(stock.details[0]?.image),
//               meshColor: isMeshColorSAS,
//               beadingColor: isBeadingColorSAS,
//               lining: isLiningTypeSAS,
//               liningColor: isLiningColorSAS,
//             },
//           ],
//         };

//         setData(preData);
//       }
//     } catch (error) {
//       console.log(error);
//     }
//   };

//   const sent = async () => {
//     const res = await Stock({ orderData: previewData });

//     if (res.success) {
//       toast.success("Email sent successfully");
//     } else {
//       toast.error("Something went wrong");
//     }
//   };

//   // PPT download helper
//   const downloadPpt = async (orderData: any) => {
//     if (!orderData) return;

//     try {
//       const res = await fetch("/api/fresh-order-ppt", {
//         method: "POST",
//         headers: { "Content-Type": "application/json" },
//         body: JSON.stringify({ orderData }),
//       });

//       if (!res.ok) {
//         throw new Error("Failed to generate PPT");
//       }

//       const blob = await res.blob();
//       const url = window.URL.createObjectURL(blob);
//       const a = document.createElement("a");
//       a.href = url;
//       a.download = `${orderData.purchaseOrderNo || "order"}.pptx`;
//       a.click();
//       window.URL.revokeObjectURL(url);
//     } catch (err) {
//       console.error(err);
//       toast.error("Failed to download PPT");
//     }
//   };

//   useEffect(() => {
//     if (!open) return;
//   }, [open]);

//   return (
//     <div className="my-2 flex gap-4">
//       <Sheet open={open} onOpenChange={setOpen}>
//         <SheetTrigger asChild>
//           {data.orderSource == "regular" ? (
//             <Button
//               variant={"default"}
//               className="col-span-2"
//               onClick={fetchData}
//             >
//               Preview / Mail <File className="ml-2" />
//             </Button>
//           ) : (
//             <Button
//               variant={"default"}
//               className="col-span-2"
//               onClick={fetchDetails}
//             >
//               Preview / Mail <File className="ml-2" />
//             </Button>
//           )}
//         </SheetTrigger>
//         <SheetContent className="min-w-[100%] overflow-y-auto">
//           <SheetHeader>
//             <SheetTitle>Order details PPT</SheetTitle>
//             <SheetDescription>
//               Send mail and download the order details as a PowerPoint file.
//             </SheetDescription>
//           </SheetHeader>

//           {/* -------- REGULAR ORDERS -------- */}
//           {data.orderSource == "regular" && (
//             <>
//               {orderDetails === null && <p>Loading...</p>}

//               {orderDetails && orderDetails?.success && normalOrder && (
//                 <>
//                   <Button
//                     className="mt-8 w-full"
//                     onClick={async () => {
//                       try {
//                         const res = await Stock({
//                           orderData: normalOrder,
//                         });
//                         if (res?.success) {
//                           toast("Order details sent successfully", {
//                             description:
//                               "The order details has been successfully sent to the customer",
//                           });
//                         } else {
//                           toast.error("Something went wrong", {
//                             description: "Please try again later",
//                           });
//                         }
//                       } catch (err) {
//                         toast.error(
//                           "Something went wrong, please try again later",
//                           {
//                             className: "bg-destructive",
//                           },
//                         );
//                       }
//                     }}
//                     loading={loading}
//                   >
//                     Send Mail <Mail className="ml-2" />
//                   </Button>

//                   <div className="mt-4 flex justify-end">
//                     <Button
//                       type="button"
//                       className="rounded bg-purple-600 px-4 py-2 text-white shadow"
//                       onClick={() => downloadPpt(normalOrder)}
//                     >
//                       Download PPT
//                     </Button>
//                   </div>

//                   {/* PREVIEW BLOCK FOR REGULAR ORDER */}
//                   <div className="mt-6 rounded-lg border p-4">
//                     <h3 className="mb-2 text-lg font-semibold">
//                       Order Preview
//                     </h3>
//                     <div className="mb-4 grid gap-2 text-sm md:grid-cols-2">
//                       <p>
//                         <span className="font-medium">PO No:</span>{" "}
//                         {normalOrder.purchaseOrderNo}
//                       </p>
//                       <p>
//                         <span className="font-medium">Order Type:</span>{" "}
//                         {normalOrder.orderType}
//                       </p>
//                       <p>
//                         <span className="font-medium">Received:</span>{" "}
//                         {normalOrder.orderReceivedDate
//                           ? new Date(
//                               normalOrder.orderReceivedDate,
//                             ).toLocaleDateString()
//                           : "-"}
//                       </p>
//                       <p>
//                         <span className="font-medium">Shipping:</span>{" "}
//                         {normalOrder.orderCancellationDate
//                           ? new Date(
//                               normalOrder.orderCancellationDate,
//                             ).toLocaleDateString()
//                           : "-"}
//                       </p>
//                     </div>

//                     <div className="max-h-[400px] overflow-auto rounded-md border">
//                       <table className="min-w-full text-xs md:text-sm">
//                         <thead className="bg-gray-100">
//                           <tr>
//                             <th className="px-2 py-1 text-left">Style No</th>
//                             <th className="px-2 py-1 text-left">Color</th>
//                             <th className="px-2 py-1 text-left">Mesh</th>
//                             <th className="px-2 py-1 text-left">Beading</th>
//                             <th className="px-2 py-1 text-left">Lining</th>
//                             <th className="px-2 py-1 text-left">Lining Color</th>
//                             <th className="px-2 py-1 text-left">Size(s)</th>
//                             <th className="px-2 py-1 text-left">Qty</th>
//                             <th className="px-2 py-1 text-left">Comments</th>
//                           </tr>
//                         </thead>
//                         <tbody>
//                           {normalOrder.details.map((item: any, idx: number) => (
//                             <tr
//                               key={idx}
//                               className={idx % 2 === 0 ? "bg-white" : "bg-gray-50"}
//                             >
//                               <td className="px-2 py-1">{item.styleNo}</td>
//                               <td className="px-2 py-1">{item.color}</td>
//                               <td className="px-2 py-1">{item.meshColor}</td>
//                               <td className="px-2 py-1">{item.beadingColor}</td>
//                               <td className="px-2 py-1">{item.lining}</td>
//                               <td className="px-2 py-1">{item.liningColor}</td>
//                               <td className="px-2 py-1">{item.size}</td>
//                               <td className="px-2 py-1">{item.quantity}</td>
//                               <td className="px-2 py-1">{item.comments}</td>
//                             </tr>
//                           ))}
//                         </tbody>
//                       </table>
//                     </div>
//                   </div>
//                 </>
//               )}
//             </>
//           )}

//           {/* -------- RETAILER ORDERS -------- */}
//           {data.orderSource == "retailer" && (
//             <>
//               {previewData && data.orderType !== "Fresh" && (
//                 <>
//                   <Button
//                     className="mt-4 w-full"
//                     onClick={sent}
//                     loading={loading}
//                   >
//                     Mail
//                   </Button>

//                   <div className="mt-4 flex justify-end">
//                     <Button
//                       type="button"
//                       className="rounded bg-purple-600 px-4 py-2 text-white shadow"
//                       onClick={() => downloadPpt(previewData)}
//                     >
//                       Download PPT
//                     </Button>
//                   </div>

//                   {/* PREVIEW BLOCK FOR RETAILER STOCK ORDER */}
//                   <div className="mt-6 rounded-lg border p-4">
//                     <h3 className="mb-2 text-lg font-semibold">
//                       Retailer Order Preview
//                     </h3>
//                     <div className="mb-4 grid gap-2 text-sm md:grid-cols-2">
//                       <p>
//                         <span className="font-medium">PO No:</span>{" "}
//                         {previewData.purchaseOrderNo}
//                       </p>
//                       <p>
//                         <span className="font-medium">Order Type:</span>{" "}
//                         {previewData.orderType}
//                       </p>
//                       <p>
//                         <span className="font-medium">Received:</span>{" "}
//                         {previewData.orderReceivedDate
//                           ? new Date(
//                               previewData.orderReceivedDate,
//                             ).toLocaleDateString()
//                           : "-"}
//                       </p>
//                       <p>
//                         <span className="font-medium">Shipping:</span>{" "}
//                         {previewData.orderCancellationDate
//                           ? new Date(
//                               previewData.orderCancellationDate,
//                             ).toLocaleDateString()
//                           : "-"}
//                       </p>
//                     </div>

//                     <div className="max-h-[400px] overflow-auto rounded-md border">
//                       <table className="min-w-full text-xs md:text-sm">
//                         <thead className="bg-gray-100">
//                           <tr>
//                             <th className="px-2 py-1 text-left">Style No</th>
//                             <th className="px-2 py-1 text-left">Color</th>
//                             <th className="px-2 py-1 text-left">Mesh</th>
//                             <th className="px-2 py-1 text-left">Beading</th>
//                             <th className="px-2 py-1 text-left">Lining</th>
//                             <th className="px-2 py-1 text-left">Lining Color</th>
//                             <th className="px-2 py-1 text-left">Size(s)</th>
//                             <th className="px-2 py-1 text-left">Qty</th>
//                             <th className="px-2 py-1 text-left">Comments</th>
//                           </tr>
//                         </thead>
//                         <tbody>
//                           {previewData.details.map((item: any, idx: number) => (
//                             <tr
//                               key={idx}
//                               className={idx % 2 === 0 ? "bg-white" : "bg-gray-50"}
//                             >
//                               <td className="px-2 py-1">{item.styleNo}</td>
//                               <td className="px-2 py-1">{item.color}</td>
//                               <td className="px-2 py-1">{item.meshColor}</td>
//                               <td className="px-2 py-1">{item.beadingColor}</td>
//                               <td className="px-2 py-1">{item.lining}</td>
//                               <td className="px-2 py-1">{item.liningColor}</td>
//                               <td className="px-2 py-1">{item.size}</td>
//                               <td className="px-2 py-1">{item.quantity}</td>
//                               <td className="px-2 py-1">{item.comments}</td>
//                             </tr>
//                           ))}
//                         </tbody>
//                       </table>
//                     </div>
//                   </div>
//                 </>
//               )}

//               {data && data.orderType == "Fresh" && previewData && (
//                 <>
//                   <Button
//                     className="mt-4 w-full"
//                     onClick={sent}
//                     loading={loading}
//                   >
//                     Mail
//                   </Button>

//                   <div className="mt-4 flex justify-end">
//                     <Button
//                       type="button"
//                       className="rounded bg-purple-600 px-4 py-2 text-white shadow"
//                       onClick={() => downloadPpt(previewData)}
//                     >
//                       Download PPT
//                     </Button>
//                   </div>

//                   {/* PREVIEW BLOCK FOR RETAILER FRESH ORDER */}
//                   <div className="mt-6 rounded-lg border p-4">
//                     <h3 className="mb-2 text-lg font-semibold">
//                       Retailer Fresh Order Preview
//                     </h3>
//                     <div className="mb-4 grid gap-2 text-sm md:grid-cols-2">
//                       <p>
//                         <span className="font-medium">PO No:</span>{" "}
//                         {previewData.purchaseOrderNo}
//                       </p>
//                       <p>
//                         <span className="font-medium">Order Type:</span>{" "}
//                         {previewData.orderType}
//                       </p>
//                       <p>
//                         <span className="font-medium">Received:</span>{" "}
//                         {previewData.orderReceivedDate
//                           ? new Date(
//                               previewData.orderReceivedDate,
//                             ).toLocaleDateString()
//                           : "-"}
//                       </p>
//                       <p>
//                         <span className="font-medium">Shipping:</span>{" "}
//                         {previewData.orderCancellationDate
//                           ? new Date(
//                               previewData.orderCancellationDate,
//                             ).toLocaleDateString()
//                           : "-"}
//                       </p>
//                     </div>

//                     <div className="max-h-[400px] overflow-auto rounded-md border">
//                       <table className="min-w-full text-xs md:text-sm">
//                         <thead className="bg-gray-100">
//                           <tr>
//                             <th className="px-2 py-1 text-left">Style No</th>
//                             <th className="px-2 py-1 text-left">Color</th>
//                             <th className="px-2 py-1 text-left">Mesh</th>
//                             <th className="px-2 py-1 text-left">Beading</th>
//                             <th className="px-2 py-1 text-left">Lining</th>
//                             <th className="px-2 py-1 text-left">Lining Color</th>
//                             <th className="px-2 py-1 text-left">Size(s)</th>
//                             <th className="px-2 py-1 text-left">Qty</th>
//                             <th className="px-2 py-1 text-left">Comments</th>
//                           </tr>
//                         </thead>
//                         <tbody>
//                           {previewData.details.map((item: any, idx: number) => (
//                             <tr
//                               key={idx}
//                               className={idx % 2 === 0 ? "bg-white" : "bg-gray-50"}
//                             >
//                               <td className="px-2 py-1">{item.styleNo}</td>
//                               <td className="px-2 py-1">{item.color}</td>
//                               <td className="px-2 py-1">{item.meshColor}</td>
//                               <td className="px-2 py-1">{item.beadingColor}</td>
//                               <td className="px-2 py-1">{item.lining}</td>
//                               <td className="px-2 py-1">{item.liningColor}</td>
//                               <td className="px-2 py-1">{item.size}</td>
//                               <td className="px-2 py-1">{item.quantity}</td>
//                               <td className="px-2 py-1">{item.comments}</td>
//                             </tr>
//                           ))}
//                         </tbody>
//                       </table>
//                     </div>
//                   </div>
//                 </>
//               )}
//             </>
//           )}
//         </SheetContent>
//       </Sheet>
//       {/* <Reject
//         id={data.id}
//         type={data.orderType == "Store" ? "Store" : "retailer"}
//       /> */}
//     </div>
//   );
// };

// export default TableActions;

"use client";

import { Button } from "@/components/custom/button";
import { File, Mail } from "lucide-react";
import { useEffect, useState } from "react";
import { toast } from "sonner";
import useHttp from "@/lib/hooks/usePost";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet";
import { PDFDownloadLink, PDFViewer } from "@react-pdf/renderer";
import FreshOrderPdf from "../request/FreshOrderPdf";
import { API_URL } from "@/lib/constants";
import {
  getProductColorsCheck,
  getProductColours,
  getRetailerAdminFreshOrderDetails,
  getRetailerAdminStockOrderDetails,
} from "@/lib/data";
import { convertWebPToJPG } from "../request/StockAcceptedForm";
import { downloadOrderPPT } from "@/lib/utils/exportPPT";

const TableActions = ({ data }: { data: any }) => {
  const [open, setOpen] = useState(false);
  const [previewData, setPreviewData] = useState<any>(null);
  const [orderDetails, setOrderDetails] = useState<any>(null);
  const [file, setFile] = useState<File | null>(null);
const [uploading, setUploading] = useState(false);


  const { executeAsync: Stock, loading } = useHttp(
    "/stock-email",
    "POST",
    true,
    false,
  );


  const fetchPPT = async (id: number) => {
  try {
    const res = await fetch(API_URL + `/upload-ppt/${id}`);
    const data = await res.json();

    if (data.success && data.ppt_path) {
      setPreviewData((prev: any) => ({
        ...prev,
        ppt_path: data.ppt_path,
      }));
    }
  } catch (error) {
    console.log("Error loading saved PPT:", error);
  }
};

  /** ********** STORE / ONLINE ORDERS ********** **/
  const fetchData = async () => {
    try {
      const colours = await getProductColours({});
      const res = await fetch(API_URL + `/orders/orderDetails?orderId=${data.id}`);
      const resData = await res.json();

      const order = resData.orders[0];
      const colors = colours.productColours;

      const getColorName = (hex: string) =>
        hex !== "SAS"
          ? colors.find((c: any) => c.hexcode === hex)?.name || hex
          : "SAS";

      const normalizeArray = (v: any) =>
        Array.isArray(v) ? v : v ? [v] : [];

      const details = order.styles.reduce((acc: any[], item: any) => {
        const sizes = Array.isArray(item.customSizesQuantity)
          ? item.customSizesQuantity
          : [];

        const d = {
          quantity:
            sizes.length === 0
              ? Number(item.quantity)
              : sizes.reduce((s: number, v: any) => s + Number(v.quantity || 0), 0),

          size:
            sizes.length === 0
              ? `${item.size}/${item.quantity}`
              : sizes.map((v: any) => `${v.size}/${v.quantity}`).join(", "),

          styleNo: item.styleNo,
            barcode: item.barcode,   // 🔥 सबसे ज़रूरी लाइन

          size_country: item.sizeCountry,
          comments: normalizeArray(item.comments).join(", "),
          color: item.colorType,
          image: item.convertedFirstProductImage,
          meshColor: item.mesh_color === "SAS" ? "SAS" : getColorName(item.mesh_color),
          beadingColor:
            item.beading_color === "SAS" ? "SAS" : getColorName(item.beading_color),
          lining: item.lining,
          liningColor:
            item.lining_color === "SAS"
              ? "SAS"
              : getColorName(item.lining_color),
          refImg: normalizeArray(item.photoUrls),
        };

        const exists = acc.find(
          (i) =>
            JSON.stringify({ ...i, refImg: undefined }) ===
            JSON.stringify({ ...d, refImg: undefined }),
        );

        if (exists) {
          exists.quantity += d.quantity;
          exists.size += `, ${d.size}`;
        } else {
          acc.push(d);
        }

        return acc;
      }, []);

      const formatted = {
          id: order.id, // 🔥 add this

        customerId: order.customer.id,
        manufacturingEmailAddress: order.manufacturingEmailAddress,
        orderCancellationDate: order.orderCancellationDate,
        orderReceivedDate: order.orderReceivedDate,
        orderType: order.orderType,
        purchaseOrderNo: order.purchaeOrderNo,
        details,
          ppt_path: order.ppt_path || "", // ➕ IMPORTANT

      };

      setPreviewData(formatted);
      setOrderDetails(resData);
      await fetchPPT(formatted.id);

      
    } catch (err) {
      toast.error("Failed to load order");
    }
  };

  /** ********** RETAILER ORDERS ********** **/
 /** ********** RETAILER ORDERS ********** **/
const fetchDetails = async () => {
  try {
    console.log("🚀 FETCH STARTED");

    const colours = await getProductColours({});
    const colors = colours.productColours;

    const getColorName = (hex: string) =>
      hex !== "SAS"
        ? colors.find((c: any) => c.hexcode === hex)?.name || hex
        : "SAS";

    const standard = async (id: number) =>
      (await getProductColorsCheck(id)).data;

    /** --------------------- FRESH ORDER --------------------- **/
    if (data.orderType === "Fresh") {
      console.log("📌 ORDER TYPE = FRESH");
      console.log("🆔 FAVOURITE ORDER ID =", data.favouriteOrder.id);

      const fresh = await getRetailerAdminFreshOrderDetails(
        data.favouriteOrder.id,
        1
      );

      console.log("📦 RAW FRESH ORDER DATA →", fresh.data);

      const details = await Promise.all(
        fresh.data.map(async (i: any) => {
          const std = await standard(i.product_id);

          /** 🔥 BARCODE CHECK */
          console.log(
            `🔍 STYLE ${i.styleNo} → BARCODE COMING?`,
            i.barcode ?? "❌ NOT FOUND"
          );

          return {
            quantity: i.quantity,
            size: `${i.size}/${i.quantity}`,
            styleNo: i.styleNo,

            /** 🔥 BARCODE HERE */
            barcode: i.barcode,

            comments: i.comments,
            color: i.color,
            size_country: i.size_country,
            image: await convertWebPToJPG(i.image),

            refImg: i.reference_image
              ? await Promise.all(
                  JSON.parse(i.reference_image).map((img: any) =>
                    convertWebPToJPG(img)
                  )
                )
              : [],

            meshColor:
              i.mesh_color === std.mesh_color
                ? `SAS(${getColorName(std.mesh_color)})`
                : getColorName(i.mesh_color),

            beadingColor:
              i.beading_color === std.beading_color
                ? `SAS(${getColorName(std.beading_color)})`
                : getColorName(i.beading_color),

            lining:
              i.lining === std.lining ? `SAS(${std.lining})` : i.lining,

            liningColor:
              i.lining_color === std.lining_color
                ? `SAS(${getColorName(std.lining_color)})`
                : getColorName(i.lining_color),
          };
        })
      );

      console.log("🧩 FINAL PARSED DETAILS →", details);

      setPreviewData({
        id: data.favouriteOrder.id,
        manufacturingEmailAddress: data.manufacturingEmailAddress,
        orderCancellationDate: data.orderCancellationDate,
        orderReceivedDate: data.orderReceivedDate,
        orderType: "Fresh",
        purchaseOrderNo: data.purchaeOrderNo,
        name: data.retailer_name,
        email: data.retailer_email,
        details,
        ppt_path: data.ppt_path || data.favouriteOrder.ppt_path || "",
      });

      await fetchPPT(data.favouriteOrder.id);

      /** 🔥 PREVIEW LOG */
      console.log("📄 FINAL PREVIEW DATA →", {
        ...previewData,
        details
      });

      /** ------------------- STOCK ORDER ------------------- **/
   /** ------------------- STOCK ORDER ------------------- **/
/** ------------------- STOCK ORDER ------------------- **/
} else {
  console.log("📌 ORDER TYPE = STOCK");
  console.log("🆔 STOCK ORDER ID =", data.Stock_order.id);

  const stock = await getRetailerAdminStockOrderDetails(
    data.Stock_order.id,
    1
  );

  console.log("📦 RAW STOCK ORDER DATA →", stock);

  // 🔥 ADD THESE 2 LINES
  console.log("📌 STOCK ORDER DETAILS →", stock.details);
  console.log("📌 BARCODE FOUND? →", stock.details?.[0]?.barcode);

  const d = stock.details[0];

  setPreviewData({
    id: data.Stock_order.id,
    manufacturingEmailAddress: data.manufacturingEmailAddress,
    orderCancellationDate: data.orderCancellationDate,
    orderReceivedDate: data.orderReceivedDate,
    orderType: "Stock",
    purchaseOrderNo: data.purchaeOrderNo,

    details: [
      {
        quantity: d.quantity,
        size: `${d.size}/${d.quantity}`,
        styleNo: d.productCode,

        // 🔥 BARCODE
        barcode: d.barcode,

        size_country: d.size_country,
        image: await convertWebPToJPG(d.image),
       color: d.color || "Stock",
    meshColor: d.mesh_color || "Stock",
    beadingColor: d.beading_color || "Stock",
    lining: d.lining || "Stock",
    liningColor: d.lining_color || "Stock",
      },
    ],

    ppt_path: d.ppt_path || data.ppt_path || "",
  });

  await fetchPPT(data.Stock_order.id);
}


  } catch (error) {
    console.error("❌ FAILED TO LOAD RETAILER ORDER", error);
    toast.error("Failed to load retailer order");
  }
};


  /** ********** SEND EMAIL ********** **/
  const sendMail = async () => {
    if (!previewData) return;
    const res = await Stock({ orderData: previewData });
    res?.success
      ? toast.success("Email sent successfully")
      : toast.error("Failed to send email");
  };

  return (
    <div className="my-2 flex gap-4">
      <Sheet open={open} onOpenChange={setOpen}>
        <SheetTrigger asChild>
          <Button
            onClick={data.orderSource === "regular" ? fetchData : fetchDetails}
          >
            Preview / Mail <File className="ml-2" />
          </Button>
        </SheetTrigger>

        <SheetContent className="min-w-full overflow-y-auto">
          <SheetHeader>
            <SheetTitle>Order Details PDF Preview</SheetTitle>
            <SheetDescription>
              This is what will be emailed to the customer.
            </SheetDescription>
          </SheetHeader>

          {!previewData && <p className="mt-8 text-center">Loading...</p>}

       {previewData && (
  <>
    

{/* 📌 Upload Custom PPT */}
<div className="mt-6 border p-4 rounded-lg bg-gray-50">
  <h3 className="text-md font-semibold mb-3">Upload Custom PPT</h3>

  <input
    type="file"
    accept=".pptx"
    className="block w-full text-sm border rounded p-2"
    onChange={(e) => setFile(e.target.files?.[0] || null)}
  />

  {file && (
    <p className="text-xs mt-2 text-gray-600">
      Selected: <strong>{file.name}</strong>
    </p>
  )}

  <Button
    disabled={!file || uploading}
    className="mt-3 w-full bg-purple-600 text-white"
    onClick={async () => {
      if (!file) return;
      setUploading(true);

      const orderId = previewData?.id || data?.id;
      if (!orderId) return toast.error("Order ID Missing!");

      const formData = new FormData();
      formData.append("ppt", file);
      formData.append("orderId", String(orderId));

      const res = await fetch(API_URL + "/upload-ppt", {
        method: "POST",
        body: formData,
      });

      const rp = await res.json();

      if (rp.success) {
        toast.success("PPT Uploaded Successfully!");

        // UI update (no need to open modal)
        setPreviewData((prev: any) => ({
          ...prev,
          ppt_path: rp.path,
        }));
      } else {
        toast.error(rp.message || "Upload Failed");
      }

      setUploading(false);
    }}
  >
    {uploading ? "Uploading..." : "Upload PPT"}
  </Button>

  {/* 🔥 Always visible section */}
  {previewData?.ppt_path && (
    <div className="mt-4 p-3 rounded-lg bg-green-100 border border-green-600">
      <p className="text-green-800 font-semibold">Uploaded PPT:</p>

      <a
        href={`${API_URL.replace("/api", "")}${previewData.ppt_path}`}
        target="_blank"
        rel="noreferrer"
        className="text-blue-700 underline text-sm"
      >
        {previewData.ppt_path.split("/").pop()}
      </a>
    </div>
  )}
</div>





   <Button onClick={sendMail} loading={loading} className="mt-6 w-full">
  Send Mail <Mail className="ml-2" />
</Button>

<div className="flex justify-end gap-3 py-3">
  {/* PDF Download */}
  <PDFDownloadLink
    document={<FreshOrderPdf orderData={previewData} />}
    fileName={`${previewData.purchaseOrderNo}.pdf`}
  >
    <button className="rounded bg-blue-600 px-4 py-2 text-white">
      Download PDF
    </button>
  </PDFDownloadLink>

  {/* PPT Download */}
  <button
    onClick={() => downloadOrderPPT(previewData)}
    className="rounded bg-green-600 px-4 py-2 text-white"
  >
    Download PPT
  </button>
</div>

<PDFViewer className="mt-4 h-[90vh] w-full" showToolbar={false}>
  <FreshOrderPdf orderData={previewData} />
</PDFViewer>

  </>
)}

        </SheetContent>
      </Sheet>
    </div>
  );
};

export default TableActions;
