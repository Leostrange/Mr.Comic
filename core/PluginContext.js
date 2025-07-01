/**
 * PluginContext - Расширенный контекст для плагинов Mr.Comic
 * 
 * Этот класс предоставляет плагинам доступ к API приложения,
 * управлению разрешениями и другим функциям.
 */
class PluginContext {
  /**
   * Конструктор контекста плагина
   * @param {string} pluginId - Идентификатор плагина
   * @param {Object} options - Опции контекста
   * @param {PermissionManager} options.permissionManager - Менеджер разрешений
   */
  constructor(pluginId, options = {}) {
    if (!pluginId) {
      throw new Error('Plugin ID is required for context initialization');
    }
    
    this._pluginId = pluginId;
    this._permissionManager = options.permissionManager;
    this._subscriptions = [];
    
    // Инициализация API
    this._initializeAPI();
  }
  
  /**
   * Инициализация API для плагина
   * @private
   */
  _initializeAPI() {
    // API для работы с изображениями
    this.image = {
      // Получение изображения
      getImage: async (imageId) => {
        this._checkPermission('read_image');
        // В реальном приложении здесь будет получение изображения
        return { id: imageId, data: {} };
      },
      
      // Сохранение изображения
      saveImage: async (imageData, options = {}) => {
        this._checkPermission('write_image');
        // В реальном приложении здесь будет сохранение изображения
        return { id: 'new-image-id', path: '/path/to/image' };
      },
      
      // Регистрация фильтра изображений
      registerFilter: (filterId, filterFn, options = {}) => {
        // В реальном приложении здесь будет регистрация фильтра
        this._addDisposable(() => {
          // Отмена регистрации фильтра при деактивации плагина
        });
      },
      
      // Применение фильтра к изображению
      applyFilter: async (imageId, filterId, options = {}) => {
        this._checkPermission('modify_image');
        // В реальном приложении здесь будет применение фильтра
        return { id: imageId, data: {} };
      }
    };
    
    // API для работы с текстом
    this.text = {
      // Получение текста
      getText: async (textId) => {
        this._checkPermission('read_text');
        // В реальном приложении здесь будет получение текста
        return 'Sample text';
      },
      
      // Сохранение текста
      setText: async (textId, text) => {
        this._checkPermission('modify_text');
        // В реальном приложении здесь будет сохранение текста
        return true;
      },
      
      // Регистрация обработчика текста
      registerTextHandler: (handlerId, handlerFn, options = {}) => {
        // В реальном приложении здесь будет регистрация обработчика
        this._addDisposable(() => {
          // Отмена регистрации обработчика при деактивации плагина
        });
      },
      
      // Проверка орфографии
      spellCheck: async (text, options = {}) => {
        // В реальном приложении здесь будет проверка орфографии
        return { errors: [] };
      }
    };
    
    // API для экспорта
    this.export = {
      // Регистрация формата экспорта
      registerExportFormat: (formatId, exportFn, options = {}) => {
        // В реальном приложении здесь будет регистрация формата экспорта
        this._addDisposable(() => {
          // Отмена регистрации формата при деактивации плагина
        });
      },
      
      // Экспорт в PDF
      exportToPdf: async (projectId, options = {}) => {
        this._checkPermission('read_file');
        this._checkPermission('write_file');
        // В реальном приложении здесь будет экспорт в PDF
        return { success: true, path: `/exports/${projectId}/export.pdf` };
      },
      
      // Экспорт в изображение
      exportToImage: async (projectId, format, options = {}) => {
        this._checkPermission('read_file');
        this._checkPermission('write_file');
        // В реальном приложении здесь будет экспорт в изображение
        return { success: true, path: `/exports/${projectId}/export.${format}` };
      },
      
      // Экспорт в текстовый формат
      exportToText: async (projectId, format, options = {}) => {
        this._checkPermission('read_file');
        this._checkPermission('write_file');
        // В реальном приложении здесь будет экспорт в текстовый формат
        return { success: true, path: `/exports/${projectId}/export.${format}` };
      }
    };
    
    // API для пользовательского интерфейса
    this.ui = {
      // Регистрация пункта меню
      registerMenuItem: (menuId, itemId, options = {}) => {
        // В реальном приложении здесь будет регистрация пункта меню
        this._addDisposable(() => {
          // Отмена регистрации пункта меню при деактивации плагина
        });
      },
      
      // Регистрация панели
      registerPanel: (panelId, renderFn, options = {}) => {
        // В реальном приложении здесь будет регистрация панели
        this._addDisposable(() => {
          // Отмена регистрации панели при деактивации плагина
        });
      },
      
      // Показ уведомления
      showNotification: async (message, options = {}) => {
        // В реальном приложении здесь будет показ уведомления
        return true;
      },
      
      // Показ диалога
      showDialog: async (options = {}) => {
        // В реальном приложении здесь будет показ диалога
        return { result: 'ok' };
      }
    };
    
    // API для настроек
    this.settings = {
      // Получение настройки
      get: async (key, defaultValue) => {
        this._checkPermission('read_settings');
        // В реальном приложении здесь будет получение настройки
        return defaultValue;
      },
      
      // Сохранение настройки
      set: async (key, value) => {
        this._checkPermission('write_settings');
        // В реальном приложении здесь будет сохранение настройки
        return true;
      },
      
      // Удаление настройки
      remove: async (key) => {
        this._checkPermission('write_settings');
        // В реальном приложении здесь будет удаление настройки
        return true;
      }
    };
    
    // API для файловой системы
    this.fs = {
      // Чтение файла
      readFile: async (path) => {
        this._checkPermission('read_file');
        // В реальном приложении здесь будет чтение файла
        return Buffer.from('Sample file content');
      },
      
      // Запись файла
      writeFile: async (path, data) => {
        this._checkPermission('write_file');
        // В реальном приложении здесь будет запись файла
        return true;
      },
      
      // Проверка существования файла
      exists: async (path) => {
        this._checkPermission('read_file');
        // В реальном приложении здесь будет проверка существования файла
        return false;
      }
    };
    
    // Логирование
    this.log = {
      debug: (message, ...args) => {
        console.debug(`[${this._pluginId}] ${message}`, ...args);
      },
      info: (message, ...args) => {
        console.info(`[${this._pluginId}] ${message}`, ...args);
      },
      warn: (message, ...args) => {
        console.warn(`[${this._pluginId}] ${message}`, ...args);
      },
      error: (message, ...args) => {
        console.error(`[${this._pluginId}] ${message}`, ...args);
      }
    };
  }
  
  /**
   * Регистрация команды
   * @param {string} commandId - Идентификатор команды
   * @param {Function} commandFn - Функция команды
   * @param {Object} options - Опции команды
   * @returns {Function} Функция для отмены регистрации
   */
  registerCommand(commandId, commandFn, options = {}) {
    // В реальном приложении здесь будет регистрация команды
    const dispose = () => {
      // Отмена регистрации команды
    };
    
    this._addDisposable(dispose);
    
    return dispose;
  }
  
  /**
   * Проверка наличия разрешения
   * @param {string} permission - Разрешение для проверки
   * @returns {boolean} true, если разрешение предоставлено
   */
  checkPermission(permission) {
    if (!this._permissionManager) {
      return false;
    }
    
    return this._permissionManager.hasPermission(this._pluginId, permission);
  }
  
  /**
   * Проверка наличия разрешения с выбросом исключения
   * @param {string} permission - Разрешение для проверки
   * @throws {Error} Если разрешение не предоставлено
   * @private
   */
  _checkPermission(permission) {
    if (!this.checkPermission(permission)) {
      throw new Error(`Permission ${permission} is required for this operation`);
    }
  }
  
  /**
   * Запрос разрешения
   * @param {string} permission - Разрешение для запроса
   * @returns {Promise<boolean>} true, если разрешение предоставлено
   */
  async requestPermission(permission) {
    if (!this._permissionManager) {
      return false;
    }
    
    // В реальном приложении здесь будет запрос разрешения у пользователя
    const granted = true;
    
    if (granted) {
      this._permissionManager.grantPermission(this._pluginId, permission);
    }
    
    return granted;
  }
  
  /**
   * Добавление объекта для очистки при деактивации плагина
   * @param {Function|Object} disposable - Функция или объект с методом dispose
   */
  _addDisposable(disposable) {
    if (typeof disposable === 'function') {
      this._subscriptions.push({ dispose: disposable });
    } else if (disposable && typeof disposable.dispose === 'function') {
      this._subscriptions.push(disposable);
    }
  }
  
  /**
   * Очистка ресурсов
   */
  dispose() {
    for (const subscription of this._subscriptions) {
      try {
        subscription.dispose();
      } catch (error) {
        console.error(`Error disposing subscription:`, error);
      }
    }
    
    this._subscriptions = [];
  }
}

// Экспорт класса
module.exports = PluginContext;
