const jwt = require('jsonwebtoken');
const config = require('../config/config');
const User = require('../models/User');
const Token = require('../models/Token');
const Application = require('../models/Application');
const crypto = require('crypto');

/**
 * Генерация JWT токена доступа
 */
const generateAccessToken = (userId, applicationId, scopes) => {
  return jwt.sign(
    { 
      userId, 
      applicationId,
      scopes 
    }, 
    config.jwtSecret, 
    { expiresIn: config.jwtExpiration }
  );
};

/**
 * Генерация токена обновления
 */
const generateRefreshToken = async (userId, applicationId, scopes) => {
  // Создаем случайный токен
  const refreshToken = crypto.randomBytes(40).toString('hex');
  
  // Вычисляем срок действия
  const expiresAt = new Date();
  expiresAt.setDate(expiresAt.getDate() + parseInt(config.refreshTokenExpiration));
  
  // Сохраняем токен в базе данных
  const token = new Token({
    token: refreshToken,
    type: 'refresh',
    userId,
    applicationId,
    scopes,
    expiresAt
  });
  
  await token.save();
  return refreshToken;
};

/**
 * Проверка токена доступа
 */
const verifyAccessToken = (token) => {
  try {
    return jwt.verify(token, config.jwtSecret);
  } catch (error) {
    return null;
  }
};

/**
 * Проверка токена обновления
 */
const verifyRefreshToken = async (token) => {
  try {
    const storedToken = await Token.findOne({ 
      token, 
      type: 'refresh',
      isRevoked: false,
      expiresAt: { $gt: new Date() }
    });
    
    if (!storedToken) {
      return null;
    }
    
    return {
      userId: storedToken.userId,
      applicationId: storedToken.applicationId,
      scopes: storedToken.scopes
    };
  } catch (error) {
    return null;
  }
};

/**
 * Отзыв токена обновления
 */
const revokeRefreshToken = async (token) => {
  try {
    await Token.findOneAndUpdate(
      { token, type: 'refresh' },
      { isRevoked: true }
    );
    return true;
  } catch (error) {
    return false;
  }
};

/**
 * Отзыв всех токенов пользователя
 */
const revokeAllUserTokens = async (userId) => {
  try {
    await Token.updateMany(
      { userId },
      { isRevoked: true }
    );
    return true;
  } catch (error) {
    return false;
  }
};

/**
 * Проверка разрешений на основе областей (scopes)
 */
const checkScopes = (requiredScopes, tokenScopes) => {
  if (!requiredScopes || requiredScopes.length === 0) {
    return true;
  }
  
  if (!tokenScopes || tokenScopes.length === 0) {
    return false;
  }
  
  return requiredScopes.every(scope => tokenScopes.includes(scope));
};

module.exports = {
  generateAccessToken,
  generateRefreshToken,
  verifyAccessToken,
  verifyRefreshToken,
  revokeRefreshToken,
  revokeAllUserTokens,
  checkScopes
};
