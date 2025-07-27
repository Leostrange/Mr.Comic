/**
 * AsyncTaskQueue - Очередь асинхронных задач для конвейера обработки
 * 
 * Особенности:
 * - Асинхронное выполнение задач
 * - Ограничение параллельного выполнения
 * - Приоритизация задач
 * - Обработка ошибок и повторные попытки
 */
class AsyncTaskQueue {
  /**
   * @param {Object} options - Опции очереди задач
   * @param {number} options.maxConcurrent - Максимальное количество параллельных задач
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {ErrorHandler} options.errorHandler - Обработчик ошибок
   * @param {EventEmitter} options.eventEmitter - Система событий
   */
  constructor(options = {}) {
    this.maxConcurrent = options.maxConcurrent || 4;
    this.logger = options.logger;
    this.errorHandler = options.errorHandler;
    this.eventEmitter = options.eventEmitter;
    
    this.queue = [];
    this.running = 0;
    this.paused = false;
    this.taskMap = new Map(); // Для отслеживания задач по ID
  }

  /**
   * Добавление задачи в очередь
   * @param {Object} task - Задача для выполнения
   * @param {string} task.id - Уникальный идентификатор задачи
   * @param {Function} task.execute - Функция для выполнения
   * @param {Object} task.context - Контекст выполнения
   * @param {number} priority - Приоритет задачи (чем выше, тем раньше выполняется)
   * @returns {Promise<any>} - Promise, который резолвится результатом выполнения задачи
   */
  async enqueue(task, priority = 0) {
    if (!task.id) {
      task.id = `task_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
    }
    
    if (!task.execute || typeof task.execute !== 'function') {
      throw new Error('Task must have an execute function');
    }
    
    this.logger?.debug(`Enqueueing task ${task.id}`, { priority });
    
    // Создаем Promise для отслеживания результата выполнения задачи
    let resolve, reject;
    const promise = new Promise((res, rej) => {
      resolve = res;
      reject = rej;
    });
    
    // Добавляем задачу в очередь
    const queueItem = {
      task,
      priority,
      resolve,
      reject,
      addedAt: Date.now()
    };
    
    this.queue.push(queueItem);
    this.taskMap.set(task.id, queueItem);
    
    // Сортируем очередь по приоритету (по убыванию)
    this.queue.sort((a, b) => {
      if (b.priority !== a.priority) {
        return b.priority - a.priority;
      }
      // При равном приоритете - по времени добавления (FIFO)
      return a.addedAt - b.addedAt;
    });
    
    // Уведомляем о добавлении задачи
    this.eventEmitter?.emit('task:queued', { taskId: task.id, priority });
    
    // Запускаем обработку очереди, если не на паузе
    if (!this.paused) {
      this._processQueue();
    }
    
    return promise;
  }

  /**
   * Получение задачи из очереди по ID
   * @param {string} taskId - ID задачи
   * @returns {Object|undefined} - Задача или undefined, если не найдена
   */
  getTask(taskId) {
    return this.taskMap.get(taskId);
  }

  /**
   * Удаление задачи из очереди
   * @param {string} taskId - ID задачи
   * @returns {boolean} - true, если задача была удалена, false - если не найдена
   */
  removeTask(taskId) {
    const queueItem = this.taskMap.get(taskId);
    if (!queueItem) {
      return false;
    }
    
    // Удаляем из очереди
    const index = this.queue.indexOf(queueItem);
    if (index !== -1) {
      this.queue.splice(index, 1);
    }
    
    // Удаляем из Map
    this.taskMap.delete(taskId);
    
    // Уведомляем об удалении задачи
    this.eventEmitter?.emit('task:removed', { taskId });
    
    return true;
  }

  /**
   * Изменение приоритета задачи
   * @param {string} taskId - ID задачи
   * @param {number} newPriority - Новый приоритет
   * @returns {boolean} - true, если приоритет был изменен, false - если задача не найдена
   */
  changePriority(taskId, newPriority) {
    const queueItem = this.taskMap.get(taskId);
    if (!queueItem) {
      return false;
    }
    
    queueItem.priority = newPriority;
    
    // Пересортируем очередь
    this.queue.sort((a, b) => {
      if (b.priority !== a.priority) {
        return b.priority - a.priority;
      }
      return a.addedAt - b.addedAt;
    });
    
    // Уведомляем об изменении приоритета
    this.eventEmitter?.emit('task:priority_changed', { taskId, priority: newPriority });
    
    return true;
  }

  /**
   * Приостановка обработки очереди
   */
  pause() {
    if (!this.paused) {
      this.paused = true;
      this.logger?.info('Task queue paused');
      this.eventEmitter?.emit('queue:paused');
    }
  }

  /**
   * Возобновление обработки очереди
   */
  resume() {
    if (this.paused) {
      this.paused = false;
      this.logger?.info('Task queue resumed');
      this.eventEmitter?.emit('queue:resumed');
      this._processQueue();
    }
  }

  /**
   * Очистка очереди
   * @param {boolean} rejectRemaining - Отклонять ли оставшиеся задачи
   */
  clear(rejectRemaining = true) {
    if (rejectRemaining) {
      for (const item of this.queue) {
        item.reject(new Error('Queue cleared'));
      }
    }
    
    this.queue = [];
    this.taskMap.clear();
    
    this.logger?.info('Task queue cleared');
    this.eventEmitter?.emit('queue:cleared');
  }

  /**
   * Получение статистики очереди
   * @returns {Object} - Статистика очереди
   */
  getStats() {
    return {
      queued: this.queue.length,
      running: this.running,
      paused: this.paused,
      maxConcurrent: this.maxConcurrent
    };
  }

  /**
   * Установка максимального количества параллельных задач
   * @param {number} count - Максимальное количество параллельных задач
   */
  setMaxConcurrent(count) {
    if (count < 1) {
      throw new Error('maxConcurrent must be at least 1');
    }
    
    this.maxConcurrent = count;
    this.logger?.info(`Max concurrent tasks set to ${count}`);
    this.eventEmitter?.emit('queue:max_concurrent_changed', { maxConcurrent: count });
    
    // Если есть свободные слоты, запускаем обработку очереди
    if (!this.paused && this.running < this.maxConcurrent) {
      this._processQueue();
    }
  }

  /**
   * Внутренний метод для обработки очереди
   * @private
   */
  _processQueue() {
    // Если на паузе или нет свободных слотов, выходим
    if (this.paused || this.running >= this.maxConcurrent) {
      return;
    }
    
    // Если очередь пуста, выходим
    if (this.queue.length === 0) {
      return;
    }
    
    // Запускаем задачи, пока есть свободные слоты и задачи в очереди
    while (this.running < this.maxConcurrent && this.queue.length > 0) {
      const item = this.queue.shift();
      this.taskMap.delete(item.task.id);
      
      this.running++;
      
      // Уведомляем о начале выполнения задачи
      this.eventEmitter?.emit('task:started', { taskId: item.task.id });
      
      // Выполняем задачу
      this._executeTask(item);
    }
  }

  /**
   * Выполнение задачи
   * @private
   * @param {Object} item - Элемент очереди
   */
  async _executeTask(item) {
    const { task, resolve, reject } = item;
    const startTime = Date.now();
    
    this.logger?.debug(`Executing task ${task.id}`);
    
    try {
      // Выполняем задачу
      const result = await task.execute(task.context);
      
      // Вычисляем время выполнения
      const executionTime = Date.now() - startTime;
      
      // Логируем успешное выполнение
      this.logger?.debug(`Task ${task.id} completed in ${executionTime}ms`);
      
      // Уведомляем о завершении задачи
      this.eventEmitter?.emit('task:completed', { 
        taskId: task.id, 
        executionTime,
        result
      });
      
      // Резолвим Promise
      resolve(result);
    } catch (error) {
      // Вычисляем время выполнения
      const executionTime = Date.now() - startTime;
      
      // Логируем ошибку
      this.logger?.error(`Task ${task.id} failed after ${executionTime}ms`, error);
      
      // Обрабатываем ошибку, если есть обработчик
      let handledError = error;
      if (this.errorHandler) {
        const context = { 
          taskId: task.id, 
          executionTime,
          ...task.context
        };
        
        handledError = this.errorHandler.handleError(error, context);
        
        // Если ошибка предполагает повторную попытку
        if (handledError.retry) {
          const retryDelay = handledError.retryDelay || 1000;
          const retryCount = (task.context.retryCount || 0) + 1;
          
          this.logger?.info(`Retrying task ${task.id} in ${retryDelay}ms (attempt ${retryCount})`);
          
          // Уведомляем о повторной попытке
          this.eventEmitter?.emit('task:retry', { 
            taskId: task.id, 
            retryCount,
            retryDelay
          });
          
          // Добавляем задачу обратно в очередь с задержкой
          setTimeout(() => {
            // Обновляем контекст с счетчиком повторных попыток
            task.context = { ...task.context, retryCount };
            
            this.enqueue(task, item.priority)
              .then(resolve)
              .catch(reject);
          }, retryDelay);
          
          // Уменьшаем счетчик выполняющихся задач и продолжаем обработку очереди
          this.running--;
          this._processQueue();
          
          return;
        }
      }
      
      // Уведомляем о неудаче задачи
      this.eventEmitter?.emit('task:failed', { 
        taskId: task.id, 
        executionTime,
        error: handledError
      });
      
      // Отклоняем Promise
      reject(handledError);
    } finally {
      // Уменьшаем счетчик выполняющихся задач
      this.running--;
      
      // Продолжаем обработку очереди
      this._processQueue();
    }
  }
}

module.exports = AsyncTaskQueue;
