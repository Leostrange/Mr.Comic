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
    // Логирование (должно быть доступно до проверки разрешений для самого логгера)
    this.log = {
      debug: (message, ...args) => {
        if (window.MrComicNativeHost && typeof window.MrComicNativeHost.logMessage === 'function') {
            window.MrComicNativeHost.logMessage(this._pluginId, "DEBUG", message + (args.length > 0 ? " " + JSON.stringify(args) : ""));
        } else {
            console.debug(`[${this._pluginId}] ${message}`, ...args);
        }
      },
      info: (message, ...args) => {
        if (window.MrComicNativeHost && typeof window.MrComicNativeHost.logMessage === 'function') {
            window.MrComicNativeHost.logMessage(this._pluginId, "INFO", message + (args.length > 0 ? " " + JSON.stringify(args) : ""));
        } else {
            console.info(`[${this._pluginId}] ${message}`, ...args);
        }
      },
      warn: (message, ...args) => {
        if (window.MrComicNativeHost && typeof window.MrComicNativeHost.logMessage === 'function') {
            window.MrComicNativeHost.logMessage(this._pluginId, "WARN", message + (args.length > 0 ? " " + JSON.stringify(args) : ""));
        } else {
            console.warn(`[${this._pluginId}] ${message}`, ...args);
        }
      },
      error: (message, ...args) => {
        if (window.MrComicNativeHost && typeof window.MrComicNativeHost.logMessage === 'function') {
            window.MrComicNativeHost.logMessage(this._pluginId, "ERROR", message + (args.length > 0 ? " " + JSON.stringify(args) : ""));
        } else {
            console.error(`[${this._pluginId}] ${message}`, ...args);
        }
      }
    };

    // API для работы с изображениями
    this.image = {
      getImage: (imageId) => { // Убрал async, возвращаем Promise
        this._checkPermission('read_image'); // Предполагаем, что такое разрешение есть
        if (!window.MrComicNativeHost || typeof window.MrComicNativeHost.imageGetImage !== 'function') {
          this.log.error("MrComicNativeHost.imageGetImage is not available.");
          return Promise.reject({ code: "native_bridge_error", message: "Native imageGetImage not found." });
        }

        return new Promise((resolve, reject) => {
          const callbackId = generateCallbackId(); // Эта функция должна быть глобально доступна
          window.mrComicPluginCallbacks[callbackId] = { resolve, reject };

          try {
            this.log.debug(`JS: Calling MrComicNativeHost.imageGetImage for imageId: ${imageId}, cbId: ${callbackId}`);
            window.MrComicNativeHost.imageGetImage(this._pluginId, imageId, callbackId);
          } catch (e) {
            this.log.error("JS: Error calling MrComicNativeHost.imageGetImage:", e);
            delete window.mrComicPluginCallbacks[callbackId]; // Важно очистить, если вызов упал
            reject({ code: "native_call_error", message: "Failed to call native imageGetImage: " + e.message });
          }
        });
      },
      saveImage: (imageData, options = {}) => { // Возвращаем Promise
        this._checkPermission('write_image');
        this.log.warn("image.saveImage is not fully implemented with native bridge yet.");
        // TODO: Реализовать через MrComicNativeHost.imageSaveImage(pluginId, imageData, optionsJson, callbackId)
        return Promise.resolve({ id: 'new-image-id', path: '/path/to/image' }); // Заглушка
      },
      registerFilter: (filterId, filterFn, options = {}) => {
        this.log.warn("image.registerFilter is not fully implemented with native bridge yet.");
        this._addDisposable(() => {});
      },
      applyFilter: (imageId, filterId, options = {}) => { // Возвращаем Promise
        this._checkPermission('modify_image');
        this.log.warn("image.applyFilter is not fully implemented with native bridge yet.");
        // TODO: Реализовать через MrComicNativeHost.imageApplyFilter(pluginId, imageId, filterId, optionsJson, callbackId)
        return Promise.resolve({ id: imageId, data: {} }); // Заглушка
      }
    };

    // API для работы с текстом (оставляем заглушки, как были)
    this.text = {
      getText: async (textId) => {
        this._checkPermission('read_text');
        this.log.warn("text.getText is not fully implemented with native bridge yet.");
        return Promise.resolve('Sample text');
      },
      setText: async (textId, text) => {
        this._checkPermission('modify_text');
        this.log.warn("text.setText is not fully implemented with native bridge yet.");
        return Promise.resolve(true);
      },
      registerTextHandler: (handlerId, handlerFn, options = {}) => {
        this.log.warn("text.registerTextHandler is not fully implemented with native bridge yet.");
        this._addDisposable(() => {});
      },
      spellCheck: async (text, options = {}) => {
        this.log.warn("text.spellCheck is not fully implemented with native bridge yet.");
        return Promise.resolve({ errors: [] });
      }
    };

    // API для экспорта (оставляем заглушки, как были)
    this.export = {
      registerExportFormat: (formatId, exportFn, options = {}) => {
        this.log.warn("export.registerExportFormat is not fully implemented with native bridge yet.");
        this._addDisposable(() => {});
      },
      exportToPdf: async (projectId, options = {}) => {
        this._checkPermission('read_file'); this._checkPermission('write_file');
        this.log.warn("export.exportToPdf is not fully implemented with native bridge yet.");
        return Promise.resolve({ success: true, path: `/exports/${projectId}/export.pdf` });
      },
      exportToImage: async (projectId, format, options = {}) => {
        this._checkPermission('read_file'); this._checkPermission('write_file');
        this.log.warn("export.exportToImage is not fully implemented with native bridge yet.");
        return Promise.resolve({ success: true, path: `/exports/${projectId}/export.${format}` });
      },
      exportToText: async (projectId, format, options = {}) => {
        this._checkPermission('read_file'); this._checkPermission('write_file');
        this.log.warn("export.exportToText is not fully implemented with native bridge yet.");
        return Promise.resolve({ success: true, path: `/exports/${projectId}/export.${format}` });
      }
    };

    // API для пользовательского интерфейса (showNotification уже использует мост)
    this.ui = {
      registerMenuItem: (menuId, itemId, options = {}) => {
        this.log.warn("ui.registerMenuItem is not fully implemented with native bridge yet.");
        this._addDisposable(() => {});
      },
      registerPanel: (panelId, renderFn, options = {}) => {
        this.log.warn("ui.registerPanel is not fully implemented with native bridge yet.");
        this._addDisposable(() => {});
      },
      showNotification: (message, options = {}) => {
        if (window.MrComicNativeHost && typeof window.MrComicNativeHost.showToast === 'function') {
            const duration = (options && options.type === 'long') ? 1 : 0;
            window.MrComicNativeHost.showToast(this._pluginId, message, duration);
        } else {
            this.log.error("MrComicNativeHost.showToast is not available.");
            alert(`[${this._pluginId}] Notification: ${message}`);
        }
      },
      showDialog: async (options = {}) => {
        this.log.warn("ui.showDialog is not fully implemented with native bridge yet.");
        return Promise.resolve({ result: 'ok' });
      }
    };

    // API для настроек (уже реализовано с коллбэками)
    this.settings = {
      get: (key, defaultValue) => {
        this._checkPermission('read_settings');
        if (!window.MrComicNativeHost || typeof window.MrComicNativeHost.settingsGet !== 'function') {
          this.log.error("MrComicNativeHost.settingsGet is not available. Returning defaultValue.");
          return Promise.resolve(defaultValue);
        }
        return new Promise((resolve, reject) => {
          const callbackId = generateCallbackId();
          window.mrComicPluginCallbacks[callbackId] = { resolve, reject };
          try {
            const defaultValueJson = JSON.stringify(defaultValue);
            this.log.debug(`JS: Calling MrComicNativeHost.settingsGet for key: ${key}, cbId: ${callbackId}`);
            window.MrComicNativeHost.settingsGet(this._pluginId, key, defaultValueJson, callbackId);
          } catch (e) {
            this.log.error("JS: Error calling MrComicNativeHost.settingsGet:", e);
            delete window.mrComicPluginCallbacks[callbackId];
            reject({ code: "native_call_error", message: "Failed to call native settingsGet: " + e.message });
          }
        });
      },
      set: (key, value) => {
        this._checkPermission('write_settings');
        if (!window.MrComicNativeHost || typeof window.MrComicNativeHost.settingsSet !== 'function') {
          this.log.error("MrComicNativeHost.settingsSet is not available.");
          return Promise.reject({ code: "native_bridge_error", message: "Native settingsSet not found." });
        }
        return new Promise((resolve, reject) => {
          const callbackId = generateCallbackId();
          window.mrComicPluginCallbacks[callbackId] = { resolve, reject };
          try {
            const valueJson = JSON.stringify(value);
            this.log.debug(`JS: Calling MrComicNativeHost.settingsSet for key: ${key}, cbId: ${callbackId}`);
            window.MrComicNativeHost.settingsSet(this._pluginId, key, valueJson, callbackId);
          } catch (e) {
            this.log.error("JS: Error calling MrComicNativeHost.settingsSet:", e);
            delete window.mrComicPluginCallbacks[callbackId];
            reject({ code: "native_call_error", message: "Failed to call native settingsSet: " + e.message });
          }
        });
      },
      remove: (key) => {
        this._checkPermission('write_settings');
        if (!window.MrComicNativeHost || typeof window.MrComicNativeHost.settingsRemove !== 'function') {
          this.log.warn("MrComicNativeHost.settingsRemove is not available. Operation skipped.");
          return Promise.resolve(false);
        }
        return new Promise((resolve, reject) => {
            const callbackId = generateCallbackId();
            window.mrComicPluginCallbacks[callbackId] = { resolve, reject };
            try {
                this.log.debug(`JS: Calling MrComicNativeHost.settingsRemove for key: ${key}, cbId: ${callbackId}`);
                window.MrComicNativeHost.settingsRemove(this._pluginId, key, callbackId);
            } catch (e) {
                this.log.error("JS: Error calling MrComicNativeHost.settingsRemove:", e);
                delete window.mrComicPluginCallbacks[callbackId];
                reject({ code: "native_call_error", message: "Failed to call native settingsRemove: " + e.message });
            }
        });
      }
    };

    // API для файловой системы (уже реализовано с коллбэками)
    this.fs = {
      readFile: (path) => {
        this._checkPermission('read_file');
         if (!window.MrComicNativeHost || typeof window.MrComicNativeHost.fsReadFile !== 'function') {
          this.log.error("MrComicNativeHost.fsReadFile is not available.");
          return Promise.reject({ code: "native_bridge_error", message: "Native fsReadFile not found." });
        }
        return new Promise((resolve, reject) => {
            const callbackId = generateCallbackId();
            window.mrComicPluginCallbacks[callbackId] = { resolve, reject };
            try {
                this.log.debug(`JS: Calling MrComicNativeHost.fsReadFile for path: ${path}, cbId: ${callbackId}`);
                window.MrComicNativeHost.fsReadFile(this._pluginId, path, callbackId);
            } catch (e) {
                this.log.error("JS: Error calling MrComicNativeHost.fsReadFile:", e);
                delete window.mrComicPluginCallbacks[callbackId];
                reject({ code: "native_call_error", message: "Failed to call native fsReadFile: " + e.message });
            }
        });
      },
      writeFile: (path, data) => {
         this._checkPermission('write_file');
         if (!window.MrComicNativeHost || typeof window.MrComicNativeHost.fsWriteFile !== 'function') {
          this.log.error("MrComicNativeHost.fsWriteFile is not available.");
          return Promise.reject({ code: "native_bridge_error", message: "Native fsWriteFile not found." });
        }
        return new Promise((resolve, reject) => {
            const callbackId = generateCallbackId();
            window.mrComicPluginCallbacks[callbackId] = { resolve, reject };
            try {
                let dataString;
                let encoding = "utf8";
                if (typeof data === 'string') {
                    dataString = data;
                } else if (data instanceof ArrayBuffer) {
                    const bytes = new Uint8Array(data);
                    let binary = '';
                    bytes.forEach((byte) => binary += String.fromCharCode(byte));
                    dataString = window.btoa(binary);
                    encoding = "base64";
                } else {
                     throw new Error("Unsupported data type for writeFile. Expected string or ArrayBuffer.");
                }
                this.log.debug(`JS: Calling MrComicNativeHost.fsWriteFile for path: ${path}, cbId: ${callbackId}`);
                window.MrComicNativeHost.fsWriteFile(this._pluginId, path, dataString, encoding, callbackId);
            } catch (e) {
                this.log.error("JS: Error calling MrComicNativeHost.fsWriteFile:", e);
                delete window.mrComicPluginCallbacks[callbackId];
                reject({ code: "native_call_error", message: "Failed to call native fsWriteFile: " + e.message });
            }
        });
      },
      exists: (path) => {
        this._checkPermission('read_file');
        if (!window.MrComicNativeHost || typeof window.MrComicNativeHost.fsExists !== 'function') {
          this.log.warn("MrComicNativeHost.fsExists is not available. Returning false.");
          return Promise.resolve(false);
        }
        return new Promise((resolve, reject) => {
            const callbackId = generateCallbackId();
            window.mrComicPluginCallbacks[callbackId] = { resolve, reject };
            try {
                this.log.debug(`JS: Calling MrComicNativeHost.fsExists for path: ${path}, cbId: ${callbackId}`);
                window.MrComicNativeHost.fsExists(this._pluginId, path, callbackId);
            } catch (e) {
                this.log.error("JS: Error calling MrComicNativeHost.fsExists:", e);
                delete window.mrComicPluginCallbacks[callbackId];
                reject({ code: "native_call_error", message: "Failed to call native fsExists: " + e.message });
            }
        });
      }
    };
  }

  // ... (остальные методы PluginContext без изменений: registerCommand, checkPermission, _checkPermission, requestPermission, _addDisposable, dispose)
  registerCommand(commandId, commandFn, options = {}) {
    this.log.warn("context.registerCommand is a stub and not fully implemented with native bridge yet.");
    const dispose = () => {};
    this._addDisposable(dispose);
    return dispose;
  }

  checkPermission(permission) {
    if (!this._permissionManager) {
      this.log.warn(`PermissionManager not available in context, cannot check permission: ${permission}`);
      return false;
    }
    return this._permissionManager.hasPermission(this._pluginId, permission);
  }

  _checkPermission(permission) {
    if (!this.checkPermission(permission)) {
      const errorMsg = `Permission '${permission}' is required for this operation by plugin '${this._pluginId}'.`;
      this.log.error(errorMsg);
      throw new Error(errorMsg);
    }
  }

  async requestPermission(permission) {
    this.log.warn("context.requestPermission is a stub and not fully implemented with native bridge yet.");
    if (!this._permissionManager) return false;
    if (this._permissionManager.hasPermission(this._pluginId, permission)) return true;
    return false;
  }

  _addDisposable(disposable) {
    if (typeof disposable === 'function') {
      this._subscriptions.push({ dispose: disposable });
    } else if (disposable && typeof disposable.dispose === 'function') {
      this._subscriptions.push(disposable);
    }
  }

  dispose() {
    for (const subscription of this._subscriptions) {
      try {
        subscription.dispose();
      } catch (error) {
        this.log.error(`Error disposing subscription:`, error);
      }
    }
    this._subscriptions = [];
    this.log.info(`PluginContext for ${this._pluginId} disposed.`);
  }
}

module.exports = PluginContext;
