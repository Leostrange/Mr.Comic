/**
 * JobManager - Менеджер задач обработки для конвейера
 * 
 * Особенности:
 * - Создание и управление задачами обработки
 * - Отслеживание состояния и прогресса задач
 * - Распределение ресурсов между задачами
 * - Приоритизация задач
 */
class JobManager {
  /**
   * Статусы задач
   * @readonly
   * @enum {string}
   */
  static JOB_STATUS = {
    CREATED: 'created',
    QUEUED: 'queued',
    RUNNING: 'running',
    PAUSED: 'paused',
    COMPLETED: 'completed',
    FAILED: 'failed',
    CANCELLED: 'cancelled'
  };

  /**
   * @param {Object} options - Опции менеджера задач
   * @param {AsyncTaskQueue} options.taskQueue - Очередь асинхронных задач
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {ErrorHandler} options.errorHandler - Обработчик ошибок
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {Object} options.config - Конфигурация менеджера задач
   */
  constructor(options = {}) {
    this.taskQueue = options.taskQueue;
    this.logger = options.logger;
    this.errorHandler = options.errorHandler;
    this.eventEmitter = options.eventEmitter;
    this.config = options.config || {};
    
    this.jobs = new Map(); // Хранилище задач по ID
    this.resourcePool = new Map(); // Пул ресурсов
  }

  /**
   * Создание новой задачи обработки
   * @param {Object} data - Данные для обработки
   * @param {Object} options - Опции задачи
   * @returns {Promise<Object>} - Созданная задача
   */
  async createJob(data, options = {}) {
    const jobId = options.jobId || `job_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
    
    // Проверяем, что задача с таким ID не существует
    if (this.jobs.has(jobId)) {
      throw new Error(`Job with ID ${jobId} already exists`);
    }
    
    this.logger?.info(`Creating job ${jobId}`);
    
    // Создаем задачу
    const job = {
      id: jobId,
      data,
      options,
      status: JobManager.JOB_STATUS.CREATED,
      progress: 0,
      createdAt: Date.now(),
      updatedAt: Date.now(),
      result: null,
      error: null,
      tasks: [], // Подзадачи
      resources: {}, // Выделенные ресурсы
      metadata: options.metadata || {}
    };
    
    // Сохраняем задачу
    this.jobs.set(jobId, job);
    
    // Уведомляем о создании задачи
    this.eventEmitter?.emit('job:created', { jobId, options });
    
    return job;
  }

  /**
   * Получение задачи по ID
   * @param {string} jobId - ID задачи
   * @returns {Object|undefined} - Задача или undefined, если не найдена
   */
  getJob(jobId) {
    return this.jobs.get(jobId);
  }

  /**
   * Получение всех задач
   * @param {Object} filter - Фильтр задач
   * @returns {Array<Object>} - Массив задач
   */
  getJobs(filter = {}) {
    let jobs = Array.from(this.jobs.values());
    
    // Применяем фильтры
    if (filter.status) {
      jobs = jobs.filter(job => job.status === filter.status);
    }
    
    if (filter.createdAfter) {
      jobs = jobs.filter(job => job.createdAt >= filter.createdAfter);
    }
    
    if (filter.createdBefore) {
      jobs = jobs.filter(job => job.createdAt <= filter.createdBefore);
    }
    
    // Сортировка
    if (filter.sortBy) {
      const sortField = filter.sortBy;
      const sortOrder = filter.sortOrder === 'desc' ? -1 : 1;
      
      jobs.sort((a, b) => {
        if (a[sortField] < b[sortField]) return -1 * sortOrder;
        if (a[sortField] > b[sortField]) return 1 * sortOrder;
        return 0;
      });
    } else {
      // По умолчанию сортируем по времени создания (сначала новые)
      jobs.sort((a, b) => b.createdAt - a.createdAt);
    }
    
    // Пагинация
    if (filter.limit) {
      const offset = filter.offset || 0;
      jobs = jobs.slice(offset, offset + filter.limit);
    }
    
    return jobs;
  }

  /**
   * Обновление статуса задачи
   * @param {string} jobId - ID задачи
   * @param {string} status - Новый статус
   * @param {Object} data - Дополнительные данные
   * @returns {Object} - Обновленная задача
   */
  async updateJobStatus(jobId, status, data = {}) {
    const job = this.jobs.get(jobId);
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    const oldStatus = job.status;
    
    // Проверяем валидность перехода статуса
    this._validateStatusTransition(oldStatus, status);
    
    this.logger?.info(`Updating job ${jobId} status from ${oldStatus} to ${status}`);
    
    // Обновляем статус
    job.status = status;
    job.updatedAt = Date.now();
    
    // Обновляем дополнительные данные
    if (data.result !== undefined) {
      job.result = data.result;
    }
    
    if (data.error !== undefined) {
      job.error = data.error;
    }
    
    if (data.metadata) {
      job.metadata = { ...job.metadata, ...data.metadata };
    }
    
    // Уведомляем об изменении статуса
    this.eventEmitter?.emit('job:status_changed', { 
      jobId, 
      oldStatus, 
      newStatus: status,
      data
    });
    
    return job;
  }

  /**
   * Обновление прогресса задачи
   * @param {string} jobId - ID задачи
   * @param {number} progress - Прогресс (0-100)
   * @param {Object} data - Дополнительные данные
   * @returns {Object} - Обновленная задача
   */
  async updateJobProgress(jobId, progress, data = {}) {
    const job = this.jobs.get(jobId);
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    // Нормализуем прогресс
    progress = Math.max(0, Math.min(100, progress));
    
    const oldProgress = job.progress;
    
    this.logger?.debug(`Updating job ${jobId} progress from ${oldProgress} to ${progress}`);
    
    // Обновляем прогресс
    job.progress = progress;
    job.updatedAt = Date.now();
    
    // Обновляем дополнительные данные
    if (data.metadata) {
      job.metadata = { ...job.metadata, ...data.metadata };
    }
    
    // Уведомляем об изменении прогресса
    this.eventEmitter?.emit('job:progress_updated', { 
      jobId, 
      oldProgress, 
      newProgress: progress,
      data
    });
    
    return job;
  }

  /**
   * Планирование задачи для выполнения
   * @param {string} jobId - ID задачи
   * @param {Object} options - Опции планирования
   * @returns {Promise<Object>} - Запланированная задача
   */
  async scheduleJob(jobId, options = {}) {
    const job = this.jobs.get(jobId);
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    // Проверяем, что задача в правильном статусе
    if (job.status !== JobManager.JOB_STATUS.CREATED && job.status !== JobManager.JOB_STATUS.PAUSED) {
      throw new Error(`Cannot schedule job ${jobId} with status ${job.status}`);
    }
    
    this.logger?.info(`Scheduling job ${jobId}`);
    
    // Обновляем статус задачи
    await this.updateJobStatus(jobId, JobManager.JOB_STATUS.QUEUED);
    
    // Создаем задачу для очереди
    const priority = options.priority || job.options.priority || 0;
    
    // Функция выполнения задачи
    const execute = async (context) => {
      try {
        // Обновляем статус задачи
        await this.updateJobStatus(jobId, JobManager.JOB_STATUS.RUNNING);
        
        // Выполняем задачу
        const result = await this._executeJob(job, context);
        
        // Обновляем статус задачи
        await this.updateJobStatus(jobId, JobManager.JOB_STATUS.COMPLETED, { result });
        
        return result;
      } catch (error) {
        // Обновляем статус задачи
        await this.updateJobStatus(jobId, JobManager.JOB_STATUS.FAILED, { error });
        
        throw error;
      }
    };
    
    // Добавляем задачу в очередь
    const task = {
      id: `task_${jobId}`,
      execute,
      context: {
        jobId,
        ...options
      }
    };
    
    const taskPromise = this.taskQueue.enqueue(task, priority);
    
    // Сохраняем информацию о задаче
    job.tasks.push({
      id: task.id,
      priority,
      queuedAt: Date.now()
    });
    
    // Уведомляем о планировании задачи
    this.eventEmitter?.emit('job:scheduled', { 
      jobId, 
      taskId: task.id,
      priority
    });
    
    return job;
  }

  /**
   * Приоритизация задачи
   * @param {string} jobId - ID задачи
   * @param {number} priority - Новый приоритет
   * @returns {Object} - Обновленная задача
   */
  async prioritizeJob(jobId, priority) {
    const job = this.jobs.get(jobId);
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    this.logger?.info(`Prioritizing job ${jobId} with priority ${priority}`);
    
    // Обновляем приоритет задачи
    job.options.priority = priority;
    
    // Если задача в очереди, обновляем приоритет в очереди
    if (job.status === JobManager.JOB_STATUS.QUEUED && job.tasks.length > 0) {
      const lastTask = job.tasks[job.tasks.length - 1];
      this.taskQueue.changePriority(lastTask.id, priority);
    }
    
    // Уведомляем об изменении приоритета
    this.eventEmitter?.emit('job:prioritized', { 
      jobId, 
      priority
    });
    
    return job;
  }

  /**
   * Приостановка задачи
   * @param {string} jobId - ID задачи
   * @returns {Object} - Обновленная задача
   */
  async pauseJob(jobId) {
    const job = this.jobs.get(jobId);
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    // Проверяем, что задача в правильном статусе
    if (job.status !== JobManager.JOB_STATUS.QUEUED && job.status !== JobManager.JOB_STATUS.RUNNING) {
      throw new Error(`Cannot pause job ${jobId} with status ${job.status}`);
    }
    
    this.logger?.info(`Pausing job ${jobId}`);
    
    // Если задача в очереди, удаляем ее из очереди
    if (job.status === JobManager.JOB_STATUS.QUEUED && job.tasks.length > 0) {
      const lastTask = job.tasks[job.tasks.length - 1];
      this.taskQueue.removeTask(lastTask.id);
    }
    
    // Обновляем статус задачи
    await this.updateJobStatus(jobId, JobManager.JOB_STATUS.PAUSED);
    
    // Уведомляем о приостановке задачи
    this.eventEmitter?.emit('job:paused', { jobId });
    
    return job;
  }

  /**
   * Возобновление задачи
   * @param {string} jobId - ID задачи
   * @param {Object} options - Опции возобновления
   * @returns {Object} - Обновленная задача
   */
  async resumeJob(jobId, options = {}) {
    const job = this.jobs.get(jobId);
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    // Проверяем, что задача в правильном статусе
    if (job.status !== JobManager.JOB_STATUS.PAUSED) {
      throw new Error(`Cannot resume job ${jobId} with status ${job.status}`);
    }
    
    this.logger?.info(`Resuming job ${jobId}`);
    
    // Планируем задачу для выполнения
    return this.scheduleJob(jobId, options);
  }

  /**
   * Отмена задачи
   * @param {string} jobId - ID задачи
   * @returns {Object} - Обновленная задача
   */
  async cancelJob(jobId) {
    const job = this.jobs.get(jobId);
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    // Проверяем, что задача в правильном статусе
    if (job.status === JobManager.JOB_STATUS.COMPLETED || 
        job.status === JobManager.JOB_STATUS.FAILED || 
        job.status === JobManager.JOB_STATUS.CANCELLED) {
      throw new Error(`Cannot cancel job ${jobId} with status ${job.status}`);
    }
    
    this.logger?.info(`Cancelling job ${jobId}`);
    
    // Если задача в очереди, удаляем ее из очереди
    if (job.status === JobManager.JOB_STATUS.QUEUED && job.tasks.length > 0) {
      const lastTask = job.tasks[job.tasks.length - 1];
      this.taskQueue.removeTask(lastTask.id);
    }
    
    // Освобождаем ресурсы
    await this.releaseResources(jobId);
    
    // Обновляем статус задачи
    await this.updateJobStatus(jobId, JobManager.JOB_STATUS.CANCELLED);
    
    // Уведомляем об отмене задачи
    this.eventEmitter?.emit('job:cancelled', { jobId });
    
    return job;
  }

  /**
   * Удаление задачи
   * @param {string} jobId - ID задачи
   * @returns {boolean} - true, если задача была удалена
   */
  async deleteJob(jobId) {
    const job = this.jobs.get(jobId);
    if (!job) {
      return false;
    }
    
    this.logger?.info(`Deleting job ${jobId}`);
    
    // Если задача активна, отменяем ее
    if (job.status === JobManager.JOB_STATUS.QUEUED || 
        job.status === JobManager.JOB_STATUS.RUNNING || 
        job.status === JobManager.JOB_STATUS.PAUSED) {
      await this.cancelJob(jobId);
    }
    
    // Удаляем задачу
    this.jobs.delete(jobId);
    
    // Уведомляем об удалении задачи
    this.eventEmitter?.emit('job:deleted', { jobId });
    
    return true;
  }

  /**
   * Выделение ресурсов для задачи
   * @param {string} jobId - ID задачи
   * @param {Object} resources - Ресурсы для выделения
   * @returns {Object} - Выделенные ресурсы
   */
  async allocateResources(jobId, resources) {
    const job = this.jobs.get(jobId);
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    this.logger?.debug(`Allocating resources for job ${jobId}`, resources);
    
    // Проверяем доступность ресурсов
    for (const [resourceType, amount] of Object.entries(resources)) {
      const available = this._getAvailableResource(resourceType);
      if (available < amount) {
        throw new Error(`Not enough ${resourceType} resources: requested ${amount}, available ${available}`);
      }
    }
    
    // Выделяем ресурсы
    for (const [resourceType, amount] of Object.entries(resources)) {
      // Обновляем пул ресурсов
      const current = this.resourcePool.get(resourceType) || { total: 0, allocated: 0 };
      current.allocated += amount;
      this.resourcePool.set(resourceType, current);
      
      // Обновляем ресурсы задачи
      job.resources[resourceType] = (job.resources[resourceType] || 0) + amount;
    }
    
    // Уведомляем о выделении ресурсов
    this.eventEmitter?.emit('job:resources_allocated', { 
      jobId, 
      resources
    });
    
    return job.resources;
  }

  /**
   * Освобождение ресурсов задачи
   * @param {string} jobId - ID задачи
   * @param {Object} resources - Ресурсы для освобождения (если не указаны, освобождаются все)
   * @returns {Object} - Оставшиеся выделенные ресурсы
   */
  async releaseResources(jobId, resources = null) {
    const job = this.jobs.get(jobId);
    if (!job) {
      throw new Error(`Job with ID ${jobId} not found`);
    }
    
    // Если ресурсы не указаны, освобождаем все
    if (resources === null) {
      resources = { ...job.resources };
    }
    
    this.logger?.debug(`Releasing resources for job ${jobId}`, resources);
    
    // Освобождаем ресурсы
    for (const [resourceType, amount] of Object.entries(resources)) {
      // Проверяем, что у задачи есть такие ресурсы
      const allocated = job.resources[resourceType] || 0;
      const toRelease = Math.min(allocated, amount);
      
      if (toRelease > 0) {
        // Обновляем пул ресурсов
        const current = this.resourcePool.get(resourceType);
        if (current) {
          current.allocated -= toRelease;
          this.resourcePool.set(resourceType, current);
        }
        
        // Обновляем ресурсы задачи
        job.resources[resourceType] -= toRelease;
        if (job.resources[resourceType] === 0) {
          delete job.resources[resourceType];
        }
      }
    }
    
    // Уведомляем об освобождении ресурсов
    this.eventEmitter?.emit('job:resources_released', { 
      jobId, 
      resources
    });
    
    return job.resources;
  }

  /**
   * Настройка доступных ресурсов
   * @param {string} resourceType - Тип ресурса
   * @param {number} total - Общее количество ресурса
   */
  setResourceLimit(resourceType, total) {
    const current = this.resourcePool.get(resourceType) || { total: 0, allocated: 0 };
    current.total = total;
    this.resourcePool.set(resourceType, current);
    
    this.logger?.info(`Resource limit for ${resourceType} set to ${total}`);
    
    // Уведомляем об изменении лимита ресурсов
    this.eventEmitter?.emit('resource:limit_changed', { 
      resourceType, 
      total
    });
  }

  /**
   * Получение статистики ресурсов
   * @returns {Object} - Статистика ресурсов
   */
  getResourceStats() {
    const stats = {};
    
    for (const [resourceType, data] of this.resourcePool.entries()) {
      stats[resourceType] = {
        total: data.total,
        allocated: data.allocated,
        available: data.total - data.allocated
      };
    }
    
    return stats;
  }

  /**
   * Получение статистики задач
   * @returns {Object} - Статистика задач
   */
  getJobStats() {
    const stats = {
      total: this.jobs.size,
      byStatus: {}
    };
    
    // Подсчитываем количество задач по статусам
    for (const job of this.jobs.values()) {
      if (!stats.byStatus[job.status]) {
        stats.byStatus[job.status] = 0;
      }
      stats.byStatus[job.status]++;
    }
    
    return stats;
  }

  /**
   * Внутренний метод для выполнения задачи
   * @private
   * @param {Object} job - Задача
   * @param {Object} context - Контекст выполнения
   * @returns {Promise<any>} - Результат выполнения задачи
   */
  async _executeJob(job, context) {
    // Здесь должна быть логика выполнения задачи
    // В реальной реализации это будет зависеть от типа задачи
    
    // Пример простой реализации:
    if (typeof job.options.execute === 'function') {
      return job.options.execute(job.data, context);
    }
    
    // По умолчанию просто возвращаем данные задачи
    return job.data;
  }

  /**
   * Проверка валидности перехода статуса
   * @private
   * @param {string} fromStatus - Текущий статус
   * @param {string} toStatus - Новый статус
   * @throws {Error} - Если переход невалиден
   */
  _validateStatusTransition(fromStatus, toStatus) {
    // Определяем допустимые переходы
    const validTransitions = {
      [JobManager.JOB_STATUS.CREATED]: [
        JobManager.JOB_STATUS.QUEUED,
        JobManager.JOB_STATUS.CANCELLED
      ],
      [JobManager.JOB_STATUS.QUEUED]: [
        JobManager.JOB_STATUS.RUNNING,
        JobManager.JOB_STATUS.PAUSED,
        JobManager.JOB_STATUS.CANCELLED
      ],
      [JobManager.JOB_STATUS.RUNNING]: [
        JobManager.JOB_STATUS.PAUSED,
        JobManager.JOB_STATUS.COMPLETED,
        JobManager.JOB_STATUS.FAILED,
        JobManager.JOB_STATUS.CANCELLED
      ],
      [JobManager.JOB_STATUS.PAUSED]: [
        JobManager.JOB_STATUS.QUEUED,
        JobManager.JOB_STATUS.CANCELLED
      ],
      [JobManager.JOB_STATUS.COMPLETED]: [],
      [JobManager.JOB_STATUS.FAILED]: [
        JobManager.JOB_STATUS.QUEUED
      ],
      [JobManager.JOB_STATUS.CANCELLED]: []
    };
    
    // Проверяем, что переход допустим
    if (!validTransitions[fromStatus]?.includes(toStatus)) {
      throw new Error(`Invalid status transition from ${fromStatus} to ${toStatus}`);
    }
  }

  /**
   * Получение доступного количества ресурса
   * @private
   * @param {string} resourceType - Тип ресурса
   * @returns {number} - Доступное количество
   */
  _getAvailableResource(resourceType) {
    const resource = this.resourcePool.get(resourceType);
    if (!resource) {
      return 0;
    }
    
    return resource.total - resource.allocated;
  }
}

module.exports = JobManager;
