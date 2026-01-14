import { DataSource } from "typeorm";
import path from "path";
import CONFIG from "./config";

let modelsPath = "";

/**
 * Path handling for entities
 * __dirname use karne se ye current folder (dist ya src) ke mutabik models dhoondega
 */
if (CONFIG.PRODUCTION) {
    // Production mein: dist/models/*.js
    modelsPath = path.join(__dirname, "models", "*.js");
} else {
    // Development mein: src/models/*.ts
    modelsPath = path.join(__dirname, "models", "*.ts");
}

const db = new DataSource({
    type: "mysql",
    url: CONFIG.DB_URL,

    // Production mein ise hamesha false rakhein
    synchronize: false,
    dropSchema: false,

    // Entities ka path correct kar diya gaya hai
    entities: [modelsPath],
    poolSize: CONFIG.DB_POOL_SIZE,
    
    // Debugging ke liye logging enable kar sakte hain agar zaroorat ho
    logging: CONFIG.PRODUCTION ? false : true,
});

export default db;
