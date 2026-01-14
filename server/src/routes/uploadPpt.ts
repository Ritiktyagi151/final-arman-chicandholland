import { Router, Request, Response } from "express";
import multer from "multer";
import path from "path";
import Order from "../models/Order";
import { RetailerOrder } from "../models/RetailerOrder";

const router = Router();

// 🎯 Multer Storage
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "uploads/ppt");
  },
  filename: (req, file, cb) => {
    const unique = Date.now() + "-" + Math.round(Math.random() * 1e9);
    cb(null, `${unique}${path.extname(file.originalname)}`);
  },
});

const upload = multer({ storage });


// 📌 Upload PPT & Save Path in DB
router.post("/", upload.single("ppt"), async (req: any, res: Response) => {
  try {
    const orderId = Number(req.body.orderId);
    console.log("🔥 Order ID:", orderId);

    if (!orderId) return res.status(400).json({ success: false, message: "Order ID missing" });
    if (!req.file) return res.status(400).json({ success: false, message: "File missing" });

    const filePath = `/uploads/ppt/${req.file.filename}`;
    console.log("📌 Saving path:", filePath);

    let updated;

    updated = await RetailerOrder.update({ id: orderId }, { ppt_path: filePath });

    if (!updated.affected || updated.affected === 0) {
      updated = await Order.update({ id: orderId }, { ppt_path: filePath });
    }

    if (!updated.affected || updated.affected === 0) {
      return res.status(404).json({ success: false, message: "Order not found" });
    }

    return res.json({
      success: true,
      path: filePath,
      message: "PPT uploaded successfully!",
    });

  } catch (error) {
    console.error("❌ Upload Error:", error);
    res.status(500).json({ success: false, message: "Server error" });
  }
});


// 🔍 GET Existing PPT file for Order
router.get("/:orderId", async (req: Request, res: Response) => {
  try {
    const orderId = Number(req.params.orderId);

    let record =
      (await RetailerOrder.findOne({ where: { id: orderId } })) ||
      (await Order.findOne({ where: { id: orderId } }));

    if (!record) return res.json({ success: true, ppt_path: null });

    res.json({ success: true, ppt_path: record.ppt_path });
  } catch (err) {
    console.error(err);
    res.status(500).json({ success: false, message: "Error fetching PPT" });
  }
});

export default router;
