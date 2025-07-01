const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const ThemeSchema = new Schema({
  name: {
    type: String,
    required: true
  },
  description: {
    type: String
  },
  version: {
    type: String,
    required: true
  },
  isPublic: {
    type: Boolean,
    default: true
  },
  previewImageUrl: {
    type: String
  },
  authorId: {
    type: Schema.Types.ObjectId,
    ref: 'User',
    required: true
  },
  rating: {
    average: {
      type: Number,
      default: 0,
      min: 0,
      max: 5
    },
    count: {
      type: Number,
      default: 0
    }
  },
  downloads: {
    type: Number,
    default: 0
  },
  themeData: {
    colors: {
      primary: {
        type: String,
        required: true
      },
      secondary: {
        type: String,
        required: true
      },
      accent: {
        type: String,
        required: true
      },
      background: {
        type: String,
        required: true
      },
      text: {
        type: String,
        required: true
      }
    },
    fonts: {
      main: {
        type: String,
        required: true
      },
      headers: {
        type: String,
        required: true
      },
      size: {
        type: String,
        required: true
      }
    },
    elements: {
      cornerRadius: {
        type: Number,
        required: true
      },
      iconStyle: {
        type: String,
        required: true
      },
      buttonStyle: {
        type: String,
        required: true
      }
    }
  },
  tags: [{
    type: String
  }],
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
ThemeSchema.pre('save', function(next) {
  this.updatedAt = Date.now();
  next();
});

// Indexes for faster searches
ThemeSchema.index({ name: 'text', description: 'text' });
ThemeSchema.index({ authorId: 1 });
ThemeSchema.index({ 'rating.average': -1 });
ThemeSchema.index({ downloads: -1 });
ThemeSchema.index({ tags: 1 });

module.exports = mongoose.model('Theme', ThemeSchema);
