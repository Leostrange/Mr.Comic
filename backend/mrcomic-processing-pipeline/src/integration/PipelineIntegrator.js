/**
 * PipelineIntegrator - Интеграция компонентов UI с конвейером обработки
 * 
 * Особенности:
 * - Централизованное управление интеграцией компонентов UI с конвейером
 * - Синхронизация настроек между компонентами
 * - Управление потоком данных между компонентами
 * - Обработка событий и обновление состояния
 */
class PipelineIntegrator {
  /**
   * @param {Object} options - Опции интегратора
   * @param {UIConnector} options.uiConnector - Коннектор для взаимодействия с конвейером
   * @param {SettingsIntegration} options.settingsIntegration - Компонент интеграции с экраном настроек
   * @param {TextEditorIntegration} options.textEditorIntegration - Компонент интеграции с редактором текста
   * @param {BatchProcessingIntegration} options.batchProcessingIntegration - Компонент интеграции с экраном пакетной обработки
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {Object} options.config - Конфигурация интегратора
   */
  constructor(options = {}) {
    this.uiConnector = options.uiConnector;
    this.settingsIntegration = options.settingsIntegration;
    this.textEditorIntegration = options.textEditorIntegration;
    this.batchProcessingIntegration = options.batchProcessingIntegration;
    this.eventEmitter = options.eventEmitter;
    this.logger = options.logger;
    this.config = options.config || {};
    
    // Проверяем наличие необходимых компонентов
    if (!this.uiConnector) {
      throw new Error('UIConnector is required for PipelineIntegrator');
    }
    
    // Регистрируем обработчики событий
    this._registerEventHandlers();
    
    this.logger?.info('PipelineIntegrator initialized');
  }

  /**
   * Инициализация интеграции компонентов с конвейером
   * @returns {boolean} - true, если инициализация прошла успешно
   */
  initialize() {
    try {
      this.logger?.info('Initializing pipeline integration');
      
      // Инициализируем интеграцию с экраном настроек
      if (this.settingsIntegration) {
        this._initializeSettingsIntegration();
      }
      
      // Инициализируем интеграцию с редактором текста
      if (this.textEditorIntegration) {
        this._initializeTextEditorIntegration();
      }
      
      // Инициализируем интеграцию с экраном пакетной обработки
      if (this.batchProcessingIntegration) {
        this._initializeBatchProcessingIntegration();
      }
      
      // Уведомляем о завершении инициализации
      this.eventEmitter?.emit('integrator:initialized', {
        components: {
          settingsIntegration: !!this.settingsIntegration,
          textEditorIntegration: !!this.textEditorIntegration,
          batchProcessingIntegration: !!this.batchProcessingIntegration
        }
      });
      
      return true;
    } catch (error) {
      this.logger?.error('Error initializing pipeline integration', error);
      return false;
    }
  }

  /**
   * Применение настроек ко всем компонентам
   * @param {Object} settings - Настройки для применения
   * @returns {boolean} - true, если настройки были успешно применены
   */
  applySettings(settings) {
    try {
      this.logger?.info('Applying settings to all components', settings);
      
      // Применяем настройки к компоненту интеграции с экраном настроек
      if (this.settingsIntegration) {
        this.settingsIntegration.updateSettings(settings);
      }
      
      // Применяем настройки к компоненту интеграции с редактором текста
      if (this.textEditorIntegration && settings.interface) {
        // Передаем только настройки интерфейса
        this.eventEmitter?.emit('settings:changed', {
          section: 'interface',
          settings: {
            interface: settings.interface
          }
        });
      }
      
      // Применяем настройки к компоненту интеграции с экраном пакетной обработки
      if (this.batchProcessingIntegration) {
        // Создаем объект с настройками для пакетной обработки
        const batchSettings = {
          ocr: settings.ocr,
          translation: settings.translation,
          performance: settings.performance
        };
        
        this.batchProcessingIntegration.updateOptions(batchSettings);
      }
      
      // Уведомляем о применении настроек
      this.eventEmitter?.emit('settings:applied', {
        settings
      });
      
      return true;
    } catch (error) {
      this.logger?.error('Error applying settings to components', error);
      return false;
    }
  }

  /**
   * Инициализация интеграции с экраном настроек
   * @private
   */
  _initializeSettingsIntegration() {
    if (!this.settingsIntegration) {
      return;
    }
    
    this.logger?.debug('Initializing settings integration');
    
    // Подписываемся на события изменения настроек
    this.eventEmitter?.on('settings:saved', (data) => {
      // Применяем настройки ко всем компонентам
      this.applySettings(data.settings);
      
      // Передаем настройки в конвейер через UIConnector
      // В реальной реализации здесь был бы код для обновления настроек конвейера
    });
  }

  /**
   * Инициализация интеграции с редактором текста
   * @private
   */
  _initializeTextEditorIntegration() {
    if (!this.textEditorIntegration) {
      return;
    }
    
    this.logger?.debug('Initializing text editor integration');
    
    // Подписываемся на события изменения текста
    this.eventEmitter?.on('editor:text_changed', async (data) => {
      try {
        // Если изменился оригинальный текст и есть переведенный текст,
        // предлагаем обновить перевод
        if (data.originalText && data.translatedText) {
          // В реальной реализации здесь был бы код для обновления перевода
          // через UIConnector
        }
      } catch (error) {
        this.logger?.error('Error handling text change', error);
      }
    });
    
    // Подписываемся на события запроса перевода
    this.eventEmitter?.on('editor:translate_request', async (data) => {
      try {
        // Выполняем перевод через UIConnector
        const result = await this.uiConnector.performTranslation(
          data.text,
          data.sourceLanguage,
          data.targetLanguage
        );
        
        // Уведомляем о завершении перевода
        this.eventEmitter?.emit('editor:translate_completed', {
          requestId: data.requestId,
          result
        });
      } catch (error) {
        this.logger?.error('Error handling translation request', error);
        
        // Уведомляем об ошибке
        this.eventEmitter?.emit('editor:translate_failed', {
          requestId: data.requestId,
          error: error.message
        });
      }
    });
  }

  /**
   * Инициализация интеграции с экраном пакетной обработки
   * @private
   */
  _initializeBatchProcessingIntegration() {
    if (!this.batchProcessingIntegration) {
      return;
    }
    
    this.logger?.debug('Initializing batch processing integration');
    
    // Подписываемся на события запроса пакетной обработки
    this.eventEmitter?.on('batch:process_request', async (data) => {
      try {
        // Выполняем пакетную обработку через UIConnector
        const result = await this.uiConnector.performBatchProcessing(
          data.images,
          data.options
        );
        
        // Уведомляем о завершении пакетной обработки
        this.eventEmitter?.emit('batch:process_completed', {
          batchId: data.batchId,
          result
        });
      } catch (error) {
        this.logger?.error('Error handling batch processing request', error);
        
        // Уведомляем об ошибке
        this.eventEmitter?.emit('batch:process_failed', {
          batchId: data.batchId,
          error: error.message
        });
      }
    });
    
    // Подписываемся на события отмены пакетной обработки
    this.eventEmitter?.on('batch:cancel_request', (data) => {
      try {
        // Отменяем обработку через UIConnector
        const result = this.uiConnector.cancelProcessing();
        
        // Уведомляем об отмене
        this.eventEmitter?.emit('batch:cancel_completed', {
          batchId: data.batchId,
          result
        });
      } catch (error) {
        this.logger?.error('Error handling batch cancellation request', error);
      }
    });
    
    // Передаем события прогресса от конвейера к компоненту пакетной обработки
    this.eventEmitter?.on('ui:progress_update', (data) => {
      if (data.batchId) {
        // Передаем информацию о прогрессе
        this.eventEmitter?.emit('pipeline:item_progress', {
          itemId: data.jobId,
          batchId: data.batchId,
          progress: data.progress
        });
      }
    });
  }

  /**
   * Регистрация обработчиков событий
   * @private
   */
  _registerEventHandlers() {
    if (!this.eventEmitter) {
      return;
    }
    
    // Обработчик события инициализации приложения
    this.eventEmitter.on('app:initialized', () => {
      // Инициализируем интеграцию
      this.initialize();
    });
    
    // Обработчик события загрузки настроек
    this.eventEmitter.on('settings:loaded', (data) => {
      // Применяем загруженные настройки
      this.applySettings(data.settings);
    });
    
    // Инициализируем интеграцию сразу при создании
    this.initialize();
  }
}

module.exports = PipelineIntegrator;
