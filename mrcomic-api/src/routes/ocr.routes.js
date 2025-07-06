const express = require("express");
const router = express.Router();
const passport = require("passport");
const authUtils = require("../../utils/auth");

/**
 * @route   POST /api/ocr/process
 * @desc    Обработка изображения для OCR
 * @access  Private
 */
router.post("/process", passport.authenticate("jwt", { session: false }), async (req, res) => {
  try {
    if (!authUtils.checkScopes(["ocr:process"], req.user.scopes)) {
      return res.status(403).json({
        code: "insufficient_scope",
        message: "Недостаточно прав для выполнения OCR",
      });
    }

const { spawn } = require("child_process");

    const { imagePath } = req.body;

    const pythonProcess = spawn("python3", ["../../pipeline/integrated_system.py", "ocr", imagePath]);

    let pythonOutput = "";
    pythonProcess.stdout.on("data", (data) => {
      pythonOutput += data.toString();
    });

    pythonProcess.stderr.on("data", (data) => {
      console.error(`stderr: ${data}`);
    });

    pythonProcess.on("close", (code) => {
      if (code !== 0) {
        console.error(`Python process exited with code ${code}`);
        return res.status(500).json({
          code: "python_error",
          message: "Ошибка при выполнении Python скрипта OCR",
        });
      }
      try {
        const result = JSON.parse(pythonOutput);
        res.json(result);
      } catch (parseError) {
        console.error("Ошибка парсинге JSON из Python:", parseError);
        res.status(500).json({
          code: "json_parse_error",
          message: "Ошибка парсинге ответа Python скрипта",
        });
      }
    });
  } catch (error) {
    console.error("Ошибка при обработке OCR:", error);
    res.status(500).json({
      code: "server_error",
      message: "Ошибка сервера при обработке OCR",
    });
  }
});

module.exports = router;

