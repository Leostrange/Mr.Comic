/**
 * GoogleTranslateProcessor - Реализация процессора перевода на базе Google Translate API
 * 
 * Особенности:
 * - Интеграция с Google Translate API
 * - Поддержка большого количества языков
 * - Автоматическое определение языка
 * - Кэширование результатов для оптимизации производительности
 */
class GoogleTranslateProcessor extends require('./TranslationProcessor') {
  /**
   * @param {Object} options - Опции процессора перевода
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {ErrorHandler} options.errorHandler - Обработчик ошибок
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {CacheManager} options.cacheManager - Менеджер кэша
   * @param {Object} options.config - Конфигурация перевода
   */
  constructor(options = {}) {
    super(options);
    
    // Проверяем наличие необходимых зависимостей
    try {
      // Загружаем Google Translate API
      this.translate = require('@google-cloud/translate').v2;
    } catch (error) {
      throw new Error('Google Translate library is not installed. Please run: npm install @google-cloud/translate');
    }
    
    // Настраиваем конфигурацию по умолчанию
    this.config = {
      format: 'text', // 'text' или 'html'
      model: 'nmt', // 'nmt' (Neural Machine Translation) или 'base' (Phrase-Based Machine Translation)
      ...this.config,
      ...options.config
    };
    
    // Инициализируем клиент Google Translate
    try {
      this.client = new this.translate.Translate({
        keyFilename: this.config.keyFilename,
        credentials: this.config.credentials,
        projectId: this.config.projectId
      });
      
      this.logger?.info('GoogleTranslateProcessor initialized');
    } catch (error) {
      this.logger?.error('Failed to initialize Google Translate client', error);
      throw new Error(`Failed to initialize Google Translate client: ${error.message}`);
    }
  }

  /**
   * Перевод текста
   * @param {string} text - Исходный текст
   * @param {string} sourceLanguage - Исходный язык
   * @param {string} targetLanguage - Целевой язык
   * @param {Object} options - Опции перевода
   * @returns {Promise<Object>} - Результат перевода
   */
  async translate(text, sourceLanguage, targetLanguage, options = {}) {
    // Если текст пустой, возвращаем пустой результат
    if (!text || text.trim() === '') {
      return {
        originalText: text,
        translatedText: '',
        sourceLanguage,
        targetLanguage,
        confidence: 1.0
      };
    }
    
    // Если исходный язык не указан или 'auto', определяем его
    if (!sourceLanguage || sourceLanguage === 'auto') {
      const detectionResult = await this.detectLanguage(text, options);
      sourceLanguage = detectionResult.language;
    }
    
    // Если исходный и целевой языки совпадают, возвращаем исходный текст
    if (sourceLanguage === targetLanguage) {
      return {
        originalText: text,
        translatedText: text,
        sourceLanguage,
        targetLanguage,
        confidence: 1.0
      };
    }
    
    const cacheKey = await this._generateCacheKey(text, sourceLanguage, targetLanguage, options);
    
    // Проверяем кэш, если доступен
    if (this.cacheManager) {
      const cachedResult = await this.cacheManager.get(cacheKey);
      if (cachedResult) {
        this.logger?.debug('Using cached translation result', { sourceLanguage, targetLanguage });
        return cachedResult;
      }
    }
    
    this.logger?.info('Starting translation', { sourceLanguage, targetLanguage });
    
    try {
      // Предобработка текста
      const preprocessedText = await this._preprocessText(text, sourceLanguage, targetLanguage, options);
      
      // Уведомляем о начале перевода
      this.eventEmitter?.emit('translation:started', { 
        sourceLanguage, 
        targetLanguage,
        textLength: preprocessedText.length
      });
      
      // Подготавливаем опции для API
      const translateOptions = {
        from: sourceLanguage,
        to: targetLanguage,
        format: options.format || this.config.format,
        model: options.model || this.config.model
      };
      
      // Выполняем перевод
      const [translation] = await this.client.translate(preprocessedText, translateOptions);
      
      // Формируем результат
      const result = {
        originalText: text,
        translatedText: translation,
        sourceLanguage,
        targetLanguage,
        confidence: 1.0, // Google Translate не предоставляет уверенность для перевода
        model: translateOptions.model
      };
      
      // Постобработка результата
      const processedResult = await this._postprocessResult(result, sourceLanguage, targetLanguage, options);
      
      // Уведомляем о завершении перевода
      this.eventEmitter?.emit('translation:completed', { 
        sourceLanguage, 
        targetLanguage,
        textLength: preprocessedText.length,
        translatedLength: processedResult.translatedText.length
      });
      
      // Кэшируем результат, если доступен кэш-менеджер
      if (this.cacheManager) {
        await this.cacheManager.set(cacheKey, processedResult, {
          ttl: options.cacheTTL || this.config.cacheTTL || 86400 // 24 часа по умолчанию
        });
      }
      
      return processedResult;
    } catch (error) {
      this.logger?.error('Error during translation', error);
      
      // Уведомляем об ошибке
      this.eventEmitter?.emit('translation:failed', { 
        sourceLanguage, 
        targetLanguage,
        error: error.message
      });
      
      // Обрабатываем ошибку
      if (this.errorHandler) {
        throw this.errorHandler.handleError(error, { 
          operation: 'translate', 
          sourceLanguage,
          targetLanguage,
          options
        });
      }
      
      throw error;
    }
  }

  /**
   * Определение языка текста
   * @param {string} text - Текст для определения языка
   * @param {Object} options - Опции определения языка
   * @returns {Promise<Object>} - Результат определения языка
   */
  async detectLanguage(text, options = {}) {
    // Если текст пустой, возвращаем язык по умолчанию
    if (!text || text.trim() === '') {
      return {
        language: options.defaultLanguage || this.config.defaultLanguage || 'en',
        confidence: 1.0
      };
    }
    
    const cacheKey = `language_detection:${require('crypto').createHash('md5').update(text).digest('hex')}`;
    
    // Проверяем кэш, если доступен
    if (this.cacheManager) {
      const cachedResult = await this.cacheManager.get(cacheKey);
      if (cachedResult) {
        this.logger?.debug('Using cached language detection result');
        return cachedResult;
      }
    }
    
    this.logger?.info('Detecting language');
    
    try {
      // Выполняем определение языка
      const [detection] = await this.client.detect(text);
      
      // Если результат массив, берем первый элемент
      const result = Array.isArray(detection) ? detection[0] : detection;
      
      // Формируем результат
      const detectionResult = {
        language: result.language,
        confidence: result.confidence || 1.0
      };
      
      // Кэшируем результат, если доступен кэш-менеджер
      if (this.cacheManager) {
        await this.cacheManager.set(cacheKey, detectionResult, {
          ttl: options.cacheTTL || this.config.cacheTTL || 86400 // 24 часа по умолчанию
        });
      }
      
      return detectionResult;
    } catch (error) {
      this.logger?.error('Error during language detection', error);
      
      // Обрабатываем ошибку
      if (this.errorHandler) {
        throw this.errorHandler.handleError(error, { 
          operation: 'detect_language', 
          options
        });
      }
      
      throw error;
    }
  }

  /**
   * Проверка поддержки языка
   * @param {string} language - Код языка
   * @param {string} type - Тип проверки ('source', 'target' или 'both')
   * @returns {boolean} - true, если язык поддерживается
   */
  supportsLanguage(language, type = 'both') {
    const supportedLanguages = this.getSupportedLanguages(type);
    return supportedLanguages.includes(language);
  }

  /**
   * Получение списка поддерживаемых языков
   * @param {string} type - Тип языков ('source', 'target' или 'both')
   * @returns {Array<string>} - Массив кодов поддерживаемых языков
   */
  getSupportedLanguages(type = 'both') {
    // Google Translate поддерживает одинаковые языки для источника и цели
    const languages = [
      'af', 'sq', 'am', 'ar', 'hy', 'az', 'eu', 'be', 'bn', 'bs',
      'bg', 'ca', 'ceb', 'zh', 'zh-CN', 'zh-TW', 'co', 'hr', 'cs',
      'da', 'nl', 'en', 'eo', 'et', 'fi', 'fr', 'fy', 'gl', 'ka',
      'de', 'el', 'gu', 'ht', 'ha', 'haw', 'he', 'hi', 'hmn', 'hu',
      'is', 'ig', 'id', 'ga', 'it', 'ja', 'jv', 'kn', 'kk', 'km',
      'ko', 'ku', 'ky', 'lo', 'la', 'lv', 'lt', 'lb', 'mk', 'mg',
      'ms', 'ml', 'mt', 'mi', 'mr', 'mn', 'my', 'ne', 'no', 'ny',
      'ps', 'fa', 'pl', 'pt', 'pa', 'ro', 'ru', 'sm', 'gd', 'sr',
      'st', 'sn', 'sd', 'si', 'sk', 'sl', 'so', 'es', 'su', 'sw',
      'sv', 'tl', 'tg', 'ta', 'te', 'th', 'tr', 'uk', 'ur', 'uz',
      'vi', 'cy', 'xh', 'yi', 'yo', 'zu'
    ];
    
    return languages;
  }

  /**
   * Предобработка текста
   * @protected
   * @param {string} text - Исходный текст
   * @param {string} sourceLanguage - Исходный язык
   * @param {string} targetLanguage - Целевой язык
   * @param {Object} options - Опции предобработки
   * @returns {Promise<string>} - Обработанный текст
   */
  async _preprocessText(text, sourceLanguage, targetLanguage, options = {}) {
    // Если предобработка отключена, возвращаем исходный текст
    if (options.skipPreprocessing || this.config.skipPreprocessing) {
      return text;
    }
    
    try {
      let processedText = text;
      
      // Удаляем лишние пробелы
      if (options.trimText || this.config.trimText) {
        processedText = processedText.trim();
      }
      
      // Заменяем множественные пробелы на один
      if (options.normalizeSpaces || this.config.normalizeSpaces) {
        processedText = processedText.replace(/\s+/g, ' ');
      }
      
      // Сохраняем форматирование для определенных языков
      if (options.preserveFormatting || this.config.preserveFormatting) {
        // Сохраняем переносы строк для японского, китайского и корейского
        if (['ja', 'zh', 'zh-CN', 'zh-TW', 'ko'].includes(sourceLanguage)) {
          // Заменяем переносы строк на специальные маркеры
          processedText = processedText.replace(/\n/g, ' [LINEBREAK] ');
        }
      }
      
      return processedText;
    } catch (error) {
      this.logger?.warn('Error during text preprocessing, using original text', error);
      return text;
    }
  }

  /**
   * Постобработка результатов перевода
   * @protected
   * @param {Object} result - Результат перевода
   * @param {string} sourceLanguage - Исходный язык
   * @param {string} targetLanguage - Целевой язык
   * @param {Object} options - Опции постобработки
   * @returns {Promise<Object>} - Обработанный результат
   */
  async _postprocessResult(result, sourceLanguage, targetLanguage, options = {}) {
    // Если постобработка отключена, возвращаем исходный результат
    if (options.skipPostprocessing || this.config.skipPostprocessing) {
      return result;
    }
    
    try {
      // Создаем копию результата для обработки
      const processedResult = { ...result };
      
      // Восстанавливаем форматирование
      if (options.preserveFormatting || this.config.preserveFormatting) {
        // Восстанавливаем переносы строк
        processedResult.translatedText = processedResult.translatedText.replace(/\s?\[LINEBREAK\]\s?/g, '\n');
      }
      
      // Исправляем распространенные проблемы перевода
      if (options.fixCommonIssues || this.config.fixCommonIssues) {
        // Исправляем кавычки
        processedResult.translatedText = processedResult.translatedText
          .replace(/['']/g, "'")
          .replace(/[""]/g, '"');
        
        // Исправляем пробелы перед знаками препинания для некоторых языков
        if (['fr', 'it', 'es', 'pt'].includes(targetLanguage)) {
          processedResult.translatedText = processedResult.translatedText
            .replace(/\s+([.,;:!?])/g, '$1');
        }
      }
      
      return processedResult;
    } catch (error) {
      this.logger?.warn('Error during translation result postprocessing, using original result', error);
      return result;
    }
  }
}

module.exports = GoogleTranslateProcessor;
