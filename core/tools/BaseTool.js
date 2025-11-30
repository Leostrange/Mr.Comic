/**
 * BaseTool - Базовый класс для всех инструментов редактирования
 * 
 * Отвечает за:
 * - Определение общего интерфейса инструментов
 * - Базовую функциональность жизненного цикла
 * - Обработку команд
 */
class BaseTool {
  /**
   * @constructor
   * @param {Object} options - Опции для инициализации инструмента
   */
  constructor(options = {}) {
    this.id = options.id || `tool_${Date.now()}`; // Уникальный идентификатор инструмента
    this.type = options.type || 'base'; // Тип инструмента
    this.name = options.name || 'Базовый инструмент'; // Отображаемое имя инструмента
    this.description = options.description || ''; // Описание инструмента
    this.icon = options.icon || null; // Иконка инструмента
    this.category = options.category || 'general'; // Категория инструмента
    this.capabilities = options.capabilities || []; // Возможности инструмента
    this.dependencies = options.dependencies || []; // Зависимости инструмента
    this.context = options.context || null; // Контекст выполнения инструмента
    this.eventBus = options.eventBus || (this.context ? this.context.getService('eventBus') : null);
    this.active = false; // Флаг активности инструмента
    this.initialized = false; // Флаг инициализации
  }

  /**
   * Инициализация инструмента
   * @returns {Promise<void>}
   */
  async initialize() {
    if (this.initialized) {
      return;
    }

    // Получаем шину событий из контекста, если она не была предоставлена напрямую
    if (!this.eventBus && this.context) {
      this.eventBus = this.context.getService('eventBus');
    }

    this.initialized = true;
    if (this.eventBus) {
      this.eventBus.emit('tool.initialized', { tool: this });
    }
  }

  /**
   * Активация инструмента
   * @returns {Promise<boolean>} - Успешность активации
   */
  async activate() {
    if (!this.initialized) {
      await this.initialize();
    }

    if (this.active) {
      return true; // Инструмент уже активен
    }

    try {
      // Выполняем специфичную для инструмента логику активации
      await this._onActivate();
      
      this.active = true;
      if (this.eventBus) {
        this.eventBus.emit('tool.activated', { tool: this });
      }
      return true;
    } catch (error) {
      console.error(`Error activating tool ${this.id}:`, error);
      return false;
    }
  }

  /**
   * Деактивация инструмента
   * @returns {Promise<boolean>} - Успешность деактивации
   */
  async deactivate() {
    if (!this.active) {
      return true; // Инструмент уже неактивен
    }

    try {
      // Выполняем специфичную для инструмента логику деактивации
      await this._onDeactivate();
      
      this.active = false;
      if (this.eventBus) {
        this.eventBus.emit('tool.deactivated', { tool: this });
      }
      return true;
    } catch (error) {
      console.error(`Error deactivating tool ${this.id}:`, error);
      return false;
    }
  }

  /**
   * Проверка возможности обработки команды
   * @param {Object} command - Команда для проверки
   * @returns {boolean} - true, если инструмент может обработать команду
   */
  canHandleCommand(command) {
    // Базовая реализация, должна быть переопределена в подклассах
    return false;
  }

  /**
   * Выполнение команды
   * @param {Object} command - Команда для выполнения
   * @returns {Promise<Object>} - Результат выполнения команды
   */
  async executeCommand(command) {
    if (!this.initialized) {
      await this.initialize();
    }

    if (!this.canHandleCommand(command)) {
      throw new Error(`Tool ${this.id} cannot handle command of type ${command.type}`);
    }

    if (this.eventBus) {
      this.eventBus.emit('tool.commandExecuting', { tool: this, command });
    }

    try {
      // Выполняем специфичную для инструмента логику выполнения команды
      const result = await this._executeCommand(command);
      
      if (this.eventBus) {
        this.eventBus.emit('tool.commandExecuted', { tool: this, command, result });
      }
      
      return result;
    } catch (error) {
      if (this.eventBus) {
        this.eventBus.emit('tool.commandFailed', { tool: this, command, error });
      }
      throw error;
    }
  }

  /**
   * Получение метаданных инструмента
   * @returns {Object} - Метаданные инструмента
   */
  getMetadata() {
    return {
      id: this.id,
      type: this.type,
      name: this.name,
      description: this.description,
      icon: this.icon,
      category: this.category,
      capabilities: [...this.capabilities],
      dependencies: [...this.dependencies],
      active: this.active,
      initialized: this.initialized
    };
  }

  /**
   * Освобождение ресурсов при уничтожении инструмента
   * @returns {Promise<void>}
   */
  async dispose() {
    if (this.active) {
      await this.deactivate();
    }
    
    // Выполняем специфичную для инструмента логику освобождения ресурсов
    await this._onDispose();
    
    this.initialized = false;
    if (this.eventBus) {
      this.eventBus.emit('tool.disposed', { tool: this });
    }
  }

  // Методы для переопределения в подклассах

  /**
   * Обработчик активации инструмента
   * @protected
   * @returns {Promise<void>}
   */
  async _onActivate() {
    // Должен быть переопределен в подклассах
  }

  /**
   * Обработчик деактивации инструмента
   * @protected
   * @returns {Promise<void>}
   */
  async _onDeactivate() {
    // Должен быть переопределен в подклассах
  }

  /**
   * Реализация выполнения команды
   * @protected
   * @param {Object} command - Команда для выполнения
   * @returns {Promise<Object>} - Результат выполнения команды
   */
  async _executeCommand(command) {
    // Должен быть переопределен в подклассах
    throw new Error('Method _executeCommand must be implemented by subclass');
  }

  /**
   * Обработчик освобождения ресурсов
   * @protected
   * @returns {Promise<void>}
   */
  async _onDispose() {
    // Должен быть переопределен в подклассах
  }
}

module.exports = BaseTool;
