import { DataSource } from "typeorm";
import path from "path";
import CONFIG from "./config";

let modelsPath = "";

/**
 * Path handling for entities
 * CONFIG.PRODUCTION ke base par correct directory select karega
 */
if (CONFIG.PRODUCTION) {
    // Production mein: dist/models/*.js ko load karega
    // __dirname yahan 'dist' folder ko point karega
    modelsPath = path.join(__dirname, "models", "*.js");
} else {
    // Development mein: src/models/*.ts ko load karega
    modelsPath = path.join(__dirname, "models", "*.ts");
}

const db = new DataSource({
    type: "mysql",
    // Agar ECONNREFUSED aa raha hai, to .env mein 'localhost' ki jagah '127.0.0.1' use karein
    url: CONFIG.DB_URL,

    // Production mein ise hamesha false rakhein taaki data loss na ho
    synchronize: false,
    dropSchema: false,

    // Optimized entities path
    entities: [modelsPath],
    
    poolSize: CONFIG.DB_POOL_SIZE,

    // Development mein queries print hongi, production mein nahi
    logging: !CONFIG.PRODUCTION,
});

export default db;
