/**
 * DeepLTranslateProcessor - Реализация процессора перевода на базе DeepL API
 * 
 * Особенности:
 * - Интеграция с DeepL API
 * - Высокое качество перевода
 * - Поддержка формального и неформального тона
 * - Кэширование результатов для оптимизации производительности
 */
class DeepLTranslateProcessor extends require('./TranslationProcessor') {
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
      // Загружаем axios для HTTP-запросов
      this.axios = require('axios');
    } catch (error) {
      throw new Error('Axios library is not installed. Please run: npm install axios');
    }
    
    // Настраиваем конфигурацию по умолчанию
    this.config = {
      apiKey: options.config?.apiKey || process.env.DEEPL_API_KEY,
      apiUrl: options.config?.apiUrl || 'https://api.deepl.com/v2',
      freeApi: options.config?.freeApi || false,
      formality: options.config?.formality || 'default', // 'default', 'more', 'less'
      ...this.config,
      ...options.config
    };
    
    // Проверяем наличие API-ключа
    if (!this.config.apiKey) {
      throw new Error('DeepL API key is required. Please provide it in config or set DEEPL_API_KEY environment variable');
    }
    
    // Настраиваем базовый URL в зависимости от типа API (Free или Pro)
    if (this.config.freeApi) {
      this.config.apiUrl = 'https://api-free.deepl.com/v2';
    }
    
    this.logger?.info('DeepLTranslateProcessor initialized');
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
    
    // Преобразуем коды языков в формат DeepL
    const deepLSourceLang = this._convertLanguageCode(sourceLanguage, 'source');
    const deepLTargetLang = this._convertLanguageCode(targetLanguage, 'target');
    
    // Если исходный и целевой языки совпадают, возвращаем исходный текст
    if (deepLSourceLang === deepLTargetLang) {
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
    
    this.logger?.info('Starting DeepL translation', { sourceLanguage, targetLanguage });
    
    try {
      // Предобработка текста
      const preprocessedText = await this._preprocessText(text, sourceLanguage, targetLanguage, options);
      
      // Уведомляем о начале перевода
      this.eventEmitter?.emit('translation:started', { 
        sourceLanguage, 
        targetLanguage,
        textLength: preprocessedText.length
      });
      
      // Подготавливаем параметры запроса
      const params = new URLSearchParams();
      params.append('text', preprocessedText);
      params.append('target_lang', deepLTargetLang);
      
      // Добавляем исходный язык, если он указан и не 'auto'
      if (deepLSourceLang && deepLSourceLang !== 'auto') {
        params.append('source_lang', deepLSourceLang);
      }
      
      // Добавляем формальность, если поддерживается для целевого языка
      const formality = options.formality || this.config.formality;
      if (formality !== 'default' && this._supportsFormalityOption(deepLTargetLang)) {
        params.append('formality', formality);
      }
      
      // Выполняем запрос к API
      const response = await this.axios.post(
        `${this.config.apiUrl}/translate`,
        params,
        {
          headers: {
            'Authorization': `DeepL-Auth-Key ${this.config.apiKey}`,
            'Content-Type': 'application/x-www-form-urlencoded'
          }
        }
      );
      
      // Проверяем наличие ошибок
      if (response.status !== 200) {
        throw new Error(`DeepL API error: ${response.status} ${response.statusText}`);
      }
      
      // Извлекаем результат
      const translationResult = response.data.translations[0];
      
      // Формируем результат
      const result = {
        originalText: text,
        translatedText: translationResult.text,
        sourceLanguage: translationResult.detected_source_language ? 
          this._convertLanguageCode(translationResult.detected_source_language, 'source', true) : 
          sourceLanguage,
        targetLanguage,
        confidence: 1.0, // DeepL не предоставляет уверенность для перевода
        formality: formality
      };
      
      // Постобработка результата
      const processedResult = await this._postprocessResult(result, sourceLanguage, targetLanguage, options);
      
      // Уведомляем о завершении перевода
      this.eventEmitter?.emit('translation:completed', { 
        sourceLanguage: processedResult.sourceLanguage, 
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
      this.logger?.error('Error during DeepL translation', error);
      
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
    // DeepL не предоставляет отдельный API для определения языка,
    // поэтому мы используем API перевода с пустым целевым языком
    
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
    
    this.logger?.info('Detecting language using DeepL');
    
    try {
      // Подготавливаем параметры запроса
      const params = new URLSearchParams();
      params.append('text', text.substring(0, 500)); // Ограничиваем длину текста для определения языка
      params.append('target_lang', 'EN'); // Используем английский как целевой язык
      
      // Выполняем запрос к API
      const response = await this.axios.post(
        `${this.config.apiUrl}/translate`,
        params,
        {
          headers: {
            'Authorization': `DeepL-Auth-Key ${this.config.apiKey}`,
            'Content-Type': 'application/x-www-form-urlencoded'
          }
        }
      );
      
      // Проверяем наличие ошибок
      if (response.status !== 200) {
        throw new Error(`DeepL API error: ${response.status} ${response.statusText}`);
      }
      
      // Извлекаем результат
      const detectedLanguage = response.data.translations[0].detected_source_language;
      
      // Формируем результат
      const detectionResult = {
        language: this._convertLanguageCode(detectedLanguage, 'source', true),
        confidence: 1.0 // DeepL не предоставляет уверенность для определения языка
      };
      
      // Кэшируем результат, если доступен кэш-менеджер
      if (this.cacheManager) {
        await this.cacheManager.set(cacheKey, detectionResult, {
          ttl: options.cacheTTL || this.config.cacheTTL || 86400 // 24 часа по умолчанию
        });
      }
      
      return detectionResult;
    } catch (error) {
      this.logger?.error('Error during language detection with DeepL', error);
      
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
    // Языки, поддерживаемые DeepL в качестве исходных
    const sourceLanguages = [
      'bg', 'cs', 'da', 'de', 'el', 'en', 'es', 'et', 'fi', 'fr',
      'hu', 'id', 'it', 'ja', 'ko', 'lt', 'lv', 'nl', 'pl', 'pt',
      'ro', 'ru', 'sk', 'sl', 'sv', 'tr', 'uk', 'zh'
    ];
    
    // Языки, поддерживаемые DeepL в качестве целевых
    const targetLanguages = [
      'bg', 'cs', 'da', 'de', 'el', 'en', 'en-GB', 'en-US', 'es', 'et',
      'fi', 'fr', 'hu', 'id', 'it', 'ja', 'ko', 'lt', 'lv', 'nl',
      'pl', 'pt', 'pt-BR', 'pt-PT', 'ro', 'ru', 'sk', 'sl', 'sv',
      'tr', 'uk', 'zh'
    ];
    
    if (type === 'source') {
      return sourceLanguages;
    } else if (type === 'target') {
      return targetLanguages;
    } else {
      // Возвращаем пересечение исходных и целевых языков
      return sourceLanguages.filter(lang => targetLanguages.includes(lang));
    }
  }

  /**
   * Проверка поддержки опции формальности для языка
   * @private
   * @param {string} language - Код языка в формате DeepL
   * @returns {boolean} - true, если язык поддерживает опцию формальности
   */
  _supportsFormalityOption(language) {
    // Языки, поддерживающие опцию формальности в DeepL
    const languagesWithFormality = [
      'DE', 'FR', 'IT', 'ES', 'NL', 'PL', 'PT', 'PT-BR', 'PT-PT', 'RU'
    ];
    
    return languagesWithFormality.includes(language);
  }

  /**
   * Преобразование кода языка в формат DeepL и обратно
   * @private
   * @param {string} code - Код языка
   * @param {string} type - Тип языка ('source' или 'target')
   * @param {boolean} fromDeepL - Преобразование из формата DeepL
   * @returns {string} - Преобразованный код языка
   */
  _convertLanguageCode(code, type = 'both', fromDeepL = false) {
    if (!code) {
      return type === 'source' ? 'auto' : 'EN';
    }
    
    // Если код уже в нужном формате, возвращаем его
    if (fromDeepL) {
      // Преобразование из формата DeepL в стандартный
      const lowerCode = code.toLowerCase();
      
      // Обработка специальных случаев
      if (lowerCode === 'en') return 'en';
      if (lowerCode === 'en-gb') return 'en-GB';
      if (lowerCode === 'en-us') return 'en-US';
      if (lowerCode === 'pt') return 'pt';
      if (lowerCode === 'pt-br') return 'pt-BR';
      if (lowerCode === 'pt-pt') return 'pt-PT';
      
      return lowerCode;
    } else {
      // Преобразование из стандартного формата в формат DeepL
      const upperCode = code.toUpperCase();
      
      // Обработка специальных случаев
      if (upperCode === 'AUTO') return 'auto';
      if (upperCode === 'ZH-CN' || upperCode === 'ZH-TW') return 'ZH';
      
      return upperCode;
    }
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
      this.logger?.warn('Error during text preprocessing for DeepL, using original text', error);
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
      
      return processedResult;
    } catch (error) {
      this.logger?.warn('Error during translation result postprocessing for DeepL, using original result', error);
      return result;
    }
  }
}

module.exports = DeepLTranslateProcessor;
