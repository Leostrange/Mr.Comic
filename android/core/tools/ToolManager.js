/**
 * ToolManager - Центральный компонент, управляющий всеми инструментами редактирования
 * 
 * Отвечает за:
 * - Регистрацию и активацию инструментов
 * - Маршрутизацию команд к соответствующим инструментам
 * - Управление жизненным циклом инструментов
 */
class ToolManager {
  /**
   * @constructor
   * @param {Object} options - Опции для инициализации менеджера инструментов
   */
  constructor(options = {}) {
    this.tools = new Map(); // Хранилище зарегистрированных инструментов
    this.activeToolId = null; // ID активного инструмента
    this.eventBus = options.eventBus || null; // Шина событий для коммуникации
    this.pluginManager = options.pluginManager || null; // Менеджер плагинов для интеграции
    this.initialized = false; // Флаг инициализации
  }

  /**
   * Инициализация менеджера инструментов
   * @returns {Promise<void>}
   */
  async initialize() {
    if (this.initialized) {
      return;
    }

    // Создаем шину событий, если она не была предоставлена
    if (!this.eventBus) {
      const EventBus = require('./EventBus');
      this.eventBus = new EventBus();
    }

    // Подписываемся на события от плагинов, если доступен менеджер плагинов
    if (this.pluginManager) {
      this.pluginManager.on('pluginActivated', this.handlePluginActivated.bind(this));
      this.pluginManager.on('pluginDeactivated', this.handlePluginDeactivated.bind(this));
    }

    this.initialized = true;
    this.eventBus.emit('toolManager.initialized', { manager: this });
  }

  /**
   * Регистрация нового инструмента
   * @param {Object} tool - Инструмент для регистрации
   * @returns {boolean} - Успешность регистрации
   */
  registerTool(tool) {
    if (!tool || !tool.id || !tool.type) {
      console.error('Invalid tool provided for registration');
      return false;
    }

    if (this.tools.has(tool.id)) {
      console.warn(`Tool with id ${tool.id} is already registered`);
      return false;
    }

    this.tools.set(tool.id, tool);
    this.eventBus.emit('toolManager.toolRegistered', { toolId: tool.id, tool });
    return true;
  }

  /**
   * Отмена регистрации инструмента
   * @param {string} toolId - ID инструмента для отмены регистрации
   * @returns {boolean} - Успешность отмены регистрации
   */
  unregisterTool(toolId) {
    if (!this.tools.has(toolId)) {
      console.warn(`Tool with id ${toolId} is not registered`);
      return false;
    }

    // Если это активный инструмент, деактивируем его
    if (this.activeToolId === toolId) {
      this.deactivateTool(toolId);
    }

    const tool = this.tools.get(toolId);
    this.tools.delete(toolId);
    this.eventBus.emit('toolManager.toolUnregistered', { toolId, tool });
    return true;
  }

  /**
   * Получение инструмента по ID
   * @param {string} toolId - ID инструмента
   * @returns {Object|null} - Инструмент или null, если не найден
   */
  getTool(toolId) {
    return this.tools.get(toolId) || null;
  }

  /**
   * Получение всех зарегистрированных инструментов
   * @returns {Array} - Массив инструментов
   */
  getAllTools() {
    return Array.from(this.tools.values());
  }

  /**
   * Получение инструментов по типу
   * @param {string} type - Тип инструментов для фильтрации
   * @returns {Array} - Массив инструментов указанного типа
   */
  getToolsByType(type) {
    return this.getAllTools().filter(tool => tool.type === type);
  }

  /**
   * Активация инструмента
   * @param {string} toolId - ID инструмента для активации
   * @returns {Promise<boolean>} - Успешность активации
   */
  async activateTool(toolId) {
    if (!this.tools.has(toolId)) {
      console.warn(`Cannot activate: Tool with id ${toolId} is not registered`);
      return false;
    }

    // Деактивируем текущий активный инструмент, если есть
    if (this.activeToolId && this.activeToolId !== toolId) {
      await this.deactivateTool(this.activeToolId);
    }

    const tool = this.tools.get(toolId);
    
    try {
      // Вызываем метод активации инструмента, если он есть
      if (typeof tool.activate === 'function') {
        await tool.activate();
      }
      
      this.activeToolId = toolId;
      this.eventBus.emit('toolManager.toolActivated', { toolId, tool });
      return true;
    } catch (error) {
      console.error(`Error activating tool ${toolId}:`, error);
      return false;
    }
  }

  /**
   * Деактивация инструмента
   * @param {string} toolId - ID инструмента для деактивации
   * @returns {Promise<boolean>} - Успешность деактивации
   */
  async deactivateTool(toolId) {
    if (!this.tools.has(toolId)) {
      console.warn(`Cannot deactivate: Tool with id ${toolId} is not registered`);
      return false;
    }

    if (this.activeToolId !== toolId) {
      console.warn(`Tool ${toolId} is not currently active`);
      return false;
    }

    const tool = this.tools.get(toolId);
    
    try {
      // Вызываем метод деактивации инструмента, если он есть
      if (typeof tool.deactivate === 'function') {
        await tool.deactivate();
      }
      
      this.activeToolId = null;
      this.eventBus.emit('toolManager.toolDeactivated', { toolId, tool });
      return true;
    } catch (error) {
      console.error(`Error deactivating tool ${toolId}:`, error);
      return false;
    }
  }

  /**
   * Получение активного инструмента
   * @returns {Object|null} - Активный инструмент или null, если нет активного
   */
  getActiveTool() {
    return this.activeToolId ? this.tools.get(this.activeToolId) : null;
  }

  /**
   * Выполнение команды с использованием соответствующего инструмента
   * @param {Object} command - Команда для выполнения
   * @returns {Promise<Object>} - Результат выполнения команды
   */
  async executeCommand(command) {
    if (!command || !command.type) {
      throw new Error('Invalid command: missing type');
    }

    // Находим инструмент, который может обработать эту команду
    let targetTool = null;
    
    // Если указан конкретный инструмент, используем его
    if (command.toolId && this.tools.has(command.toolId)) {
      targetTool = this.tools.get(command.toolId);
    } 
    // Иначе используем активный инструмент
    else if (this.activeToolId) {
      targetTool = this.tools.get(this.activeToolId);
    }
    
    // Если не нашли подходящий инструмент, ищем по типу команды
    if (!targetTool) {
      for (const tool of this.tools.values()) {
        if (tool.canHandleCommand && tool.canHandleCommand(command)) {
          targetTool = tool;
          break;
        }
      }
    }

    if (!targetTool) {
      throw new Error(`No tool found to handle command of type ${command.type}`);
    }

    if (!targetTool.executeCommand) {
      throw new Error(`Tool ${targetTool.id} does not implement executeCommand method`);
    }

    // Выполняем команду и возвращаем результат
    this.eventBus.emit('toolManager.commandExecuting', { command, tool: targetTool });
    
    try {
      const result = await targetTool.executeCommand(command);
      this.eventBus.emit('toolManager.commandExecuted', { command, result, tool: targetTool });
      return result;
    } catch (error) {
      this.eventBus.emit('toolManager.commandFailed', { command, error, tool: targetTool });
      throw error;
    }
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
      plugin.registerTools(this);
    }
  }

  /**
   * Обработчик события деактивации плагина
   * @param {Object} event - Событие деактивации плагина
   * @private
   */
  handlePluginDeactivated(event) {
    const { plugin } = event;
    
    // Удаляем инструменты, предоставленные плагином
    if (plugin.providedToolIds && Array.isArray(plugin.providedToolIds)) {
      plugin.providedToolIds.forEach(toolId => {
        this.unregisterTool(toolId);
      });
    }
  }

  /**
   * Освобождение ресурсов при уничтожении менеджера
   * @returns {Promise<void>}
   */
  async dispose() {
    // Деактивируем активный инструмент, если есть
    if (this.activeToolId) {
      await this.deactivateTool(this.activeToolId);
    }

    // Отписываемся от событий плагинов
    if (this.pluginManager) {
      this.pluginManager.off('pluginActivated', this.handlePluginActivated);
      this.pluginManager.off('pluginDeactivated', this.handlePluginDeactivated);
    }

    // Очищаем коллекцию инструментов
    this.tools.clear();
    
    this.initialized = false;
    this.eventBus.emit('toolManager.disposed', { manager: this });
  }
}

module.exports = ToolManager;
