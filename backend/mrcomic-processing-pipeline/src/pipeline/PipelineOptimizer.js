/**
 * PipelineOptimizer - Оптимизация и финализация конвейера обработки
 * 
 * Особенности:
 * - Оптимизация производительности конвейера
 * - Управление ресурсами и памятью
 * - Адаптивная настройка параллелизма
 * - Мониторинг и анализ производительности
 */
class PipelineOptimizer {
  /**
   * @param {Object} options - Опции оптимизатора
   * @param {OCRTranslationPipeline} options.pipeline - Конвейер OCR и перевода
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {Object} options.config - Конфигурация оптимизатора
   */
  constructor(options = {}) {
    this.pipeline = options.pipeline;
    this.logger = options.logger;
    this.eventEmitter = options.eventEmitter;
    this.config = options.config || {};
    
    // Настраиваем конфигурацию по умолчанию
    this.config = {
      memoryThreshold: 0.8, // Порог использования памяти (80%)
      cpuThreshold: 0.9, // Порог использования CPU (90%)
      minConcurrency: 1, // Минимальный параллелизм
      maxConcurrency: 10, // Максимальный параллелизм
      adaptiveMode: true, // Адаптивная настройка параллелизма
      monitoringInterval: 5000, // Интервал мониторинга в мс
      ...this.config
    };
    
    // Инициализируем метрики производительности
    this.metrics = {
      processingTimes: [],
      memoryUsage: [],
      cpuUsage: [],
      errorRates: [],
      throughput: []
    };
    
    // Инициализируем мониторинг, если включен адаптивный режим
    if (this.config.adaptiveMode) {
      this._startMonitoring();
    }
    
    this.logger?.info('PipelineOptimizer initialized', {
      adaptiveMode: this.config.adaptiveMode,
      memoryThreshold: this.config.memoryThreshold,
      cpuThreshold: this.config.cpuThreshold
    });
  }

  /**
   * Оптимизация параметров конвейера
   * @param {Object} context - Контекст оптимизации
   * @param {number} context.imageCount - Количество изображений
   * @param {number} context.averageImageSize - Средний размер изображения в байтах
   * @param {string} context.sourceLanguage - Исходный язык
   * @param {string} context.targetLanguage - Целевой язык
   * @returns {Object} - Оптимизированные параметры
   */
  optimizeParameters(context = {}) {
    this.logger?.info('Optimizing pipeline parameters', context);
    
    // Базовые параметры
    const params = {
      concurrency: this.config.adaptiveMode ? 
        this._calculateOptimalConcurrency(context) : 
        this.pipeline.config.concurrency,
      
      // Выбор оптимальных движков
      preferredOCREngine: this._selectOptimalOCREngine(context),
      preferredTranslationEngine: this._selectOptimalTranslationEngine(context),
      
      // Настройка кэширования
      cacheTTL: this._calculateOptimalCacheTTL(context),
      
      // Настройка качества
      highQualityMode: context.highQuality !== undefined ? 
        context.highQuality : 
        this.pipeline.config.highQualityMode
    };
    
    // Применяем оптимизированные параметры к конвейеру
    Object.assign(this.pipeline.config, params);
    
    this.logger?.info('Pipeline parameters optimized', params);
    
    return params;
  }

  /**
   * Анализ производительности конвейера
   * @returns {Object} - Метрики производительности
   */
  analyzePerformance() {
    // Вычисляем средние значения метрик
    const avgProcessingTime = this._calculateAverage(this.metrics.processingTimes);
    const avgMemoryUsage = this._calculateAverage(this.metrics.memoryUsage);
    const avgCpuUsage = this._calculateAverage(this.metrics.cpuUsage);
    const avgErrorRate = this._calculateAverage(this.metrics.errorRates);
    const avgThroughput = this._calculateAverage(this.metrics.throughput);
    
    const performance = {
      averageProcessingTime: avgProcessingTime, // мс
      averageMemoryUsage: avgMemoryUsage, // %
      averageCpuUsage: avgCpuUsage, // %
      averageErrorRate: avgErrorRate, // %
      averageThroughput: avgThroughput, // изображений в секунду
      
      // Рассчитываем эффективность
      efficiency: avgThroughput > 0 ? 
        (1 / (avgProcessingTime * avgErrorRate * 0.01 + 0.001)) : 0,
      
      // Рекомендации по оптимизации
      recommendations: this._generateRecommendations({
        processingTime: avgProcessingTime,
        memoryUsage: avgMemoryUsage,
        cpuUsage: avgCpuUsage,
        errorRate: avgErrorRate,
        throughput: avgThroughput
      })
    };
    
    this.logger?.info('Pipeline performance analysis', performance);
    
    return performance;
  }

  /**
   * Сброс метрик производительности
   */
  resetMetrics() {
    this.metrics = {
      processingTimes: [],
      memoryUsage: [],
      cpuUsage: [],
      errorRates: [],
      throughput: []
    };
    
    this.logger?.info('Performance metrics reset');
  }

  /**
   * Запуск стресс-теста конвейера
   * @param {Object} options - Опции стресс-теста
   * @param {number} options.imageCount - Количество изображений
   * @param {number} options.concurrency - Параллелизм
   * @param {string} options.sourceLanguage - Исходный язык
   * @param {string} options.targetLanguage - Целевой язык
   * @returns {Promise<Object>} - Результаты стресс-теста
   */
  async runStressTest(options = {}) {
    const imageCount = options.imageCount || 10;
    const concurrency = options.concurrency || this.pipeline.config.concurrency;
    
    this.logger?.info('Starting pipeline stress test', { 
      imageCount, 
      concurrency,
      sourceLanguage: options.sourceLanguage,
      targetLanguage: options.targetLanguage
    });
    
    // Сбрасываем метрики перед тестом
    this.resetMetrics();
    
    // Генерируем тестовые изображения
    const testImages = await this._generateTestImages(imageCount);
    
    // Засекаем время начала теста
    const startTime = Date.now();
    
    // Запускаем пакетную обработку
    const result = await this.pipeline.processBatch(testImages, {
      concurrency,
      sourceLanguage: options.sourceLanguage,
      targetLanguage: options.targetLanguage,
      batchId: `stress_test_${startTime}`
    });
    
    // Вычисляем время выполнения
    const executionTime = Date.now() - startTime;
    
    // Вычисляем метрики
    const successCount = result.results.filter(Boolean).length;
    const errorCount = result.errors ? result.errors.filter(Boolean).length : 0;
    const errorRate = (errorCount / imageCount) * 100;
    const throughput = (successCount / (executionTime / 1000));
    
    // Обновляем метрики
    this.metrics.processingTimes.push(executionTime / imageCount);
    this.metrics.errorRates.push(errorRate);
    this.metrics.throughput.push(throughput);
    
    // Формируем результат теста
    const testResult = {
      imageCount,
      concurrency,
      executionTime,
      successCount,
      errorCount,
      errorRate,
      throughput,
      averageProcessingTime: executionTime / imageCount,
      performance: this.analyzePerformance()
    };
    
    this.logger?.info('Pipeline stress test completed', testResult);
    
    return testResult;
  }

  /**
   * Запуск мониторинга ресурсов
   * @private
   */
  _startMonitoring() {
    // Запускаем интервал мониторинга
    this.monitoringInterval = setInterval(() => {
      try {
        // Получаем текущее использование ресурсов
        const memoryUsage = this._getMemoryUsage();
        const cpuUsage = this._getCpuUsage();
        
        // Обновляем метрики
        this.metrics.memoryUsage.push(memoryUsage);
        this.metrics.cpuUsage.push(cpuUsage);
        
        // Ограничиваем размер массивов метрик
        if (this.metrics.memoryUsage.length > 100) {
          this.metrics.memoryUsage.shift();
        }
        if (this.metrics.cpuUsage.length > 100) {
          this.metrics.cpuUsage.shift();
        }
        
        // Проверяем, нужно ли адаптировать параллелизм
        if (this.config.adaptiveMode) {
          this._adaptConcurrency(memoryUsage, cpuUsage);
        }
      } catch (error) {
        this.logger?.error('Error during resource monitoring', error);
      }
    }, this.config.monitoringInterval);
  }

  /**
   * Остановка мониторинга ресурсов
   */
  stopMonitoring() {
    if (this.monitoringInterval) {
      clearInterval(this.monitoringInterval);
      this.monitoringInterval = null;
      
      this.logger?.info('Resource monitoring stopped');
    }
  }

  /**
   * Получение текущего использования памяти
   * @private
   * @returns {number} - Процент использования памяти
   */
  _getMemoryUsage() {
    try {
      const memoryUsage = process.memoryUsage();
      const usedMemory = memoryUsage.heapUsed;
      const totalMemory = memoryUsage.heapTotal;
      
      return (usedMemory / totalMemory) * 100;
    } catch (error) {
      this.logger?.error('Error getting memory usage', error);
      return 0;
    }
  }

  /**
   * Получение текущего использования CPU
   * @private
   * @returns {number} - Процент использования CPU
   */
  _getCpuUsage() {
    try {
      // В Node.js нет прямого способа получить использование CPU,
      // поэтому возвращаем приблизительное значение на основе загрузки процесса
      const cpuUsage = process.cpuUsage();
      const totalUsage = cpuUsage.user + cpuUsage.system;
      
      // Нормализуем значение к проценту (приблизительно)
      return Math.min((totalUsage / 1000000) * 10, 100);
    } catch (error) {
      this.logger?.error('Error getting CPU usage', error);
      return 0;
    }
  }

  /**
   * Адаптация параллелизма на основе использования ресурсов
   * @private
   * @param {number} memoryUsage - Процент использования памяти
   * @param {number} cpuUsage - Процент использования CPU
   */
  _adaptConcurrency(memoryUsage, cpuUsage) {
    const currentConcurrency = this.pipeline.config.concurrency;
    
    // Если использование ресурсов превышает пороги, уменьшаем параллелизм
    if (memoryUsage > this.config.memoryThreshold * 100 || 
        cpuUsage > this.config.cpuThreshold * 100) {
      
      if (currentConcurrency > this.config.minConcurrency) {
        const newConcurrency = Math.max(currentConcurrency - 1, this.config.minConcurrency);
        
        this.pipeline.config.concurrency = newConcurrency;
        
        this.logger?.info('Reduced pipeline concurrency due to high resource usage', {
          previousConcurrency: currentConcurrency,
          newConcurrency,
          memoryUsage,
          cpuUsage
        });
        
        // Уведомляем о изменении параллелизма
        this.eventEmitter?.emit('pipeline:concurrency_changed', {
          previousConcurrency: currentConcurrency,
          newConcurrency,
          reason: 'high_resource_usage'
        });
      }
    }
    // Если использование ресурсов низкое, увеличиваем параллелизм
    else if (memoryUsage < this.config.memoryThreshold * 70 && 
             cpuUsage < this.config.cpuThreshold * 70) {
      
      if (currentConcurrency < this.config.maxConcurrency) {
        const newConcurrency = Math.min(currentConcurrency + 1, this.config.maxConcurrency);
        
        this.pipeline.config.concurrency = newConcurrency;
        
        this.logger?.info('Increased pipeline concurrency due to low resource usage', {
          previousConcurrency: currentConcurrency,
          newConcurrency,
          memoryUsage,
          cpuUsage
        });
        
        // Уведомляем о изменении параллелизма
        this.eventEmitter?.emit('pipeline:concurrency_changed', {
          previousConcurrency: currentConcurrency,
          newConcurrency,
          reason: 'low_resource_usage'
        });
      }
    }
  }

  /**
   * Расчет оптимального параллелизма
   * @private
   * @param {Object} context - Контекст оптимизации
   * @returns {number} - Оптимальный параллелизм
   */
  _calculateOptimalConcurrency(context = {}) {
    // Базовый параллелизм
    let concurrency = this.pipeline.config.concurrency || 3;
    
    // Если есть информация о количестве изображений, адаптируем параллелизм
    if (context.imageCount) {
      // Для небольшого количества изображений уменьшаем параллелизм
      if (context.imageCount < 5) {
        concurrency = Math.min(concurrency, 2);
      }
      // Для большого количества изображений увеличиваем параллелизм
      else if (context.imageCount > 20) {
        concurrency = Math.min(Math.max(concurrency, 5), this.config.maxConcurrency);
      }
    }
    
    // Если есть информация о размере изображений, адаптируем параллелизм
    if (context.averageImageSize) {
      // Для больших изображений уменьшаем параллелизм
      if (context.averageImageSize > 2 * 1024 * 1024) { // > 2MB
        concurrency = Math.max(concurrency - 1, this.config.minConcurrency);
      }
    }
    
    // Учитываем текущее использование ресурсов
    const avgMemoryUsage = this._calculateAverage(this.metrics.memoryUsage);
    const avgCpuUsage = this._calculateAverage(this.metrics.cpuUsage);
    
    if (avgMemoryUsage > this.config.memoryThreshold * 90 || 
        avgCpuUsage > this.config.cpuThreshold * 90) {
      concurrency = Math.max(concurrency - 1, this.config.minConcurrency);
    }
    
    return concurrency;
  }

  /**
   * Выбор оптимального OCR-движка
   * @private
   * @param {Object} context - Контекст оптимизации
   * @returns {string} - Тип OCR-движка
   */
  _selectOptimalOCREngine(context = {}) {
    // Если пользователь явно указал движок, используем его
    if (context.ocrEngine && context.ocrEngine !== 'auto') {
      return context.ocrEngine;
    }
    
    // Если требуется высокое качество и не требуется офлайн-режим, используем Google Cloud Vision
    if (context.highQuality && !context.offline) {
      return 'google';
    }
    
    // В остальных случаях используем Tesseract
    return 'tesseract';
  }

  /**
   * Выбор оптимального движка перевода
   * @private
   * @param {Object} context - Контекст оптимизации
   * @returns {string} - Тип движка перевода
   */
  _selectOptimalTranslationEngine(context = {}) {
    // Если пользователь явно указал движок, используем его
    if (context.translationEngine && context.translationEngine !== 'auto') {
      return context.translationEngine;
    }
    
    // Если требуется высокое качество и не требуется офлайн-режим, используем DeepL
    if (context.highQuality && !context.offline) {
      return 'deepl';
    }
    
    // В остальных случаях используем Google Translate
    return 'google';
  }

  /**
   * Расчет оптимального времени жизни кэша
   * @private
   * @param {Object} context - Контекст оптимизации
   * @returns {number} - Время жизни кэша в секундах
   */
  _calculateOptimalCacheTTL(context = {}) {
    // Базовое время жизни кэша
    let cacheTTL = this.pipeline.config.cacheTTL || 86400; // 24 часа
    
    // Если требуется высокое качество, уменьшаем время жизни кэша
    if (context.highQuality) {
      cacheTTL = Math.min(cacheTTL, 43200); // 12 часов
    }
    
    return cacheTTL;
  }

  /**
   * Генерация тестовых изображений
   * @private
   * @param {number} count - Количество изображений
   * @returns {Promise<Array<Buffer>>} - Массив буферов с изображениями
   */
  async _generateTestImages(count) {
    // В реальном приложении здесь бы генерировались или загружались тестовые изображения
    // Для демонстрации создаем пустые буферы
    const images = [];
    
    for (let i = 0; i < count; i++) {
      // Создаем буфер с минимальными данными изображения
      const buffer = Buffer.from('R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7', 'base64');
      images.push(buffer);
    }
    
    return images;
  }

  /**
   * Расчет среднего значения массива
   * @private
   * @param {Array<number>} array - Массив чисел
   * @returns {number} - Среднее значение
   */
  _calculateAverage(array) {
    if (!array || array.length === 0) {
      return 0;
    }
    
    const sum = array.reduce((acc, val) => acc + val, 0);
    return sum / array.length;
  }

  /**
   * Генерация рекомендаций по оптимизации
   * @private
   * @param {Object} metrics - Метрики производительности
   * @returns {Array<string>} - Рекомендации
   */
  _generateRecommendations(metrics) {
    const recommendations = [];
    
    // Рекомендации по времени обработки
    if (metrics.processingTime > 5000) {
      recommendations.push('Увеличьте параллелизм для ускорения обработки');
    }
    
    // Рекомендации по использованию памяти
    if (metrics.memoryUsage > 80) {
      recommendations.push('Уменьшите параллелизм для снижения использования памяти');
    }
    
    // Рекомендации по использованию CPU
    if (metrics.cpuUsage > 90) {
      recommendations.push('Уменьшите параллелизм для снижения нагрузки на CPU');
    }
    
    // Рекомендации по частоте ошибок
    if (metrics.errorRate > 10) {
      recommendations.push('Проверьте настройки OCR и перевода для снижения частоты ошибок');
    }
    
    // Рекомендации по пропускной способности
    if (metrics.throughput < 0.1) {
      recommendations.push('Оптимизируйте предобработку изображений для увеличения пропускной способности');
    }
    
    // Если нет рекомендаций, добавляем общую рекомендацию
    if (recommendations.length === 0) {
      recommendations.push('Текущие настройки оптимальны');
    }
    
    return recommendations;
  }
}

module.exports = PipelineOptimizer;
