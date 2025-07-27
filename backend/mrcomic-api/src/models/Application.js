const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const ApplicationSchema = new Schema({
  name: {
    type: String,
    required: true
  },
  description: {
    type: String,
    required: true
  },
  clientId: {
    type: String,
    required: true,
    unique: true
  },
  clientSecret: {
    type: String,
    required: true
  },
  redirectUris: [{
    type: String,
    required: true
  }],
  allowedScopes: [{
    type: String,
    enum: ['comics:read', 'comics:write', 'themes:read', 'themes:write', 'user:read', 'user:write', 'analytics:read'],
    required: true
  }],
  userId: {
    type: Schema.Types.ObjectId,
    ref: 'User',
    required: true
  },
  status: {
    type: String,
    enum: ['pending', 'approved', 'rejected', 'revoked'],
    default: 'pending'
  },
  rateLimit: {
    requests: {
      type: Number,
      default: 100
    },
    window: {
      type: Number,
      default: 15 * 60 * 1000 // 15 minutes in milliseconds
    }
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
ApplicationSchema.pre('save', function(next) {
  this.updatedAt = Date.now();
  next();
});

module.exports = mongoose.model('Application', ApplicationSchema);
