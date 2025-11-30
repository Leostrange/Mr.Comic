/**
 * ImageEditorTool - Специализированный инструмент для редактирования изображений
 * 
 * Отвечает за:
 * - Редактирование растровых изображений
 * - Применение фильтров и эффектов
 * - Трансформации изображений
 */
class ImageEditorTool extends require('./BaseTool') {
  /**
   * @constructor
   * @param {Object} options - Опции для инициализации инструмента
   */
  constructor(options = {}) {
    super({
      ...options,
      type: 'image-editor',
      name: options.name || 'Редактор изображений',
      description: options.description || 'Инструмент для редактирования растровых изображений',
      category: options.category || 'image',
      capabilities: [...(options.capabilities || []), 'image-editing', 'filter-application']
    });
    
    this.canvas = null; // HTML Canvas для редактирования
    this.context = null; // Canvas 2D Context
    this.currentImage = null; // Текущее изображение
    this.history = []; // История изменений
    this.historyIndex = -1; // Индекс текущего состояния в истории
    this.filters = new Map(); // Доступные фильтры
    this.activeFilter = null; // Активный фильтр
    this.brushSize = options.brushSize || 5; // Размер кисти
    this.brushColor = options.brushColor || '#000000'; // Цвет кисти
    this.selectionActive = false; // Флаг активной выделенной области
    this.selectionRect = null; // Прямоугольник выделения
    this.clipboardData = null; // Буфер обмена
    this.maxHistoryLength = options.maxHistoryLength || 50; // Максимальный размер истории
  }

  /**
   * Инициализация инструмента
   * @returns {Promise<void>}
   */
  async initialize() {
    await super.initialize();
    
    // Регистрируем базовые фильтры
    this.registerFilter('grayscale', this._applyGrayscaleFilter.bind(this));
    this.registerFilter('invert', this._applyInvertFilter.bind(this));
    this.registerFilter('blur', this._applyOptimizedBlurFilter.bind(this)); // Используем оптимизированный блюр
    this.registerFilter('sharpen', this._applyOptimizedSharpenFilter.bind(this)); // Используем оптимизированный шарпен
    this.registerFilter('sepia', this._applySepiaFilter.bind(this));
    
    // Создаем canvas, если его еще нет
    // Оптимизация: Используем OffscreenCanvas, если доступно, для фоновой обработки
    if (typeof OffscreenCanvas !== 'undefined') {
        try {
            this.canvas = new OffscreenCanvas(1, 1);
            this.context = this.canvas.getContext('2d', { alpha: true, willReadFrequently: true });
            this.logger.info('ImageEditorTool: Using OffscreenCanvas for potential performance improvements.');
        } catch (e) {
            this.logger.warn('ImageEditorTool: OffscreenCanvas context creation failed, falling back to standard Canvas.', e);
            this.canvas = document.createElement('canvas');
            this.context = this.canvas.getContext('2d', { alpha: true, willReadFrequently: true });
        }
    } else {
        this.logger.info('ImageEditorTool: OffscreenCanvas not supported, using standard Canvas.');
        this.canvas = document.createElement('canvas');
        this.context = this.canvas.getContext('2d', { alpha: true, willReadFrequently: true });
    }
  }

  /**
   * Проверка возможности обработки команды
   * @param {Object} command - Команда для проверки
   * @returns {boolean} - true, если инструмент может обработать команду
   */
  canHandleCommand(command) {
    const supportedCommands = [
      'image.load',
      'image.save',
      'image.resize',
      'image.crop',
      'image.rotate',
      'image.flip',
      'image.applyFilter',
      'image.draw',
      'image.select',
      'image.deselect',
      'image.copy',
      'image.paste',
      'image.undo',
      'image.redo',
      'image.clear'
    ];
    
    return command && supportedCommands.includes(command.type);
  }

  /**
   * Реализация выполнения команды
   * @protected
   * @param {Object} command - Команда для выполнения
   * @returns {Promise<Object>} - Результат выполнения команды
   */
  async _executeCommand(command) {
    // Оптимизация: Проверка наличия изображения перед выполнением большинства команд
    if (!this.currentImage && !['image.load', 'image.undo', 'image.redo'].includes(command.type)) {
        throw new Error('No image loaded to perform the operation.');
    }
      
    switch (command.type) {
      case 'image.load':
        return this.loadImage(command.data);
      case 'image.save':
        return this.saveImage(command.format, command.quality);
      case 'image.resize':
        return this.resizeImage(command.width, command.height, command.maintainAspectRatio);
      case 'image.crop':
        return this.cropImage(command.x, command.y, command.width, command.height);
      case 'image.rotate':
        return this.rotateImage(command.angle);
      case 'image.flip':
        return this.flipImage(command.horizontal, command.vertical);
      case 'image.applyFilter':
        return this.applyFilter(command.filterId, command.options);
      case 'image.draw':
        return this.draw(command.drawCommands);
      case 'image.select':
        return this.select(command.x, command.y, command.width, command.height);
      case 'image.deselect':
        return this.deselect();
      case 'image.copy':
        return this.copy();
      case 'image.paste':
        return this.paste(command.x, command.y);
      case 'image.undo':
        return this.undo();
      case 'image.redo':
        return this.redo();
      case 'image.clear':
        return this.clear();
      default:
        throw new Error(`Unsupported command type: ${command.type}`);
    }
  }

  /**
   * Загрузка изображения
   * @param {string|Blob|ImageData} data - Данные изображения
   * @returns {Promise<Object>} - Результат загрузки
   */
  async loadImage(data) {
    return new Promise((resolve, reject) => {
      const img = new Image();
      
      img.onload = () => {
        // Оптимизация: Устанавливаем размеры canvas только если они изменились
        if (this.canvas.width !== img.width || this.canvas.height !== img.height) {
            this.canvas.width = img.width;
            this.canvas.height = img.height;
        }
        
        // Очищаем canvas и рисуем изображение
        this.context.clearRect(0, 0, this.canvas.width, this.canvas.height);
        this.context.drawImage(img, 0, 0);
        
        // Сохраняем текущее состояние в истории
        this.currentImage = this.context.getImageData(0, 0, this.canvas.width, this.canvas.height);
        this._resetHistory(this.currentImage);
        
        // Очищаем URL объекта, если он был создан
        if (img.src.startsWith('blob:')) {
            URL.revokeObjectURL(img.src);
        }
        
        resolve({
          success: true,
          width: img.width,
          height: img.height
        });
      };
      
      img.onerror = (err) => {
        // Очищаем URL объекта в случае ошибки
        if (img.src.startsWith('blob:')) {
            URL.revokeObjectURL(img.src);
        }
        reject(new Error(`Failed to load image: ${err.message || 'Unknown error'}`));
      };
      
      if (typeof data === 'string') {
        // URL или Data URL
        img.src = data;
      } else if (data instanceof Blob) {
        // Blob или File
        img.src = URL.createObjectURL(data);
      } else if (data instanceof ImageData) {
        // ImageData
        if (this.canvas.width !== data.width || this.canvas.height !== data.height) {
            this.canvas.width = data.width;
            this.canvas.height = data.height;
        }
        this.context.putImageData(data, 0, 0);
        this.currentImage = data;
        this._resetHistory(this.currentImage);
        resolve({
          success: true,
          width: data.width,
          height: data.height
        });
        return;
      } else {
        reject(new Error('Unsupported image data format'));
      }
    });
  }

  /**
   * Сохранение изображения
   * @param {string} [format='png'] - Формат изображения ('png', 'jpeg', 'webp')
   * @param {number} [quality=0.92] - Качество изображения (для 'jpeg' и 'webp')
   * @returns {Promise<Object>} - Результат сохранения
   */
  async saveImage(format = 'png', quality = 0.92) {
    if (!this.currentImage) {
      throw new Error('No image to save');
    }
    
    const mimeType = `image/${format}`;
    let dataURL;
    
    // Оптимизация: Используем асинхронные методы, если доступны
    if (this.canvas.convertToBlob) {
        const blob = await this.canvas.convertToBlob({ type: mimeType, quality: quality });
        dataURL = await this._blobToDataURL(blob);
    } else {
        dataURL = this.canvas.toDataURL(mimeType, quality);
    }
    
    return {
      success: true,
      dataURL,
      format,
      width: this.canvas.width,
      height: this.canvas.height
    };
  }
  
  /**
   * Вспомогательная функция для конвертации Blob в Data URL
   * @private
   */
  _blobToDataURL(blob) {
      return new Promise((resolve, reject) => {
          const reader = new FileReader();
          reader.onloadend = () => resolve(reader.result);
          reader.onerror = reject;
          reader.readAsDataURL(blob);
      });
  }

  /**
   * Изменение размера изображения
   * @param {number} width - Новая ширина
   * @param {number} height - Новая высота
   * @param {boolean} [maintainAspectRatio=true] - Сохранять пропорции
   * @returns {Promise<Object>} - Результат изменения размера
   */
  async resizeImage(width, height, maintainAspectRatio = true) {
    if (!this.currentImage) {
      throw new Error('No image to resize');
    }
    
    // Оптимизация: Используем временный canvas только если размеры действительно меняются
    let newWidth = Math.round(width);
    let newHeight = Math.round(height);
    
    if (maintainAspectRatio) {
      const aspectRatio = this.canvas.width / this.canvas.height;
      if (width / height > aspectRatio) {
        newWidth = Math.round(height * aspectRatio);
      } else {
        newHeight = Math.round(width / aspectRatio);
      }
    }
    
    if (newWidth === this.canvas.width && newHeight === this.canvas.height) {
        return { success: true, width: newWidth, height: newHeight }; // Размеры не изменились
    }

    // Создаем временный canvas для изменения размера
    const tempCanvas = this._createTemporaryCanvas(newWidth, newHeight);
    const tempContext = tempCanvas.getContext('2d');
    
    // Оптимизация: Устанавливаем качество интерполяции
    tempContext.imageSmoothingQuality = 'high';
    
    // Рисуем изображение с новыми размерами
    tempContext.drawImage(this.canvas, 0, 0, newWidth, newHeight);
    
    // Обновляем основной canvas
    this.canvas.width = newWidth;
    this.canvas.height = newHeight;
    this.context.drawImage(tempCanvas, 0, 0);
    
    // Сохраняем текущее состояние в истории
    this.currentImage = this.context.getImageData(0, 0, newWidth, newHeight);
    this._addToHistory(this.currentImage);
    
    return {
      success: true,
      width: newWidth,
      height: newHeight
    };
  }

  /**
   * Обрезка изображения
   * @param {number} x - Координата X начала области обрезки
   * @param {number} y - Координата Y начала области обрезки
   * @param {number} width - Ширина области обрезки
   * @param {number} height - Высота области обрезки
   * @returns {Promise<Object>} - Результат обрезки
   */
  async cropImage(x, y, width, height) {
    if (!this.currentImage) {
      throw new Error('No image to crop');
    }
    
    // Проверяем границы
    x = Math.max(0, Math.min(Math.round(x), this.canvas.width));
    y = Math.max(0, Math.min(Math.round(y), this.canvas.height));
    width = Math.max(1, Math.min(Math.round(width), this.canvas.width - x));
    height = Math.max(1, Math.min(Math.round(height), this.canvas.height - y));
    
    // Оптимизация: Используем getImageData для копирования, если это возможно
    const croppedData = this.context.getImageData(x, y, width, height);
    
    // Обновляем основной canvas
    this.canvas.width = width;
    this.canvas.height = height;
    this.context.putImageData(croppedData, 0, 0);
    
    // Сохраняем текущее состояние в истории
    this.currentImage = croppedData;
    this._addToHistory(this.currentImage);
    
    return {
      success: true,
      x,
      y,
      width,
      height
    };
  }

  /**
   * Поворот изображения
   * @param {number} angle - Угол поворота в градусах (кратный 90 для оптимизации)
   * @returns {Promise<Object>} - Результат поворота
   */
  async rotateImage(angle) {
    if (!this.currentImage) {
      throw new Error('No image to rotate');
    }
    
    const radians = (angle * Math.PI) / 180;
    const sin = Math.abs(Math.sin(radians));
    const cos = Math.abs(Math.cos(radians));
    const oldWidth = this.canvas.width;
    const oldHeight = this.canvas.height;
    const newWidth = Math.floor(oldWidth * cos + oldHeight * sin);
    const newHeight = Math.floor(oldWidth * sin + oldHeight * cos);

    // Создаем временный canvas для поворота
    const tempCanvas = this._createTemporaryCanvas(newWidth, newHeight);
    const tempContext = tempCanvas.getContext('2d');
    
    // Перемещаем центр координат в центр canvas
    tempContext.translate(newWidth / 2, newHeight / 2);
    tempContext.rotate(radians);
    
    // Рисуем изображение с учетом поворота
    tempContext.drawImage(this.canvas, -oldWidth / 2, -oldHeight / 2);
    
    // Обновляем основной canvas
    this.canvas.width = newWidth;
    this.canvas.height = newHeight;
    this.context.drawImage(tempCanvas, 0, 0);
    
    // Сохраняем текущее состояние в истории
    this.currentImage = this.context.getImageData(0, 0, newWidth, newHeight);
    this._addToHistory(this.currentImage);
    
    return {
      success: true,
      angle,
      width: newWidth,
      height: newHeight
    };
  }

  /**
   * Отражение изображения
   * @param {boolean} horizontal - Отражение по горизонтали
   * @param {boolean} vertical - Отражение по вертикали
   * @returns {Promise<Object>} - Результат отражения
   */
  async flipImage(horizontal, vertical) {
    if (!this.currentImage) {
      throw new Error('No image to flip');
    }
    
    // Создаем временный canvas для отражения
    const tempCanvas = this._createTemporaryCanvas(this.canvas.width, this.canvas.height);
    const tempContext = tempCanvas.getContext('2d');
    
    // Настраиваем преобразования для отражения
    tempContext.translate(
      horizontal ? tempCanvas.width : 0,
      vertical ? tempCanvas.height : 0
    );
    tempContext.scale(
      horizontal ? -1 : 1,
      vertical ? -1 : 1
    );
    
    // Рисуем отраженное изображение
    tempContext.drawImage(this.canvas, 0, 0);
    
    // Обновляем основной canvas
    this.context.clearRect(0, 0, this.canvas.width, this.canvas.height);
    this.context.drawImage(tempCanvas, 0, 0);
    
    // Сохраняем текущее состояние в истории
    this.currentImage = this.context.getImageData(0, 0, this.canvas.width, this.canvas.height);
    this._addToHistory(this.currentImage);
    
    return {
      success: true,
      horizontal,
      vertical
    };
  }

  /**
   * Регистрация фильтра
   * @param {string} id - Идентификатор фильтра
   * @param {Function} filterFunction - Функция применения фильтра
   * @returns {boolean} - Успешность регистрации
   */
  registerFilter(id, filterFunction) {
    if (!id || typeof filterFunction !== 'function') {
      this.logger.error('Invalid filter ID or function', { id });
      return false;
    }
    
    if (this.filters.has(id)) {
      this.logger.warn(`Filter with id ${id} is already registered`);
      return false;
    }
    
    this.filters.set(id, filterFunction);
    this.logger.debug(`Filter registered: ${id}`);
    return true;
  }

  /**
   * Применение фильтра к изображению
   * @param {string} filterId - Идентификатор фильтра
   * @param {Object} [options={}] - Опции фильтра
   * @returns {Promise<Object>} - Результат применения фильтра
   */
  async applyFilter(filterId, options = {}) {
    if (!this.currentImage) {
      throw new Error('No image to apply filter to');
    }
    
    if (!this.filters.has(filterId)) {
      throw new Error(`Filter ${filterId} is not registered`);
    }
    
    // Получаем функцию фильтра
    const filterFunction = this.filters.get(filterId);
    
    // Оптимизация: Создаем копию ImageData для передачи в фильтр
    const inputImageData = new ImageData(
        new Uint8ClampedArray(this.currentImage.data),
        this.currentImage.width,
        this.currentImage.height
    );
    
    // Применяем фильтр
    const result = await filterFunction(inputImageData, options);
    
    // Проверяем, что фильтр вернул корректный ImageData
    if (!(result instanceof ImageData) || result.width !== this.canvas.width || result.height !== this.canvas.height) {
        throw new Error(`Filter ${filterId} returned invalid ImageData`);
    }
    
    // Обновляем изображение
    this.context.putImageData(result, 0, 0);
    
    // Сохраняем текущее состояние в истории
    this.currentImage = result;
    this._addToHistory(this.currentImage);
    
    return {
      success: true,
      filterId,
      options
    };
  }

  /**
   * Рисование на изображении
   * @param {Array} drawCommands - Команды рисования
   * @returns {Promise<Object>} - Результат рисования
   */
  async draw(drawCommands) {
    if (!this.currentImage) {
      throw new Error('No image to draw on');
    }
    
    // Сохраняем текущее состояние контекста
    this.context.save();
    
    // Выполняем команды рисования
    for (const cmd of drawCommands) {
      switch (cmd.type) {
        case 'beginPath':
          this.context.beginPath();
          break;
        case 'moveTo':
          this.context.moveTo(cmd.x, cmd.y);
          break;
        case 'lineTo':
          this.context.lineTo(cmd.x, cmd.y);
          break;
        case 'arc':
          this.context.arc(cmd.x, cmd.y, cmd.radius, cmd.startAngle, cmd.endAngle, cmd.counterclockwise);
          break;
        case 'rect':
          this.context.rect(cmd.x, cmd.y, cmd.width, cmd.height);
          break;
        case 'fillRect':
          this.context.fillRect(cmd.x, cmd.y, cmd.width, cmd.height);
          break;
        case 'strokeRect':
          this.context.strokeRect(cmd.x, cmd.y, cmd.width, cmd.height);
          break;
        case 'fill':
          this.context.fill();
          break;
        case 'stroke':
          this.context.stroke();
          break;
        case 'closePath':
          this.context.closePath();
          break;
        case 'setFillStyle':
          this.context.fillStyle = cmd.value;
          break;
        case 'setStrokeStyle':
          this.context.strokeStyle = cmd.value;
          break;
        case 'setLineWidth':
          this.context.lineWidth = cmd.value;
          break;
        case 'setLineCap':
          this.context.lineCap = cmd.value;
          break;
        case 'setLineJoin':
          this.context.lineJoin = cmd.value;
          break;
        case 'setGlobalAlpha':
          this.context.globalAlpha = cmd.value;
          break;
        case 'setGlobalCompositeOperation':
          this.context.globalCompositeOperation = cmd.value;
          break;
        default:
          this.logger.warn(`Unknown draw command: ${cmd.type}`);
      }
    }
    
    // Восстанавливаем состояние контекста
    this.context.restore();
    
    // Сохраняем текущее состояние в истории
    this.currentImage = this.context.getImageData(0, 0, this.canvas.width, this.canvas.height);
    this._addToHistory(this.currentImage);
    
    return {
      success: true,
      commandCount: drawCommands.length
    };
  }

  /**
   * Выделение области изображения
   * @param {number} x - Координата X начала выделения
   * @param {number} y - Координата Y начала выделения
   * @param {number} width - Ширина выделения
   * @param {number} height - Высота выделения
   * @returns {Promise<Object>} - Результат выделения
   */
  async select(x, y, width, height) {
    if (!this.currentImage) {
      throw new Error('No image to select from');
    }
    
    // Проверяем границы
    x = Math.max(0, Math.min(Math.round(x), this.canvas.width));
    y = Math.max(0, Math.min(Math.round(y), this.canvas.height));
    width = Math.max(1, Math.min(Math.round(width), this.canvas.width - x));
    height = Math.max(1, Math.min(Math.round(height), this.canvas.height - y));
    
    // Устанавливаем выделение
    this.selectionActive = true;
    this.selectionRect = { x, y, width, height };
    
    return {
      success: true,
      selection: { ...this.selectionRect }
    };
  }

  /**
   * Отмена выделения
   * @returns {Promise<Object>} - Результат отмены выделения
   */
  async deselect() {
    this.selectionActive = false;
    this.selectionRect = null;
    
    return {
      success: true
    };
  }

  /**
   * Копирование выделенной области
   * @returns {Promise<Object>} - Результат копирования
   */
  async copy() {
    if (!this.currentImage) {
      throw new Error('No image to copy from');
    }
    
    if (!this.selectionActive || !this.selectionRect) {
      throw new Error('No active selection to copy');
    }
    
    const { x, y, width, height } = this.selectionRect;
    
    // Оптимизация: Используем getImageData для копирования
    this.clipboardData = this.context.getImageData(x, y, width, height);
    
    return {
      success: true,
      width,
      height
    };
  }

  /**
   * Вставка из буфера обмена
   * @param {number} x - Координата X для вставки
   * @param {number} y - Координата Y для вставки
   * @returns {Promise<Object>} - Результат вставки
   */
  async paste(x, y) {
    if (!this.currentImage) {
      throw new Error('No image to paste to');
    }
    
    if (!this.clipboardData) {
      throw new Error('No data in clipboard to paste');
    }
    
    // Проверяем границы
    x = Math.max(0, Math.min(Math.round(x), this.canvas.width));
    y = Math.max(0, Math.min(Math.round(y), this.canvas.height));
    
    // Вставляем данные из буфера обмена
    this.context.putImageData(this.clipboardData, x, y);
    
    // Сохраняем текущее состояние в истории
    this.currentImage = this.context.getImageData(0, 0, this.canvas.width, this.canvas.height);
    this._addToHistory(this.currentImage);
    
    return {
      success: true,
      x,
      y,
      width: this.clipboardData.width,
      height: this.clipboardData.height
    };
  }

  /**
   * Отмена последнего действия
   * @returns {Promise<Object>} - Результат отмены
   */
  async undo() {
    if (this.historyIndex <= 0) {
      return {
        success: false,
        message: 'Nothing to undo'
      };
    }
    
    this.historyIndex--;
    const prevState = this.history[this.historyIndex];
    
    // Восстанавливаем предыдущее состояние
    // Оптимизация: Проверяем, нужно ли изменять размер canvas
    if (this.canvas.width !== prevState.width || this.canvas.height !== prevState.height) {
        this.canvas.width = prevState.width;
        this.canvas.height = prevState.height;
    }
    this.context.putImageData(prevState, 0, 0);
    this.currentImage = prevState;
    
    return {
      success: true,
      historyIndex: this.historyIndex,
      historyLength: this.history.length
    };
  }

  /**
   * Повтор отмененного действия
   * @returns {Promise<Object>} - Результат повтора
   */
  async redo() {
    if (this.historyIndex >= this.history.length - 1) {
      return {
        success: false,
        message: 'Nothing to redo'
      };
    }
    
    this.historyIndex++;
    const nextState = this.history[this.historyIndex];
    
    // Восстанавливаем следующее состояние
    // Оптимизация: Проверяем, нужно ли изменять размер canvas
    if (this.canvas.width !== nextState.width || this.canvas.height !== nextState.height) {
        this.canvas.width = nextState.width;
        this.canvas.height = nextState.height;
    }
    this.context.putImageData(nextState, 0, 0);
    this.currentImage = nextState;
    
    return {
      success: true,
      historyIndex: this.historyIndex,
      historyLength: this.history.length
    };
  }

  /**
   * Очистка изображения
   * @returns {Promise<Object>} - Результат очистки
   */
  async clear() {
    if (!this.currentImage) {
      throw new Error('No image to clear');
    }
    
    // Очищаем canvas
    this.context.clearRect(0, 0, this.canvas.width, this.canvas.height);
    
    // Сохраняем текущее состояние в истории
    this.currentImage = this.context.getImageData(0, 0, this.canvas.width, this.canvas.height);
    this._addToHistory(this.currentImage);
    
    return {
      success: true
    };
  }

  /**
   * Добавление состояния в историю
   * @private
   * @param {ImageData} imageData - Данные изображения
   */
  _addToHistory(imageData) {
    // Если мы находимся не в конце истории, обрезаем ее
    if (this.historyIndex < this.history.length - 1) {
      this.history = this.history.slice(0, this.historyIndex + 1);
    }
    
    // Оптимизация: Создаем копию ImageData для истории, чтобы избежать мутаций
    const historyImageData = new ImageData(
        new Uint8ClampedArray(imageData.data),
        imageData.width,
        imageData.height
    );
    
    // Добавляем новое состояние
    this.history.push(historyImageData);
    this.historyIndex = this.history.length - 1;
    
    // Ограничиваем размер истории
    if (this.history.length > this.maxHistoryLength) {
      this.history = this.history.slice(this.history.length - this.maxHistoryLength);
      this.historyIndex = this.history.length - 1;
    }
  }
  
  /**
   * Сброс истории при загрузке нового изображения
   * @private
   * @param {ImageData} initialImageData - Начальное состояние
   */
  _resetHistory(initialImageData) {
      const historyImageData = new ImageData(
          new Uint8ClampedArray(initialImageData.data),
          initialImageData.width,
          initialImageData.height
      );
      this.history = [historyImageData];
      this.historyIndex = 0;
  }

  /**
   * Применение фильтра оттенков серого
   * @private
   * @param {ImageData} imageData - Данные изображения
   * @returns {ImageData} - Обработанные данные изображения
   */
  _applyGrayscaleFilter(imageData) {
    const data = imageData.data; // Работаем напрямую с данными
    
    for (let i = 0; i < data.length; i += 4) {
      // Оптимизация: Используем стандартные коэффициенты для яркости
      const avg = data[i] * 0.299 + data[i + 1] * 0.587 + data[i + 2] * 0.114;
      data[i] = avg; // R
      data[i + 1] = avg; // G
      data[i + 2] = avg; // B
      // A остается без изменений
    }
    
    // Возвращаем измененный ImageData
    return imageData;
  }

  /**
   * Применение фильтра инверсии
   * @private
   * @param {ImageData} imageData - Данные изображения
   * @returns {ImageData} - Обработанные данные изображения
   */
  _applyInvertFilter(imageData) {
    const data = imageData.data; // Работаем напрямую с данными
    
    for (let i = 0; i < data.length; i += 4) {
      data[i] = 255 - data[i]; // R
      data[i + 1] = 255 - data[i + 1]; // G
      data[i + 2] = 255 - data[i + 2]; // B
      // A остается без изменений
    }
    
    // Возвращаем измененный ImageData
    return imageData;
  }

  /**
   * Применение оптимизированного фильтра размытия (Gaussian Blur)
   * @private
   * @param {ImageData} imageData - Данные изображения
   * @param {Object} options - Опции фильтра
   * @returns {ImageData} - Обработанные данные изображения
   */
  _applyOptimizedBlurFilter(imageData, options = {}) {
    const radius = Math.max(1, Math.round(options.radius || 1));
    const sigma = options.sigma || radius / 2;
    const data = imageData.data;
    const width = imageData.width;
    const height = imageData.height;
    const resultData = new Uint8ClampedArray(data.length);

    // Создаем ядро Гаусса
    const kernel = this._createGaussianKernel(radius, sigma);
    const kernelSize = kernel.length;
    const halfKernelSize = Math.floor(kernelSize / 2);

    // Горизонтальный проход
    const tempR = new Float32Array(data.length / 4);
    const tempG = new Float32Array(data.length / 4);
    const tempB = new Float32Array(data.length / 4);
    const tempA = new Float32Array(data.length / 4);

    for (let y = 0; y < height; y++) {
        for (let x = 0; x < width; x++) {
            let r = 0, g = 0, b = 0, a = 0;
            const pixelIndex = y * width + x;
            for (let k = -halfKernelSize; k <= halfKernelSize; k++) {
                const kernelValue = kernel[k + halfKernelSize];
                let readX = x + k;
                // Обработка краев (отражение)
                if (readX < 0) readX = -readX;
                if (readX >= width) readX = width - 1 - (readX - width);
                
                const readIndex = (y * width + readX) * 4;
                r += data[readIndex] * kernelValue;
                g += data[readIndex + 1] * kernelValue;
                b += data[readIndex + 2] * kernelValue;
                a += data[readIndex + 3] * kernelValue;
            }
            tempR[pixelIndex] = r;
            tempG[pixelIndex] = g;
            tempB[pixelIndex] = b;
            tempA[pixelIndex] = a;
        }
    }

    // Вертикальный проход
    for (let y = 0; y < height; y++) {
        for (let x = 0; x < width; x++) {
            let r = 0, g = 0, b = 0, a = 0;
            const writeIndex = (y * width + x) * 4;
            for (let k = -halfKernelSize; k <= halfKernelSize; k++) {
                const kernelValue = kernel[k + halfKernelSize];
                let readY = y + k;
                // Обработка краев (отражение)
                if (readY < 0) readY = -readY;
                if (readY >= height) readY = height - 1 - (readY - height);
                
                const readPixelIndex = readY * width + x;
                r += tempR[readPixelIndex] * kernelValue;
                g += tempG[readPixelIndex] * kernelValue;
                b += tempB[readPixelIndex] * kernelValue;
                a += tempA[readPixelIndex] * kernelValue;
            }
            resultData[writeIndex] = r;
            resultData[writeIndex + 1] = g;
            resultData[writeIndex + 2] = b;
            resultData[writeIndex + 3] = a;
        }
    }

    return new ImageData(resultData, width, height);
  }
  
  /**
   * Создание ядра Гаусса
   * @private
   */
  _createGaussianKernel(radius, sigma) {
      const size = radius * 2 + 1;
      const kernel = new Float32Array(size);
      const sigma2 = 2 * sigma * sigma;
      let sum = 0;
      for (let i = -radius; i <= radius; i++) {
          const value = Math.exp(-(i * i) / sigma2);
          kernel[i + radius] = value;
          sum += value;
      }
      // Нормализуем ядро
      for (let i = 0; i < size; i++) {
          kernel[i] /= sum;
      }
      return kernel;
  }

  /**
   * Применение оптимизированного фильтра повышения резкости (Unsharp Mask)
   * @private
   * @param {ImageData} imageData - Данные изображения
   * @param {Object} options - Опции фильтра
   * @returns {ImageData} - Обработанные данные изображения
   */
  _applyOptimizedSharpenFilter(imageData, options = {}) {
    const amount = options.amount || 1.0;
    const radius = options.radius || 1.0;
    const threshold = options.threshold || 0;
    const width = imageData.width;
    const height = imageData.height;
    const data = imageData.data;

    // 1. Создаем размытую копию изображения
    const blurredImageData = this._applyOptimizedBlurFilter(imageData, { radius });
    const blurredData = blurredImageData.data;
    
    // 2. Вычисляем маску нерезкости (разница между оригиналом и размытым)
    // 3. Применяем маску к оригиналу
    for (let i = 0; i < data.length; i += 4) {
        const diffR = data[i] - blurredData[i];
        const diffG = data[i + 1] - blurredData[i + 1];
        const diffB = data[i + 2] - blurredData[i + 2];

        // Применяем порог
        if (Math.abs(diffR) > threshold || Math.abs(diffG) > threshold || Math.abs(diffB) > threshold) {
            data[i] = Math.max(0, Math.min(255, data[i] + amount * diffR));
            data[i + 1] = Math.max(0, Math.min(255, data[i + 1] + amount * diffG));
            data[i + 2] = Math.max(0, Math.min(255, data[i + 2] + amount * diffB));
        }
        // Alpha остается без изменений
    }

    return imageData; // Возвращаем измененный оригинал
  }

  /**
   * Применение фильтра сепии
   * @private
   * @param {ImageData} imageData - Данные изображения
   * @param {Object} options - Опции фильтра
   * @returns {ImageData} - Обработанные данные изображения
   */
  _applySepiaFilter(imageData, options = {}) {
    const intensity = options.intensity || 1;
    const data = imageData.data; // Работаем напрямую с данными
    
    for (let i = 0; i < data.length; i += 4) {
      const r = data[i];
      const g = data[i + 1];
      const b = data[i + 2];
      
      // Формула сепии
      const newR = Math.min(255, (r * (1 - 0.607 * intensity)) + (g * 0.769 * intensity) + (b * 0.189 * intensity));
      const newG = Math.min(255, (r * 0.349 * intensity) + (g * (1 - 0.314 * intensity)) + (b * 0.168 * intensity));
      const newB = Math.min(255, (r * 0.272 * intensity) + (g * 0.534 * intensity) + (b * (1 - 0.869 * intensity)));
      
      data[i] = newR;
      data[i + 1] = newG;
      data[i + 2] = newB;
      // A остается без изменений
    }
    
    // Возвращаем измененный ImageData
    return imageData;
  }

  /**
   * Обработчик активации инструмента
   * @protected
   * @returns {Promise<void>}
   */
  async _onActivate() {
    this.logger.debug(`ImageEditorTool activated.`);
    // Можно добавить логику, специфичную для активации, например, отображение панели инструментов
  }

  /**
   * Обработчик деактивации инструмента
   * @protected
   * @returns {Promise<void>}
   */
  async _onDeactivate() {
    this.logger.debug(`ImageEditorTool deactivated.`);
    // Можно добавить логику, специфичную для деактивации, например, скрытие панели инструментов
  }
  
  /**
   * Создание временного canvas
   * @private
   */
  _createTemporaryCanvas(width, height) {
      if (typeof OffscreenCanvas !== 'undefined') {
          try {
              return new OffscreenCanvas(width, height);
          } catch (e) { /* fallback */ }
      }
      const canvas = document.createElement('canvas');
      canvas.width = width;
      canvas.height = height;
      return canvas;
  }
}

module.exports = ImageEditorTool;

