const mongoose = require("mongoose");

const ChapterSchema = new mongoose.Schema({
  comicId: {
    type: mongoose.Schema.Types.ObjectId,
    ref: "Comic",
    required: true,
  },
  title: {
    type: String,
    required: true,
  },
  number: {
    type: Number,
    required: true,
  },
  releaseDate: {
    type: Date,
    default: Date.now,
  },
  pagesCount: {
    type: Number,
    required: true,
  },
  thumbnailUrl: {
    type: String,
  },
});

module.exports = mongoose.model("Chapter", ChapterSchema);

