require('dotenv').config();
const express = require('express');
const mongoose = require('mongoose');
const passport = require('passport');
const cors = require('cors');
const morgan = 'morgan'; // This was a bug in my generation, should be require('morgan')
const helmet = require('helmet');
const rateLimit = require('express-rate-limit');

const config = require('./src/config/config');
// Исправлено: mongoose.js обычно экспортирует функцию для подключения
// const connectDB = require('./src/db/mongoose');
require('./src/db/mongoose')(); // Вызываем функцию подключения к БД

// Импорт маршрутов
const authRoutes = require('./src/routes/auth.routes');
const comicsRoutes = require('./src/routes/comics.routes');
const themesRoutes = require('./src/routes/themes.routes');
const userRoutes = require('./src/routes/user.routes');
const analyticsRoutes = require('./src/routes/analytics.routes');
const ocrRoutes = require('./src/routes/ocr.routes');
const translationRoutes = require('./src/routes/translation.routes');

const app = express();

// Middlewares
app.use(cors());
app.use(helmet());

// Исправлено: morgan должен быть функцией
const morganLogger = require('morgan');
if (config.env === 'development') {
  app.use(morganLogger('dev'));
}

app.use(express.json({ limit: '10mb' })); // Увеличим лимит для JSON, если будем передавать base64 картинки
app.use(express.urlencoded({ extended: false, limit: '10mb' }));

// Passport middleware
app.use(passport.initialize());
require('./src/utils/auth')(passport);

// Rate Limiting
const limiter = rateLimit({
  windowMs: config.rateLimiting.windowMs,
  max: config.rateLimiting.max,
  message: 'Слишком много запросов с этого IP, попробуйте позже.'
});
app.use('/api/', limiter);


// Подключение маршрутов
app.use('/api/auth', authRoutes);
app.use('/api/comics', comicsRoutes);
app.use('/api/themes', themesRoutes);
app.use('/api/users', userRoutes);
app.use('/api/analytics', analyticsRoutes);
app.use('/api/ocr', ocrRoutes);
app.use('/api/translation', translationRoutes);

// Swagger UI
const swaggerUi = require('swagger-ui-express');
// const YAML = require('yamljs'); // Не используется, если у нас JSON
try {
  const swaggerDocument = require('./openapi.json');
  app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocument));
} catch (err) {
  console.error("Failed to load openapi.json for Swagger UI", err);
}

const PORT = config.port || 3000;

// Проверка подключения к БД перед запуском сервера (опционально, но хорошая практика)
mongoose.connection.once('open', () => {
    console.log('MongoDB database connection established successfully');
    app.listen(PORT, () => {
        console.log(`Server running in ${config.env} mode on port ${PORT}`);
    });
});

mongoose.connection.on('error', (err) => {
    console.error('MongoDB connection error:', err);
    process.exit(1); // Выход, если не удалось подключиться к БД
});
