/**
 * PluginSandbox - Песочница для безопасного выполнения кода плагинов
 * 
 * Этот класс обеспечивает изолированное окружение для выполнения кода плагинов,
 * предотвращая доступ к критическим ресурсам и защищая основное приложение.
 */
class PluginSandbox {
  constructor() {
    // Карта контекстов выполнения: pluginId -> context
    this._executionContexts = new Map();
    
    // Флаг поддержки Web Workers
    this._supportsWebWorkers = typeof Worker !== 'undefined';
    
    // Флаг поддержки iframe
    this._supportsIframe = typeof document !== 'undefined';
  }
  
  /**
   * Выполнение кода в песочнице
   * @param {Object} context - Контекст выполнения
   * @param {string} context.pluginId - Идентификатор плагина
   * @param {string} context.code - Код для выполнения
   * @param {Object} [context.data] - Данные для передачи в код
   * @returns {Promise<any>} Результат выполнения кода
   */
  async execute(context) {
    if (!context || !context.pluginId || !context.code) {
      throw new Error('Invalid execution context');
    }
    
    // Выбор метода изоляции
    if (this._supportsWebWorkers) {
      return await this._executeInWorker(context);
    } else if (this._supportsIframe) {
      return await this._executeInIframe(context);
    } else {
      return await this._executeInVm(context);
    }
  }
  
  /**
   * Выполнение кода в Web Worker
   * @param {Object} context - Контекст выполнения
   * @returns {Promise<any>} Результат выполнения кода
   * @private
   */
  async _executeInWorker(context) {
    return new Promise((resolve, reject) => {
      try {
        // Создание Blob с кодом Worker
        const workerCode = `
          self.addEventListener('message', function(e) {
            try {
              const pluginId = e.data.pluginId;
              const code = e.data.code;
              const data = e.data.data || {};
              
              // Создание изолированного контекста
              const sandbox = {
                pluginId,
                data,
                console: {
                  log: (...args) => self.postMessage({ type: 'log', level: 'log', args }),
                  info: (...args) => self.postMessage({ type: 'log', level: 'info', args }),
                  warn: (...args) => self.postMessage({ type: 'log', level: 'warn', args }),
                  error: (...args) => self.postMessage({ type: 'log', level: 'error', args })
                }
              };
              
              // Выполнение кода
              const fn = new Function('sandbox', 'with (sandbox) { return (' + code + '); }');
              const result = fn(sandbox);
              
              // Отправка результата
              self.postMessage({ type: 'result', result });
            } catch (error) {
              self.postMessage({ type: 'error', error: { message: error.message, stack: error.stack } });
            }
          });
        `;
        
        const blob = new Blob([workerCode], { type: 'application/javascript' });
        const workerUrl = URL.createObjectURL(blob);
        
        // Создание Worker
        const worker = new Worker(workerUrl);
        
        // Обработка сообщений от Worker
        worker.addEventListener('message', (e) => {
          if (e.data.type === 'result') {
            // Очистка ресурсов
            worker.terminate();
            URL.revokeObjectURL(workerUrl);
            
            resolve(e.data.result);
          } else if (e.data.type === 'error') {
            // Очистка ресурсов
            worker.terminate();
            URL.revokeObjectURL(workerUrl);
            
            reject(new Error(e.data.error.message));
          } else if (e.data.type === 'log') {
            // Логирование
            console[e.data.level](`[Plugin ${context.pluginId}]`, ...e.data.args);
          }
        });
        
        // Обработка ошибок Worker
        worker.addEventListener('error', (error) => {
          // Очистка ресурсов
          worker.terminate();
          URL.revokeObjectURL(workerUrl);
          
          reject(error);
        });
        
        // Отправка данных в Worker
        worker.postMessage(context);
      } catch (error) {
        reject(error);
      }
    });
  }
  
  /**
   * Выполнение кода в iframe
   * @param {Object} context - Контекст выполнения
   * @returns {Promise<any>} Результат выполнения кода
   * @private
   */
  async _executeInIframe(context) {
    return new Promise((resolve, reject) => {
      try {
        // Создание iframe
        const iframe = document.createElement('iframe');
        iframe.style.display = 'none';
        document.body.appendChild(iframe);
        
        // Получение window из iframe
        const iframeWindow = iframe.contentWindow;
        
        // Создание изолированного контекста
        const sandbox = {
          pluginId: context.pluginId,
          data: context.data || {},
          console: {
            log: (...args) => console.log(`[Plugin ${context.pluginId}]`, ...args),
            info: (...args) => console.info(`[Plugin ${context.pluginId}]`, ...args),
            warn: (...args) => console.warn(`[Plugin ${context.pluginId}]`, ...args),
            error: (...args) => console.error(`[Plugin ${context.pluginId}]`, ...args)
          }
        };
        
        // Выполнение кода
        try {
          const fn = new Function('sandbox', 'with (sandbox) { return (' + context.code + '); }');
          const result = fn.call(iframeWindow, sandbox);
          
          // Очистка ресурсов
          document.body.removeChild(iframe);
          
          resolve(result);
        } catch (error) {
          // Очистка ресурсов
          document.body.removeChild(iframe);
          
          reject(error);
        }
      } catch (error) {
        reject(error);
      }
    });
  }
  
  /**
   * Выполнение кода в VM (для Node.js)
   * @param {Object} context - Контекст выполнения
   * @returns {Promise<any>} Результат выполнения кода
   * @private
   */
  async _executeInVm(context) {
    try {
      // В реальном приложении здесь будет использоваться модуль vm из Node.js
      // Для демонстрации используем Function
      
      // Создание изолированного контекста
      const sandbox = {
        pluginId: context.pluginId,
        data: context.data || {},
        console: {
          log: (...args) => console.log(`[Plugin ${context.pluginId}]`, ...args),
          info: (...args) => console.info(`[Plugin ${context.pluginId}]`, ...args),
          warn: (...args) => console.warn(`[Plugin ${context.pluginId}]`, ...args),
          error: (...args) => console.error(`[Plugin ${context.pluginId}]`, ...args)
        }
      };
      
      // Исправление: Оборачиваем код в функцию, чтобы избежать ошибки с return
      const wrappedCode = `(function() { ${context.code} })()`;
      
      // Выполнение кода
      const fn = new Function('sandbox', 'with (sandbox) { return ' + wrappedCode + '; }');
      return fn(sandbox);
    } catch (error) {
      throw error;
    }
  }
  
  /**
   * Создание контекста выполнения для плагина
   * @param {string} pluginId - Идентификатор плагина
   * @returns {Object} Контекст выполнения
   */
  createExecutionContext(pluginId) {
    if (this._executionContexts.has(pluginId)) {
      return this._executionContexts.get(pluginId);
    }
    
    const context = {
      pluginId,
      globals: {},
      dispose: () => {
        this._executionContexts.delete(pluginId);
      }
    };
    
    this._executionContexts.set(pluginId, context);
    
    return context;
  }
  
  /**
   * Получение контекста выполнения для плагина
   * @param {string} pluginId - Идентификатор плагина
   * @returns {Object|null} Контекст выполнения или null, если не найден
   */
  getExecutionContext(pluginId) {
    return this._executionContexts.get(pluginId) || null;
  }
  
  /**
   * Удаление контекста выполнения для плагина
   * @param {string} pluginId - Идентификатор плагина
   */
  removeExecutionContext(pluginId) {
    if (this._executionContexts.has(pluginId)) {
      const context = this._executionContexts.get(pluginId);
      if (context.dispose) {
        context.dispose();
      }
      this._executionContexts.delete(pluginId);
    }
  }
  
  /**
   * Очистка всех контекстов выполнения
   */
  clearAllExecutionContexts() {
    for (const [pluginId, context] of this._executionContexts.entries()) {
      if (context.dispose) {
        context.dispose();
      }
    }
    
    this._executionContexts.clear();
  }
}

// Экспорт класса
module.exports = PluginSandbox;
