/**
 * PipelineManager - Управляющий модуль для конвейера обработки
 * 
 * Особенности:
 * - Координация всего процесса обработки
 * - Управление жизненным циклом задач
 * - Обработка ошибок и восстановление
 * - Мониторинг и отчетность
 */
class PipelineManager {
  /**
   * @param {Object} options - Опции менеджера конвейера
   * @param {JobManager} options.jobManager - Менеджер задач
   * @param {DataStore} options.dataStore - Хранилище данных
   * @param {CacheManager} options.cacheManager - Менеджер кэша
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {ErrorHandler} options.errorHandler - Обработчик ошибок
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {Object} options.config - Конфигурация конвейера
   */
  constructor(options = {}) {
    this.jobManager = options.jobManager;
    this.dataStore = options.dataStore;
    this.cacheManager = options.cacheManager;
    this.logger = options.logger;
    this.errorHandler = options.errorHandler;
    this.eventEmitter = options.eventEmitter;
    this.config = options.config || {};
    
    this.processors = new Map(); // Обработчики для разных типов задач
    this.middlewares = []; // Промежуточные обработчики
    this.hooks = new Map(); // Хуки для различных событий
    
    this._setupEventListeners();
  }

  /**
   * Регистрация обработчика для типа задачи
   * @param {string} type - Тип задачи
   * @param {Function} processor - Функция обработки
   * @returns {PipelineManager} - this для цепочки вызовов
   */
  registerProcessor(type, processor) {
    if (typeof processor !== 'function') {
      throw new Error(`Processor for type ${type} must be a function`);
    }
    
    this.processors.set(type, processor);
    this.logger?.info(`Registered processor for task type: ${type}`);
    
    return this;
  }

  /**
   * Регистрация промежуточного обработчика
   * @param {Function} middleware - Функция промежуточной обработки
   * @returns {PipelineManager} - this для цепочки вызовов
   */
  use(middleware) {
    if (typeof middleware !== 'function') {
      throw new Error('Middleware must be a function');
    }
    
    this.middlewares.push(middleware);
    this.logger?.info('Registered middleware');
    
    return this;
  }

  /**
   * Регистрация хука для события
   * @param {string} event - Название события
   * @param {Function} handler - Обработчик события
   * @returns {PipelineManager} - this для цепочки вызовов
   */
  hook(event, handler) {
    if (typeof handler !== 'function') {
      throw new Error(`Hook handler for event ${event} must be a function`);
    }
    
    if (!this.hooks.has(event)) {
      this.hooks.set(event, []);
    }
    
    this.hooks.get(event).push(handler);
    this.logger?.info(`Registered hook for event: ${event}`);
    
    return this;
  }

  /**
   * Создание и запуск задачи обработки
   * @param {string} type - Тип задачи
   * @param {Object} data - Данные для обработки
   * @param {Object} options - Опции задачи
   * @returns {Promise<Object>} - Результат выполнения задачи
   */
  async process(type, data, options = {}) {
    // Проверяем наличие обработчика для типа задачи
    if (!this.processors.has(type)) {
      throw new Error(`No processor registered for task type: ${type}`);
    }
    
    const processor = this.processors.get(type);
    const jobId = options.jobId || `job_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
    
    this.logger?.info(`Starting processing task of type ${type}`, { jobId });
    
    // Вызываем хуки перед созданием задачи
    await this._triggerHooks('beforeCreate', { type, data, options, jobId });
    
    // Создаем задачу
    const job = await this.jobManager.createJob(data, {
      ...options,
      jobId,
      type
    });
    
    // Вызываем хуки после создания задачи
    await this._triggerHooks('afterCreate', { job });
    
    // Функция выполнения задачи
    const execute = async (jobData, context) => {
      try {
        // Вызываем хуки перед выполнением задачи
        await this._triggerHooks('beforeProcess', { job, context });
        
        // Применяем промежуточные обработчики
        let processedData = jobData;
        let processContext = { ...context, job };
        
        for (const middleware of this.middlewares) {
          const result = await middleware(processedData, processContext);
          if (result !== undefined) {
            processedData = result;
          }
        }
        
        // Выполняем обработку
        const result = await processor(processedData, processContext);
        
        // Вызываем хуки после выполнения задачи
        await this._triggerHooks('afterProcess', { job, result, context });
        
        return result;
      } catch (error) {
        // Вызываем хуки при ошибке
        await this._triggerHooks('onError', { job, error, context });
        
        // Обрабатываем ошибку
        if (this.errorHandler) {
          throw this.errorHandler.handleError(error, { 
            operation: 'process', 
            type, 
            jobId,
            context
          });
        }
        
        throw error;
      }
    };
    
    // Устанавливаем функцию выполнения в опции задачи
    job.options.execute = execute;
    
    // Планируем задачу для выполнения
    await this.jobManager.scheduleJob(jobId, options);
    
    // Если задача асинхронная, возвращаем информацию о ней
    if (options.async) {
      return { jobId, status: job.status };
    }
    
    // Иначе ждем завершения задачи
    return new Promise((resolve, reject) => {
      const checkStatus = async () => {
        const currentJob = await this.jobManager.getJob(jobId);
        
        if (currentJob.status === this.jobManager.constructor.JOB_STATUS.COMPLETED) {
          resolve(currentJob.result);
        } else if (currentJob.status === this.jobManager.constructor.JOB_STATUS.FAILED) {
          reject(currentJob.error);
        } else {
          // Проверяем статус через интервал
          setTimeout(checkStatus, options.pollInterval || 500);
        }
      };
      
      checkStatus();
    });
  }

  /**
   * Получение статуса задачи
   * @param {string} jobId - ID задачи
   * @returns {Promise<Object>} - Статус задачи
   */
  async getStatus(jobId) {
    const job = await this.jobManager.getJob(jobId);
    
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    return {
      id: job.id,
      status: job.status,
      progress: job.progress,
      createdAt: job.createdAt,
      updatedAt: job.updatedAt,
      type: job.options.type,
      result: job.status === this.jobManager.constructor.JOB_STATUS.COMPLETED ? job.result : null,
      error: job.status === this.jobManager.constructor.JOB_STATUS.FAILED ? job.error : null
    };
  }

  /**
   * Отмена задачи
   * @param {string} jobId - ID задачи
   * @returns {Promise<Object>} - Обновленная задача
   */
  async cancel(jobId) {
    const job = await this.jobManager.getJob(jobId);
    
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    // Вызываем хуки перед отменой задачи
    await this._triggerHooks('beforeCancel', { job });
    
    // Отменяем задачу
    await this.jobManager.cancelJob(jobId);
    
    // Вызываем хуки после отмены задачи
    await this._triggerHooks('afterCancel', { job });
    
    return job;
  }

  /**
   * Приостановка задачи
   * @param {string} jobId - ID задачи
   * @returns {Promise<Object>} - Обновленная задача
   */
  async pause(jobId) {
    const job = await this.jobManager.getJob(jobId);
    
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    // Вызываем хуки перед приостановкой задачи
    await this._triggerHooks('beforePause', { job });
    
    // Приостанавливаем задачу
    await this.jobManager.pauseJob(jobId);
    
    // Вызываем хуки после приостановки задачи
    await this._triggerHooks('afterPause', { job });
    
    return job;
  }

  /**
   * Возобновление задачи
   * @param {string} jobId - ID задачи
   * @returns {Promise<Object>} - Обновленная задача
   */
  async resume(jobId) {
    const job = await this.jobManager.getJob(jobId);
    
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    // Вызываем хуки перед возобновлением задачи
    await this._triggerHooks('beforeResume', { job });
    
    // Возобновляем задачу
    await this.jobManager.resumeJob(jobId);
    
    // Вызываем хуки после возобновления задачи
    await this._triggerHooks('afterResume', { job });
    
    return job;
  }

  /**
   * Получение списка активных задач
   * @param {Object} filter - Фильтр задач
   * @returns {Promise<Array<Object>>} - Список задач
   */
  async getActiveJobs(filter = {}) {
    const activeStatuses = [
      this.jobManager.constructor.JOB_STATUS.QUEUED,
      this.jobManager.constructor.JOB_STATUS.RUNNING,
      this.jobManager.constructor.JOB_STATUS.PAUSED
    ];
    
    const jobs = await this.jobManager.getJobs({
      ...filter,
      status: filter.status || activeStatuses
    });
    
    return jobs.map(job => ({
      id: job.id,
      status: job.status,
      progress: job.progress,
      createdAt: job.createdAt,
      updatedAt: job.updatedAt,
      type: job.options.type
    }));
  }

  /**
   * Получение статистики конвейера
   * @returns {Promise<Object>} - Статистика конвейера
   */
  async getStats() {
    const jobStats = await this.jobManager.getJobStats();
    const resourceStats = await this.jobManager.getResourceStats();
    const cacheStats = await this.cacheManager.getStats();
    
    return {
      jobs: jobStats,
      resources: resourceStats,
      cache: cacheStats,
      processors: Array.from(this.processors.keys()),
      middlewares: this.middlewares.length,
      hooks: Array.from(this.hooks.entries()).map(([event, handlers]) => ({
        event,
        handlers: handlers.length
      }))
    };
  }

  /**
   * Настройка слушателей событий
   * @private
   */
  _setupEventListeners() {
    if (this.eventEmitter) {
      // Слушаем события изменения статуса задачи
      this.eventEmitter.on('job:status_changed', async (data) => {
        const { jobId, newStatus } = data;
        
        // Логируем изменение статуса
        this.logger?.debug(`Job ${jobId} status changed to ${newStatus}`);
        
        // Вызываем соответствующие хуки
        if (newStatus === this.jobManager.constructor.JOB_STATUS.COMPLETED) {
          const job = await this.jobManager.getJob(jobId);
          await this._triggerHooks('onComplete', { job, result: job.result });
        } else if (newStatus === this.jobManager.constructor.JOB_STATUS.FAILED) {
          const job = await this.jobManager.getJob(jobId);
          await this._triggerHooks('onFail', { job, error: job.error });
        }
      });
      
      // Слушаем события обновления прогресса задачи
      this.eventEmitter.on('job:progress_updated', async (data) => {
        const { jobId, newProgress } = data;
        
        // Логируем обновление прогресса
        this.logger?.debug(`Job ${jobId} progress updated to ${newProgress}%`);
        
        // Вызываем хуки обновления прогресса
        const job = await this.jobManager.getJob(jobId);
        await this._triggerHooks('onProgress', { job, progress: newProgress });
      });
    }
  }

  /**
   * Вызов хуков для события
   * @private
   * @param {string} event - Название события
   * @param {Object} data - Данные для передачи в хуки
   * @returns {Promise<void>}
   */
  async _triggerHooks(event, data) {
    if (!this.hooks.has(event)) {
      return;
    }
    
    const handlers = this.hooks.get(event);
    
    for (const handler of handlers) {
      try {
        await handler(data);
      } catch (error) {
        this.logger?.error(`Error in hook handler for event ${event}`, error);
      }
    }
  }
}

module.exports = PipelineManager;
