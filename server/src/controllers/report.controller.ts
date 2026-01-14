// import { Router, Request, Response } from "express";
// import asyncHandler from "../middleware/AsyncHandler";
// import RetailerOrderStyles from "../models/RetailerOrderStyles";
// import StyleProgress from "../models/StyleProgress";

// import {RetailerOrder} from "../models/RetailerOrder";   // ⭐ FIXED IMPORT
// import StockOrderStyles from "../models/StockOrderStyles"; // ⭐ FIXED IMPORT
// import db from "../db"; // ⭐ FIXED IMPORT

// const router = Router();

// /**
//  * ======================================================
//  *  📌 1. FRESH ORDER REPORT
//  *  /api/report/status/report/:orderId
//  * ======================================================
//  */
// router.get(
//   "/status/report/:orderId",
//   asyncHandler(async (req: Request, res: Response) => {
//     const { orderId } = req.params;

//     const styles = await RetailerOrderStyles.find({
//       where: { retailerOrder: { id: Number(orderId) } },
//       order: { id: "ASC" },
//     });

//     if (styles.length === 0) {
//       return res.json({
//         success: false,
//         message: "No style data found for this retailer order",
//       });
//     }

//     const fullData: any[] = [];

//     for (const style of styles) {
//       const progress = await StyleProgress.find({
//         where: { barcode: style.barcode },
//         order: { id: "ASC" },
//       });

//       const completed = progress.reduce((sum, p) => sum + p.qty, 0);

//       fullData.push({
//         styleId: style.id,
//         styleNo: style.styleNo,
//         barcode: style.barcode,
//         totalQty: style.quantity,
//         completed,
//         remaining: style.quantity - completed,
//         progress,
//       });
//     }

//     return res.json({
//       success: true,
//       data: fullData,
//     });
//   })
// );

// /**
//  * ======================================================
//  *  📌 2. STOCK ORDER REPORT
//  *  /api/report/stock-status/report/:orderId
//  * ======================================================
//  */
// router.get(
//   "/stock-status/report/:orderId",
//   asyncHandler(async (req: Request, res: Response) => {
//     const { orderId } = req.params;

//     const order = await RetailerOrder.findOne({
//       where: { id: Number(orderId), is_stock_order: true },
//     });

//     if (!order) {
//       return res.json({
//         success: false,
//         message: "This is not a stock order",
//       });
//     }

//     const styles = await StockOrderStyles.find({
//       where: { retailerOrder: { id: order.id } },
//       order: { id: "ASC" },
//     });

//     if (styles.length === 0) {
//       return res.json({
//         success: false,
//         message: "No stock style data found",
//       });
//     }

//     const report: any[] = [];

//     for (const s of styles) {
//     const logs = await db.query(
//   `
//     SELECT 
//       id,
//       stage,
//       qty,
//       date AS createdAt
//     FROM styleProgress
//     WHERE barcode = ?
//     ORDER BY date ASC
//   `,
//   [s.barcode]
// );


//       const completedQty = logs.reduce(
//         (sum: number, row: any) => sum + (row.qty || 0),
//         0
//       );

//       report.push({
//         styleId: s.id,
//         styleNo: s.styleNo,
//         barcode: s.barcode,
//         totalQty: s.quantity || 1,
//         completedQty,
//         remainingQty: (s.quantity || 1) - completedQty,
//         progress: logs,
//       });
//     }

//     return res.json({
//       success: true,
//       data: report,
//     });
//   })
// );


// export default router;
import { Router, Request, Response } from "express";
import asyncHandler from "../middleware/AsyncHandler";
import StyleProgress from "../models/StyleProgress";
import { RetailerOrder } from "../models/RetailerOrder";
import db from "../db";

const router = Router();

/**
 * ======================================================
 *  📌 1. FRESH ORDER STATUS REPORT
 *  /api/report/status/report/:orderId
 * ======================================================
 */
router.get(
  "/status/report/:orderId",
  asyncHandler(async (req: Request, res: Response) => {
    const { orderId } = req.params;

    /**
     * 🔥 COLOR SOURCE = favourites.color  (SAME AS PREVIEW)
     */
   const rows = await db.query(
  `
  SELECT
    ros.id               AS styleId,
    ros.styleNo          AS styleNo,
    ros.barcode          AS barcode,
    ros.quantity         AS totalQty,
    ros.size             AS size,
    ro.purchaeOrderNo    AS purchaseOrderNo,

    -- ✅ SAME SOURCE AS PREVIEW
    f.color              AS color

  FROM retailer_order_styles ros

  INNER JOIN retailer_orders ro
    ON ro.id = ros.retailerOrderId

  LEFT JOIN retailer_favourites_orders rfo
    ON rfo.id = ro.favouriteOrderId

  LEFT JOIN favourites f
    ON FIND_IN_SET(f.id, rfo.favourite_ids) > 0

  -- 🔥 IMPORTANT FIX
  LEFT JOIN products p
    ON p.id = f.productId
   AND p.productCode = ros.styleNo

  WHERE ro.id = ?
  ORDER BY ros.id ASC
  `,
  [orderId]
);


    if (!rows.length) {
      return res.json({
        success: false,
        message: "No style data found for this retailer order",
      });
    }

    const data: any[] = [];

    for (const row of rows) {
      const progress = await StyleProgress.find({
        where: { barcode: row.barcode },
        order: { id: "ASC" },
      });

      const completed = progress.reduce(
        (sum, p) => sum + (p.qty || 0),
        0
      );

      data.push({
        styleId: row.styleId,
        styleNo: row.styleNo,
        barcode: row.barcode,

        // ✅ LABEL BOX DATA
        size: `${row.size}/${row.totalQty}`,
        color: row.color,
        purchaseOrderNo: row.purchaseOrderNo,

        totalQty: row.totalQty,
        completed,
        remaining: row.totalQty - completed,
        progress,
      });
    }

    return res.json({
      success: true,
      data,
    });
  })
);

/**
 * ======================================================
 *  📌 2. STOCK ORDER STATUS REPORT
 *  /api/report/stock-status/report/:orderId
 * ======================================================
 */
router.get(
  "/stock-status/report/:orderId",
  asyncHandler(async (req: Request, res: Response) => {
    const { orderId } = req.params;

    /**
     * 🔥 COLOR SOURCE = stock.mesh_color (SAME AS PREVIEW)
     */
    const rows = await db.query(
      `
      SELECT
        sos.id              AS styleId,
        sos.styleNo         AS styleNo,
        sos.barcode         AS barcode,
        sos.quantity        AS totalQty,
        sos.size            AS size,
        ro.purchaeOrderNo   AS purchaseOrderNo,

        -- ✅ SAME MODEL AS PREVIEW
        s.mesh_color        AS color

      FROM stock_order_styles sos
      INNER JOIN retailer_orders ro
        ON ro.id = sos.retailerOrderId

      INNER JOIN retailer_stock_orders rso
        ON rso.id = ro.stockOrderId

      INNER JOIN stock s
        ON s.id = rso.stockId

      WHERE ro.id = ?
      ORDER BY sos.id ASC
      `,
      [orderId]
    );

    if (!rows.length) {
      return res.json({
        success: false,
        message: "No stock style data found",
      });
    }

    const report: any[] = [];

    for (const row of rows) {
      const logs = await db.query(
        `
        SELECT 
          stage,
          qty,
          date AS createdAt
        FROM styleProgress
        WHERE barcode = ?
        ORDER BY date ASC
        `,
        [row.barcode]
      );

      const completedQty = logs.reduce(
        (sum: number, r: any) => sum + (r.qty || 0),
        0
      );

      report.push({
        styleId: row.styleId,
        styleNo: row.styleNo,
        barcode: row.barcode,

        // ✅ LABEL BOX DATA
        size: `${row.size}/${row.totalQty || 1}`,
        color: row.color,
        purchaseOrderNo: row.purchaseOrderNo,

        totalQty: row.totalQty || 1,
        completedQty,
        remainingQty: (row.totalQty || 1) - completedQty,
        progress: logs,
      });
    }

    return res.json({
      success: true,
      data: report,
    });
  })
);

export default router;
