const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const ChapterSchema = new Schema({
  comicId: {
    type: Schema.Types.ObjectId,
    ref: 'Comic', // Ссылка на модель Comic
    required: true,
    index: true // Индексируем для быстрого поиска глав по комиксу
  },
  title: {
    type: String,
    trim: true // Удаляем пробелы по краям
  },
  number: {
    type: Number,
    required: true
  },
  releaseDate: {
    type: Date,
    default: Date.now
  },
  pagesCount: {
    type: Number,
    required: true,
    min: 0 // Количество страниц не может быть отрицательным
  },
  thumbnailUrl: {
    type: String,
    trim: true
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

// Middleware для обновления поля updatedAt перед сохранением
ChapterSchema.pre('save', function(next) {
  this.updatedAt = Date.now();
  next();
});

module.exports = mongoose.model('Chapter', ChapterSchema);
