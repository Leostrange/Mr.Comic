/**
 * TextEditorPlugin - Плагин для редактирования текста
 * 
 * Расширенная версия плагина для редактирования текста с поддержкой
 * форматирования, проверки орфографии и других функций.
 */

// Импорт базового класса плагина
const MrComicPlugin = require('../../core/MrComicPlugin');

class TextEditorPlugin extends MrComicPlugin {
  /**
   * Конструктор плагина
   */
  constructor() {
    super({
      id: 'text-editor-plugin',
      name: 'Text Editor Plugin',
      version: '1.0.0',
      description: 'Advanced text editing capabilities',
      author: 'Mr.Comic Team',
      permissions: ['read_text', 'modify_text']
    });
    
    // Зарегистрированные форматы текста
    this.textFormats = new Map();
    
    // Зарегистрированные стили текста
    this.textStyles = new Map();
    
    // Зарегистрированные словари
    this.dictionaries = new Map();
    
    // Зарегистрированные обработчики текста
    this.textHandlers = new Map();
  }
  
  /**
   * Метод активации плагина
   * @param {PluginContext} context - Контекст плагина
   * @returns {Promise<void>}
   */
  async activate(context) {
    await super.activate(context);
    
    this._context.log.info('Activating Text Editor Plugin');
    
    // Регистрация команд
    this._registerCommands();
    
    // Регистрация форматов текста
    this._registerTextFormats();
    
    // Регистрация стилей текста
    this._registerTextStyles();
    
    // Регистрация словарей
    this._registerDictionaries();
    
    // Регистрация обработчиков текста
    this._registerTextHandlers();
    
    // Регистрация пунктов меню
    this._registerMenuItems();
    
    // Регистрация панели редактора
    this._registerEditorPanel();
    
    this._context.log.info('Text Editor Plugin activated successfully');
  }
  
  /**
   * Метод деактивации плагина
   * @returns {Promise<void>}
   */
  async deactivate() {
    this._context.log.info('Deactivating Text Editor Plugin');
    
    // Очистка ресурсов выполняется автоматически через context.subscriptions
    
    await super.deactivate();
  }
  
  /**
   * Регистрация команд
   * @private
   */
  _registerCommands() {
    // Команда форматирования текста
    this._context.registerCommand('text.format', async (textId, formatId, options) => {
      return await this._formatText(textId, formatId, options);
    }, {
      title: 'Format Text',
      description: 'Apply formatting to text',
      category: 'Text'
    });
    
    // Команда проверки орфографии
    this._context.registerCommand('text.spellCheck', async (text, options) => {
      return await this._spellCheck(text, options);
    }, {
      title: 'Spell Check',
      description: 'Check text for spelling errors',
      category: 'Text'
    });
    
    // Команда автозамены
    this._context.registerCommand('text.autoReplace', async (text, options) => {
      return await this._autoReplace(text, options);
    }, {
      title: 'Auto Replace',
      description: 'Automatically replace text patterns',
      category: 'Text'
    });
    
    // Команда получения статистики текста
    this._context.registerCommand('text.getStatistics', async (text) => {
      return await this._getTextStatistics(text);
    }, {
      title: 'Text Statistics',
      description: 'Get statistics about text',
      category: 'Text'
    });
    
    // Команда генерации текста
    this._context.registerCommand('text.generate', async (prompt, options) => {
      return await this._generateText(prompt, options);
    }, {
      title: 'Generate Text',
      description: 'Generate text based on prompt',
      category: 'Text'
    });
    
    // Команда перевода текста
    this._context.registerCommand('text.translate', async (text, targetLanguage, options) => {
      return await this._translateText(text, targetLanguage, options);
    }, {
      title: 'Translate Text',
      description: 'Translate text to another language',
      category: 'Text'
    });
    
    // Команда применения стиля текста
    this._context.registerCommand('text.applyStyle', async (textId, styleId, options) => {
      return await this._applyStyle(textId, styleId, options);
    }, {
      title: 'Apply Style',
      description: 'Apply style to text',
      category: 'Text'
    });
    
    // Команда проверки орфографии с использованием словаря
    this._context.registerCommand('text.spellCheckWithDictionary', async (text, dictionaryId, options) => {
      return await this._spellCheckWithDictionary(text, dictionaryId, options);
    }, {
      title: 'Spell Check with Dictionary',
      description: 'Check text for spelling errors using specific dictionary',
      category: 'Text'
    });
  }
  
  /**
   * Регистрация форматов текста
   * @private
   */
  _registerTextFormats() {
    // Формат: Обычный текст (plain)
    this._registerTextFormat('plain', {
      name: 'Plain Text',
      description: 'Regular text without formatting',
      icon: 'format_clear',
      apply: (text) => text,
      unapply: (text) => text
    });
    
    // Формат: Markdown
    this._registerTextFormat('markdown', {
      name: 'Markdown',
      description: 'Text formatted with Markdown syntax',
      icon: 'format_markdown',
      apply: (text) => text,
      unapply: (text) => text
    });
    
    // Формат: HTML
    this._registerTextFormat('html', {
      name: 'HTML',
      description: 'Text formatted with HTML tags',
      icon: 'format_html',
      apply: (text) => text,
      unapply: (text) => text
    });
    
    // Формат: Жирный
    this._registerTextFormat('bold', {
      name: 'Bold',
      description: 'Make text bold',
      icon: 'format_bold',
      apply: (text) => `**${text}**`,
      unapply: (text) => text.replace(/^\*\*(.*)\*\*$/, '$1')
    });
    
    // Формат: Курсив
    this._registerTextFormat('italic', {
      name: 'Italic',
      description: 'Make text italic',
      icon: 'format_italic',
      apply: (text) => `*${text}*`,
      unapply: (text) => text.replace(/^\*(.*)\*$/, '$1')
    });
    
    // Формат: Подчеркнутый
    this._registerTextFormat('underline', {
      name: 'Underline',
      description: 'Underline text',
      icon: 'format_underline',
      apply: (text) => `<u>${text}</u>`,
      unapply: (text) => text.replace(/^<u>(.*)<\/u>$/, '$1')
    });
    
    // Формат: Зачеркнутый
    this._registerTextFormat('strikethrough', {
      name: 'Strikethrough',
      description: 'Strike through text',
      icon: 'format_strikethrough',
      apply: (text) => `~~${text}~~`,
      unapply: (text) => text.replace(/^~~(.*)~~$/, '$1')
    });
    
    // Формат: Заголовок 1
    this._registerTextFormat('heading1', {
      name: 'Heading 1',
      description: 'Format as heading 1',
      icon: 'format_h1',
      apply: (text) => `# ${text}`,
      unapply: (text) => text.replace(/^# (.*)$/, '$1')
    });
    
    // Формат: Заголовок 2
    this._registerTextFormat('heading2', {
      name: 'Heading 2',
      description: 'Format as heading 2',
      icon: 'format_h2',
      apply: (text) => `## ${text}`,
      unapply: (text) => text.replace(/^## (.*)$/, '$1')
    });
    
    // Формат: Заголовок 3
    this._registerTextFormat('heading3', {
      name: 'Heading 3',
      description: 'Format as heading 3',
      icon: 'format_h3',
      apply: (text) => `### ${text}`,
      unapply: (text) => text.replace(/^### (.*)$/, '$1')
    });
    
    // Формат: Цитата
    this._registerTextFormat('quote', {
      name: 'Quote',
      description: 'Format as quote',
      icon: 'format_quote',
      apply: (text) => text.split('\n').map(line => `> ${line}`).join('\n'),
      unapply: (text) => text.split('\n').map(line => line.replace(/^> (.*)$/, '$1')).join('\n')
    });
    
    // Формат: Код
    this._registerTextFormat('code', {
      name: 'Code',
      description: 'Format as code',
      icon: 'format_code',
      apply: (text) => `\`${text}\``,
      unapply: (text) => text.replace(/^`(.*)`$/, '$1')
    });
    
    // Формат: Блок кода
    this._registerTextFormat('codeblock', {
      name: 'Code Block',
      description: 'Format as code block',
      icon: 'format_code_block',
      apply: (text, language = '') => `\`\`\`${language}\n${text}\n\`\`\``,
      unapply: (text) => text.replace(/^```.*\n([\s\S]*)\n```$/, '$1')
    });
  }
  
  /**
   * Регистрация стилей текста
   * @private
   */
  _registerTextStyles() {
    // Стиль: Жирный
    this._registerTextStyle('bold', {
      name: 'Bold',
      description: 'Bold text style',
      icon: 'format_bold',
      css: 'font-weight: bold;',
      apply: (text) => `<strong>${text}</strong>`,
      unapply: (text) => text.replace(/<strong>(.*)<\/strong>/, '$1')
    });
    
    // Стиль: Курсив
    this._registerTextStyle('italic', {
      name: 'Italic',
      description: 'Italic text style',
      icon: 'format_italic',
      css: 'font-style: italic;',
      apply: (text) => `<em>${text}</em>`,
      unapply: (text) => text.replace(/<em>(.*)<\/em>/, '$1')
    });
    
    // Стиль: Подчеркнутый
    this._registerTextStyle('underline', {
      name: 'Underline',
      description: 'Underlined text style',
      icon: 'format_underline',
      css: 'text-decoration: underline;',
      apply: (text) => `<u>${text}</u>`,
      unapply: (text) => text.replace(/<u>(.*)<\/u>/, '$1')
    });
    
    // Стиль: Зачеркнутый
    this._registerTextStyle('strikethrough', {
      name: 'Strikethrough',
      description: 'Strikethrough text style',
      icon: 'format_strikethrough',
      css: 'text-decoration: line-through;',
      apply: (text) => `<s>${text}</s>`,
      unapply: (text) => text.replace(/<s>(.*)<\/s>/, '$1')
    });
    
    // Стиль: Верхний индекс
    this._registerTextStyle('superscript', {
      name: 'Superscript',
      description: 'Superscript text style',
      icon: 'format_superscript',
      css: 'vertical-align: super; font-size: smaller;',
      apply: (text) => `<sup>${text}</sup>`,
      unapply: (text) => text.replace(/<sup>(.*)<\/sup>/, '$1')
    });
    
    // Стиль: Нижний индекс
    this._registerTextStyle('subscript', {
      name: 'Subscript',
      description: 'Subscript text style',
      icon: 'format_subscript',
      css: 'vertical-align: sub; font-size: smaller;',
      apply: (text) => `<sub>${text}</sub>`,
      unapply: (text) => text.replace(/<sub>(.*)<\/sub>/, '$1')
    });
    
    // Стиль: Выделение
    this._registerTextStyle('highlight', {
      name: 'Highlight',
      description: 'Highlighted text style',
      icon: 'format_highlight',
      css: 'background-color: yellow;',
      apply: (text) => `<mark>${text}</mark>`,
      unapply: (text) => text.replace(/<mark>(.*)<\/mark>/, '$1')
    });
    
    // Стиль: Моноширинный
    this._registerTextStyle('monospace', {
      name: 'Monospace',
      description: 'Monospace text style',
      icon: 'format_monospace',
      css: 'font-family: monospace;',
      apply: (text) => `<code>${text}</code>`,
      unapply: (text) => text.replace(/<code>(.*)<\/code>/, '$1')
    });
  }
  
  /**
   * Регистрация словарей
   * @private
   */
  _registerDictionaries() {
    // Словарь: Английский
    this._registerDictionary('en', {
      name: 'English',
      description: 'English dictionary',
      locale: 'en-US',
      size: 'Large',
      wordCount: 170000,
      check: async (text) => {
        // В реальном приложении здесь будет проверка орфографии
        return {
          text,
          errors: []
        };
      }
    });
    
    // Словарь: Русский
    this._registerDictionary('ru', {
      name: 'Russian',
      description: 'Russian dictionary',
      locale: 'ru-RU',
      size: 'Large',
      wordCount: 150000,
      check: async (text) => {
        // В реальном приложении здесь будет проверка орфографии
        return {
          text,
          errors: []
        };
      }
    });
    
    // Словарь: Испанский
    this._registerDictionary('es', {
      name: 'Spanish',
      description: 'Spanish dictionary',
      locale: 'es-ES',
      size: 'Medium',
      wordCount: 120000,
      check: async (text) => {
        // В реальном приложении здесь будет проверка орфографии
        return {
          text,
          errors: []
        };
      }
    });
    
    // Словарь: Французский
    this._registerDictionary('fr', {
      name: 'French',
      description: 'French dictionary',
      locale: 'fr-FR',
      size: 'Medium',
      wordCount: 130000,
      check: async (text) => {
        // В реальном приложении здесь будет проверка орфографии
        return {
          text,
          errors: []
        };
      }
    });
    
    // Словарь: Немецкий
    this._registerDictionary('de', {
      name: 'German',
      description: 'German dictionary',
      locale: 'de-DE',
      size: 'Medium',
      wordCount: 140000,
      check: async (text) => {
        // В реальном приложении здесь будет проверка орфографии
        return {
          text,
          errors: []
        };
      }
    });
  }
  
  /**
   * Регистрация формата текста
   * @param {string} id - Идентификатор формата
   * @param {Object} format - Объект формата
   * @private
   */
  _registerTextFormat(id, format) {
    this.textFormats.set(id, format);
  }
  
  /**
   * Регистрация стиля текста
   * @param {string} id - Идентификатор стиля
   * @param {Object} style - Объект стиля
   * @private
   */
  _registerTextStyle(id, style) {
    this.textStyles.set(id, style);
  }
  
  /**
   * Регистрация словаря
   * @param {string} id - Идентификатор словаря
   * @param {Object} dictionary - Объект словаря
   * @private
   */
  _registerDictionary(id, dictionary) {
    this.dictionaries.set(id, dictionary);
  }
  
  /**
   * Регистрация обработчиков текста
   * @private
   */
  _registerTextHandlers() {
    // Обработчик: Автозамена
    this._registerTextHandler('autoReplace', {
      name: 'Auto Replace',
      description: 'Automatically replace text patterns',
      process: (text, options = {}) => {
        const replacements = options.replacements || [
          { pattern: '--', replacement: '—' },
          { pattern: '(c)', replacement: '©' },
          { pattern: '(r)', replacement: '®' },
          { pattern: '(tm)', replacement: '™' }
        ];
        
        let result = text;
        for (const { pattern, replacement } of replacements) {
          result = result.replace(new RegExp(pattern, 'g'), replacement);
        }
        
        return result;
      }
    });
    
    // Обработчик: Проверка орфографии
    this._registerTextHandler('spellCheck', {
      name: 'Spell Check',
      description: 'Check text for spelling errors',
      process: async (text, options = {}) => {
        // В реальном приложении здесь будет проверка орфографии
        return {
          text,
          errors: []
        };
      }
    });
    
    // Обработчик: Статистика текста
    this._registerTextHandler('statistics', {
      name: 'Text Statistics',
      description: 'Get statistics about text',
      process: (text, options = {}) => {
        const words = text.split(/\s+/).filter(word => word.length > 0);
        const sentences = text.split(/[.!?]+/).filter(sentence => sentence.trim().length > 0);
        const paragraphs = text.split(/\n\s*\n/).filter(paragraph => paragraph.trim().length > 0);
        
        return {
          characters: text.length,
          charactersNoSpaces: text.replace(/\s/g, '').length,
          words: words.length,
          sentences: sentences.length,
          paragraphs: paragraphs.length,
          readingTime: Math.ceil(words.length / 200) // Примерное время чтения в минутах
        };
      }
    });
    
    // Обработчик: Генерация текста
    this._registerTextHandler('generate', {
      name: 'Text Generation',
      description: 'Generate text based on prompt',
      process: async (prompt, options = {}) => {
        // В реальном приложении здесь будет генерация текста
        return {
          text: `Generated text based on: ${prompt}`,
          prompt
        };
      }
    });
    
    // Обработчик: Перевод текста
    this._registerTextHandler('translate', {
      name: 'Text Translation',
      description: 'Translate text to another language',
      process: async (text, options = {}) => {
        const targetLanguage = options.targetLanguage || 'en';
        
        // В реальном приложении здесь будет перевод текста
        return {
          originalText: text,
          translatedText: `Translated text to ${targetLanguage}: ${text}`,
          sourceLanguage: 'auto',
          targetLanguage
        };
      }
    });
    
    // Регистрация обработчиков в API текста
    for (const [handlerId, handler] of this.textHandlers.entries()) {
      if (this._context.text && typeof this._context.text.registerTextHandler === 'function') {
        this._context.text.registerTextHandler(handlerId, handler.process, {
          name: handler.name,
          description: handler.description
        });
      }
    }
  }
  
  /**
   * Регистрация обработчика текста
   * @param {string} id - Идентификатор обработчика
   * @param {Object} handler - Объект обработчика
   * @private
   */
  _registerTextHandler(id, handler) {
    this.textHandlers.set(id, handler);
  }
  
  /**
   * Регистрация пунктов меню
   * @private
   */
  _registerMenuItems() {
    // Регистрация пункта меню для форматирования текста
    this._context.ui.registerMenuItem('text', 'text.format', {
      title: 'Format Text',
      shortcut: 'Ctrl+Shift+F',
      order: 100
    });
    
    // Регистрация пункта меню для проверки орфографии
    this._context.ui.registerMenuItem('text', 'text.spellCheck', {
      title: 'Spell Check',
      shortcut: 'F7',
      order: 110
    });
    
    // Регистрация пункта меню для статистики текста
    this._context.ui.registerMenuItem('text', 'text.statistics', {
      title: 'Text Statistics',
      order: 120
    });
  }
  
  /**
   * Регистрация панели редактора
   * @private
   */
  _registerEditorPanel() {
    // Регистрация панели редактора
    this._context.ui.registerPanel('text-editor', (container) => {
      // В реальном приложении здесь будет рендеринг панели редактора
      return {
        update: (data) => {
          // Обновление панели при изменении данных
        },
        dispose: () => {
          // Очистка ресурсов при удалении панели
        }
      };
    }, {
      title: 'Text Editor',
      icon: 'edit',
      position: 'main',
      width: 'full'
    });
    
    // Регистрация панели форматирования
    this._context.ui.registerPanel('text-formatting', (container) => {
      // В реальном приложении здесь будет рендеринг панели форматирования
      return {
        update: (data) => {
          // Обновление панели при изменении данных
        },
        dispose: () => {
          // Очистка ресурсов при удалении панели
        }
      };
    }, {
      title: 'Text Formatting',
      icon: 'format_text',
      position: 'top',
      height: 'auto'
    });
  }
  
  /**
   * Форматирование текста
   * @param {string} textId - Идентификатор текста
   * @param {string} formatId - Идентификатор формата
   * @param {Object} options - Опции форматирования
   * @returns {Promise<Object>} - Результат форматирования
   */
  async _formatText(textId, formatId, options = {}) {
    this._context.log.info(`Formatting text ${textId} with format ${formatId}`);
    
    try {
      // Проверка наличия формата
      if (!this.textFormats.has(formatId)) {
        throw new Error(`Формат ${formatId} не зарегистрирован`);
      }
      
      // Проверка разрешений
      if (!this._context.checkPermission('read_text') || !this._context.checkPermission('modify_text')) {
        const granted = await this._requestRequiredPermissions(['read_text', 'modify_text']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение текста
      const text = await this._context.text.getText(textId);
      
      // Получение формата
      const format = this.textFormats.get(formatId);
      
      // Применение формата
      const formattedText = format.apply(text, options);
      
      // Сохранение текста
      await this._context.text.setText(textId, formattedText);
      
      this._context.log.info(`Format ${formatId} applied to text ${textId} successfully`);
      
      return {
        textId,
        formatId,
        originalText: text,
        formattedText
      };
    } catch (error) {
      this._context.log.error(`Error formatting text ${textId} with format ${formatId}:`, error);
      throw error;
    }
  }
  
  /**
   * Применение стиля к тексту
   * @param {string} textId - Идентификатор текста
   * @param {string} styleId - Идентификатор стиля
   * @param {Object} options - Опции применения стиля
   * @returns {Promise<Object>} - Результат применения стиля
   */
  async _applyStyle(textId, styleId, options = {}) {
    this._context.log.info(`Applying style ${styleId} to text ${textId}`);
    
    try {
      // Проверка наличия стиля
      if (!this.textStyles.has(styleId)) {
        throw new Error(`Стиль ${styleId} не зарегистрирован`);
      }
      
      // Проверка разрешений
      if (!this._context.checkPermission('read_text') || !this._context.checkPermission('modify_text')) {
        const granted = await this._requestRequiredPermissions(['read_text', 'modify_text']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение текста
      const text = await this._context.text.getText(textId);
      
      // Получение стиля
      const style = this.textStyles.get(styleId);
      
      // Применение стиля
      const styledText = style.apply(text, options);
      
      // Сохранение текста
      await this._context.text.setText(textId, styledText);
      
      this._context.log.info(`Style ${styleId} applied to text ${textId} successfully`);
      
      return {
        textId,
        styleId,
        originalText: text,
        styledText
      };
    } catch (error) {
      this._context.log.error(`Error applying style ${styleId} to text ${textId}:`, error);
      throw error;
    }
  }
  
  /**
   * Проверка орфографии
   * @param {string} text - Текст для проверки
   * @param {Object} options - Опции проверки
   * @returns {Promise<Object>} - Результат проверки
   */
  async _spellCheck(text, options = {}) {
    this._context.log.info(`Checking spelling for text`);
    
    try {
      // Проверка разрешений
      if (!this._context.checkPermission('read_text')) {
        const granted = await this._requestRequiredPermissions(['read_text']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение обработчика
      const handler = this.textHandlers.get('spellCheck');
      
      // Проверка орфографии
      const result = await handler.process(text, options);
      
      this._context.log.info(`Spell check completed successfully`);
      
      return result;
    } catch (error) {
      this._context.log.error(`Error checking spelling:`, error);
      throw error;
    }
  }
  
  /**
   * Проверка орфографии с использованием словаря
   * @param {string} text - Текст для проверки
   * @param {string} dictionaryId - Идентификатор словаря
   * @param {Object} options - Опции проверки
   * @returns {Promise<Object>} - Результат проверки
   */
  async _spellCheckWithDictionary(text, dictionaryId, options = {}) {
    this._context.log.info(`Checking spelling for text using dictionary ${dictionaryId}`);
    
    try {
      // Проверка наличия словаря
      if (!this.dictionaries.has(dictionaryId)) {
        throw new Error(`Словарь ${dictionaryId} не зарегистрирован`);
      }
      
      // Проверка разрешений
      if (!this._context.checkPermission('read_text')) {
        const granted = await this._requestRequiredPermissions(['read_text']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение словаря
      const dictionary = this.dictionaries.get(dictionaryId);
      
      // Проверка орфографии
      const result = await dictionary.check(text, options);
      
      this._context.log.info(`Spell check with dictionary ${dictionaryId} completed successfully`);
      
      return result;
    } catch (error) {
      this._context.log.error(`Error checking spelling with dictionary ${dictionaryId}:`, error);
      throw error;
    }
  }
  
  /**
   * Автозамена текста
   * @param {string} text - Текст для замены
   * @param {Object} options - Опции замены
   * @returns {Promise<Object>} - Результат замены
   */
  async _autoReplace(text, options = {}) {
    this._context.log.info(`Auto-replacing text patterns`);
    
    try {
      // Получение обработчика
      const handler = this.textHandlers.get('autoReplace');
      
      // Автозамена
      const replacedText = handler.process(text, options);
      
      this._context.log.info(`Auto-replace completed successfully`);
      
      return {
        originalText: text,
        replacedText
      };
    } catch (error) {
      this._context.log.error(`Error auto-replacing text:`, error);
      throw error;
    }
  }
  
  /**
   * Получение статистики текста
   * @param {string} text - Текст для анализа
   * @returns {Promise<Object>} - Статистика текста
   */
  async _getTextStatistics(text) {
    this._context.log.info(`Getting statistics for text`);
    
    try {
      // Получение обработчика
      const handler = this.textHandlers.get('statistics');
      
      // Получение статистики
      const statistics = handler.process(text);
      
      this._context.log.info(`Text statistics retrieved successfully`);
      
      return statistics;
    } catch (error) {
      this._context.log.error(`Error getting text statistics:`, error);
      throw error;
    }
  }
  
  /**
   * Генерация текста
   * @param {string} prompt - Подсказка для генерации
   * @param {Object} options - Опции генерации
   * @returns {Promise<Object>} - Результат генерации
   */
  async _generateText(prompt, options = {}) {
    this._context.log.info(`Generating text based on prompt: ${prompt}`);
    
    try {
      // Проверка разрешений
      if (!this._context.checkPermission('modify_text')) {
        const granted = await this._requestRequiredPermissions(['modify_text']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение обработчика
      const handler = this.textHandlers.get('generate');
      
      // Генерация текста
      const result = await handler.process(prompt, options);
      
      this._context.log.info(`Text generation completed successfully`);
      
      return result;
    } catch (error) {
      this._context.log.error(`Error generating text:`, error);
      throw error;
    }
  }
  
  /**
   * Перевод текста
   * @param {string} text - Текст для перевода
   * @param {string} targetLanguage - Целевой язык
   * @param {Object} options - Опции перевода
   * @returns {Promise<Object>} - Результат перевода
   */
  async _translateText(text, targetLanguage, options = {}) {
    this._context.log.info(`Translating text to ${targetLanguage}`);
    
    try {
      // Проверка разрешений
      if (!this._context.checkPermission('read_text') || !this._context.checkPermission('modify_text')) {
        const granted = await this._requestRequiredPermissions(['read_text', 'modify_text']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение обработчика
      const handler = this.textHandlers.get('translate');
      
      // Перевод текста
      const result = await handler.process(text, { ...options, targetLanguage });
      
      this._context.log.info(`Text translation completed successfully`);
      
      return result;
    } catch (error) {
      this._context.log.error(`Error translating text:`, error);
      throw error;
    }
  }
  
  /**
   * Запрос необходимых разрешений
   * @param {Array<string>} permissions - Список необходимых разрешений
   * @returns {Promise<boolean>} - true, если все разрешения предоставлены
   */
  async _requestRequiredPermissions(permissions) {
    for (const permission of permissions) {
      if (!this._context.checkPermission(permission)) {
        const granted = await this._context.requestPermission(permission);
        if (!granted) {
          return false;
        }
      }
    }
    
    return true;
  }
  
  /**
   * Выполнение команды плагина
   * @param {string} command - Идентификатор команды
   * @param {Array} args - Аргументы команды
   * @returns {Promise<any>} - Результат выполнения команды
   * @throws {Error} Если команда не найдена или произошла ошибка при выполнении
   */
  async executeCommand(command, ...args) {
    switch (command) {
      case 'text.format':
      case 'format':
        return await this._formatText(...args);
      case 'text.spellCheck':
      case 'spellCheck':
        return await this._spellCheck(...args);
      case 'text.autoReplace':
      case 'autoReplace':
        return await this._autoReplace(...args);
      case 'text.getStatistics':
      case 'getStatistics':
        return await this._getTextStatistics(...args);
      case 'text.generate':
      case 'generate':
        return await this._generateText(...args);
      case 'text.translate':
      case 'translate':
        return await this._translateText(...args);
      case 'text.applyStyle':
      case 'applyStyle':
        return await this._applyStyle(...args);
      case 'text.spellCheckWithDictionary':
      case 'spellCheckWithDictionary':
        return await this._spellCheckWithDictionary(...args);
      case 'formatText': // Добавлена поддержка команды formatText для совместимости с тестами
        return await this._formatText(...args);
      default:
        throw new Error(`Command ${command} not implemented in plugin ${this.id}`);
    }
  }
}

// Экспорт класса
module.exports = TextEditorPlugin;
