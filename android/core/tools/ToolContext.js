/**
 * ToolContext - Контекст выполнения инструментов редактирования
 * 
 * Отвечает за:
 * - Доступ к общим ресурсам и сервисам
 * - Управление состоянием редактирования
 * - Предоставление API для инструментов
 */
class ToolContext {
  /**
   * @constructor
   * @param {Object} options - Опции для инициализации контекста инструментов
   */
  constructor(options = {}) {
    this.services = new Map(); // Карта доступных сервисов
    this.state = options.initialState || {}; // Состояние редактирования
    this.eventBus = options.eventBus || null; // Шина событий для коммуникации
    this.toolManager = options.toolManager || null; // Менеджер инструментов
    this.pluginManager = options.pluginManager || null; // Менеджер плагинов
    this.initialized = false; // Флаг инициализации
  }

  /**
   * Инициализация контекста инструментов
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

    // Регистрируем базовые сервисы
    this.registerService('eventBus', this.eventBus);
    
    if (this.toolManager) {
      this.registerService('toolManager', this.toolManager);
    }
    
    if (this.pluginManager) {
      this.registerService('pluginManager', this.pluginManager);
    }

    this.initialized = true;
    this.eventBus.emit('toolContext.initialized', { context: this });
  }

  /**
   * Регистрация сервиса в контексте
   * @param {string} name - Имя сервиса
   * @param {Object} service - Объект сервиса
   * @returns {boolean} - Успешность регистрации
   */
  registerService(name, service) {
    if (!name || !service) {
      console.error('Invalid service provided for registration');
      return false;
    }

    if (this.services.has(name)) {
      console.warn(`Service with name ${name} is already registered`);
      return false;
    }

    this.services.set(name, service);
    this.eventBus.emit('toolContext.serviceRegistered', { name, service });
    return true;
  }

  /**
   * Отмена регистрации сервиса
   * @param {string} name - Имя сервиса для отмены регистрации
   * @returns {boolean} - Успешность отмены регистрации
   */
  unregisterService(name) {
    if (!this.services.has(name)) {
      console.warn(`Service with name ${name} is not registered`);
      return false;
    }

    const service = this.services.get(name);
    this.services.delete(name);
    this.eventBus.emit('toolContext.serviceUnregistered', { name, service });
    return true;
  }

  /**
   * Получение сервиса по имени
   * @param {string} name - Имя сервиса
   * @returns {Object|null} - Сервис или null, если не найден
   */
  getService(name) {
    return this.services.get(name) || null;
  }

  /**
   * Получение всех зарегистрированных сервисов
   * @returns {Object} - Объект с сервисами (ключ - имя, значение - сервис)
   */
  getAllServices() {
    return Object.fromEntries(this.services.entries());
  }

  /**
   * Установка состояния редактирования
   * @param {Object} newState - Новое состояние или часть состояния
   * @param {boolean} [merge=true] - Флаг слияния с текущим состоянием (true) или полной замены (false)
   */
  setState(newState, merge = true) {
    const oldState = { ...this.state };
    
    if (merge) {
      this.state = { ...this.state, ...newState };
    } else {
      this.state = { ...newState };
    }
    
    this.eventBus.emit('toolContext.stateChanged', {
      oldState,
      newState: this.state,
      changedProps: Object.keys(newState)
    });
  }

  /**
   * Получение текущего состояния редактирования
   * @returns {Object} - Текущее состояние
   */
  getState() {
    return { ...this.state };
  }

  /**
   * Получение части состояния по ключу
   * @param {string} key - Ключ состояния
   * @param {*} [defaultValue=null] - Значение по умолчанию, если ключ не найден
   * @returns {*} - Значение состояния или значение по умолчанию
   */
  getStateValue(key, defaultValue = null) {
    return key in this.state ? this.state[key] : defaultValue;
  }

  /**
   * Выполнение команды через менеджер инструментов
   * @param {Object} command - Команда для выполнения
   * @returns {Promise<Object>} - Результат выполнения команды
   */
  async executeCommand(command) {
    if (!this.toolManager) {
      throw new Error('Tool manager is not available in this context');
    }
    
    return this.toolManager.executeCommand(command);
  }

  /**
   * Создание дочернего контекста с наследованием сервисов и состояния
   * @param {Object} [options={}] - Дополнительные опции для дочернего контекста
   * @returns {ToolContext} - Новый экземпляр контекста
   */
  createChildContext(options = {}) {
    const childContext = new ToolContext({
      ...options,
      eventBus: this.eventBus,
      toolManager: this.toolManager,
      pluginManager: this.pluginManager,
      initialState: { ...this.state, ...(options.initialState || {}) }
    });
    
    // Копируем сервисы в дочерний контекст
    for (const [name, service] of this.services.entries()) {
      childContext.registerService(name, service);
    }
    
    return childContext;
  }

  /**
   * Освобождение ресурсов при уничтожении контекста
   * @returns {Promise<void>}
   */
  async dispose() {
    // Очищаем коллекцию сервисов
    this.services.clear();
    
    // Очищаем состояние
    this.state = {};
    
    this.initialized = false;
    this.eventBus.emit('toolContext.disposed', { context: this });
  }
}

module.exports = ToolContext;
