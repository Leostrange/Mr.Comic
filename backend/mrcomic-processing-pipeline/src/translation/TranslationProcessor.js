/**
 * TranslationProcessor - Абстрактный класс для обработки перевода
 * 
 * Особенности:
 * - Базовый интерфейс для всех процессоров перевода
 * - Определение общих методов и свойств
 * - Поддержка пакетного перевода
 * - Обработка ошибок и восстановление
 * - Кэширование результатов перевода для оптимизации производительности
 */
class TranslationProcessor {
  /**
   * @param {Object} options - Опции процессора перевода
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {ErrorHandler} options.errorHandler - Обработчик ошибок
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {CacheManager} options.cacheManager - Менеджер кэша
   * @param {Object} options.config - Конфигурация перевода
   */
  constructor(options = {}) {
    this.logger = options.logger;
    this.errorHandler = options.errorHandler;
    this.eventEmitter = options.eventEmitter;
    this.cacheManager = options.cacheManager;
    this.config = options.config || {};
    
    // Настройки кэширования
    this.cacheEnabled = this.config.cacheEnabled !== undefined ? this.config.cacheEnabled : true;
    this.cacheTtl = this.config.cacheTtl || 7 * 24 * 60 * 60 * 1000; // 7 дней по умолчанию
    
    // Проверяем, что класс не инстанцируется напрямую
    if (this.constructor === TranslationProcessor) {
      throw new Error('TranslationProcessor is an abstract class and cannot be instantiated directly');
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
    // Проверяем, включено ли кэширование и доступен ли менеджер кэша
    if (this.cacheEnabled && this.cacheManager && !options.skipCache) {
      try {
        // Генерируем ключ кэша
        const cacheKey = await this._generateCacheKey(text, sourceLanguage, targetLanguage, options);
        
        // Пытаемся получить результат из кэша
        const cachedResult = await this.cacheManager.get(cacheKey);
        
        if (cachedResult) {
          this.logger?.debug(`Translation cache hit for ${sourceLanguage} -> ${targetLanguage}, text length: ${text.length}`);
          
          // Уведомляем о получении результата из кэша
          this.eventEmitter?.emit('translation:cache_hit', { 
            sourceLanguage,
            targetLanguage,
            textLength: text.length
          });
          
          return cachedResult;
        }
        
        this.logger?.debug(`Translation cache miss for ${sourceLanguage} -> ${targetLanguage}, text length: ${text.length}`);
        
        // Уведомляем о промахе кэша
        this.eventEmitter?.emit('translation:cache_miss', { 
          sourceLanguage,
          targetLanguage,
          textLength: text.length
        });
        
        // Выполняем перевод
        const result = await this._performTranslation(text, sourceLanguage, targetLanguage, options);
        
        // Сохраняем результат в кэше
        if (result) {
          await this.cacheManager.set(cacheKey, result, { 
            ttl: options.cacheTtl || this.cacheTtl 
          });
          
          this.logger?.debug(`Translation cached for ${sourceLanguage} -> ${targetLanguage}, text length: ${text.length}`);
        }
        
        return result;
      } catch (error) {
        this.logger?.error('Error using translation cache', error);
        
        // В случае ошибки кэширования, продолжаем с обычным переводом
        return await this._performTranslation(text, sourceLanguage, targetLanguage, options);
      }
    } else {
      // Если кэширование отключено или недоступно, выполняем обычный перевод
      return await this._performTranslation(text, sourceLanguage, targetLanguage, options);
    }
  }

  /**
   * Выполнение перевода (должен быть реализован в подклассах)
   * @protected
   * @param {string} text - Исходный текст
   * @param {string} sourceLanguage - Исходный язык
   * @param {string} targetLanguage - Целевой язык
   * @param {Object} options - Опции перевода
   * @returns {Promise<Object>} - Результат перевода
   */
  async _performTranslation(text, sourceLanguage, targetLanguage, options = {}) {
    throw new Error('Method _performTranslation() must be implemented by subclass');
  }

  /**
   * Пакетный перевод нескольких текстов
   * @param {Array<string>} texts - Массив исходных текстов
   * @param {string} sourceLanguage - Исходный язык
   * @param {string} targetLanguage - Целевой язык
   * @param {Object} options - Опции перевода
   * @returns {Promise<Array<Object>>} - Результаты перевода
   */
  async translateBatch(texts, sourceLanguage, targetLanguage, options = {}) {
    const results = [];
    const errors = [];
    
    this.logger?.info(`Starting batch translation for ${texts.length} texts from ${sourceLanguage} to ${targetLanguage}`);
    
    // Уведомляем о начале пакетной обработки
    this.eventEmitter?.emit('translation:batch_started', { 
      count: texts.length,
      sourceLanguage,
      targetLanguage,
      options
    });
    
    // Проверяем, включено ли кэширование и доступен ли менеджер кэша
    const useCaching = this.cacheEnabled && this.cacheManager && !options.skipCache;
    
    // Если кэширование включено, предварительно проверяем кэш для всех текстов
    if (useCaching) {
      const cacheKeys = [];
      const cacheResults = [];
      const textsToTranslate = [];
      const textsToTranslateIndices = [];
      
      // Генерируем ключи кэша для всех текстов
      for (let i = 0; i < texts.length; i++) {
        const text = texts[i];
        const cacheKey = await this._generateCacheKey(text, sourceLanguage, targetLanguage, options);
        cacheKeys.push(cacheKey);
      }
      
      // Получаем результаты из кэша для всех текстов
      for (let i = 0; i < texts.length; i++) {
        const text = texts[i];
        const cacheKey = cacheKeys[i];
        
        try {
          const cachedResult = await this.cacheManager.get(cacheKey);
          
          if (cachedResult) {
            cacheResults[i] = cachedResult;
            results[i] = cachedResult;
            
            // Уведомляем о получении результата из кэша
            this.eventEmitter?.emit('translation:cache_hit', { 
              index: i,
              total: texts.length,
              sourceLanguage,
              targetLanguage,
              textLength: text.length
            });
          } else {
            textsToTranslate.push(text);
            textsToTranslateIndices.push(i);
            
            // Уведомляем о промахе кэша
            this.eventEmitter?.emit('translation:cache_miss', { 
              index: i,
              total: texts.length,
              sourceLanguage,
              targetLanguage,
              textLength: text.length
            });
          }
        } catch (error) {
          this.logger?.error(`Error checking cache for text at index ${i}`, error);
          textsToTranslate.push(text);
          textsToTranslateIndices.push(i);
        }
      }
      
      // Если есть тексты, которых нет в кэше, переводим их
      if (textsToTranslate.length > 0) {
        this.logger?.info(`Cache hits: ${texts.length - textsToTranslate.length}, misses: ${textsToTranslate.length}`);
        
        // Обрабатываем тексты параллельно с ограничением параллелизма
        const concurrency = options.concurrency || this.config.concurrency || 5;
        const batches = this._chunkArray(textsToTranslate, concurrency);
        const indicesBatches = this._chunkArray(textsToTranslateIndices, concurrency);
        
        let processedCount = 0;
        
        for (let batchIndex = 0; batchIndex < batches.length; batchIndex++) {
          const batch = batches[batchIndex];
          const indicesBatch = indicesBatches[batchIndex];
          
          const batchPromises = batch.map(async (text, index) => {
            const originalIndex = indicesBatch[index];
            const textIndex = processedCount + index;
            
            try {
              // Уведомляем о начале перевода текста
              this.eventEmitter?.emit('translation:text_processing', { 
                index: originalIndex,
                total: texts.length,
                sourceLanguage,
                targetLanguage
              });
              
              const result = await this._performTranslation(text, sourceLanguage, targetLanguage, options);
              
              // Сохраняем результат в кэше
              if (result) {
                const cacheKey = cacheKeys[originalIndex];
                await this.cacheManager.set(cacheKey, result, { 
                  ttl: options.cacheTtl || this.cacheTtl 
                });
              }
              
              // Уведомляем об успешном переводе текста
              this.eventEmitter?.emit('translation:text_processed', { 
                index: originalIndex,
                total: texts.length,
                sourceLanguage,
                targetLanguage,
                success: true
              });
              
              return { success: true, result, index: originalIndex };
            } catch (error) {
              this.logger?.error(`Error translating text at index ${originalIndex}`, error);
              
              // Уведомляем об ошибке перевода текста
              this.eventEmitter?.emit('translation:text_processed', { 
                index: originalIndex,
                total: texts.length,
                sourceLanguage,
                targetLanguage,
                success: false,
                error
              });
              
              return { success: false, error, index: originalIndex };
            }
          });
          
          const batchResults = await Promise.all(batchPromises);
          
          for (const result of batchResults) {
            if (result.success) {
              results[result.index] = result.result;
            } else {
              errors[result.index] = result.error;
              results[result.index] = null;
            }
          }
          
          processedCount += batch.length;
          
          // Уведомляем о прогрессе пакетной обработки
          this.eventEmitter?.emit('translation:batch_progress', { 
            processed: processedCount,
            total: textsToTranslate.length,
            sourceLanguage,
            targetLanguage,
            errors: errors.filter(Boolean).length
          });
        }
      } else {
        this.logger?.info(`All ${texts.length} texts found in cache`);
      }
    } else {
      // Если кэширование отключено, переводим все тексты обычным способом
      // Обрабатываем тексты параллельно с ограничением параллелизма
      const concurrency = options.concurrency || this.config.concurrency || 5;
      const batches = this._chunkArray(texts, concurrency);
      
      let processedCount = 0;
      
      for (const batch of batches) {
        const batchPromises = batch.map(async (text, index) => {
          const textIndex = processedCount + index;
          
          try {
            // Уведомляем о начале перевода текста
            this.eventEmitter?.emit('translation:text_processing', { 
              index: textIndex,
              total: texts.length,
              sourceLanguage,
              targetLanguage
            });
            
            const result = await this._performTranslation(text, sourceLanguage, targetLanguage, options);
            
            // Уведомляем об успешном переводе текста
            this.eventEmitter?.emit('translation:text_processed', { 
              index: textIndex,
              total: texts.length,
              sourceLanguage,
              targetLanguage,
              success: true
            });
            
            return { success: true, result, index: textIndex };
          } catch (error) {
            this.logger?.error(`Error translating text at index ${textIndex}`, error);
            
            // Уведомляем об ошибке перевода текста
            this.eventEmitter?.emit('translation:text_processed', { 
              index: textIndex,
              total: texts.length,
              sourceLanguage,
              targetLanguage,
              success: false,
              error
            });
            
            return { success: false, error, index: textIndex };
          }
        });
        
        const batchResults = await Promise.all(batchPromises);
        
        for (const result of batchResults) {
          if (result.success) {
            results[result.index] = result.result;
          } else {
            errors[result.index] = result.error;
            results[result.index] = null;
          }
        }
        
        processedCount += batch.length;
        
        // Уведомляем о прогрессе пакетной обработки
        this.eventEmitter?.emit('translation:batch_progress', { 
          processed: processedCount,
          total: texts.length,
          sourceLanguage,
          targetLanguage,
          errors: errors.filter(Boolean).length
        });
      }
    }
    
    // Уведомляем о завершении пакетной обработки
    this.eventEmitter?.emit('translation:batch_completed', { 
      count: texts.length,
      sourceLanguage,
      targetLanguage,
      errors: errors.filter(Boolean).length,
      options
    });
    
    return {
      results,
      errors: errors.filter(Boolean).length > 0 ? errors : null
    };
  }

  /**
   * Проверка поддержки языка
   * @param {string} language - Код языка
   * @param {string} type - Тип проверки ('source' или 'target')
   * @returns {boolean} - true, если язык поддерживается
   */
  supportsLanguage(language, type = 'both') {
    throw new Error('Method supportsLanguage() must be implemented by subclass');
  }

  /**
   * Получение списка поддерживаемых языков
   * @param {string} type - Тип языков ('source', 'target' или 'both')
   * @returns {Array<string>} - Массив кодов поддерживаемых языков
   */
  getSupportedLanguages(type = 'both') {
    throw new Error('Method getSupportedLanguages() must be implemented by subclass');
  }

  /**
   * Определение языка текста
   * @param {string} text - Текст для определения языка
   * @param {Object} options - Опции определения языка
   * @returns {Promise<Object>} - Результат определения языка
   */
  async detectLanguage(text, options = {}) {
    throw new Error('Method detectLanguage() must be implemented by subclass');
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
    // Базовая реализация просто возвращает исходный текст
    // Подклассы могут переопределить этот метод для реализации предобработки
    return text;
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
    // Базовая реализация просто возвращает исходный результат
    // Подклассы могут переопределить этот метод для реализации постобработки
    return result;
  }

  /**
   * Генерация ключа кэша
   * @protected
   * @param {string} text - Исходный текст
   * @param {string} sourceLanguage - Исходный язык
   * @param {string} targetLanguage - Целевой язык
   * @param {Object} options - Опции перевода
   * @returns {Promise<string>} - Ключ кэша
   */
  async _generateCacheKey(text, sourceLanguage, targetLanguage, options = {}) {
    const crypto = require('crypto');
    
    // Создаем ключ на основе текста и языков
    let key = `translation:${sourceLanguage}:${targetLanguage}:`;
    
    // Добавляем хеш текста
    const textHash = crypto.createHash('md5').update(text).digest('hex');
    key += textHash;
    
    // Добавляем опции в ключ, если они есть
    if (Object.keys(options).length > 0) {
      // Фильтруем опции, исключая skipCache и другие служебные параметры
      const relevantOptions = { ...options };
      delete relevantOptions.skipCache;
      delete relevantOptions.cacheTtl;
      
      if (Object.keys(relevantOptions).length > 0) {
        const optionsStr = JSON.stringify(relevantOptions);
        const optionsHash = crypto.createHash('md5').update(optionsStr).digest('hex');
        key += `:${optionsHash}`;
      }
    }
    
    // Добавляем идентификатор процессора перевода
    if (this.constructor.name) {
      key += `:${this.constructor.name}`;
    }
    
    return key;
  }

  /**
   * Разделение массива на части
   * @private
   * @param {Array} array - Исходный массив
   * @param {number} size - Размер части
   * @returns {Array<Array>} - Массив частей
   */
  _chunkArray(array, size) {
    const chunks = [];
    for (let i = 0; i < array.length; i += size) {
      chunks.push(array.slice(i, i + size));
    }
    return chunks;
  }
  
  /**
   * Получение статистики кэширования
   * @returns {Promise<Object|null>} - Статистика кэширования или null, если кэширование отключено
   */
  async getCacheStats() {
    if (this.cacheEnabled && this.cacheManager) {
      try {
        return this.cacheManager.getStats();
      } catch (error) {
        this.logger?.error('Error getting cache stats', error);
        return null;
      }
    }
    return null;
  }
  
  /**
   * Очистка кэша переводов
   * @returns {Promise<boolean>} - true, если кэш успешно очищен
   */
  async clearCache() {
    if (this.cacheEnabled && this.cacheManager) {
      try {
        const result = await this.cacheManager.clear();
        this.logger?.info('Translation cache cleared');
        return result;
      } catch (error) {
        this.logger?.error('Error clearing translation cache', error);
        return false;
      }
    }
    return false;
  }
}

module.exports = TranslationProcessor;
