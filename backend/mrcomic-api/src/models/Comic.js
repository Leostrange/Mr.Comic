const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const ComicSchema = new Schema({
  title: {
    type: String,
    required: true
  },
  description: {
    type: String
  },
  author: {
    type: String,
    required: true
  },
  coverUrl: {
    type: String,
    required: true
  },
  genres: [{
    type: String,
    required: true
  }],
  releaseDate: {
    type: Date
  },
  rating: {
    type: Number,
    default: 0,
    min: 0,
    max: 5
  },
  chaptersCount: {
    type: Number,
    default: 0
  },
  status: {
    type: String,
    enum: ['ongoing', 'completed', 'hiatus'],
    default: 'ongoing'
  },
  tags: [{
    type: String
  }],
  publisher: {
    type: String
  },
  createdAt: {
    type: Date,
    default: Date.now
  },
  updatedAt: {
    type: Date,
    default: Date.now
  }
});

// Update the updatedAt field on save
ComicSchema.pre('save', function(next) {
  this.updatedAt = Date.now();
  next();
});

// Indexes for faster searches
ComicSchema.index({ title: 'text', description: 'text', author: 'text' });
ComicSchema.index({ genres: 1 });
ComicSchema.index({ status: 1 });
ComicSchema.index({ rating: -1 });

module.exports = mongoose.model('Comic', ComicSchema);
