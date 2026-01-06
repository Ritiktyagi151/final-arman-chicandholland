// import Order, { OrderStatus, ShippingStatus } from "../models/Order";
// import Style from "../models/OrderStyle";
// import StoreStyleProgress from "../models/StoreStyleProgress";

// export async function updateOrderAndStyleStatus(
//   barcode: string,
//   status: string,
//   qty: number | null = null
// ) {
//   // --------------------------------------
//   // 1️⃣ Find style and linked order
//   // --------------------------------------
//   const style = await Style.findOne({
//     where: { barcode },
//     relations: ["order"],
//   });

//   if (!style) throw new Error("Invalid barcode");

//   const order = style.order;
//   const now = new Date();

//   // --------------------------------------
//   // 2️⃣ Update Style
//   // --------------------------------------
//   style.currentStatus = status;
//   await style.save();

//   // --------------------------------------
//   // 3️⃣ Add Progress (if qty provided)
//   // --------------------------------------
//   if (qty) {
//     await StoreStyleProgress.create({
//       barcode,
//       status,
//       qty,
//     }).save();
//   }

//   // --------------------------------------
//   // 4️⃣ Update Order Main Status (REAL FIX)
//   // --------------------------------------
//   if (Object.values(OrderStatus).includes(status as any)) {
//     order.orderStatus = status as OrderStatus;
//   } else {
//     // fallback, prevents ENUM mismatch
//     order.orderStatus = status as any;
//   }

//   // --------------------------------------
//   // 5️⃣ Auto timestamp update by stage
//   // --------------------------------------
//   switch (status) {
//     case "Pattern":
//       order.pattern = now;
//       break;

//     case "Khaka":
//       if (!order.pattern) order.pattern = now;
//       order.khaka = now;
//       break;

//     case "Issue Beading":
//       order.issue_beading = now;
//       break;

//     case "Beading":
//       order.beading = now;
//       break;

//     case "Zarkan":
//       order.zarkan = now;
//       break;

//     case "Stitching":
//       order.stitching = now;
//       break;

//     case "Ready To Delivery":
//       order.ready_to_delivery = now;
//       break;

//     case "Shipped":
//       order.shipped = now;
//       order.shippingDate = now;
//       order.shippingStatus = ShippingStatus.Shipped;
//       break;
//   }

//   // --------------------------------------
//   // 6️⃣ SAVE ORDER (REAL GUARANTEED COMMIT)
//   // --------------------------------------
//   await Order.update(order.id, {
//     orderStatus: order.orderStatus,
//     pattern: order.pattern,
//     khaka: order.khaka,
//     issue_beading: order.issue_beading,
//     beading: order.beading,
//     zarkan: order.zarkan,
//     stitching: order.stitching,
//     ready_to_delivery: order.ready_to_delivery,
//     shipped: order.shipped,
//     shippingDate: order.shippingDate,
//     shippingStatus: order.shippingStatus,
//   });

//   console.log(
//     "🔥 ORDER STATUS UPDATED →",
//     "OrderID:",
//     order.id,
//     "Barcode:",
//     barcode,
//     "→",
//     order.orderStatus
//   );

//   return { order, style };
// }
