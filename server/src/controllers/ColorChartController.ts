import { Router } from "express";
import db from "../db";
import { ColorChart } from "../models/ColorChart";
import multer from "multer";
import path from "path";
import { FOLDER_NAMES } from "../constants";

const router = Router();
const colorChartRepo = db.getRepository(ColorChart);

// Upload config
const upload = multer({
  storage: multer.diskStorage({
    destination: path.join(process.cwd(), "public/settings"),
    filename: (_, file, cb) => {
      cb(null, `color-chart-${Date.now()}${path.extname(file.originalname)}`);
    },
  }),
});


router.get("/", async (req, res) => {
  try {
    const chart = await colorChartRepo.find({
      order: { id: "DESC" },
      take: 1
    });

    const latest = chart[0] || null;

    res.json({
      success: true,
      imageUrl: latest?.imageUrl || null,
      createdAt: latest?.createdAt || null,
      updatedAt: latest?.updatedAt || null,
    });
  } catch (err) {
    console.error(err);
    return res.status(500).json({
      success: false,
      message: "Failed to fetch color chart"
    });
  }
});





// 📌 ADMIN Upload Color Chart
router.post("/upload", upload.single("image"), async (req, res) => {
  if (!req.file) {
    return res.status(400).json({ success: false, msg: "Image is required" });
  }

  const chart = new ColorChart();
  chart.imageUrl = `${req.protocol}://${req.get("host")}/static/settings/${req.file.filename}`;
  await colorChartRepo.save(chart);

  res.json({
    success: true,
    msg: "Color chart updated successfully",
    imageUrl: chart.imageUrl,
  });
});

export default router;
