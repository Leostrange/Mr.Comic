const express = require("express");
const router = express.Router();

router.use("/comics", require("./comics.routes"));
router.use("/ocr", require("./ocr.routes"));
router.use("/translate", require("./translation.routes"));

module.exports = router;

