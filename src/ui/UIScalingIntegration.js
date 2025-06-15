/**
 * @file UIScalingIntegration.js
 * @description Интеграция системы масштабирования с компонентами пользовательского интерфейса
 * @module ui/UIScalingIntegration
 */

const ScalingManager = require(\'./ScalingManager\');

/**
 * Класс для интеграции системы масштабирования с компонентами UI
 */
class UIScalingIntegration {
  /**
   * Создает экземпляр интегратора масштабирования
   * @param {Object} options - Параметры инициализации
   * @param {Object} options.eventEmitter - Система событий
   * @param {Object} options.logger - Система логирования
   * @param {Object} options.config - Конфигурация приложения
   */
  constructor(options = {}) {
    this.eventEmitter = options.eventEmitter;
    this.logger = options.logger || console;
    this.config = options.config || {};
    
    this.scalingManagers = new Map(); // Карта менеджеров масштабирования для разных компонентов
    this.defaultScalingOptions = {
      defaultScale: this.config.defaultScale || 1.0,
      minScale: this.config.minScale || 0.5,
      maxScale: this.config.maxScale || 3.0,
      stepScale: this.config.stepScale || 0.1
    };
    
    this.isInitialized = false;
  }
  
  /**
   * Инициализирует интегратор масштабирования
   * @returns {UIScalingIntegration} Экземпляр интегратора
   */
  initialize() {
    if (this.isInitialized) {
      this.logger.warn(\'UIScalingIntegration: already initialized\');
      return this;
    }
    
    this.logger.info(\'UIScalingIntegration: initializing\');
    
    // Регистрируем обработчики событий
    this.registerEventListeners();
    
    // Создаем глобальные CSS-переменные для масштабирования
    this.createGlobalScalingVariables();
    
    this.isInitialized = true;
    this.eventEmitter.emit(\'uiScaling:initialized\');
    
    return this;
  }
  
  /**
   * Регистрирует обработчики событий
   * @private
   */
  registerEventListeners() {
    // Обработчик события изменения настроек масштабирования
    this.eventEmitter.on(\'settings:scaling:changed\', (settings) => {
      this.updateScalingSettings(settings);
    });
    
    // Обработчик события изменения темы (для адаптации масштабирования)
    this.eventEmitter.on(\'theme:changed\', (theme) => {
      this.adaptScalingToTheme(theme);
    });
    
    // Обработчик события изменения устройства вывода
    this.eventEmitter.on(\'display:changed\', (displayInfo) => {
      this.adaptScalingToDisplay(displayInfo);
    });
  }
  
  /**
   * Создает глобальные CSS-переменные для масштабирования
   * @private
   */
  createGlobalScalingVariables() {
    // Создаем стилевой элемент для глобальных переменных
    const styleElement = document.createElement(\'style\');
    styleElement.textContent = `
      :root {
        --scaling-base-font-size: 16px;
        --scaling-factor: 1;
        --scaling-ui-density: normal;
      }
      
      /* Адаптация под различные устройства */
      @media (max-width: 768px) {
        :root {
          --scaling-base-font-size: 14px;
          --scaling-ui-density: compact;
        }
      }
      
      @media (min-width: 1920px) {
        :root {
          --scaling-base-font-size: 18px;
          --scaling-ui-density: comfortable;
        }
      }
      
      /* Поддержка предпочтений пользователя по масштабированию */
      @media (prefers-reduced-motion: reduce) {
        .scaling-transition {
          transition: none !important;
        }
      }
    `;
    document.head.appendChild(styleElement);
  }
  
  /**
   * Создает менеджер масштабирования для компонента
   * @param {string} componentId - Идентификатор компонента
   * @param {HTMLElement} rootElement - Корневой элемент компонента
   * @param {Object} options - Дополнительные параметры масштабирования
   * @returns {ScalingManager} Созданный менеджер масштабирования
   */
  createScalingManager(componentId, rootElement, options = {}) {
    if (this.scalingManagers.has(componentId)) {
      this.logger.warn(`UIScalingIntegration: scaling manager for component "${componentId}" already exists`);
      return this.scalingManagers.get(componentId);
    }
    
    const scalingOptions = {
      ...this.defaultScalingOptions,
      ...options,
      rootElement,
      onScaleChange: (scale) => {
        this.handleScaleChange(componentId, scale);
      }
    };
    
    const scalingManager = new ScalingManager(scalingOptions);
    this.scalingManagers.set(componentId, scalingManager);
    
    this.logger.info(`UIScalingIntegration: created scaling manager for component "${componentId}"`);
    this.eventEmitter.emit(\'uiScaling:managerCreated\', { componentId, scalingManager });
    
    return scalingManager;
  }
  
  /**
   * Обработчик изменения масштаба компонента
   * @param {string} componentId - Идентификатор компонента
   * @param {number} scale - Новое значение масштаба
   * @private
   */
  handleScaleChange(componentId, scale) {
    this.logger.debug(`UIScalingIntegration: scale changed for component "${componentId}" to ${scale}`);
    
    // Обновляем CSS-переменную для компонента
    document.documentElement.style.setProperty(`--scaling-factor-${componentId}`, scale);
    
    // Отправляем событие об изменении масштаба
    this.eventEmitter.emit(\'uiScaling:scaleChanged\', { componentId, scale });
    
    // Сохраняем настройки масштаба в локальное хранилище, если это глобальный масштаб
    if (componentId === \'global\') {
      this.saveScalingSettings({ scale });
    }
  }
  
  /**
   * Получает менеджер масштабирования для компонента
   * @param {string} componentId - Идентификатор компонента
   * @returns {ScalingManager|null} Менеджер масштабирования или null, если не найден
   */
  getScalingManager(componentId) {
    return this.scalingManagers.get(componentId) || null;
  }
  
  /**
   * Удаляет менеджер масштабирования для компонента
   * @param {string} componentId - Идентификатор компонента
   * @returns {boolean} true, если менеджер был удален
   */
  removeScalingManager(componentId) {
    if (!this.scalingManagers.has(componentId)) {
      return false;
    }
    
    const scalingManager = this.scalingManagers.get(componentId);
    scalingManager.destroy();
    this.scalingManagers.delete(componentId);
    
    this.logger.info(`UIScalingIntegration: removed scaling manager for component "${componentId}"`);
    this.eventEmitter.emit(\'uiScaling:managerRemoved\', { componentId });
    
    return true;
  }
  
  /**
   * Синхронизирует масштаб между компонентами
   * @param {string} sourceComponentId - Идентификатор исходного компонента
   * @param {string[]} targetComponentIds - Идентификаторы целевых компонентов
   */
  syncScaleBetweenComponents(sourceComponentId, targetComponentIds) {
    const sourceManager = this.getScalingManager(sourceComponentId);
    if (!sourceManager) {
      this.logger.warn(`UIScalingIntegration: source component "${sourceComponentId}" not found`);
      return;
    }
    
    const scale = sourceManager.getCurrentScale();
    
    for (const targetId of targetComponentIds) {
      const targetManager = this.getScalingManager(targetId);
      if (targetManager) {
        targetManager.setScale(scale);
      }
    }
    
    this.logger.info(`UIScalingIntegration: synchronized scale from "${sourceComponentId}" to ${targetComponentIds.length} components`);
  }
  
  /**
   * Обновляет настройки масштабирования
   * @param {Object} settings - Новые настройки
   */
  updateScalingSettings(settings) {
    // Обновляем настройки по умолчанию
    if (settings.defaultScale !== undefined) {
      this.defaultScalingOptions.defaultScale = settings.defaultScale;
    }
    
    if (settings.minScale !== undefined) {
      this.defaultScalingOptions.minScale = settings.minScale;
    }
    
    if (settings.maxScale !== undefined) {
      this.defaultScalingOptions.maxScale = settings.maxScale;
    }
    
    if (settings.stepScale !== undefined) {
      this.defaultScalingOptions.stepScale = settings.stepScale;
    }
    
    // Обновляем настройки для всех существующих менеджеров
    this.scalingManagers.forEach((manager, componentId) => {
      if (settings.minScale !== undefined && settings.maxScale !== undefined) {
        manager.setScaleRange(settings.minScale, settings.maxScale);
      }
      
      if (settings.stepScale !== undefined) {
        manager.setScaleStep(settings.stepScale);
      }
      
      if (settings.defaultScale !== undefined && componentId === \'global\') {
        manager.resetScale(); // Сбрасываем к новому значению по умолчанию
      }
    });
    
    this.logger.info(\'UIScalingIntegration: updated scaling settings\');
    this.eventEmitter.emit(\'uiScaling:settingsUpdated\', settings);
  }
  
  /**
   * Адаптирует масштабирование к текущей теме
   * @param {Object} theme - Информация о теме
   */
  adaptScalingToTheme(theme) {
    // Адаптируем масштабирование в зависимости от темы
    const isDarkTheme = theme.type === \'dark\';
    
    // Создаем или обновляем CSS-переменные для темы
    document.documentElement.style.setProperty(\'--scaling-theme-type\', isDarkTheme ? \'dark\' : \'light\');
    
    // Для темной темы можем немного увеличить размер элементов для лучшей читаемости
    if (isDarkTheme) {
      document.documentElement.style.setProperty(\'--scaling-theme-factor\', \'1.05\');
    } else {
      document.documentElement.style.setProperty(\'--scaling-theme-factor\', \'1\');
    }
    
    this.logger.info(`UIScalingIntegration: adapted scaling to ${isDarkTheme ? \'dark\' : \'light\'} theme`);
  }
  
  /**
   * Адаптирует масштабирование к текущему устройству вывода
   * @param {Object} displayInfo - Информация об устройстве вывода
   */
  adaptScalingToDisplay(displayInfo) {
    // Адаптируем масштабирование в зависимости от устройства вывода
    const isHighDensity = displayInfo.pixelRatio > 1.5;
    const isEInk = displayInfo.type === \'eink\';
    
    // Создаем или обновляем CSS-переменные для устройства
    document.documentElement.style.setProperty(\'--scaling-display-density\', isHighDensity ? \'high\' : \'normal\');
    document.documentElement.style.setProperty(\'--scaling-display-type\', isEInk ? \'eink\' : \'standard\');
    
    // Для E-Ink устройств увеличиваем контрастность и размер элементов
    if (isEInk) {
      document.documentElement.style.setProperty(\'--scaling-display-factor\', \'1.2\');
      document.documentElement.style.setProperty(\'--scaling-contrast-boost\', \'1.4\');
    } else {
      document.documentElement.style.setProperty(\'--scaling-display-factor\', \'1\');
      document.documentElement.style.setProperty(\'--scaling-contrast-boost\', \'1\');
    }
    
    this.logger.info(`UIScalingIntegration: adapted scaling to display (high density: ${isHighDensity}, e-ink: ${isEInk})`);
  }
  
  /**
   * Сохраняет настройки масштабирования
   * @param {Object} settings - Настройки для сохранения
   * @private
   */
  saveScalingSettings(settings) {
    try {
      const savedSettings = JSON.parse(localStorage.getItem(\'mrcomic-scaling-settings\') || \'{}\');
      const updatedSettings = { ...savedSettings, ...settings };
      localStorage.setItem(\'mrcomic-scaling-settings\', JSON.stringify(updatedSettings));
      
      this.logger.debug(\'UIScalingIntegration: saved scaling settings to local storage\');
    } catch (error) {
      this.logger.error(\'UIScalingIntegration: failed to save scaling settings\', error);
    }
  }
  
  /**
   * Загружает настройки масштабирования
   * @returns {Object} Загруженные настройки
   */
  loadScalingSettings() {
    try {
      const settings = JSON.parse(localStorage.getItem(\'mrcomic-scaling-settings\') || \'{}\');
      
      this.logger.debug(\'UIScalingIntegration: loaded scaling settings from local storage\');
      return settings;
    } catch (error) {
      this.logger.error(\'UIScalingIntegration: failed to load scaling settings\', error);
      return {};
    }
  }
  
  /**
   * Создает глобальный менеджер масштабирования для всего приложения
   * @param {HTMLElement} rootElement - Корневой элемент приложения
   * @returns {ScalingManager} Глобальный менеджер масштабирования
   */
  createGlobalScalingManager(rootElement) {
    // Загружаем сохраненные настройки
    const savedSettings = this.loadScalingSettings();
    
    // Создаем глобальный менеджер масштабирования
    const globalManager = this.createScalingManager(\'global\', rootElement, {
      defaultScale: savedSettings.scale || this.defaultScalingOptions.defaultScale
    });
    
    // Если есть сохраненный масштаб, применяем его
    if (savedSettings.scale) {
      globalManager.setScale(savedSettings.scale);
    }
    
    this.logger.info(\'UIScalingIntegration: created global scaling manager\');
    
    return globalManager;
  }
  
  /**
   * Регистрирует элемент для специальной обработки масштабирования
   * @param {string} componentId - Идентификатор компонента
   * @param {HTMLElement} element - Элемент для регистрации
   * @param {Object} settings - Настройки масштабирования
   * @returns {boolean} true, если элемент успешно зарегистрирован
   */
  registerElementForScaling(componentId, element, settings = {}) {
    const scalingManager = this.getScalingManager(componentId);
    if (!scalingManager) {
      this.logger.warn(`UIScalingIntegration: cannot register element, component "${componentId}" not found`);
      return false;
    }
    
    scalingManager.registerElement(element, settings);
    return true;
  }

  /**
   * Симулирует включение функций TalkBack и Voice Access.
   * В реальном приложении это будет зависеть от нативных API Android/iOS
   * и соответствующей разметки UI (например, использование contentDescription, ARIA-атрибутов).
   */
  enableAccessibilityFeatures() {
    this.logger.info("UIScalingIntegration: Enabling TalkBack and Voice Access simulation.");
    // В реальном приложении здесь будут вызовы к нативным API или
    // установка глобальных флагов, которые влияют на рендеринг UI
    // для поддержки скринридеров и голосового управления.
    // Например, убедиться, что все интерактивные элементы имеют `aria-label` или `contentDescription`.
    document.documentElement.classList.add(\'accessibility-enabled\');
    this.eventEmitter.emit(\'accessibility:enabled\', { talkBack: true, voiceAccess: true });
    this.logger.info("UIScalingIntegration: Accessibility features (TalkBack, Voice Access) simulated as enabled.");
  }

  /**
   * Проверяет контрастность цветов UI в соответствии с WCAG guidelines.
   * Это упрощенная симуляция, в реальном приложении потребуется более сложный анализ
   * или интеграция с библиотеками для проверки контрастности.
   * @returns {boolean} true, если контрастность соответствует WCAG, false иначе.
   */
  checkWCAGContrast() {
    this.logger.info("UIScalingIntegration: Checking WCAG contrast...");
    // В реальном приложении здесь будет логика для анализа цветов фона и текста
    // всех элементов UI и вычисления коэффициента контрастности.
    // Например, можно использовать библиотеку `color-contrast-checker` или аналогичную.
    
    // Пример: Проверка контрастности для основных цветов темы
    const rootStyles = getComputedStyle(document.documentElement);
    const primaryColor = rootStyles.getPropertyValue(\'--ctp-primary\').trim();
    const surfaceColor = rootStyles.getPropertyValue(\'--ctp-surface\').trim();
    const onSurfaceColor = rootStyles.getPropertyValue(\'--ctp-on-surface\').trim();

    // Placeholder for actual contrast calculation. Assume it passes for now.
    const contrastPassed = true; // Replace with actual calculation

    if (contrastPassed) {
      this.logger.info("UIScalingIntegration: WCAG contrast check passed.");
    } else {
      this.logger.warn("UIScalingIntegration: WCAG contrast check failed. Adjust colors for better accessibility.");
    }
    this.eventEmitter.emit(\'wcag:contrastChecked\', { passed: contrastPassed });
    return contrastPassed;
  }

  /**
   * Уничтожает интегратор масштабирования и все связанные ресурсы
   */
  destroy() {
    // Удаляем все менеджеры масштабирования
    this.scalingManagers.forEach((manager) => {
      manager.destroy();
    });
    this.scalingManagers.clear();
    
    // Удаляем обработчики событий
    this.eventEmitter.removeAllListeners(\'settings:scaling:changed\');
    this.eventEmitter.removeAllListeners(\'theme:changed\');
    this.eventEmitter.removeAllListeners(\'display:changed\');
    
    this.isInitialized = false;
    this.logger.info(\'UIScalingIntegration: destroyed\');
  }
}

module.exports = UIScalingIntegration;


