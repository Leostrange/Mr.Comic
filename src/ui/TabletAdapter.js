/**
 * @file TabletAdapter.js
 * @description Адаптер интерфейса для планшетных устройств
 * @module ui/TabletAdapter
 */

/**
 * Класс для адаптации интерфейса под планшетные устройства
 */
class TabletAdapter {
  /**
   * Создает экземпляр адаптера для планшетов
   * @param {Object} options - Параметры инициализации
   * @param {Object} options.eventEmitter - Система событий
   * @param {Object} options.logger - Система логирования
   * @param {Object} options.config - Конфигурация
   */
  constructor(options = {}) {
    this.eventEmitter = options.eventEmitter || {
      emit: () => {},
      on: () => {},
      off: () => {}
    };
    this.logger = options.logger || console;
    this.config = this.mergeConfig(options.config || {});
    
    // Флаги состояния
    this.isInitialized = false;
    this.isTablet = false;
    this.isFoldable = false; // New property for foldable devices
    this.currentOrientation = null;
    
    // Зарегистрированные компоненты
    this.components = new Map();
    
    // Привязка методов к контексту
    this.handleResize = this.handleResize.bind(this);
    this.handleOrientationChange = this.handleOrientationChange.bind(this);
  }
  
  /**
   * Объединяет пользовательскую конфигурацию с конфигурацией по умолчанию
   * @param {Object} userConfig - Пользовательская конфигурация
   * @returns {Object} Объединенная конфигурация
   * @private
   */
  mergeConfig(userConfig) {
    const defaultConfig = {
      // Общие настройки
      tabletBreakpoint: 768, // Ширина экрана, при которой устройство считается планшетом
      largeTabletBreakpoint: 1024, // Ширина экрана для больших планшетов
      foldableBreakpoint: 1200, // Ширина экрана для складных устройств в развернутом состоянии
      
      // Настройки макетов
      layouts: {
        default: \'stack\', // Стандартный макет для мобильных устройств
        tablet: \'split\', // Макет для планшетов
        largeTablet: \'grid\', // Макет для больших планшетов
        foldable: \'dual-pane\' // Макет для складных устройств
      },
      
      // Настройки элементов управления
      controls: {
        touchTargetSize: 44, // Минимальный размер области касания (в пикселях)
        spacing: 16, // Расстояние между элементами управления
        floatingActionButton: true, // Использовать плавающую кнопку действия
        swipeNavigation: true // Использовать навигацию свайпами
      },
      
      // Настройки для отладки
      debug: false
    };
    
    return { ...defaultConfig, ...userConfig };
  }
  
  /**
   * Инициализирует адаптер для планшетов
   * @returns {TabletAdapter} Экземпляр адаптера
   */
  initialize() {
    if (this.isInitialized) {
      this.logger.warn(\'TabletAdapter: already initialized\');
      return this;
    }
    
    this.logger.info(\'TabletAdapter: initializing\');
    
    // Определяем тип устройства
    this.detectDeviceType();
    
    // Определяем ориентацию экрана
    this.detectOrientation();
    
    // Добавляем обработчики событий
    this.addEventListeners();
    
    // Добавляем метатег для корректного масштабирования на мобильных устройствах
    this.addViewportMeta();
    
    // Добавляем базовые стили для адаптивного дизайна
    this.addBaseStyles();
    
    this.isInitialized = true;
    this.eventEmitter.emit(\'tabletAdapter:initialized\', {
      isTablet: this.isTablet,
      isFoldable: this.isFoldable,
      orientation: this.currentOrientation
    });
    
    return this;
  }
  
  /**
   * Определяет тип устройства
   * @private
   */
  detectDeviceType() {
    const width = window.innerWidth;
    const isTablet = width >= this.config.tabletBreakpoint && width < this.config.foldableBreakpoint;
    const isLargeTablet = width >= this.config.largeTabletBreakpoint && width < this.config.foldableBreakpoint;
    const isFoldable = width >= this.config.foldableBreakpoint; // Simple check for foldable in landscape
    
    // Дополнительные проверки для определения планшета
    const isTouch = \'ontouchstart\' in window || navigator.maxTouchPoints > 0;
    const isIOS = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;
    const isAndroidTablet = /Android/.test(navigator.userAgent) && !/Mobile/.test(navigator.userAgent);
    const isWindowsTablet = /Windows/.test(navigator.userAgent) && isTouch;
    
    // Определяем, является ли устройство планшетом или складным
    this.isTablet = isTablet || isLargeTablet || isIOS || isAndroidTablet || isWindowsTablet;
    this.isLargeTablet = isLargeTablet;
    this.isFoldable = isFoldable; // Update foldable status
    
    this.logger.debug(`TabletAdapter: device detected as ${
      this.isFoldable ? \'foldable\' : 
      this.isTablet ? (this.isLargeTablet ? \'large tablet\' : \'tablet\') : \'non-tablet\'
    }`);
    
    return this.isTablet || this.isFoldable;
  }
  
  /**
   * Определяет ориентацию экрана
   * @private
   */
  detectOrientation() {
    const width = window.innerWidth;
    const height = window.innerHeight;
    
    const oldOrientation = this.currentOrientation;
    this.currentOrientation = width > height ? \'landscape\' : \'portrait\';
    
    if (oldOrientation !== this.currentOrientation) {
      this.logger.debug(`TabletAdapter: orientation changed to ${this.currentOrientation}`);
      
      if (this.isInitialized) {
        this.eventEmitter.emit(\'tabletAdapter:orientationChanged\', {
          orientation: this.currentOrientation
        });
      }
    }
    
    return this.currentOrientation;
  }
  
  /**
   * Добавляет обработчики событий
   * @private
   */
  addEventListeners() {
    // Обработчик изменения размера окна
    window.addEventListener(\'resize\', this.handleResize);
    
    // Обработчик изменения ориентации экрана
    if (\'onorientationchange\' in window) {
      window.addEventListener(\'orientationchange\', this.handleOrientationChange);
    }
  }
  
  /**
   * Удаляет обработчики событий
   * @private
   */
  removeEventListeners() {
    window.removeEventListener(\'resize\', this.handleResize);
    
    if (\'onorientationchange\' in window) {
      window.removeEventListener(\'orientationchange\', this.handleOrientationChange);
    }
  }
  
  /**
   * Обработчик изменения размера окна
   * @private
   */
  handleResize() {
    // Определяем тип устройства
    const wasTablet = this.isTablet;
    const wasLargeTablet = this.isLargeTablet;
    const wasFoldable = this.isFoldable;
    this.detectDeviceType();
    
    // Если тип устройства изменился, отправляем событие
    if (wasTablet !== this.isTablet || wasLargeTablet !== this.isLargeTablet || wasFoldable !== this.isFoldable) {
      this.eventEmitter.emit(\'tabletAdapter:deviceTypeChanged\', {
        isTablet: this.isTablet,
        isLargeTablet: this.isLargeTablet,
        isFoldable: this.isFoldable
      });
      
      // Обновляем все зарегистрированные компоненты
      this.updateAllComponents();
    }
    
    // Определяем ориентацию экрана
    this.detectOrientation();
  }
  
  /**
   * Обработчик изменения ориентации экрана
   * @private
   */
  handleOrientationChange() {
    // Небольшая задержка для корректного определения новых размеров
    setTimeout(() => {
      // Определяем ориентацию экрана
      this.detectOrientation();
      
      // Обновляем все зарегистрированные компоненты
      this.updateAllComponents();
    }, 100);
  }
  
  /**
   * Добавляет метатег для корректного масштабирования на мобильных устройствах
   * @private
   */
  addViewportMeta() {
    // Проверяем, существует ли уже метатег viewport
    let viewportMeta = document.querySelector(\'meta[name="viewport"]\');
    
    if (!viewportMeta) {
      // Создаем новый метатег viewport
      viewportMeta = document.createElement(\'meta\');
      viewportMeta.name = \'viewport\';
      document.head.appendChild(viewportMeta);
    }
    
    // Устанавливаем содержимое метатега
    viewportMeta.content = \'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\';
  }
  
  /**
   * Добавляет базовые стили для адаптивного дизайна
   * @private
   */
  addBaseStyles() {
    // Проверяем, существует ли уже элемент стилей
    let styleElement = document.getElementById(\'tablet-adapter-styles\');
    
    if (!styleElement) {
      // Создаем новый элемент стилей
      styleElement = document.createElement(\'style\');
      styleElement.id = \'tablet-adapter-styles\';
      document.head.appendChild(styleElement);
    }
    
    // Устанавливаем содержимое стилей
    styleElement.textContent = `
      /* Базовые стили для адаптивного дизайна */
      * {
        box-sizing: border-box;
      }
      
      html, body {
        margin: 0;
        padding: 0;
        width: 100%;
        height: 100%;
        overflow-x: hidden;
      }
      
      /* Стили для планшетов */
      @media (min-width: ${this.config.tabletBreakpoint}px) {
        .tablet-hidden {
          display: none !important;
        }
        
        .tablet-visible {
          display: block !important;
        }
        
        .tablet-flex {
          display: flex !important;
        }
        
        .tablet-grid {
          display: grid !important;
        }
        
        /* Макет с разделением */
        .layout-split {
          display: flex;
          flex-direction: row;
        }
        
        .layout-split > .sidebar {
          width: 320px;
          flex-shrink: 0;
        }
        
        .layout-split > .content {
          flex-grow: 1;
        }
      }
      
      /* Стили для больших планшетов */
      @media (min-width: ${this.config.largeTabletBreakpoint}px) {
        .large-tablet-hidden {
          display: none !important;
        }
        
        .large-tablet-visible {
          display: block !important;
        }
        
        .large-tablet-flex {
          display: flex !important;
        }
        
        .large-tablet-grid {
          display: grid !important;
        }
        
        /* Макет с сеткой */
        .layout-grid {
          display: grid;
          grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
          gap: 20px;
        }
      }

      /* Стили для складных устройств */
      @media (min-width: ${this.config.foldableBreakpoint}px) {
        .foldable-hidden {
          display: none !important;
        }
        
        .foldable-visible {
          display: block !important;
        }
        
        .foldable-flex {
          display: flex !important;
        }
        
        .foldable-grid {
          display: grid !important;
        }
        
        /* Макет с двумя панелями для складных устройств */
        .layout-dual-pane {
          display: flex;
          flex-direction: row;
          width: 100%;
          height: 100%;
        }
        
        .layout-dual-pane > .left-pane,
        .layout-dual-pane > .right-pane {
          flex: 1;
          overflow: auto;
        }
        
        .layout-dual-pane > .left-pane {
          border-right: 1px solid #ccc; /* Разделитель между панелями */
        }
      }
      
      /* Стили для портретной ориентации на планшетах */
      @media (min-width: ${this.config.tabletBreakpoint}px) and (orientation: portrait) {
        .tablet-portrait-hidden {
          display: none !important;
        }
        
        .tablet-portrait-visible {
          display: block !important;
        }
      }
      
      /* Стили для альбомной ориентации на планшетах */
      @media (min-width: ${this.config.tabletBreakpoint}px) and (orientation: landscape) {
        .tablet-landscape-hidden {
          display: none !important;
        }
        
        .tablet-landscape-visible {
          display: block !important;
        }
      }
      
      /* Стили для элементов управления на сенсорных устройствах */
      @media (pointer: coarse) {
        button, .button, .clickable, a, input[type="button"], input[type="submit"] {
          min-height: ${this.config.controls.touchTargetSize}px;
          min-width: ${this.config.controls.touchTargetSize}px;
          padding: ${this.config.controls.spacing / 2}px;
          margin: ${this.config.controls.spacing / 2}px;
        }
        
        input, select, textarea {
          min-height: ${this.config.controls.touchTargetSize}px;
          padding: ${this.config.controls.spacing / 2}px;
        }
      }
    `;
  }
  
  /**
   * Регистрирует компонент
   * @param {string} id - Идентификатор компонента
   * @param {Object} component - Компонент
   * @param {string} type - Тип компонента
   * @returns {TabletAdapter} Экземпляр адаптера
   */
  registerComponent(id, component, type = \'generic\') {
    if (!this.isInitialized) {
      this.logger.warn(\'TabletAdapter: not initialized\');
      return this;
    }
    
    this.components.set(id, { component, type });
    
    // Применяем адаптацию к компоненту
    this.updateComponent(id, { component, type });
    
    this.logger.debug(`TabletAdapter: registered component "${id}" of type "${type}"`);
    
    return this;
  }
  
  /**
   * Обновляет все зарегистрированные компоненты
   * @private
   */
  updateAllComponents() {
    for (const [id, componentData] of this.components) {
      this.updateComponent(id, componentData);
    }
  }
  
  /**
   * Обновляет компонент
   * @param {string} id - Идентификатор компонента
   * @param {Object} componentData - Данные компонента
   * @private
   */
  updateComponent(id, componentData) {
    const { component, type } = componentData;
    
    // Если компонент имеет метод updateLayout, вызываем его
    if (component.updateLayout && typeof component.updateLayout === \'function\') {
      component.updateLayout({
        isTablet: this.isTablet,
        isLargeTablet: this.isLargeTablet,
        isFoldable: this.isFoldable,
        orientation: this.currentOrientation
      });
      return;
    }
    
    // Если компонент является DOM-элементом
    if (component instanceof Element) {
      // Применяем специфичные для типа компонента адаптации
      switch (type) {
        case \'layout\':
          this.updateLayoutComponent(component);
          break;
        case \'navigation\':
          this.updateNavigationComponent(component);
          break;
        case \'content\':
          this.updateContentComponent(component);
          break;
        case \'toolbar\':
          this.updateToolbarComponent(component);
          break;
        case \'sidebar\':
          this.updateSidebarComponent(component);
          break;
        case \'modal\':
          this.updateModalComponent(component);
          break;
        case \'form\':
          this.updateFormComponent(component);
          break;
        case \'comic\':
          this.updateComicComponent(component);
          break;
        case \'editor\':
          this.updateEditorComponent(component);
          break;
        default:
          // Для общих компонентов применяем базовые адаптации
          this.updateGenericComponent(component);
      }
    }
  }
  
  /**
   * Обновляет компонент макета
   * @param {Element} element - DOM-элемент
   * @private
   */
  updateLayoutComponent(element) {
    // Удаляем все классы макетов
    element.classList.remove(\'layout-stack\', \'layout-split\', \'layout-grid\', \'layout-dual-pane\');
    
    // Добавляем класс соответствующего макета
    if (this.isFoldable) {
      element.classList.add(`layout-${this.config.layouts.foldable}`);
    } else if (this.isLargeTablet) {
      element.classList.add(`layout-${this.config.layouts.largeTablet}`);
    } else if (this.isTablet) {
      element.classList.add(`layout-${this.config.layouts.tablet}`);
    } else {
      element.classList.add(`layout-${this.config.layouts.default}`);
    }
    
    // Добавляем классы для текущей ориентации
    element.classList.remove(\'orientation-portrait\', \'orientation-landscape\');
    element.classList.add(`orientation-${this.currentOrientation}`);
  }
  
  /**
   * Обновляет компонент навигации
   * @param {Element} element - DOM-элемент
   * @private
   */
  updateNavigationComponent(element) {
    // Адаптируем навигацию в зависимости от типа устройства и ориентации
    if (this.isFoldable) {
      // Для складных устройств можно использовать две панели навигации или более сложный макет
      element.classList.remove(\'navigation-compact\', \'navigation-full\');
      element.classList.add(\'navigation-dual-pane\');
    } else if (this.isTablet) {
      // Для планшетов в альбомной ориентации показываем полную навигацию
      if (this.currentOrientation === \'landscape\') {
        element.classList.remove(\'navigation-compact\');
        element.classList.add(\'navigation-full\');
      } else {
        // Для планшетов в портретной ориентации используем компактную навигацию
        element.classList.remove(\'navigation-full\');
        element.classList.add(\'navigation-compact\');
      }
    } else {
      // Для мобильных устройств всегда используем компактную навигацию
      element.classList.remove(\'navigation-full\');
      element.classList.add(\'navigation-compact\');
    }
    
    // Если включена навигация свайпами, добавляем соответствующий класс
    if (this.config.controls.swipeNavigation) {
      element.classList.add(\'swipe-enabled\');
    } else {
      element.classList.remove(\'swipe-enabled\');
    }
  }
  
  /**
   * Обновляет компонент содержимого
   * @param {Element} element - DOM-элемент
   * @private
   */
  updateContentComponent(element) {
    // Адаптируем содержимое в зависимости от типа устройства и ориентации
    if (this.isFoldable) {
      // Для складных устройств можно использовать макет с двумя колонками для контента
      element.style.columnCount = \'2\';
      element.style.columnGap = \'20px\';
    } else if (this.isTablet) {
      // Для планшетов используем многоколоночный макет в альбомной ориентации
      if (this.currentOrientation === \'landscape\' && this.isLargeTablet) {
        element.style.columnCount = \'2\';
        element.style.columnGap = \'20px\';
      } else {
        // В портретной ориентации используем одну колонку
        element.style.columnCount = \'1\';
      }
    } else {
      // Для мобильных устройств всегда используем одну колонку
      element.style.columnCount = \'1\';
    }
  }
  
  /**
   * Обновляет компонент панели инструментов
   * @param {Element} element - DOM-элемент
   * @private
   */
  updateToolbarComponent(element) {
    // Адаптируем панели инструментов
    if (this.isFoldable) {
      // Для складных устройств можно размещать панели инструментов по бокам или внизу
      element.classList.add(\'toolbar-foldable\');
    } else if (this.isTablet) {
      // Для планшетов можно использовать более крупные кнопки и больше места
      element.classList.add(\'toolbar-tablet\');
    } else {
      element.classList.remove(\'toolbar-foldable\', \'toolbar-tablet\');
    }
  }

  /**
   * Обновляет компонент боковой панели
   * @param {Element} element - DOM-элемент
   * @private
   */
  updateSidebarComponent(element) {
    // Адаптируем боковые панели
    if (this.isFoldable) {
      // Для складных устройств боковая панель может быть всегда видимой
      element.classList.add(\'sidebar-foldable\');
    } else if (this.isTablet) {
      // Для планшетов боковая панель может быть шире
      element.classList.add(\'sidebar-tablet\');
    } else {
      element.classList.remove(\'sidebar-foldable\', \'sidebar-tablet\');
    }
  }

  /**
   * Обновляет компонент модального окна
   * @param {Element} element - DOM-элемент
   * @private
   */
  updateModalComponent(element) {
    // Адаптируем модальные окна
    if (this.isFoldable || this.isTablet) {
      // Для планшетов и складных устройств модальные окна могут быть центрированы и занимать меньше места
      element.classList.add(\'modal-tablet-foldable\');
    } else {
      element.classList.remove(\'modal-tablet-foldable\');
    }
  }

  /**
   * Обновляет компонент формы
   * @param {Element} element - DOM-элемент
   * @private
   */
  updateFormComponent(element) {
    // Адаптируем формы
    if (this.isFoldable || this.isTablet) {
      // Для планшетов и складных устройств формы могут быть двухколоночными
      element.classList.add(\'form-tablet-foldable\');
    } else {
      element.classList.remove(\'form-tablet-foldable\');
    }
  }

  /**
   * Обновляет компонент комикса
   * @param {Element} element - DOM-элемент
   * @private
   */
  updateComicComponent(element) {
    // Адаптируем отображение комикса
    if (this.isFoldable) {
      // Для складных устройств можно отображать две страницы комикса одновременно
      element.classList.add(\'comic-dual-page\');
    } else if (this.isTablet) {
      // Для планшетов можно увеличить размер страницы комикса
      element.classList.add(\'comic-tablet\');
    } else {
      element.classList.remove(\'comic-dual-page\', \'comic-tablet\');
    }
  }

  /**
   * Обновляет компонент редактора
   * @param {Element} element - DOM-элемент
   * @private
   */
  updateEditorComponent(element) {
    // Адаптируем редактор
    if (this.isFoldable) {
      // Для складных устройств можно использовать двухпанельный редактор
      element.classList.add(\'editor-dual-pane\');
    } else if (this.isTablet) {
      // Для планшетов можно оптимизировать расположение элементов управления
      element.classList.add(\'editor-tablet\');
    } else {
      element.classList.remove(\'editor-dual-pane\', \'editor-tablet\');
    }
  }

  /**
   * Обновляет общий компонент
   * @param {Element} element - DOM-элемент
   * @private
   */
  updateGenericComponent(element) {
    // Добавляем классы для общего адаптивного поведения
    if (this.isFoldable) {
      element.classList.add(\'responsive-foldable\');
    } else if (this.isTablet) {
      element.classList.add(\'responsive-tablet\');
    } else {
      element.classList.remove(\'responsive-foldable\', \'responsive-tablet\');
    }
  }

  /**
   * Placeholder for testing different screens. In a real application, this would involve
   * a dedicated testing framework or manual testing on various devices/emulators.
   */
  testDifferentScreens() {
    this.logger.info("Simulating testing on different screens...");
    // Example: Log current device type and orientation
    this.logger.info(`Current device type: ${this.isFoldable ? \'Foldable\' : (this.isTablet ? \'Tablet\' : \'Phone\')}`);
    this.logger.info(`Current orientation: ${this.currentOrientation}`);
    
    // In a real scenario, you would run automated UI tests here
    // or provide instructions for manual testing.
    this.logger.info("Testing complete for current screen configuration.");
  }
}

// Пример использования:
// const tabletAdapter = new TabletAdapter({
//   eventEmitter: new EventEmitter(), // Предполагается наличие EventEmitter
//   logger: console,
//   config: {
//     tabletBreakpoint: 768,
//     largeTabletBreakpoint: 1024,
//     foldableBreakpoint: 1200
//   }
// });
// tabletAdapter.initialize();

// // Регистрация компонента для адаптации
// const myLayoutElement = document.getElementById(\'main-layout\');
// tabletAdapter.registerComponent(\'mainLayout\', myLayoutElement, \'layout\');

// // Запуск тестирования (в реальном приложении это будет часть CI/CD или ручного тестирования)
// tabletAdapter.testDifferentScreens();

module.exports = TabletAdapter;


