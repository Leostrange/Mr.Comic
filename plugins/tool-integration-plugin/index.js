/**
 * ToolIntegrationPlugin - Плагин для интеграции расширенных инструментов редактирования
 * с системой плагинов Mr.Comic
 * 
 * Этот плагин служит мостом между системой плагинов и расширенными инструментами редактирования,
 * позволяя плагинам расширять функциональность редакторов и добавлять новые инструменты.
 */
class ToolIntegrationPlugin {
  /**
   * @constructor
   */
  constructor() {
    this.id = 'tool-integration-plugin';
    this.name = 'Интеграция инструментов редактирования';
    this.version = '1.0.0';
    this.description = 'Плагин для интеграции расширенных инструментов редактирования с системой плагинов';
    this.author = 'Mr.Comic Team';
    this.toolManager = null;
    this.pluginManager = null;
    this.registeredTools = new Map();
    this.registeredExtensions = new Map();
    this.extensionPoints = [
      'tool.register',
      'tool.extend',
      'tool.command',
      'tool.ui'
    ];
  }

  /**
   * Инициализация плагина
   * @param {Object} context - Контекст плагина
   * @returns {Promise<void>}
   */
  async initialize(context) {
    console.log('Инициализация ToolIntegrationPlugin');
    this.pluginManager = context.pluginManager;
    
    // Получаем ссылку на менеджер инструментов
    this.toolManager = context.app.getToolManager();
    
    if (!this.toolManager) {
      throw new Error('ToolManager не найден в контексте приложения');
    }
    
    // Регистрируем точки расширения для плагинов
    this._registerExtensionPoints();
    
    // Подписываемся на события системы плагинов
    this._subscribeToPluginEvents();
    
    console.log('ToolIntegrationPlugin успешно инициализирован');
  }

  /**
   * Активация плагина
   * @returns {Promise<void>}
   */
  async activate() {
    console.log('Активация ToolIntegrationPlugin');
    
    // Загружаем все доступные инструменты из плагинов
    await this._loadToolsFromPlugins();
    
    // Применяем расширения к инструментам
    await this._applyToolExtensions();
    
    console.log('ToolIntegrationPlugin успешно активирован');
  }

  /**
   * Деактивация плагина
   * @returns {Promise<void>}
   */
  async deactivate() {
    console.log('Деактивация ToolIntegrationPlugin');
    
    // Удаляем инструменты, добавленные плагинами
    for (const [toolId, toolInfo] of this.registeredTools) {
      await this.toolManager.unregisterTool(toolId);
    }
    
    // Очищаем коллекции
    this.registeredTools.clear();
    this.registeredExtensions.clear();
    
    console.log('ToolIntegrationPlugin успешно деактивирован');
  }

  /**
   * Регистрация точек расширения для плагинов
   * @private
   */
  _registerExtensionPoints() {
    // Регистрация нового инструмента
    this.pluginManager.registerExtensionPoint('tool.register', {
      description: 'Регистрация нового инструмента редактирования',
      schema: {
        type: 'object',
        required: ['toolId', 'toolClass'],
        properties: {
          toolId: { type: 'string' },
          toolClass: { type: 'function' },
          options: { type: 'object' }
        }
      },
      handler: this._handleToolRegistration.bind(this)
    });
    
    // Расширение существующего инструмента
    this.pluginManager.registerExtensionPoint('tool.extend', {
      description: 'Расширение существующего инструмента редактирования',
      schema: {
        type: 'object',
        required: ['targetToolId', 'extension'],
        properties: {
          targetToolId: { type: 'string' },
          extension: { type: 'object' }
        }
      },
      handler: this._handleToolExtension.bind(this)
    });
    
    // Добавление новой команды для инструмента
    this.pluginManager.registerExtensionPoint('tool.command', {
      description: 'Добавление новой команды для инструмента редактирования',
      schema: {
        type: 'object',
        required: ['targetToolId', 'commandType', 'handler'],
        properties: {
          targetToolId: { type: 'string' },
          commandType: { type: 'string' },
          handler: { type: 'function' }
        }
      },
      handler: this._handleCommandRegistration.bind(this)
    });
    
    // Расширение пользовательского интерфейса инструмента
    this.pluginManager.registerExtensionPoint('tool.ui', {
      description: 'Расширение пользовательского интерфейса инструмента',
      schema: {
        type: 'object',
        required: ['targetToolId', 'uiElement'],
        properties: {
          targetToolId: { type: 'string' },
          uiElement: { type: 'object' },
          position: { type: 'string' }
        }
      },
      handler: this._handleUIExtension.bind(this)
    });
  }

  /**
   * Подписка на события системы плагинов
   * @private
   */
  _subscribeToPluginEvents() {
    // Подписываемся на активацию плагина
    this.pluginManager.on('plugin:activated', async (pluginId) => {
      const plugin = this.pluginManager.getPlugin(pluginId);
      if (plugin && plugin.provides && plugin.provides.includes('tool')) {
        await this._loadToolsFromPlugin(plugin);
      }
    });
    
    // Подписываемся на деактивацию плагина
    this.pluginManager.on('plugin:deactivated', async (pluginId) => {
      await this._removeToolsFromPlugin(pluginId);
    });
  }

  /**
   * Загрузка инструментов из всех активных плагинов
   * @private
   * @returns {Promise<void>}
   */
  async _loadToolsFromPlugins() {
    const activePlugins = this.pluginManager.getActivePlugins();
    
    for (const plugin of activePlugins) {
      if (plugin.provides && plugin.provides.includes('tool')) {
        await this._loadToolsFromPlugin(plugin);
      }
    }
  }

  /**
   * Загрузка инструментов из конкретного плагина
   * @private
   * @param {Object} plugin - Плагин
   * @returns {Promise<void>}
   */
  async _loadToolsFromPlugin(plugin) {
    if (!plugin.toolDefinitions) {
      return;
    }
    
    for (const toolDef of plugin.toolDefinitions) {
      await this._handleToolRegistration({
        toolId: toolDef.toolId,
        toolClass: toolDef.toolClass,
        options: toolDef.options || {},
        pluginId: plugin.id
      });
    }
  }

  /**
   * Удаление инструментов, добавленных конкретным плагином
   * @private
   * @param {string} pluginId - ID плагина
   * @returns {Promise<void>}
   */
  async _removeToolsFromPlugin(pluginId) {
    const toolsToRemove = [];
    
    for (const [toolId, toolInfo] of this.registeredTools) {
      if (toolInfo.pluginId === pluginId) {
        toolsToRemove.push(toolId);
      }
    }
    
    for (const toolId of toolsToRemove) {
      await this.toolManager.unregisterTool(toolId);
      this.registeredTools.delete(toolId);
    }
    
    // Удаляем расширения от этого плагина
    for (const [extensionKey, extensions] of this.registeredExtensions) {
      this.registeredExtensions.set(
        extensionKey,
        extensions.filter(ext => ext.pluginId !== pluginId)
      );
    }
  }

  /**
   * Применение расширений к инструментам
   * @private
   * @returns {Promise<void>}
   */
  async _applyToolExtensions() {
    for (const [targetToolId, extensions] of this.registeredExtensions) {
      const tool = this.toolManager.getTool(targetToolId);
      
      if (!tool) {
        console.warn(`Инструмент ${targetToolId} не найден для применения расширений`);
        continue;
      }
      
      for (const extension of extensions) {
        try {
          switch (extension.type) {
            case 'tool.extend':
              this._applyToolExtension(tool, extension.data);
              break;
            case 'tool.command':
              this._applyCommandExtension(tool, extension.data);
              break;
            case 'tool.ui':
              this._applyUIExtension(tool, extension.data);
              break;
          }
        } catch (error) {
          console.error(`Ошибка при применении расширения к инструменту ${targetToolId}:`, error);
        }
      }
    }
  }

  /**
   * Обработчик регистрации нового инструмента
   * @private
   * @param {Object} data - Данные регистрации
   * @returns {Promise<Object>} - Результат регистрации
   */
  async _handleToolRegistration(data) {
    const { toolId, toolClass, options, pluginId } = data;
    
    if (this.toolManager.hasTool(toolId)) {
      throw new Error(`Инструмент с ID ${toolId} уже зарегистрирован`);
    }
    
    try {
      // Создаем экземпляр инструмента
      const toolInstance = new toolClass({
        id: toolId,
        ...options
      });
      
      // Регистрируем инструмент в менеджере
      await this.toolManager.registerTool(toolInstance);
      
      // Сохраняем информацию о зарегистрированном инструменте
      this.registeredTools.set(toolId, {
        toolId,
        pluginId,
        instance: toolInstance
      });
      
      console.log(`Инструмент ${toolId} успешно зарегистрирован плагином ${pluginId}`);
      
      return {
        success: true,
        toolId
      };
    } catch (error) {
      console.error(`Ошибка при регистрации инструмента ${toolId}:`, error);
      throw error;
    }
  }

  /**
   * Обработчик расширения инструмента
   * @private
   * @param {Object} data - Данные расширения
   * @returns {Promise<Object>} - Результат расширения
   */
  async _handleToolExtension(data) {
    const { targetToolId, extension, pluginId } = data;
    
    // Добавляем расширение в коллекцию
    if (!this.registeredExtensions.has(targetToolId)) {
      this.registeredExtensions.set(targetToolId, []);
    }
    
    this.registeredExtensions.get(targetToolId).push({
      type: 'tool.extend',
      data: extension,
      pluginId
    });
    
    // Если инструмент уже загружен, применяем расширение сразу
    const tool = this.toolManager.getTool(targetToolId);
    if (tool) {
      this._applyToolExtension(tool, extension);
    }
    
    return {
      success: true,
      targetToolId
    };
  }

  /**
   * Обработчик регистрации команды
   * @private
   * @param {Object} data - Данные команды
   * @returns {Promise<Object>} - Результат регистрации
   */
  async _handleCommandRegistration(data) {
    const { targetToolId, commandType, handler, pluginId } = data;
    
    // Добавляем команду в коллекцию расширений
    if (!this.registeredExtensions.has(targetToolId)) {
      this.registeredExtensions.set(targetToolId, []);
    }
    
    this.registeredExtensions.get(targetToolId).push({
      type: 'tool.command',
      data: { commandType, handler },
      pluginId
    });
    
    // Если инструмент уже загружен, применяем команду сразу
    const tool = this.toolManager.getTool(targetToolId);
    if (tool) {
      this._applyCommandExtension(tool, { commandType, handler });
    }
    
    return {
      success: true,
      targetToolId,
      commandType
    };
  }

  /**
   * Обработчик расширения пользовательского интерфейса
   * @private
   * @param {Object} data - Данные UI-расширения
   * @returns {Promise<Object>} - Результат расширения
   */
  async _handleUIExtension(data) {
    const { targetToolId, uiElement, position, pluginId } = data;
    
    // Добавляем UI-расширение в коллекцию
    if (!this.registeredExtensions.has(targetToolId)) {
      this.registeredExtensions.set(targetToolId, []);
    }
    
    this.registeredExtensions.get(targetToolId).push({
      type: 'tool.ui',
      data: { uiElement, position },
      pluginId
    });
    
    // Если инструмент уже загружен, применяем UI-расширение сразу
    const tool = this.toolManager.getTool(targetToolId);
    if (tool) {
      this._applyUIExtension(tool, { uiElement, position });
    }
    
    return {
      success: true,
      targetToolId
    };
  }

  /**
   * Применение расширения к инструменту
   * @private
   * @param {Object} tool - Инструмент
   * @param {Object} extension - Расширение
   */
  _applyToolExtension(tool, extension) {
    // Расширяем функциональность инструмента
    for (const [key, value] of Object.entries(extension)) {
      if (typeof value === 'function') {
        // Для методов сохраняем оригинальный метод и создаем обертку
        if (typeof tool[key] === 'function') {
          const originalMethod = tool[key];
          tool[key] = async function(...args) {
            // Вызываем расширение с контекстом инструмента и оригинальным методом
            return await value.call(this, originalMethod.bind(this), ...args);
          };
        } else {
          // Если метода нет, просто добавляем новый
          tool[key] = value.bind(tool);
        }
      } else if (key === 'properties') {
        // Для свойств просто расширяем объект
        Object.assign(tool, value);
      }
    }
  }

  /**
   * Применение расширения команды к инструменту
   * @private
   * @param {Object} tool - Инструмент
   * @param {Object} commandData - Данные команды
   */
  _applyCommandExtension(tool, commandData) {
    const { commandType, handler } = commandData;
    
    // Регистрируем обработчик команды в инструменте
    if (typeof tool.registerCommandHandler === 'function') {
      tool.registerCommandHandler(commandType, handler.bind(tool));
    } else {
      console.warn(`Инструмент ${tool.id} не поддерживает регистрацию команд`);
    }
  }

  /**
   * Применение расширения UI к инструменту
   * @private
   * @param {Object} tool - Инструмент
   * @param {Object} uiData - Данные UI-расширения
   */
  _applyUIExtension(tool, uiData) {
    const { uiElement, position } = uiData;
    
    // Добавляем UI-элемент к инструменту
    if (typeof tool.addUIElement === 'function') {
      tool.addUIElement(uiElement, position);
    } else {
      console.warn(`Инструмент ${tool.id} не поддерживает расширение UI`);
    }
  }
}

module.exports = ToolIntegrationPlugin;
