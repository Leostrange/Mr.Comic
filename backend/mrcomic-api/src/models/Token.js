const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const TokenSchema = new Schema({
  token: {
    type: String,
    required: true,
    unique: true
  },
  type: {
    type: String,
    enum: ['access', 'refresh'],
    required: true
  },
  userId: {
    type: Schema.Types.ObjectId,
    ref: 'User',
    required: true
  },
  applicationId: {
    type: Schema.Types.ObjectId,
    ref: 'Application',
    required: true
  },
  scopes: [{
    type: String,
    enum: ['comics:read', 'comics:write', 'themes:read', 'themes:write', 'user:read', 'user:write', 'analytics:read'],
    required: true
  }],
  expiresAt: {
    type: Date,
    required: true
  },
  isRevoked: {
    type: Boolean,
    default: false
  },
  createdAt: {
    type: Date,
    default: Date.now
  }
});

// Index for faster token lookups
TokenSchema.index({ token: 1 });
// Index for expiration cleanup
TokenSchema.index({ expiresAt: 1 });
// Index for user tokens lookup
TokenSchema.index({ userId: 1, type: 1 });

module.exports = mongoose.model('Token', TokenSchema);
