import { Router, Request, Response } from "express";
import Busboy from "busboy";
import sharp from "sharp";
import { ColorChart } from "../models/ColorChart";
import db from "../db";
import { storeFileInS3, getFullUrl } from "../lib/s3";

const router = Router();
const colorChartRepo = db.getRepository(ColorChart);
router.get("/", async (req: Request, res: Response) => {
  try {
    const charts = await colorChartRepo.find({
      order: { id: "DESC" },
      take: 1,
    });

    const latest = charts[0] || null;

    return res.json({
      success: true,
      imageUrl: latest?.imageUrl || null,
      createdAt: latest?.createdAt || null,
      updatedAt: latest?.updatedAt || null,
    });
  } catch (error) {
    console.error(error);
    return res.status(500).json({
      success: false,
      message: "Failed to fetch color chart",
    });
  }
});


router.post(
  "/upload",
  async (req: Request, res: Response) => {
    const busboy = Busboy({ headers: req.headers });
    let imageBuffer: Buffer | null = null;

    busboy.on("file", (_fieldname, file) => {
      const buffers: Buffer[] = [];

      file.on("data", (data: Buffer) => {
        buffers.push(data);
      });

      file.on("end", () => {
        imageBuffer = Buffer.concat(buffers);
      });
    });

    busboy.on("finish", async () => {
      try {
        if (!imageBuffer) {
          return res.status(400).json({
            success: false,
            message: "Image is required",
          });
        }

        // Compress + resize
        const processedImage = await sharp(imageBuffer)
          .webp({ quality: 90 })
          .resize({ width: 1200 })
          .toBuffer();

        const fileName = `color-chart/color-chart-${Date.now()}.webp`;

        const s3Res = await storeFileInS3(processedImage, fileName);

        // ✅ FIX: null check (TypeScript + runtime safe)
        if (!s3Res) {
          return res.status(500).json({
            success: false,
            message: "S3 upload failed",
          });
        }

        const chart = new ColorChart();
        chart.imageUrl = getFullUrl(s3Res.fileName);

        await colorChartRepo.save(chart);

        return res.json({
          success: true,
          message: "Color chart uploaded",
          imageUrl: chart.imageUrl,
        });
      } catch (error) {
        console.error(error);
        return res.status(500).json({
          success: false,
          message: "Upload failed",
        });
      }
    });

req.pipe(busboy);
  }
);

export default router;
