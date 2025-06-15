/**
 * @file ThemeManager.js
 * @description Менеджер тем для приложения Mr.Comic, включая ночной режим
 * @module ui/ThemeManager
 */

/**
 * Класс для управления темами пользовательского интерфейса
 */
class ThemeManager {
  /**
   * Создает экземпляр менеджера тем
   * @param {Object} options - Параметры инициализации
   * @param {Object} options.eventEmitter - Система событий
   * @param {Object} options.logger - Система логирования
   * @param {Object} options.config - Конфигурация тем
   * @param {Object} options.storage - Хранилище настроек
   */
  constructor(options = {}) {
    this.eventEmitter = options.eventEmitter || {
      emit: () => {},
      on: () => {},
      off: () => {}
    };
    this.logger = options.logger || console;
    this.config = this.mergeConfig(options.config || {});
    this.storage = options.storage || {
      getItem: () => null,
      setItem: () => {},
      removeItem: () => {}
    };
    
    // Текущая тема
    this.currentTheme = null;
    
    // Доступные темы
    this.themes = new Map();
    
    // Флаги состояния
    this.isInitialized = false;
    this.isAutoModeEnabled = false;
    
    // Привязка методов к контексту
    this.handleSystemThemeChange = this.handleSystemThemeChange.bind(this);
    this.handleAutoModeChange = this.handleAutoModeChange.bind(this);
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
      defaultTheme: 'light',
      storageKey: 'mrcomic_theme',
      autoModeStorageKey: 'mrcomic_theme_auto_mode',
      
      // Настройки автоматического режима
      autoMode: {
        enabled: true,
        startDarkTime: '20:00', // Время начала темной темы (вечер)
        startLightTime: '07:00', // Время начала светлой темы (утро)
        checkInterval: 60000, // Интервал проверки времени (1 минута)
        respectSystemPreference: true // Учитывать системные настройки
      },
      
      // Настройки для отладки
      debug: false
    };
    
    return { ...defaultConfig, ...userConfig };
  }
  
  /**
   * Инициализирует менеджер тем
   * @returns {ThemeManager} Экземпляр менеджера тем
   */
  initialize() {
    if (this.isInitialized) {
      this.logger.warn('ThemeManager: already initialized');
      return this;
    }
    
    this.logger.info('ThemeManager: initializing');
    
    // Регистрируем стандартные темы
    this.registerDefaultThemes();
    
    // Добавляем обработчики событий
    this.addEventListeners();
    
    // Загружаем сохраненные настройки
    this.loadSettings();
    
    // Применяем начальную тему
    this.applyInitialTheme();
    
    this.isInitialized = true;
    this.eventEmitter.emit('themeManager:initialized');
    
    return this;
  }
  
  /**
   * Регистрирует стандартные темы
   * @private
   */
  registerDefaultThemes() {
    // Светлая тема (по умолчанию)
    this.registerTheme('light', {
      name: 'Светлая',
      isDark: false,
      colors: {
        // Основные цвета
        primary: '#3498db',
        secondary: '#2ecc71',
        accent: '#e74c3c',
        
        // Цвета фона
        background: '#ffffff',
        backgroundAlt: '#f5f5f5',
        backgroundElevated: '#ffffff',
        
        // Цвета текста
        text: '#333333',
        textSecondary: '#666666',
        textMuted: '#999999',
        textInverse: '#ffffff',
        
        // Цвета границ
        border: '#dddddd',
        borderLight: '#eeeeee',
        borderDark: '#cccccc',
        
        // Цвета состояний
        success: '#2ecc71',
        warning: '#f39c12',
        error: '#e74c3c',
        info: '#3498db',
        
        // Цвета компонентов
        card: '#ffffff',
        toolbar: '#ffffff',
        sidebar: '#f5f5f5',
        modal: '#ffffff',
        tooltip: '#333333',
        
        // Цвета кнопок
        buttonPrimary: '#3498db',
        buttonSecondary: '#95a5a6',
        buttonDanger: '#e74c3c',
        buttonSuccess: '#2ecc71',
        
        // Цвета для комиксов
        comicBackground: '#ffffff',
        comicPanel: '#f9f9f9',
        comicBorder: '#dddddd',
        comicText: '#333333',
        comicBubble: '#ffffff',
        
        // Цвета для редактора
        editorBackground: '#ffffff',
        editorToolbar: '#f5f5f5',
        editorSelection: 'rgba(52, 152, 219, 0.3)',
        editorCursor: '#3498db',
        editorGrid: 'rgba(0, 0, 0, 0.1)'
      },
      fonts: {
        primary: 'Arial, sans-serif',
        secondary: 'Georgia, serif',
        monospace: 'Consolas, monospace',
        comic: 'Comic Sans MS, cursive'
      },
      shadows: {
        small: '0 1px 3px rgba(0, 0, 0, 0.12)',
        medium: '0 4px 6px rgba(0, 0, 0, 0.1)',
        large: '0 10px 20px rgba(0, 0, 0, 0.08)'
      },
      transitions: {
        fast: '0.15s ease',
        normal: '0.3s ease',
        slow: '0.5s ease'
      },
      borderRadius: {
        small: '3px',
        medium: '5px',
        large: '10px',
        round: '50%'
      }
    });
    
    // Темная тема (ночной режим)
    this.registerTheme('dark', {
      name: 'Темная',
      isDark: true,
      colors: {
        // Основные цвета
        primary: '#3498db',
        secondary: '#2ecc71',
        accent: '#e74c3c',
        
        // Цвета фона
        background: '#121212',
        backgroundAlt: '#1e1e1e',
        backgroundElevated: '#2d2d2d',
        
        // Цвета текста
        text: '#f5f5f5',
        textSecondary: '#cccccc',
        textMuted: '#999999',
        textInverse: '#333333',
        
        // Цвета границ
        border: '#444444',
        borderLight: '#555555',
        borderDark: '#333333',
        
        // Цвета состояний
        success: '#2ecc71',
        warning: '#f39c12',
        error: '#e74c3c',
        info: '#3498db',
        
        // Цвета компонентов
        card: '#2d2d2d',
        toolbar: '#1e1e1e',
        sidebar: '#1e1e1e',
        modal: '#2d2d2d',
        tooltip: '#f5f5f5',
        
        // Цвета кнопок
        buttonPrimary: '#3498db',
        buttonSecondary: '#95a5a6',
        buttonDanger: '#e74c3c',
        buttonSuccess: '#2ecc71',
        
        // Цвета для комиксов
        comicBackground: '#121212',
        comicPanel: '#1e1e1e',
        comicBorder: '#444444',
        comicText: '#f5f5f5',
        comicBubble: '#2d2d2d',
        
        // Цвета для редактора
        editorBackground: '#1e1e1e',
        editorToolbar: '#2d2d2d',
        editorSelection: 'rgba(52, 152, 219, 0.5)',
        editorCursor: '#3498db',
        editorGrid: 'rgba(255, 255, 255, 0.1)'
      },
      fonts: {
        primary: 'Arial, sans-serif',
        secondary: 'Georgia, serif',
        monospace: 'Consolas, monospace',
        comic: 'Comic Sans MS, cursive'
      },
      shadows: {
        small: '0 1px 3px rgba(0, 0, 0, 0.3)',
        medium: '0 4px 6px rgba(0, 0, 0, 0.25)',
        large: '0 10px 20px rgba(0, 0, 0, 0.2)'
      },
      transitions: {
        fast: '0.15s ease',
        normal: '0.3s ease',
        slow: '0.5s ease'
      },
      borderRadius: {
        small: '3px',
        medium: '5px',
        large: '10px',
        round: '50%'
      }
    });
    
    // Высококонтрастная тема
    this.registerTheme('high-contrast', {
      name: 'Высокий контраст',
      isDark: true,
      colors: {
        // Основные цвета
        primary: '#ffff00',
        secondary: '#00ff00',
        accent: '#ff0000',
        
        // Цвета фона
        background: '#000000',
        backgroundAlt: '#0a0a0a',
        backgroundElevated: '#1a1a1a',
        
        // Цвета текста
        text: '#ffffff',
        textSecondary: '#ffffff',
        textMuted: '#cccccc',
        textInverse: '#000000',
        
        // Цвета границ
        border: '#ffffff',
        borderLight: '#cccccc',
        borderDark: '#ffffff',
        
        // Цвета состояний
        success: '#00ff00',
        warning: '#ffff00',
        error: '#ff0000',
        info: '#00ffff',
        
        // Цвета компонентов
        card: '#000000',
        toolbar: '#000000',
        sidebar: '#000000',
        modal: '#000000',
        tooltip: '#ffffff',
        
        // Цвета кнопок
        buttonPrimary: '#ffff00',
        buttonSecondary: '#cccccc',
        buttonDanger: '#ff0000',
        buttonSuccess: '#00ff00',
        
        // Цвета для комиксов
        comicBackground: '#000000',
        comicPanel: '#0a0a0a',
        comicBorder: '#ffffff',
        comicText: '#ffffff',
        comicBubble: '#1a1a1a',
        
        // Цвета для редактора
        editorBackground: '#000000',
        editorToolbar: '#1a1a1a',
        editorSelection: 'rgba(255, 255, 0, 0.5)',
        editorCursor: '#ffff00',
        editorGrid: 'rgba(255, 255, 255, 0.3)'
      },
      fonts: {
        primary: 'Arial, sans-serif',
        secondary: 'Georgia, serif',
        monospace: 'Consolas, monospace',
        comic: 'Comic Sans MS, cursive'
      },
      shadows: {
        small: '0 0 0 1px #ffffff',
        medium: '0 0 0 2px #ffffff',
        large: '0 0 0 3px #ffffff'
      },
      transitions: {
        fast: '0.15s ease',
        normal: '0.3s ease',
        slow: '0.5s ease'
      },
      borderRadius: {
        small: '0',
        medium: '0',
        large: '0',
        round: '50%'
      }
    });
    
    // Сепия (для чтения)
    this.registerTheme('sepia', {
      name: 'Сепия',
      isDark: false,
      colors: {
        // Основные цвета
        primary: '#8b4513',
        secondary: '#a0522d',
        accent: '#cd853f',
        
        // Цвета фона
        background: '#f5f5dc',
        backgroundAlt: '#ebe6d5',
        backgroundElevated: '#f8f4e3',
        
        // Цвета текста
        text: '#5d4037',
        textSecondary: '#795548',
        textMuted: '#a1887f',
        textInverse: '#f5f5dc',
        
        // Цвета границ
        border: '#d7ceb2',
        borderLight: '#e8e0cb',
        borderDark: '#c2b280',
        
        // Цвета состояний
        success: '#2e7d32',
        warning: '#ff8f00',
        error: '#c62828',
        info: '#1565c0',
        
        // Цвета компонентов
        card: '#f8f4e3',
        toolbar: '#ebe6d5',
        sidebar: '#ebe6d5',
        modal: '#f8f4e3',
        tooltip: '#5d4037',
        
        // Цвета кнопок
        buttonPrimary: '#8b4513',
        buttonSecondary: '#a1887f',
        buttonDanger: '#c62828',
        buttonSuccess: '#2e7d32',
        
        // Цвета для комиксов
        comicBackground: '#f5f5dc',
        comicPanel: '#f8f4e3',
        comicBorder: '#d7ceb2',
        comicText: '#5d4037',
        comicBubble: '#f8f4e3',
        
        // Цвета для редактора
        editorBackground: '#f5f5dc',
        editorToolbar: '#ebe6d5',
        editorSelection: 'rgba(139, 69, 19, 0.3)',
        editorCursor: '#8b4513',
        editorGrid: 'rgba(139, 69, 19, 0.1)'
      },
      fonts: {
        primary: 'Georgia, serif',
        secondary: 'Times New Roman, serif',
        monospace: 'Consolas, monospace',
        comic: 'Comic Sans MS, cursive'
      },
      shadows: {
        small: '0 1px 3px rgba(139, 69, 19, 0.12)',
        medium: '0 4px 6px rgba(139, 69, 19, 0.1)',
        large: '0 10px 20px rgba(139, 69, 19, 0.08)'
      },
      transitions: {
        fast: '0.15s ease',
        normal: '0.3s ease',
        slow: '0.5s ease'
      },
      borderRadius: {
        small: '3px',
        medium: '5px',
        large: '10px',
        round: '50%'
      }
    });
    
    // E-Ink тема (для устройств с электронными чернилами)
    this.registerTheme('e-ink', {
      name: 'E-Ink',
      isDark: false,
      colors: {
        // Основные цвета
        primary: '#000000',
        secondary: '#333333',
        accent: '#666666',
        
        // Цвета фона
        background: '#ffffff',
        backgroundAlt: '#f8f8f8',
        backgroundElevated: '#ffffff',
        
        // Цвета текста
        text: '#000000',
        textSecondary: '#333333',
        textMuted: '#666666',
        textInverse: '#ffffff',
        
        // Цвета границ
        border: '#cccccc',
        borderLight: '#eeeeee',
        borderDark: '#999999',
        
        // Цвета состояний
        success: '#000000',
        warning: '#333333',
        error: '#000000',
        info: '#333333',
        
        // Цвета компонентов
        card: '#ffffff',
        toolbar: '#f8f8f8',
        sidebar: '#f8f8f8',
        modal: '#ffffff',
        tooltip: '#000000',
        
        // Цвета кнопок
        buttonPrimary: '#000000',
        buttonSecondary: '#666666',
        buttonDanger: '#000000',
        buttonSuccess: '#000000',
        
        // Цвета для комиксов
        comicBackground: '#ffffff',
        comicPanel: '#ffffff',
        comicBorder: '#cccccc',
        comicText: '#000000',
        comicBubble: '#ffffff',
        
        // Цвета для редактора
        editorBackground: '#ffffff',
        editorToolbar: '#f8f8f8',
        editorSelection: 'rgba(0, 0, 0, 0.1)',
        editorCursor: '#000000',
        editorGrid: 'rgba(0, 0, 0, 0.1)'
      },
      fonts: {
        primary: 'Georgia, serif',
        secondary: 'Arial, sans-serif',
        monospace: 'Consolas, monospace',
        comic: 'Comic Sans MS, cursive'
      },
      shadows: {
        small: 'none',
        medium: 'none',
        large: 'none'
      },
      transitions: {
        fast: 'none',
        normal: 'none',
        slow: 'none'
      },
      borderRadius: {
        small: '0',
        medium: '0',
        large: '0',
        round: '50%'
      }
    });

    // Material You (Dynamic colors based on system, placeholder for actual implementation)
    this.registerTheme('material-you', {
      name: 'Material You',
      isDark: false, // This will be determined dynamically
      colors: {
        // Placeholder colors, in a real app these would be fetched from Android's dynamic color API
        primary: 'var(--md-sys-color-primary, #6750A4)',
        secondary: 'var(--md-sys-color-secondary, #625B71)',
        accent: 'var(--md-sys-color-tertiary, #7D5260)',
        
        background: 'var(--md-sys-color-background, #FFFBFE)',
        backgroundAlt: 'var(--md-sys-color-surface, #FFFBFE)',
        backgroundElevated: 'var(--md-sys-color-surface-container-high, #ECE6F0)',
        
        text: 'var(--md-sys-color-on-background, #1C1B1F)',
        textSecondary: 'var(--md-sys-color-on-surface-variant, #49454F)',
        textMuted: 'var(--md-sys-color-outline, #7A757F)',
        textInverse: 'var(--md-sys-color-inverse-on-surface, #F4EFF4)',

        border: 'var(--md-sys-color-outline, #7A757F)',
        borderLight: 'var(--md-sys-color-outline-variant, #CAC4D0)',
        borderDark: 'var(--md-sys-color-on-surface, #1C1B1F)',

        success: 'var(--md-sys-color-success, #006D3A)',
        warning: 'var(--md-sys-color-warning, #7F5700)',
        error: 'var(--md-sys-color-error, #BA1A1A)',
        info: 'var(--md-sys-color-info, #00639B)',

        card: 'var(--md-sys-color-surface-container-low, #F7F2FA)',
        toolbar: 'var(--md-sys-color-surface-container, #F3EDF7)',
        sidebar: 'var(--md-sys-color-surface-container-lowest, #FFFFFF)',
        modal: 'var(--md-sys-color-surface-container-high, #ECE6F0)',
        tooltip: 'var(--md-sys-color-inverse-surface, #313033)',

        buttonPrimary: 'var(--md-sys-color-primary, #6750A4)',
        buttonSecondary: 'var(--md-sys-color-secondary, #625B71)',
        buttonDanger: 'var(--md-sys-color-error, #BA1A1A)',
        buttonSuccess: 'var(--md-sys-color-success, #006D3A)',

        comicBackground: 'var(--md-sys-color-background, #FFFBFE)',
        comicPanel: 'var(--md-sys-color-surface-container-low, #F7F2FA)',
        comicBorder: 'var(--md-sys-color-outline, #7A757F)',
        comicText: 'var(--md-sys-color-on-background, #1C1B1F)',
        comicBubble: 'var(--md-sys-color-surface-container-high, #ECE6F0)',

        editorBackground: 'var(--md-sys-color-surface, #FFFBFE)',
        editorToolbar: 'var(--md-sys-color-surface-container, #F3EDF7)',
        editorSelection: 'var(--md-sys-color-primary-container, #EADDFF)',
        editorCursor: 'var(--md-sys-color-primary, #6750A4)',
        editorGrid: 'rgba(var(--md-sys-color-on-surface-rgb, 28, 27, 31), 0.1)'
      },
      fonts: {
        primary: 'Roboto, sans-serif',
        secondary: 'Google Sans, sans-serif',
        monospace: 'Roboto Mono, monospace',
        comic: 'Comic Sans MS, cursive' // Keep for comic-specific feel
      },
      shadows: {
        small: 'var(--md-sys-elevation-shadow-1, 0px 1px 3px rgba(0, 0, 0, 0.12))',
        medium: 'var(--md-sys-elevation-shadow-2, 0px 4px 6px rgba(0, 0, 0, 0.1))',
        large: 'var(--md-sys-elevation-shadow-3, 0px 10px 20px rgba(0, 0, 0, 0.08))'
      },
      transitions: {
        fast: '0.15s ease',
        normal: '0.3s ease',
        slow: '0.5s ease'
      },
      borderRadius: {
        small: '4px',
        medium: '8px',
        large: '12px',
        round: '50%'
      }
    });
  }
  
  /**
   * Добавляет обработчики событий
   * @private
   */
  addEventListeners() {
    // Обработчик изменения системной темы
    if (window.matchMedia) {
      this.systemDarkModeMediaQuery = window.matchMedia('(prefers-color-scheme: dark)');
      
      if (this.systemDarkModeMediaQuery.addEventListener) {
        this.systemDarkModeMediaQuery.addEventListener('change', this.handleSystemThemeChange);
      } else if (this.systemDarkModeMediaQuery.addListener) {
        // Для старых браузеров
        this.systemDarkModeMediaQuery.addListener(this.handleSystemThemeChange);
      }
    }
  }
  
  /**
   * Удаляет обработчики событий
   * @private
   */
  removeEventListeners() {
    if (this.systemDarkModeMediaQuery) {
      if (this.systemDarkModeMediaQuery.removeEventListener) {
        this.systemDarkModeMediaQuery.removeEventListener('change', this.handleSystemThemeChange);
      } else if (this.systemDarkModeMediaQuery.addListener) {
        // Для старых браузеров
        this.systemDarkModeMediaQuery.addListener(this.handleSystemThemeChange);
      }
    }
    
    if (this.autoModeInterval) {
      clearInterval(this.autoModeInterval);
      this.autoModeInterval = null;
    }
  }
  
  /**
   * Обработчик изменения системной темы
   * @param {MediaQueryListEvent|MediaQueryList} event - Событие или объект медиа-запроса
   * @private
   */
  handleSystemThemeChange(event) {
    const isDarkMode = event.matches;
    
    this.logger.info(`ThemeManager: system theme changed to ${isDarkMode ? 'dark' : 'light'}`);
    
    // Если включен автоматический режим и учет системных настроек
    if (this.isAutoModeEnabled && this.config.autoMode.respectSystemPreference) {
      this.setTheme(isDarkMode ? 'dark' : 'light');
    }
  }
  
  /**
   * Обработчик изменения автоматического режима
   * @private
   */
  handleAutoModeChange() {
    // Проверяем текущее время и выбираем соответствующую тему
    const now = new Date();
    const currentHour = now.getHours();
    const currentMinute = now.getMinutes();
    const currentTime = `${currentHour.toString().padStart(2, '0')}:${currentMinute.toString().padStart(2, '0')}`;
    
    const startDark = this.config.autoMode.startDarkTime;
    const startLight = this.config.autoMode.startLightTime;
    
    let newTheme = this.currentTheme.name;
    
    if (currentTime >= startDark || currentTime < startLight) {
      // Ночное время, переключаемся на темную тему
      if (this.currentTheme.name !== 'dark') {
        newTheme = 'dark';
      }
    } else {
      // Дневное время, переключаемся на светлую тему
      if (this.currentTheme.name !== 'light') {
        newTheme = 'light';
      }
    }
    
    if (newTheme !== this.currentTheme.name) {
      this.setTheme(newTheme);
    }
  }
  
  /**
   * Загружает сохраненные настройки темы
   * @private
   */
  loadSettings() {
    const savedTheme = this.storage.getItem(this.config.storageKey);
    const savedAutoMode = this.storage.getItem(this.config.autoModeStorageKey);
    
    if (savedAutoMode !== null) {
      this.isAutoModeEnabled = JSON.parse(savedAutoMode);
    }
    
    if (savedTheme && this.themes.has(savedTheme)) {
      this.setTheme(savedTheme, false); // Не сохраняем повторно
    } else if (this.isAutoModeEnabled && this.config.autoMode.respectSystemPreference) {
      // Если авторежим и системные настройки, применяем системную тему
      const isSystemDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;
      this.setTheme(isSystemDark ? 'dark' : 'light', false);
    } else {
      this.setTheme(this.config.defaultTheme, false);
    }
    
    if (this.isAutoModeEnabled) {
      this.startAutoModeCheck();
    }
  }
  
  /**
   * Применяет начальную тему при инициализации
   * @private
   */
  applyInitialTheme() {
    // Логика уже в loadSettings, но можно добавить дополнительную проверку
    if (!this.currentTheme) {
      this.loadSettings();
    }
  }
  
  /**
   * Регистрирует новую тему
   * @param {string} name - Уникальное имя темы
   * @param {object} themeConfig - Объект конфигурации темы
   */
  registerTheme(name, themeConfig) {
    if (this.themes.has(name)) {
      this.logger.warn(`ThemeManager: theme '${name}' already registered. Overwriting.`);
    }
    this.themes.set(name, themeConfig);
    this.logger.info(`ThemeManager: theme '${name}' registered.`);
  }
  
  /**
   * Устанавливает активную тему
   * @param {string} themeName - Имя темы для установки
   * @param {boolean} [save=true] - Сохранять ли настройку темы
   */
  setTheme(themeName, save = true) {
    const theme = this.themes.get(themeName);
    if (!theme) {
      this.logger.error(`ThemeManager: theme '${themeName}' not found.`);
      return;
    }
    
    this.currentTheme = theme;
    this.applyThemeToDOM(theme);
    this.eventEmitter.emit('theme:changed', themeName);
    this.logger.info(`ThemeManager: theme set to '${themeName}'.`);
    
    if (save) {
      this.storage.setItem(this.config.storageKey, themeName);
    }
  }
  
  /**
   * Применяет цвета и стили темы к DOM
   * @param {object} theme - Объект темы
   * @private
   */
  applyThemeToDOM(theme) {
    const root = document.documentElement;
    
    // Удаляем предыдущие классы темы
    root.classList.forEach(cls => {
      if (cls.startsWith('theme-')) {
        root.classList.remove(cls);
      }
    });
    
    // Добавляем новый класс темы
    root.classList.add(`theme-${theme.name}`);
    
    // Устанавливаем CSS-переменные для цветов
    for (const key in theme.colors) {
      root.style.setProperty(`--color-${this._kebabCase(key)}`, theme.colors[key]);
    }
    
    // Устанавливаем CSS-переменные для шрифтов
    for (const key in theme.fonts) {
      root.style.setProperty(`--font-${this._kebabCase(key)}`, theme.fonts[key]);
    }
    
    // Устанавливаем CSS-переменные для теней
    for (const key in theme.shadows) {
      root.style.setProperty(`--shadow-${this._kebabCase(key)}`, theme.shadows[key]);
    }
    
    // Устанавливаем CSS-переменные для переходов
    for (const key in theme.transitions) {
      root.style.setProperty(`--transition-${this._kebabCase(key)}`, theme.transitions[key]);
    }
    
    // Устанавливаем CSS-переменные для радиусов скругления
    for (const key in theme.borderRadius) {
      root.style.setProperty(`--border-radius-${this._kebabCase(key)}`, theme.borderRadius[key]);
    }
    
    // Обновляем мета-тег для темы браузера (если применимо)
    const themeColorMeta = document.querySelector('meta[name="theme-color"]');
    if (themeColorMeta) {
      themeColorMeta.setAttribute('content', theme.colors.primary);
    }
  }
  
  /**
   * Включает или выключает автоматический режим смены темы
   * @param {boolean} enable - Включить (true) или выключить (false) автоматический режим
   * @param {boolean} [save=true] - Сохранять ли настройку
   */
  setAutoMode(enable, save = true) {
    this.isAutoModeEnabled = enable;
    if (enable) {
      this.startAutoModeCheck();
      this.handleAutoModeChange(); // Применяем сразу
    } else {
      this.stopAutoModeCheck();
    }
    if (save) {
      this.storage.setItem(this.config.autoModeStorageKey, JSON.stringify(enable));
    }
    this.logger.info(`ThemeManager: auto mode ${enable ? 'enabled' : 'disabled'}.`);
  }
  
  /**
   * Запускает периодическую проверку для автоматического режима
   * @private
   */
  startAutoModeCheck() {
    if (this.autoModeInterval) {
      clearInterval(this.autoModeInterval);
    }
    this.autoModeInterval = setInterval(this.handleAutoModeChange, this.config.autoMode.checkInterval);
  }
  
  /**
   * Останавливает периодическую проверку для автоматического режима
   * @private
   */
  stopAutoModeCheck() {
    if (this.autoModeInterval) {
      clearInterval(this.autoModeInterval);
      this.autoModeInterval = null;
    }
  }
  
  /**
   * Возвращает текущую активную тему
   * @returns {object} Объект текущей темы
   */
  getCurrentTheme() {
    return this.currentTheme;
  }
  
  /**
   * Возвращает список всех зарегистрированных тем
   * @returns {Array<object>} Массив объектов тем
   */
  getAllThemes() {
    return Array.from(this.themes.values());
  }

  /**
   * Вспомогательная функция для преобразования camelCase в kebab-case.
   * @param {string} str - Строка в camelCase.
   * @returns {string} - Строка в kebab-case.
   * @private
   */
  _kebabCase(str) {
    return str.replace(/([a-z0-9]|(?=[A-Z]))([A-Z])/g, '$1-$2').toLowerCase();
  }
}

// Пример использования (для демонстрации)
// const themeManager = new ThemeManager({
//   logger: console,
//   storage: localStorage // Или другой механизм хранения
// });
// themeManager.initialize();

// // Переключение темы
// themeManager.setTheme('dark');
// themeManager.setTheme('light');
// themeManager.setTheme('material-you');

// // Включение/выключение авторежима
// themeManager.setAutoMode(true);
// themeManager.setAutoMode(false);

// // Получение текущей темы
// console.log(themeManager.getCurrentTheme());

// // Получение всех тем
// console.log(themeManager.getAllThemes());


