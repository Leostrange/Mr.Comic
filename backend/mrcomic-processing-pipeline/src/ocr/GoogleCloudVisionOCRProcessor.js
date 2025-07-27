/**
 * GoogleCloudVisionOCRProcessor - Реализация OCR-процессора на базе Google Cloud Vision API
 * 
 * Особенности:
 * - Интеграция с Google Cloud Vision API
 * - Высокая точность распознавания текста в комиксах
 * - Поддержка различных языков
 * - Обнаружение текста в сложных изображениях
 * - Кэширование результатов для оптимизации производительности
 */
class GoogleCloudVisionOCRProcessor extends require('./OCRProcessor') {
  /**
   * @param {Object} options - Опции OCR-процессора
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {ErrorHandler} options.errorHandler - Обработчик ошибок
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {CacheManager} options.cacheManager - Менеджер кэша
   * @param {Object} options.config - Конфигурация OCR
   */
  constructor(options = {}) {
    super(options);
    
    // Проверяем наличие необходимых зависимостей
    try {
      // Загружаем Google Cloud Vision
      this.vision = require('@google-cloud/vision');
    } catch (error) {
      throw new Error('Google Cloud Vision library is not installed. Please run: npm install @google-cloud/vision');
    }
    
    // Настраиваем конфигурацию по умолчанию
    this.config = {
      language: 'en', // Язык по умолчанию
      features: ['TEXT_DETECTION', 'DOCUMENT_TEXT_DETECTION'],
      maxResults: 10,
      ...this.config,
      ...options.config
    };
    
    // Инициализируем клиент Google Cloud Vision
    try {
      this.client = new this.vision.ImageAnnotatorClient({
        keyFilename: this.config.keyFilename,
        credentials: this.config.credentials
      });
      
      this.logger?.info('GoogleCloudVisionOCRProcessor initialized', { language: this.config.language });
    } catch (error) {
      this.logger?.error('Failed to initialize Google Cloud Vision client', error);
      throw new Error(`Failed to initialize Google Cloud Vision client: ${error.message}`);
    }
  }

  /**
   * Распознавание текста на изображении
   * @param {string|Buffer} image - Путь к изображению или буфер с данными
   * @param {Object} options - Опции распознавания
   * @returns {Promise<Object>} - Результат распознавания
   */
  async recognize(image, options = {}) {
    const language = options.language || this.config.language;
    const cacheKey = await this._generateCacheKey(image, { ...options, language });
    
    // Проверяем кэш, если доступен
    if (this.cacheManager) {
      const cachedResult = await this.cacheManager.get(cacheKey);
      if (cachedResult) {
        this.logger?.debug('Using cached OCR result', { language });
        return cachedResult;
      }
    }
    
    this.logger?.info('Starting Google Cloud Vision OCR recognition', { language });
    
    try {
      // Предобработка изображения
      const preprocessedImage = await this._preprocessImage(image, options);
      
      // Уведомляем о начале распознавания
      this.eventEmitter?.emit('ocr:recognition_started', { language });
      
      // Подготавливаем запрос к Google Cloud Vision API
      const request = {
        image: {
          content: Buffer.isBuffer(preprocessedImage) ? preprocessedImage : undefined,
          source: typeof preprocessedImage === 'string' ? { filename: preprocessedImage } : undefined
        },
        features: this._prepareFeatures(options),
        imageContext: {
          languageHints: [language]
        }
      };
      
      // Выполняем запрос к API
      const [response] = await this.client.annotateImage(request);
      
      // Проверяем наличие ошибок
      if (response.error) {
        throw new Error(`Google Cloud Vision API error: ${response.error.message}`);
      }
      
      // Преобразуем результат в унифицированный формат
      const result = this._formatResponse(response, options);
      
      // Постобработка результатов
      const processedResult = await this._postprocessResult(result, options);
      
      // Уведомляем о завершении распознавания
      this.eventEmitter?.emit('ocr:recognition_completed', { 
        language,
        confidence: processedResult.confidence,
        textLength: processedResult.text.length
      });
      
      // Кэшируем результат, если доступен кэш-менеджер
      if (this.cacheManager) {
        await this.cacheManager.set(cacheKey, processedResult, {
          ttl: options.cacheTTL || this.config.cacheTTL || 3600 // 1 час по умолчанию
        });
      }
      
      return processedResult;
    } catch (error) {
      this.logger?.error('Error during Google Cloud Vision OCR recognition', error);
      
      // Уведомляем об ошибке
      this.eventEmitter?.emit('ocr:recognition_failed', { 
        language,
        error: error.message
      });
      
      // Обрабатываем ошибку
      if (this.errorHandler) {
        throw this.errorHandler.handleError(error, { 
          operation: 'ocr_recognize', 
          language,
          options
        });
      }
      
      throw error;
    }
  }

  /**
   * Проверка поддержки языка
   * @param {string} language - Код языка
   * @returns {boolean} - true, если язык поддерживается
   */
  supportsLanguage(language) {
    const supportedLanguages = this.getSupportedLanguages();
    return supportedLanguages.includes(language);
  }

  /**
   * Получение списка поддерживаемых языков
   * @returns {Array<string>} - Массив кодов поддерживаемых языков
   */
  getSupportedLanguages() {
    // Список основных поддерживаемых языков Google Cloud Vision
    return [
      'en', // Английский
      'ru', // Русский
      'ja', // Японский
      'ko', // Корейский
      'zh', // Китайский (упрощенный)
      'zh-TW', // Китайский (традиционный)
      'fr', // Французский
      'de', // Немецкий
      'it', // Итальянский
      'es', // Испанский
      'pt', // Португальский
      'ar', // Арабский
      'hi', // Хинди
      'vi', // Вьетнамский
      'th', // Тайский
      'tr', // Турецкий
      'uk', // Украинский
      'pl', // Польский
      'nl', // Голландский
      'sv', // Шведский
      'fi', // Финский
      'da', // Датский
      'no', // Норвежский
      'hu', // Венгерский
      'bg', // Болгарский
      'cs', // Чешский
      'ro', // Румынский
      'sk', // Словацкий
      'sl', // Словенский
      'hr', // Хорватский
      'el', // Греческий
      'he', // Иврит
      'ka', // Грузинский
      'az', // Азербайджанский
      'be', // Белорусский
      'bn', // Бенгальский
      'eu', // Баскский
      'ca', // Каталанский
      'et', // Эстонский
      'gl', // Галисийский
      'is', // Исландский
      'id', // Индонезийский
      'kn', // Каннада
      'kk', // Казахский
      'km', // Кхмерский
      'ky', // Киргизский
      'lo', // Лаосский
      'la', // Латинский
      'lv', // Латышский
      'lt', // Литовский
      'ml', // Малаялам
      'mr', // Маратхи
      'mk', // Македонский
      'mt', // Мальтийский
      'ms', // Малайский
      'my', // Бирманский
      'ne', // Непальский
      'pa', // Панджаби
      'sr', // Сербский
      'sw', // Суахили
      'ta', // Тамильский
      'te', // Телугу
      'tg', // Таджикский
      'tl', // Тагальский
      'uz', // Узбекский
      'ur', // Урду
      'yi'  // Идиш
    ];
  }

  /**
   * Подготовка параметров запроса к API
   * @private
   * @param {Object} options - Опции распознавания
   * @returns {Array<Object>} - Массив параметров запроса
   */
  _prepareFeatures(options = {}) {
    const features = options.features || this.config.features || ['TEXT_DETECTION'];
    
    return features.map(feature => ({
      type: feature,
      maxResults: options.maxResults || this.config.maxResults || 10
    }));
  }

  /**
   * Форматирование ответа API в унифицированный формат
   * @private
   * @param {Object} response - Ответ API
   * @param {Object} options - Опции распознавания
   * @returns {Object} - Унифицированный результат
   */
  _formatResponse(response, options = {}) {
    // Инициализируем результат
    const result = {
      text: '',
      confidence: 0,
      words: [],
      blocks: [],
      pages: [],
      language: options.language || this.config.language
    };
    
    // Обрабатываем результаты TEXT_DETECTION
    if (response.textAnnotations && response.textAnnotations.length > 0) {
      // Полный текст находится в первой аннотации
      result.text = response.textAnnotations[0].description || '';
      
      // Обрабатываем отдельные слова
      for (let i = 1; i < response.textAnnotations.length; i++) {
        const annotation = response.textAnnotations[i];
        
        const word = {
          text: annotation.description || '',
          confidence: 1.0, // Google Cloud Vision не предоставляет уверенность для отдельных слов в textAnnotations
          boundingBox: this._formatBoundingBox(annotation.boundingPoly)
        };
        
        result.words.push(word);
      }
    }
    
    // Обрабатываем результаты DOCUMENT_TEXT_DETECTION для более структурированной информации
    if (response.fullTextAnnotation) {
      // Если текст не был установлен из textAnnotations, используем fullTextAnnotation
      if (!result.text) {
        result.text = response.fullTextAnnotation.text || '';
      }
      
      // Обрабатываем страницы
      if (response.fullTextAnnotation.pages) {
        for (const page of response.fullTextAnnotation.pages) {
          const formattedPage = {
            width: page.width,
            height: page.height,
            blocks: []
          };
          
          // Обрабатываем блоки
          for (const block of page.blocks || []) {
            const formattedBlock = {
              type: block.blockType,
              confidence: block.confidence || 0,
              boundingBox: this._formatBoundingBox(block.boundingBox),
              paragraphs: []
            };
            
            // Обрабатываем параграфы
            for (const paragraph of block.paragraphs || []) {
              const formattedParagraph = {
                confidence: paragraph.confidence || 0,
                boundingBox: this._formatBoundingBox(paragraph.boundingBox),
                words: []
              };
              
              // Обрабатываем слова
              for (const word of paragraph.words || []) {
                const formattedWord = {
                  confidence: word.confidence || 0,
                  boundingBox: this._formatBoundingBox(word.boundingBox),
                  symbols: []
                };
                
                let wordText = '';
                
                // Обрабатываем символы
                for (const symbol of word.symbols || []) {
                  wordText += symbol.text || '';
                  
                  formattedWord.symbols.push({
                    text: symbol.text || '',
                    confidence: symbol.confidence || 0,
                    boundingBox: this._formatBoundingBox(symbol.boundingBox)
                  });
                }
                
                formattedWord.text = wordText;
                formattedParagraph.words.push(formattedWord);
              }
              
              formattedBlock.paragraphs.push(formattedParagraph);
            }
            
            formattedPage.blocks.push(formattedBlock);
            result.blocks.push(formattedBlock);
          }
          
          result.pages.push(formattedPage);
        }
      }
      
      // Вычисляем общую уверенность как среднее значение уверенности блоков
      if (result.blocks.length > 0) {
        const totalConfidence = result.blocks.reduce((sum, block) => sum + block.confidence, 0);
        result.confidence = totalConfidence / result.blocks.length;
      }
    }
    
    return result;
  }

  /**
   * Форматирование ограничивающего прямоугольника
   * @private
   * @param {Object} boundingPoly - Ограничивающий многоугольник
   * @returns {Object} - Форматированный ограничивающий прямоугольник
   */
  _formatBoundingBox(boundingPoly) {
    if (!boundingPoly || !boundingPoly.vertices || boundingPoly.vertices.length === 0) {
      return { x: 0, y: 0, width: 0, height: 0 };
    }
    
    // Находим минимальные и максимальные координаты
    let minX = Infinity;
    let minY = Infinity;
    let maxX = -Infinity;
    let maxY = -Infinity;
    
    for (const vertex of boundingPoly.vertices) {
      const x = vertex.x || 0;
      const y = vertex.y || 0;
      
      minX = Math.min(minX, x);
      minY = Math.min(minY, y);
      maxX = Math.max(maxX, x);
      maxY = Math.max(maxY, y);
    }
    
    return {
      x: minX,
      y: minY,
      width: maxX - minX,
      height: maxY - minY
    };
  }

  /**
   * Предобработка изображения
   * @protected
   * @param {string|Buffer} image - Путь к изображению или буфер с данными
   * @param {Object} options - Опции предобработки
   * @returns {Promise<Buffer|string>} - Обработанное изображение
   */
  async _preprocessImage(image, options = {}) {
    // Для Google Cloud Vision обычно не требуется предобработка,
    // так как API хорошо работает с исходными изображениями
    // Но если нужно, можно добавить предобработку здесь
    
    // Если предобработка отключена, возвращаем исходное изображение
    if (options.skipPreprocessing || this.config.skipPreprocessing) {
      return image;
    }
    
    // Если указана опция улучшения качества, применяем базовую предобработку
    if (options.enhanceQuality || this.config.enhanceQuality) {
      try {
        // Загружаем Sharp для обработки изображений
        const sharp = require('sharp');
        
        // Создаем объект Sharp из изображения
        let sharpImage;
        if (typeof image === 'string') {
          sharpImage = sharp(image);
        } else {
          sharpImage = sharp(image);
        }
        
        // Применяем базовые улучшения
        sharpImage = sharpImage
          // Увеличиваем контраст
          .normalize()
          // Удаляем шум
          .median(options.medianRadius || this.config.medianRadius || 1);
        
        // Получаем буфер обработанного изображения
        const buffer = await sharpImage.toBuffer();
        
        this.logger?.debug('Image preprocessing completed for Google Cloud Vision');
        
        return buffer;
      } catch (error) {
        this.logger?.warn('Error during image preprocessing for Google Cloud Vision, using original image', error);
        return image;
      }
    }
    
    return image;
  }

  /**
   * Постобработка результатов OCR
   * @protected
   * @param {Object} result - Результат распознавания
   * @param {Object} options - Опции постобработки
   * @returns {Promise<Object>} - Обработанный результат
   */
  async _postprocessResult(result, options = {}) {
    // Если постобработка отключена, возвращаем исходный результат
    if (options.skipPostprocessing || this.config.skipPostprocessing) {
      return result;
    }
    
    try {
      // Создаем копию результата для обработки
      const processedResult = { ...result };
      
      // Удаляем лишние пробелы и переносы строк
      if (options.trimText || this.config.trimText) {
        processedResult.text = processedResult.text.trim();
      }
      
      // Объединяем короткие строки
      if (options.mergeLines || this.config.mergeLines) {
        processedResult.text = processedResult.text
          .replace(/(\S)\n(\S)/g, '$1 $2') // Заменяем переносы между словами на пробелы
          .replace(/\n{2,}/g, '\n\n'); // Оставляем только двойные переносы
      }
      
      // Фильтруем результаты по уверенности
      if (options.confidenceThreshold || this.config.confidenceThreshold) {
        const threshold = options.confidenceThreshold || this.config.confidenceThreshold;
        
        if (processedResult.blocks) {
          processedResult.blocks = processedResult.blocks.filter(block => block.confidence >= threshold);
          
          // Пересчитываем общую уверенность
          if (processedResult.blocks.length > 0) {
            const totalConfidence = processedResult.blocks.reduce((sum, block) => sum + block.confidence, 0);
            processedResult.confidence = totalConfidence / processedResult.blocks.length;
          }
        }
      }
      
      this.logger?.debug('OCR result postprocessing completed for Google Cloud Vision');
      
      return processedResult;
    } catch (error) {
      this.logger?.warn('Error during OCR result postprocessing for Google Cloud Vision, using original result', error);
      return result;
    }
  }
}

module.exports = GoogleCloudVisionOCRProcessor;
