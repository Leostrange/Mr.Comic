/**
 * ToolIntegration - Класс для интеграции инструментов редактирования с системой плагинов
 * 
 * Отвечает за:
 * - Связь между системой плагинов и инструментами редактирования
 * - Регистрацию инструментов из плагинов
 * - Предоставление API для плагинов
 */
class ToolIntegration {
  /**
   * @constructor
   * @param {Object} options - Опции для инициализации интеграции
   */
  constructor(options = {}) {
    this.toolManager = options.toolManager || null; // Менеджер инструментов
    this.pluginManager = options.pluginManager || null; // Менеджер плагинов
    this.eventBus = options.eventBus || null; // Шина событий для коммуникации
    this.toolRegistry = options.toolRegistry || null; // Реестр инструментов
    this.pluginToolMap = new Map(); // Карта инструментов, предоставленных плагинами
    this.initialized = false; // Флаг инициализации
  }

  /**
   * Инициализация интеграции
   * @returns {Promise<void>}
   */
  async initialize() {
    if (this.initialized) {
      return;
    }

    if (!this.toolManager) {
      throw new Error('Tool manager is required for integration');
    }

    if (!this.pluginManager) {
      throw new Error('Plugin manager is required for integration');
    }

    // Создаем шину событий, если она не была предоставлена
    if (!this.eventBus) {
      const EventBus = require('./EventBus');
      this.eventBus = new EventBus();
    }

    // Подписываемся на события плагинов
    this.pluginManager.on('pluginActivated', this.handlePluginActivated.bind(this));
    this.pluginManager.on('pluginDeactivated', this.handlePluginDeactivated.bind(this));
    this.pluginManager.on('pluginUninstalled', this.handlePluginUninstalled.bind(this));

    // Расширяем API контекста плагинов
    this.extendPluginContext();

    this.initialized = true;
    this.eventBus.emit('toolIntegration.initialized', { integration: this });
  }

  /**
   * Расширение API контекста плагинов
   * @private
   */
  extendPluginContext() {
    const PluginContext = require('../PluginContext');
    
    // Добавляем API для работы с инструментами в контекст плагинов
    PluginContext.prototype.registerTool = function(tool) {
      const toolIntegration = this.getService('toolIntegration');
      if (!toolIntegration) {
        throw new Error('Tool integration service is not available');
      }
      
      return toolIntegration.registerToolFromPlugin(this.plugin.id, tool);
    };
    
    PluginContext.prototype.unregisterTool = function(toolId) {
      const toolIntegration = this.getService('toolIntegration');
      if (!toolIntegration) {
        throw new Error('Tool integration service is not available');
      }
      
      return toolIntegration.unregisterToolFromPlugin(this.plugin.id, toolId);
    };
    
    PluginContext.prototype.getToolManager = function() {
      return this.getService('toolManager');
    };
    
    PluginContext.prototype.getToolRegistry = function() {
      return this.getService('toolRegistry');
    };
    
    PluginContext.prototype.executeToolCommand = function(command) {
      const toolManager = this.getService('toolManager');
      if (!toolManager) {
        throw new Error('Tool manager service is not available');
      }
      
      return toolManager.executeCommand(command);
    };
  }

  /**
   * Регистрация инструмента от плагина
   * @param {string} pluginId - ID плагина
   * @param {Object} tool - Инструмент для регистрации
   * @returns {boolean} - Успешность регистрации
   */
  registerToolFromPlugin(pluginId, tool) {
    if (!pluginId || !tool) {
      console.error('Invalid plugin ID or tool provided for registration');
      return false;
    }

    // Добавляем информацию о плагине в метаданные инструмента
    tool.pluginId = pluginId;
    
    // Регистрируем инструмент в менеджере
    const success = this.toolManager.registerTool(tool);
    
    if (success) {
      // Сохраняем связь между плагином и инструментом
      if (!this.pluginToolMap.has(pluginId)) {
        this.pluginToolMap.set(pluginId, new Set());
      }
      
      this.pluginToolMap.get(pluginId).add(tool.id);
      
      // Регистрируем метаданные в реестре, если он доступен
      if (this.toolRegistry) {
        this.toolRegistry.registerTool(tool.getMetadata());
      }
      
      this.eventBus.emit('toolIntegration.toolRegistered', { pluginId, toolId: tool.id, tool });
    }
    
    return success;
  }

  /**
   * Отмена регистрации инструмента от плагина
   * @param {string} pluginId - ID плагина
   * @param {string} toolId - ID инструмента для отмены регистрации
   * @returns {boolean} - Успешность отмены регистрации
   */
  unregisterToolFromPlugin(pluginId, toolId) {
    if (!pluginId || !toolId) {
      console.error('Invalid plugin ID or tool ID provided for unregistration');
      return false;
    }

    // Проверяем, принадлежит ли инструмент этому плагину
    if (!this.pluginToolMap.has(pluginId) || !this.pluginToolMap.get(pluginId).has(toolId)) {
      console.warn(`Tool ${toolId} is not registered by plugin ${pluginId}`);
      return false;
    }

    // Отменяем регистрацию инструмента в менеджере
    const success = this.toolManager.unregisterTool(toolId);
    
    if (success) {
      // Удаляем связь между плагином и инструментом
      this.pluginToolMap.get(pluginId).delete(toolId);
      
      if (this.pluginToolMap.get(pluginId).size === 0) {
        this.pluginToolMap.delete(pluginId);
      }
      
      // Отменяем регистрацию метаданных в реестре, если он доступен
      if (this.toolRegistry) {
        this.toolRegistry.unregisterTool(toolId);
      }
      
      this.eventBus.emit('toolIntegration.toolUnregistered', { pluginId, toolId });
    }
    
    return success;
  }

  /**
   * Получение всех инструментов, предоставленных плагином
   * @param {string} pluginId - ID плагина
   * @returns {Array} - Массив ID инструментов
   */
  getToolsFromPlugin(pluginId) {
    if (!this.pluginToolMap.has(pluginId)) {
      return [];
    }
    
    return Array.from(this.pluginToolMap.get(pluginId));
  }

  /**
   * Получение плагина, предоставившего инструмент
   * @param {string} toolId - ID инструмента
   * @returns {string|null} - ID плагина или null, если не найден
   */
  getPluginForTool(toolId) {
    for (const [pluginId, toolIds] of this.pluginToolMap.entries()) {
      if (toolIds.has(toolId)) {
        return pluginId;
      }
    }
    
    return null;
  }

  /**
   * Обработчик события активации плагина
   * @param {Object} event - Событие активации плагина
   * @private
   */
  handlePluginActivated(event) {
    const { plugin } = event;
    
    // Проверяем, предоставляет ли плагин инструменты
    if (plugin.providesTools && typeof plugin.registerTools === 'function') {
      // Добавляем сервисы инструментов в контекст плагина
      const pluginContext = plugin.context;
      
      if (pluginContext) {
        pluginContext.registerService('toolManager', this.toolManager);
        pluginContext.registerService('toolRegistry', this.toolRegistry);
        pluginContext.registerService('toolIntegration', this);
      }
      
      // Вызываем метод регистрации инструментов плагина
      plugin.registerTools();
    }
  }

  /**
   * Обработчик события деактивации плагина
   * @param {Object} event - Событие деактивации плагина
   * @private
   */
  handlePluginDeactivated(event) {
    const { plugin } = event;
    
    // Отключаем инструменты, предоставленные плагином
    if (this.pluginToolMap.has(plugin.id)) {
      const toolIds = Array.from(this.pluginToolMap.get(plugin.id));
      
      for (const toolId of toolIds) {
        this.unregisterToolFromPlugin(plugin.id, toolId);
      }
    }
  }

  /**
   * Обработчик события удаления плагина
   * @param {Object} event - Событие удаления плагина
   * @private
   */
  handlePluginUninstalled(event) {
    const { pluginId } = event;
    
    // Отключаем инструменты, предоставленные плагином
    if (this.pluginToolMap.has(pluginId)) {
      const toolIds = Array.from(this.pluginToolMap.get(pluginId));
      
      for (const toolId of toolIds) {
        this.unregisterToolFromPlugin(pluginId, toolId);
      }
    }
  }

  /**
   * Освобождение ресурсов при уничтожении интеграции
   * @returns {Promise<void>}
   */
  async dispose() {
    if (!this.initialized) {
      return;
    }
    
    // Отписываемся от событий плагинов
    this.pluginManager.off('pluginActivated', this.handlePluginActivated);
    this.pluginManager.off('pluginDeactivated', this.handlePluginDeactivated);
    this.pluginManager.off('pluginUninstalled', this.handlePluginUninstalled);
    
    // Отменяем регистрацию всех инструментов от плагинов
    for (const [pluginId, toolIds] of this.pluginToolMap.entries()) {
      for (const toolId of Array.from(toolIds)) {
        this.unregisterToolFromPlugin(pluginId, toolId);
      }
    }
    
    this.pluginToolMap.clear();
    
    this.initialized = false;
    this.eventBus.emit('toolIntegration.disposed', { integration: this });
  }
}

module.exports = ToolIntegration;
