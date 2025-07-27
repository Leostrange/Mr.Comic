/**
 * BatchProcessingIntegration - Интеграция конвейера обработки с экраном пакетной обработки
 * 
 * Особенности:
 * - Обработка нескольких изображений комиксов одновременно
 * - Управление очередью и приоритетами обработки
 * - Мониторинг прогресса и статистика обработки
 * - Возобновление прерванной обработки
 */
class BatchProcessingIntegration {
  /**
   * @param {Object} options - Опции интеграции
   * @param {UIConnector} options.uiConnector - Коннектор для взаимодействия с конвейером
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {Object} options.config - Конфигурация интеграции
   */
  constructor(options = {}) {
    this.uiConnector = options.uiConnector;
    this.eventEmitter = options.eventEmitter;
    this.logger = options.logger;
    this.config = options.config || {};
    
    // Состояние пакетной обработки
    this.state = {
      queue: [], // Очередь изображений для обработки
      processed: [], // Обработанные изображения
      failed: [], // Изображения с ошибками
      currentBatchId: null, // Идентификатор текущего пакета
      isProcessing: false, // Флаг процесса обработки
      isPaused: false, // Флаг паузы
      progress: 0, // Общий прогресс (0-100%)
      processedCount: 0, // Количество обработанных изображений
      totalCount: 0, // Общее количество изображений
      startTime: null, // Время начала обработки
      estimatedTimeRemaining: null, // Оценка оставшегося времени
      processingOptions: { // Опции обработки
        ocr: {
          enabled: true,
          language: 'auto'
        },
        translation: {
          enabled: true,
          sourceLanguage: 'auto',
          targetLanguage: 'ru'
        },
        performance: {
          concurrency: 2, // Количество одновременно обрабатываемых изображений
          priority: 'normal', // Приоритет (low, normal, high)
          saveIntermediateResults: true // Сохранение промежуточных результатов
        }
      }
    };
    
    // Регистрируем обработчики событий
    this._registerEventHandlers();
    
    this.logger?.info('BatchProcessingIntegration initialized');
  }

  /**
   * Инициализация интеграции с DOM-элементами
   * @param {Object} elements - DOM-элементы экрана пакетной обработки
   * @param {HTMLElement} elements.container - Контейнер экрана пакетной обработки
   * @param {HTMLElement} elements.fileInput - Поле выбора файлов
   * @param {HTMLElement} elements.queueList - Список очереди
   * @param {HTMLElement} elements.processedList - Список обработанных изображений
   * @param {HTMLElement} elements.failedList - Список изображений с ошибками
   * @param {HTMLElement} elements.startButton - Кнопка начала обработки
   * @param {HTMLElement} elements.pauseButton - Кнопка паузы
   * @param {HTMLElement} elements.stopButton - Кнопка остановки
   * @param {HTMLElement} elements.clearButton - Кнопка очистки
   * @param {HTMLElement} elements.optionsForm - Форма настроек обработки
   * @param {HTMLElement} elements.progressBar - Индикатор прогресса
   * @param {HTMLElement} elements.statusText - Текст статуса
   * @param {HTMLElement} elements.statsContainer - Контейнер статистики
   */
  initialize(elements) {
    this.elements = elements;
    
    // Настраиваем обработчики событий UI
    this._setupUIEventHandlers();
    
    // Обновляем состояние UI
    this._updateUI();
    
    this.logger?.info('BatchProcessingIntegration initialized with DOM elements');
  }

  /**
   * Добавление изображений в очередь
   * @param {Array<string|File|Buffer>} images - Массив изображений (пути, файлы или буферы)
   * @returns {number} - Количество добавленных изображений
   */
  addToQueue(images) {
    if (!Array.isArray(images) || images.length === 0) {
      return 0;
    }
    
    this.logger?.info(`Adding ${images.length} images to queue`);
    
    // Преобразуем изображения в элементы очереди
    const queueItems = images.map((image, index) => {
      // Генерируем уникальный идентификатор
      const id = `queue_item_${Date.now()}_${index}_${Math.random().toString(36).substring(2, 9)}`;
      
      // Определяем имя файла
      let fileName = '';
      if (typeof image === 'string') {
        // Если image - это путь к файлу
        fileName = image.split('/').pop();
      } else if (image instanceof File) {
        // Если image - это объект File
        fileName = image.name;
      } else {
        // Если image - это буфер или другой тип
        fileName = `image_${index + 1}`;
      }
      
      return {
        id,
        image,
        fileName,
        status: 'pending', // pending, processing, completed, failed
        progress: 0,
        result: null,
        error: null,
        addedAt: new Date()
      };
    });
    
    // Добавляем элементы в очередь
    this.state.queue.push(...queueItems);
    
    // Обновляем общее количество изображений
    this.state.totalCount = this.state.queue.length + this.state.processed.length + this.state.failed.length;
    
    // Обновляем UI
    this._updateUI();
    
    return queueItems.length;
  }

  /**
   * Удаление изображений из очереди
   * @param {Array<string>} ids - Массив идентификаторов изображений
   * @returns {number} - Количество удаленных изображений
   */
  removeFromQueue(ids) {
    if (!Array.isArray(ids) || ids.length === 0) {
      return 0;
    }
    
    this.logger?.info(`Removing ${ids.length} images from queue`);
    
    // Фильтруем очередь
    const initialLength = this.state.queue.length;
    this.state.queue = this.state.queue.filter(item => !ids.includes(item.id));
    const removedCount = initialLength - this.state.queue.length;
    
    // Обновляем общее количество изображений
    this.state.totalCount = this.state.queue.length + this.state.processed.length + this.state.failed.length;
    
    // Обновляем UI
    this._updateUI();
    
    return removedCount;
  }

  /**
   * Очистка очереди
   * @param {string} [type] - Тип очистки (queue, processed, failed, all)
   * @returns {boolean} - true, если очистка выполнена успешно
   */
  clearQueue(type = 'queue') {
    this.logger?.info(`Clearing ${type}`);
    
    switch (type) {
      case 'queue':
        this.state.queue = [];
        break;
      case 'processed':
        this.state.processed = [];
        break;
      case 'failed':
        this.state.failed = [];
        break;
      case 'all':
        this.state.queue = [];
        this.state.processed = [];
        this.state.failed = [];
        break;
      default:
        return false;
    }
    
    // Обновляем общее количество изображений
    this.state.totalCount = this.state.queue.length + this.state.processed.length + this.state.failed.length;
    
    // Обновляем UI
    this._updateUI();
    
    return true;
  }

  /**
   * Запуск пакетной обработки
   * @param {Object} [options] - Опции обработки
   * @returns {Promise<boolean>} - true, если обработка запущена успешно
   */
  async startProcessing(options = {}) {
    if (this.state.isProcessing) {
      return false;
    }
    
    if (this.state.queue.length === 0) {
      this.logger?.warn('Cannot start processing: queue is empty');
      return false;
    }
    
    try {
      this.logger?.info('Starting batch processing', options);
      
      // Обновляем опции обработки
      if (options.ocr) {
        this.state.processingOptions.ocr = {
          ...this.state.processingOptions.ocr,
          ...options.ocr
        };
      }
      
      if (options.translation) {
        this.state.processingOptions.translation = {
          ...this.state.processingOptions.translation,
          ...options.translation
        };
      }
      
      if (options.performance) {
        this.state.processingOptions.performance = {
          ...this.state.processingOptions.performance,
          ...options.performance
        };
      }
      
      // Обновляем состояние
      this.state.isProcessing = true;
      this.state.isPaused = false;
      this.state.progress = 0;
      this.state.startTime = new Date();
      this.state.estimatedTimeRemaining = null;
      
      // Генерируем идентификатор пакета
      this.state.currentBatchId = `batch_${Date.now()}_${Math.random().toString(36).substring(2, 9)}`;
      
      // Обновляем UI
      this._updateUI();
      
      // Запускаем обработку
      await this._processQueue();
      
      return true;
    } catch (error) {
      this.logger?.error('Error starting batch processing', error);
      
      // Обновляем состояние
      this.state.isProcessing = false;
      
      // Обновляем UI с сообщением об ошибке
      this._updateUI(error.message);
      
      return false;
    }
  }

  /**
   * Приостановка пакетной обработки
   * @returns {boolean} - true, если обработка приостановлена успешно
   */
  pauseProcessing() {
    if (!this.state.isProcessing || this.state.isPaused) {
      return false;
    }
    
    this.logger?.info('Pausing batch processing');
    
    // Обновляем состояние
    this.state.isPaused = true;
    
    // Обновляем UI
    this._updateUI();
    
    return true;
  }

  /**
   * Возобновление пакетной обработки
   * @returns {boolean} - true, если обработка возобновлена успешно
   */
  resumeProcessing() {
    if (!this.state.isProcessing || !this.state.isPaused) {
      return false;
    }
    
    this.logger?.info('Resuming batch processing');
    
    // Обновляем состояние
    this.state.isPaused = false;
    
    // Обновляем UI
    this._updateUI();
    
    // Возобновляем обработку
    this._processQueue();
    
    return true;
  }

  /**
   * Остановка пакетной обработки
   * @returns {boolean} - true, если обработка остановлена успешно
   */
  stopProcessing() {
    if (!this.state.isProcessing) {
      return false;
    }
    
    this.logger?.info('Stopping batch processing');
    
    // Обновляем состояние
    this.state.isProcessing = false;
    this.state.isPaused = false;
    
    // Отменяем обработку через UIConnector
    this.uiConnector.cancelProcessing();
    
    // Перемещаем обрабатываемые изображения обратно в очередь
    const processingItems = this.state.queue.filter(item => item.status === 'processing');
    processingItems.forEach(item => {
      item.status = 'pending';
      item.progress = 0;
    });
    
    // Обновляем UI
    this._updateUI();
    
    return true;
  }

  /**
   * Обновление настроек обработки
   * @param {Object} options - Новые настройки
   * @returns {boolean} - true, если настройки обновлены успешно
   */
  updateOptions(options) {
    try {
      this.logger?.info('Updating processing options', options);
      
      // Обновляем опции обработки
      if (options.ocr) {
        this.state.processingOptions.ocr = {
          ...this.state.processingOptions.ocr,
          ...options.ocr
        };
      }
      
      if (options.translation) {
        this.state.processingOptions.translation = {
          ...this.state.processingOptions.translation,
          ...options.translation
        };
      }
      
      if (options.performance) {
        this.state.processingOptions.performance = {
          ...this.state.processingOptions.performance,
          ...options.performance
        };
      }
      
      // Обновляем форму настроек
      if (this.elements && this.elements.optionsForm) {
        this._populateOptionsForm();
      }
      
      return true;
    } catch (error) {
      this.logger?.error('Error updating processing options', error);
      return false;
    }
  }

  /**
   * Экспорт результатов обработки
   * @param {string} format - Формат экспорта (json, csv, zip)
   * @param {string} [type] - Тип результатов (processed, failed, all)
   * @returns {Promise<string|Buffer>} - Результат экспорта
   */
  async exportResults(format, type = 'processed') {
    try {
      this.logger?.info(`Exporting results in ${format} format, type: ${type}`);
      
      // Определяем список результатов для экспорта
      let results = [];
      
      switch (type) {
        case 'processed':
          results = this.state.processed;
          break;
        case 'failed':
          results = this.state.failed;
          break;
        case 'all':
          results = [...this.state.processed, ...this.state.failed];
          break;
        default:
          throw new Error(`Unknown result type: ${type}`);
      }
      
      // В реальной реализации здесь был бы код для экспорта результатов
      // в выбранном формате
      
      // Для примера просто возвращаем JSON
      return JSON.stringify(results, null, 2);
    } catch (error) {
      this.logger?.error('Error exporting results', error);
      throw error;
    }
  }

  /**
   * Получение статистики обработки
   * @returns {Object} - Статистика обработки
   */
  getStatistics() {
    // Вычисляем статистику
    const totalImages = this.state.totalCount;
    const pendingImages = this.state.queue.filter(item => item.status === 'pending').length;
    const processingImages = this.state.queue.filter(item => item.status === 'processing').length;
    const completedImages = this.state.processed.length;
    const failedImages = this.state.failed.length;
    
    // Вычисляем среднее время обработки
    let averageProcessingTime = 0;
    if (completedImages > 0) {
      const totalProcessingTime = this.state.processed.reduce((sum, item) => {
        const processingTime = item.completedAt - item.startedAt;
        return sum + processingTime;
      }, 0);
      averageProcessingTime = totalProcessingTime / completedImages;
    }
    
    // Вычисляем оценку оставшегося времени
    let estimatedTimeRemaining = null;
    if (this.state.isProcessing && averageProcessingTime > 0 && pendingImages > 0) {
      // Учитываем параллельную обработку
      const concurrency = this.state.processingOptions.performance.concurrency;
      estimatedTimeRemaining = (pendingImages / concurrency) * averageProcessingTime;
    }
    
    // Обновляем оценку оставшегося времени в состоянии
    this.state.estimatedTimeRemaining = estimatedTimeRemaining;
    
    return {
      totalImages,
      pendingImages,
      processingImages,
      completedImages,
      failedImages,
      progress: this.state.progress,
      averageProcessingTime,
      estimatedTimeRemaining,
      startTime: this.state.startTime,
      isProcessing: this.state.isProcessing,
      isPaused: this.state.isPaused
    };
  }

  /**
   * Обработка очереди изображений
   * @private
   * @returns {Promise<void>}
   */
  async _processQueue() {
    if (!this.state.isProcessing || this.state.isPaused || this.state.queue.length === 0) {
      return;
    }
    
    try {
      // Получаем настройки параллельной обработки
      const concurrency = this.state.processingOptions.performance.concurrency;
      
      // Получаем список изображений для обработки
      const processingItems = this.state.queue.filter(item => item.status === 'processing');
      const availableSlots = concurrency - processingItems.length;
      
      if (availableSlots <= 0) {
        // Все слоты заняты, ждем завершения обработки
        return;
      }
      
      // Получаем следующие изображения для обработки
      const pendingItems = this.state.queue.filter(item => item.status === 'pending');
      const itemsToProcess = pendingItems.slice(0, availableSlots);
      
      if (itemsToProcess.length === 0) {
        // Нет изображений для обработки
        return;
      }
      
      // Запускаем обработку каждого изображения
      const processingPromises = itemsToProcess.map(item => this._processItem(item));
      
      // Ждем завершения обработки всех изображений
      await Promise.all(processingPromises);
      
      // Проверяем, остались ли еще изображения для обработки
      const remainingItems = this.state.queue.filter(item => item.status === 'pending' || item.status === 'processing');
      
      if (remainingItems.length === 0) {
        // Все изображения обработаны
        this.state.isProcessing = false;
        this.state.progress = 100;
        
        // Обновляем UI
        this._updateUI();
        
        // Уведомляем о завершении обработки
        this._notifyUI('batch_completed', {
          batchId: this.state.currentBatchId,
          processedCount: this.state.processed.length,
          failedCount: this.state.failed.length,
          totalCount: this.state.totalCount
        });
      } else {
        // Продолжаем обработку
        this._processQueue();
      }
    } catch (error) {
      this.logger?.error('Error processing queue', error);
      
      // Обновляем UI с сообщением об ошибке
      this._updateUI(error.message);
    }
  }

  /**
   * Обработка одного изображения
   * @private
   * @param {Object} item - Элемент очереди
   * @returns {Promise<void>}
   */
  async _processItem(item) {
    try {
      // Обновляем статус элемента
      item.status = 'processing';
      item.progress = 0;
      item.startedAt = new Date();
      
      // Обновляем UI
      this._updateUI();
      
      // Определяем, какие операции нужно выполнить
      const ocrEnabled = this.state.processingOptions.ocr.enabled;
      const translationEnabled = this.state.processingOptions.translation.enabled;
      
      let result;
      
      if (ocrEnabled && translationEnabled) {
        // Выполняем OCR и перевод
        result = await this.uiConnector.performOCRAndTranslation(
          item.image,
          {
            sourceLanguage: this.state.processingOptions.ocr.language,
            targetLanguage: this.state.processingOptions.translation.targetLanguage,
            itemId: item.id,
            batchId: this.state.currentBatchId
          }
        );
      } else if (ocrEnabled) {
        // Выполняем только OCR
        result = await this.uiConnector.performOCR(
          item.image,
          {
            language: this.state.processingOptions.ocr.language,
            itemId: item.id,
            batchId: this.state.currentBatchId
          }
        );
      } else {
        throw new Error('No processing operations enabled');
      }
      
      // Обновляем элемент с результатом
      item.status = 'completed';
      item.progress = 100;
      item.result = result;
      item.completedAt = new Date();
      
      // Перемещаем элемент из очереди в список обработанных
      this.state.queue = this.state.queue.filter(queueItem => queueItem.id !== item.id);
      this.state.processed.push(item);
      
      // Обновляем счетчик обработанных изображений
      this.state.processedCount++;
      
      // Обновляем общий прогресс
      this._updateProgress();
      
      // Обновляем UI
      this._updateUI();
      
      // Уведомляем о завершении обработки элемента
      this._notifyUI('item_completed', {
        itemId: item.id,
        batchId: this.state.currentBatchId,
        result
      });
    } catch (error) {
      this.logger?.error(`Error processing item ${item.id}`, error);
      
      // Обновляем элемент с ошибкой
      item.status = 'failed';
      item.progress = 0;
      item.error = error.message;
      item.completedAt = new Date();
      
      // Перемещаем элемент из очереди в список с ошибками
      this.state.queue = this.state.queue.filter(queueItem => queueItem.id !== item.id);
      this.state.failed.push(item);
      
      // Обновляем общий прогресс
      this._updateProgress();
      
      // Обновляем UI
      this._updateUI();
      
      // Уведомляем об ошибке обработки элемента
      this._notifyUI('item_failed', {
        itemId: item.id,
        batchId: this.state.currentBatchId,
        error: error.message
      });
    }
  }

  /**
   * Обновление общего прогресса
   * @private
   */
  _updateProgress() {
    const totalItems = this.state.totalCount;
    if (totalItems === 0) {
      this.state.progress = 0;
      return;
    }
    
    // Учитываем обработанные и элементы с ошибками как полностью завершенные
    const completedItems = this.state.processed.length + this.state.failed.length;
    
    // Учитываем прогресс обрабатываемых элементов
    let processingProgress = 0;
    const processingItems = this.state.queue.filter(item => item.status === 'processing');
    if (processingItems.length > 0) {
      processingProgress = processingItems.reduce((sum, item) => sum + item.progress, 0) / processingItems.length;
    }
    
    // Вычисляем общий прогресс
    const progress = ((completedItems / totalItems) * 100) + ((processingItems.length / totalItems) * (processingProgress / 100));
    this.state.progress = Math.min(Math.round(progress), 99); // Ограничиваем до 99%, 100% только при полном завершении
  }

  /**
   * Обновление состояния UI
   * @private
   * @param {string} [errorMessage] - Сообщение об ошибке
   */
  _updateUI(errorMessage) {
    if (!this.elements) {
      return;
    }
    
    try {
      // Обновляем списки
      this._updateQueueList();
      this._updateProcessedList();
      this._updateFailedList();
      
      // Обновляем индикатор прогресса
      if (this.elements.progressBar) {
        this.elements.progressBar.style.width = `${this.state.progress}%`;
        this.elements.progressBar.setAttribute('aria-valuenow', this.state.progress);
      }
      
      // Обновляем текст статуса
      if (this.elements.statusText) {
        if (errorMessage) {
          this.elements.statusText.textContent = `Ошибка: ${errorMessage}`;
          this.elements.statusText.className = 'status-error';
        } else if (this.state.isProcessing) {
          if (this.state.isPaused) {
            this.elements.statusText.textContent = 'Обработка приостановлена';
            this.elements.statusText.className = 'status-paused';
          } else {
            this.elements.statusText.textContent = `Обработка... ${this.state.progress}%`;
            this.elements.statusText.className = 'status-processing';
          }
        } else if (this.state.processed.length > 0 || this.state.failed.length > 0) {
          this.elements.statusText.textContent = `Обработка завершена: ${this.state.processed.length} успешно, ${this.state.failed.length} с ошибками`;
          this.elements.statusText.className = 'status-completed';
        } else {
          this.elements.statusText.textContent = 'Готов к обработке';
          this.elements.statusText.className = '';
        }
      }
      
      // Обновляем состояние кнопок
      if (this.elements.startButton) {
        this.elements.startButton.disabled = this.state.isProcessing || this.state.queue.length === 0;
      }
      
      if (this.elements.pauseButton) {
        this.elements.pauseButton.disabled = !this.state.isProcessing;
        this.elements.pauseButton.textContent = this.state.isPaused ? 'Продолжить' : 'Пауза';
      }
      
      if (this.elements.stopButton) {
        this.elements.stopButton.disabled = !this.state.isProcessing;
      }
      
      if (this.elements.clearButton) {
        this.elements.clearButton.disabled = this.state.isProcessing;
      }
      
      // Обновляем статистику
      this._updateStatistics();
    } catch (error) {
      this.logger?.error('Error updating UI', error);
    }
  }

  /**
   * Обновление списка очереди
   * @private
   */
  _updateQueueList() {
    if (!this.elements || !this.elements.queueList) {
      return;
    }
    
    try {
      // Очищаем список
      this.elements.queueList.innerHTML = '';
      
      // Добавляем элементы очереди
      this.state.queue.forEach(item => {
        const listItem = document.createElement('li');
        listItem.className = `queue-item status-${item.status}`;
        listItem.dataset.id = item.id;
        
        // Создаем содержимое элемента
        let content = `
          <div class="item-header">
            <span class="item-name">${item.fileName}</span>
            <span class="item-status">${this._getStatusText(item.status)}</span>
          </div>
        `;
        
        // Добавляем индикатор прогресса для обрабатываемых элементов
        if (item.status === 'processing') {
          content += `
            <div class="progress">
              <div class="progress-bar" role="progressbar" style="width: ${item.progress}%;" 
                aria-valuenow="${item.progress}" aria-valuemin="0" aria-valuemax="100">
                ${item.progress}%
              </div>
            </div>
          `;
        }
        
        // Добавляем кнопку удаления для ожидающих элементов
        if (item.status === 'pending') {
          content += `
            <button class="remove-button" data-id="${item.id}">Удалить</button>
          `;
        }
        
        listItem.innerHTML = content;
        
        // Добавляем обработчик для кнопки удаления
        const removeButton = listItem.querySelector('.remove-button');
        if (removeButton) {
          removeButton.addEventListener('click', () => {
            this.removeFromQueue([item.id]);
          });
        }
        
        this.elements.queueList.appendChild(listItem);
      });
      
      // Если список пуст, добавляем сообщение
      if (this.state.queue.length === 0) {
        const emptyMessage = document.createElement('li');
        emptyMessage.className = 'empty-message';
        emptyMessage.textContent = 'Очередь пуста';
        this.elements.queueList.appendChild(emptyMessage);
      }
    } catch (error) {
      this.logger?.error('Error updating queue list', error);
    }
  }

  /**
   * Обновление списка обработанных изображений
   * @private
   */
  _updateProcessedList() {
    if (!this.elements || !this.elements.processedList) {
      return;
    }
    
    try {
      // Очищаем список
      this.elements.processedList.innerHTML = '';
      
      // Добавляем обработанные элементы
      this.state.processed.forEach(item => {
        const listItem = document.createElement('li');
        listItem.className = 'processed-item';
        listItem.dataset.id = item.id;
        
        // Создаем содержимое элемента
        const content = `
          <div class="item-header">
            <span class="item-name">${item.fileName}</span>
            <span class="item-time">${this._formatProcessingTime(item.startedAt, item.completedAt)}</span>
          </div>
          <div class="item-actions">
            <button class="view-button" data-id="${item.id}">Просмотр</button>
            <button class="export-button" data-id="${item.id}">Экспорт</button>
          </div>
        `;
        
        listItem.innerHTML = content;
        
        // Добавляем обработчики для кнопок
        const viewButton = listItem.querySelector('.view-button');
        if (viewButton) {
          viewButton.addEventListener('click', () => {
            this._viewResult(item);
          });
        }
        
        const exportButton = listItem.querySelector('.export-button');
        if (exportButton) {
          exportButton.addEventListener('click', () => {
            this._exportResult(item);
          });
        }
        
        this.elements.processedList.appendChild(listItem);
      });
      
      // Если список пуст, добавляем сообщение
      if (this.state.processed.length === 0) {
        const emptyMessage = document.createElement('li');
        emptyMessage.className = 'empty-message';
        emptyMessage.textContent = 'Нет обработанных изображений';
        this.elements.processedList.appendChild(emptyMessage);
      }
    } catch (error) {
      this.logger?.error('Error updating processed list', error);
    }
  }

  /**
   * Обновление списка изображений с ошибками
   * @private
   */
  _updateFailedList() {
    if (!this.elements || !this.elements.failedList) {
      return;
    }
    
    try {
      // Очищаем список
      this.elements.failedList.innerHTML = '';
      
      // Добавляем элементы с ошибками
      this.state.failed.forEach(item => {
        const listItem = document.createElement('li');
        listItem.className = 'failed-item';
        listItem.dataset.id = item.id;
        
        // Создаем содержимое элемента
        const content = `
          <div class="item-header">
            <span class="item-name">${item.fileName}</span>
            <span class="item-error">${item.error}</span>
          </div>
          <div class="item-actions">
            <button class="retry-button" data-id="${item.id}">Повторить</button>
          </div>
        `;
        
        listItem.innerHTML = content;
        
        // Добавляем обработчик для кнопки повтора
        const retryButton = listItem.querySelector('.retry-button');
        if (retryButton) {
          retryButton.addEventListener('click', () => {
            this._retryFailedItem(item);
          });
        }
        
        this.elements.failedList.appendChild(listItem);
      });
      
      // Если список пуст, добавляем сообщение
      if (this.state.failed.length === 0) {
        const emptyMessage = document.createElement('li');
        emptyMessage.className = 'empty-message';
        emptyMessage.textContent = 'Нет изображений с ошибками';
        this.elements.failedList.appendChild(emptyMessage);
      }
    } catch (error) {
      this.logger?.error('Error updating failed list', error);
    }
  }

  /**
   * Обновление статистики
   * @private
   */
  _updateStatistics() {
    if (!this.elements || !this.elements.statsContainer) {
      return;
    }
    
    try {
      // Получаем статистику
      const stats = this.getStatistics();
      
      // Создаем содержимое
      let content = `
        <div class="stats-item">
          <span class="stats-label">Всего изображений:</span>
          <span class="stats-value">${stats.totalImages}</span>
        </div>
        <div class="stats-item">
          <span class="stats-label">В очереди:</span>
          <span class="stats-value">${stats.pendingImages}</span>
        </div>
        <div class="stats-item">
          <span class="stats-label">Обрабатывается:</span>
          <span class="stats-value">${stats.processingImages}</span>
        </div>
        <div class="stats-item">
          <span class="stats-label">Обработано:</span>
          <span class="stats-value">${stats.completedImages}</span>
        </div>
        <div class="stats-item">
          <span class="stats-label">С ошибками:</span>
          <span class="stats-value">${stats.failedImages}</span>
        </div>
      `;
      
      // Добавляем информацию о времени обработки
      if (stats.averageProcessingTime > 0) {
        content += `
          <div class="stats-item">
            <span class="stats-label">Среднее время обработки:</span>
            <span class="stats-value">${this._formatDuration(stats.averageProcessingTime)}</span>
          </div>
        `;
      }
      
      // Добавляем оценку оставшегося времени
      if (stats.estimatedTimeRemaining !== null) {
        content += `
          <div class="stats-item">
            <span class="stats-label">Осталось примерно:</span>
            <span class="stats-value">${this._formatDuration(stats.estimatedTimeRemaining)}</span>
          </div>
        `;
      }
      
      // Обновляем содержимое контейнера
      this.elements.statsContainer.innerHTML = content;
    } catch (error) {
      this.logger?.error('Error updating statistics', error);
    }
  }

  /**
   * Заполнение формы настроек
   * @private
   */
  _populateOptionsForm() {
    if (!this.elements || !this.elements.optionsForm) {
      return;
    }
    
    try {
      // В реальной реализации здесь был бы код для заполнения полей формы
      // значениями из настроек
    } catch (error) {
      this.logger?.error('Error populating options form', error);
    }
  }

  /**
   * Настройка обработчиков событий UI
   * @private
   */
  _setupUIEventHandlers() {
    if (!this.elements) {
      return;
    }
    
    try {
      // Обработчик поля выбора файлов
      if (this.elements.fileInput) {
        this.elements.fileInput.addEventListener('change', (event) => {
          const files = Array.from(event.target.files);
          if (files.length > 0) {
            this.addToQueue(files);
          }
        });
      }
      
      // Обработчик кнопки начала обработки
      if (this.elements.startButton) {
        this.elements.startButton.addEventListener('click', () => {
          // Получаем настройки из формы
          const options = this._getFormValues(this.elements.optionsForm);
          
          // Запускаем обработку
          this.startProcessing(options);
        });
      }
      
      // Обработчик кнопки паузы/продолжения
      if (this.elements.pauseButton) {
        this.elements.pauseButton.addEventListener('click', () => {
          if (this.state.isPaused) {
            this.resumeProcessing();
          } else {
            this.pauseProcessing();
          }
        });
      }
      
      // Обработчик кнопки остановки
      if (this.elements.stopButton) {
        this.elements.stopButton.addEventListener('click', () => {
          this.stopProcessing();
        });
      }
      
      // Обработчик кнопки очистки
      if (this.elements.clearButton) {
        this.elements.clearButton.addEventListener('click', () => {
          this.clearQueue('all');
        });
      }
      
      // Обработчики изменения полей формы настроек
      if (this.elements.optionsForm) {
        // В реальной реализации здесь был бы код для обработки изменений полей формы
      }
      
      this.logger?.debug('UI event handlers set up');
    } catch (error) {
      this.logger?.error('Error setting up UI event handlers', error);
    }
  }

  /**
   * Получение значений из формы
   * @private
   * @param {HTMLElement} form - Форма
   * @returns {Object} - Значения полей формы
   */
  _getFormValues(form) {
    if (!form) {
      return {};
    }
    
    // В реальной реализации здесь был бы код для получения значений полей формы
    // Например, с использованием FormData или перебора элементов формы
    
    return {};
  }

  /**
   * Просмотр результата обработки
   * @private
   * @param {Object} item - Элемент с результатом
   */
  _viewResult(item) {
    // В реальной реализации здесь был бы код для отображения результата
    // Например, открытие модального окна с результатом OCR и перевода
    
    this.logger?.info(`Viewing result for item ${item.id}`);
    
    // Уведомляем о просмотре результата
    this._notifyUI('result_view', {
      itemId: item.id,
      result: item.result
    });
  }

  /**
   * Экспорт результата обработки
   * @private
   * @param {Object} item - Элемент с результатом
   */
  _exportResult(item) {
    // В реальной реализации здесь был бы код для экспорта результата
    // Например, сохранение в файл или копирование в буфер обмена
    
    this.logger?.info(`Exporting result for item ${item.id}`);
    
    // Уведомляем об экспорте результата
    this._notifyUI('result_export', {
      itemId: item.id,
      result: item.result
    });
  }

  /**
   * Повтор обработки элемента с ошибкой
   * @private
   * @param {Object} item - Элемент с ошибкой
   */
  _retryFailedItem(item) {
    try {
      this.logger?.info(`Retrying failed item ${item.id}`);
      
      // Создаем новый элемент очереди на основе элемента с ошибкой
      const newItem = {
        id: `retry_${item.id}_${Date.now()}`,
        image: item.image,
        fileName: item.fileName,
        status: 'pending',
        progress: 0,
        result: null,
        error: null,
        addedAt: new Date()
      };
      
      // Добавляем новый элемент в очередь
      this.state.queue.push(newItem);
      
      // Удаляем элемент из списка с ошибками
      this.state.failed = this.state.failed.filter(failedItem => failedItem.id !== item.id);
      
      // Обновляем UI
      this._updateUI();
    } catch (error) {
      this.logger?.error(`Error retrying failed item ${item.id}`, error);
    }
  }

  /**
   * Получение текстового представления статуса
   * @private
   * @param {string} status - Статус (pending, processing, completed, failed)
   * @returns {string} - Текстовое представление статуса
   */
  _getStatusText(status) {
    switch (status) {
      case 'pending':
        return 'В очереди';
      case 'processing':
        return 'Обработка...';
      case 'completed':
        return 'Завершено';
      case 'failed':
        return 'Ошибка';
      default:
        return status;
    }
  }

  /**
   * Форматирование времени обработки
   * @private
   * @param {Date} startTime - Время начала обработки
   * @param {Date} endTime - Время завершения обработки
   * @returns {string} - Отформатированное время обработки
   */
  _formatProcessingTime(startTime, endTime) {
    if (!startTime || !endTime) {
      return '';
    }
    
    const duration = endTime - startTime;
    return this._formatDuration(duration);
  }

  /**
   * Форматирование длительности
   * @private
   * @param {number} duration - Длительность в миллисекундах
   * @returns {string} - Отформатированная длительность
   */
  _formatDuration(duration) {
    if (duration < 1000) {
      return `${duration}мс`;
    }
    
    if (duration < 60000) {
      return `${Math.round(duration / 1000)}с`;
    }
    
    if (duration < 3600000) {
      const minutes = Math.floor(duration / 60000);
      const seconds = Math.round((duration % 60000) / 1000);
      return `${minutes}м ${seconds}с`;
    }
    
    const hours = Math.floor(duration / 3600000);
    const minutes = Math.floor((duration % 3600000) / 60000);
    return `${hours}ч ${minutes}м`;
  }

  /**
   * Регистрация обработчиков событий
   * @private
   */
  _registerEventHandlers() {
    if (!this.eventEmitter) {
      return;
    }
    
    // Обработчик прогресса обработки элемента
    this.eventEmitter.on('pipeline:item_progress', (data) => {
      // Находим элемент в очереди
      const item = this.state.queue.find(queueItem => queueItem.id === data.itemId);
      
      if (item && item.status === 'processing') {
        // Обновляем прогресс элемента
        item.progress = data.progress;
        
        // Обновляем общий прогресс
        this._updateProgress();
        
        // Обновляем UI
        this._updateUI();
      }
    });
    
    // Обработчик события изменения настроек
    this.eventEmitter.on('settings:changed', (data) => {
      if (data.section === 'ocr' || data.section === 'all') {
        // Обновляем настройки OCR
        if (data.settings.ocr) {
          this.state.processingOptions.ocr = {
            ...this.state.processingOptions.ocr,
            language: data.settings.ocr.language || this.state.processingOptions.ocr.language
          };
        }
      }
      
      if (data.section === 'translation' || data.section === 'all') {
        // Обновляем настройки перевода
        if (data.settings.translation) {
          this.state.processingOptions.translation = {
            ...this.state.processingOptions.translation,
            sourceLanguage: data.settings.translation.sourceLanguage || this.state.processingOptions.translation.sourceLanguage,
            targetLanguage: data.settings.translation.targetLanguage || this.state.processingOptions.translation.targetLanguage
          };
        }
      }
      
      if (data.section === 'performance' || data.section === 'all') {
        // Обновляем настройки производительности
        if (data.settings.performance) {
          this.state.processingOptions.performance = {
            ...this.state.processingOptions.performance,
            concurrency: data.settings.performance.maxConcurrentTasks || this.state.processingOptions.performance.concurrency
          };
        }
      }
      
      // Обновляем форму настроек
      if (this.elements && this.elements.optionsForm) {
        this._populateOptionsForm();
      }
    });
  }

  /**
   * Отправка уведомления в UI
   * @private
   * @param {string} event - Тип события
   * @param {Object} data - Данные события
   */
  _notifyUI(event, data) {
    if (!this.eventEmitter) {
      return;
    }
    
    // Отправляем событие в UI
    this.eventEmitter.emit(`ui:${event}`, data);
    
    this.logger?.debug(`Notified UI: ${event}`, data);
  }
}

module.exports = BatchProcessingIntegration;
