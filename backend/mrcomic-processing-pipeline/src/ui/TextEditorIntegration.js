/**
 * TextEditorIntegration - Интеграция конвейера обработки с редактором текста
 * 
 * Особенности:
 * - Редактирование распознанного и переведенного текста
 * - Форматирование текста и управление стилями
 * - Сохранение изменений и синхронизация с конвейером обработки
 * - Поддержка многоязычного редактирования
 */
class TextEditorIntegration {
  /**
   * @param {Object} options - Опции интеграции
   * @param {UIConnector} options.uiConnector - Коннектор для взаимодействия с конвейером
   * @param {EventEmitter} options.eventEmitter - Система событий
   * @param {Logger} options.logger - Экземпляр логгера
   * @param {Object} options.config - Конфигурация интеграции
   */
  constructor(options = {}) {
    this.uiConnector = options.uiConnector;
    this.eventEmitter = options.eventEmitter;
    this.logger = options.logger;
    this.config = options.config || {};
    
    // Состояние редактора
    this.state = {
      currentPage: null,
      currentRegion: null,
      originalText: '',
      translatedText: '',
      isEditing: false,
      isDirty: false,
      history: [],
      historyIndex: -1,
      selectedLanguage: 'auto',
      targetLanguage: 'ru',
      availableLanguages: [
        { code: 'auto', name: 'Автоопределение' },
        { code: 'en', name: 'Английский' },
        { code: 'ru', name: 'Русский' },
        { code: 'fr', name: 'Французский' },
        { code: 'de', name: 'Немецкий' },
        { code: 'es', name: 'Испанский' },
        { code: 'it', name: 'Итальянский' },
        { code: 'ja', name: 'Японский' },
        { code: 'ko', name: 'Корейский' },
        { code: 'zh', name: 'Китайский' }
      ],
      fontStyles: {
        family: 'Comic Sans MS',
        size: 14,
        weight: 'normal',
        style: 'normal',
        color: '#000000',
        backgroundColor: 'rgba(255, 255, 255, 0.8)'
      }
    };
    
    // Регистрируем обработчики событий
    this._registerEventHandlers();
    
    this.logger?.info('TextEditorIntegration initialized');
  }

  /**
   * Инициализация интеграции с DOM-элементами
   * @param {Object} elements - DOM-элементы редактора
   * @param {HTMLElement} elements.container - Контейнер редактора
   * @param {HTMLElement} elements.originalTextArea - Текстовая область для оригинального текста
   * @param {HTMLElement} elements.translatedTextArea - Текстовая область для переведенного текста
   * @param {HTMLElement} elements.sourceLanguageSelect - Выбор исходного языка
   * @param {HTMLElement} elements.targetLanguageSelect - Выбор целевого языка
   * @param {HTMLElement} elements.translateButton - Кнопка перевода
   * @param {HTMLElement} elements.saveButton - Кнопка сохранения
   * @param {HTMLElement} elements.cancelButton - Кнопка отмены
   * @param {HTMLElement} elements.undoButton - Кнопка отмены последнего действия
   * @param {HTMLElement} elements.redoButton - Кнопка повтора действия
   * @param {HTMLElement} elements.formatToolbar - Панель инструментов форматирования
   * @param {HTMLElement} elements.statusText - Текст статуса
   */
  initialize(elements) {
    this.elements = elements;
    
    // Настраиваем обработчики событий UI
    this._setupUIEventHandlers();
    
    // Заполняем выпадающие списки языков
    this._populateLanguageSelects();
    
    // Обновляем состояние UI
    this._updateUI();
    
    this.logger?.info('TextEditorIntegration initialized with DOM elements');
  }

  /**
   * Загрузка текста для редактирования
   * @param {Object} page - Информация о странице
   * @param {Object} region - Информация о текстовой области
   * @returns {boolean} - true, если текст был успешно загружен
   */
  loadText(page, region) {
    try {
      this.logger?.info('Loading text for editing', { 
        pageId: page.id, 
        regionId: region.id 
      });
      
      // Сохраняем информацию о странице и области
      this.state.currentPage = page;
      this.state.currentRegion = region;
      
      // Получаем оригинальный и переведенный текст
      this.state.originalText = region.text || '';
      this.state.translatedText = region.translatedText || '';
      
      // Определяем языки
      this.state.selectedLanguage = region.language || 'auto';
      this.state.targetLanguage = page.targetLanguage || 'ru';
      
      // Сбрасываем историю изменений
      this.state.history = [
        {
          originalText: this.state.originalText,
          translatedText: this.state.translatedText
        }
      ];
      this.state.historyIndex = 0;
      this.state.isDirty = false;
      
      // Обновляем UI
      this._updateUI();
      
      return true;
    } catch (error) {
      this.logger?.error('Error loading text for editing', error);
      return false;
    }
  }

  /**
   * Сохранение отредактированного текста
   * @returns {boolean} - true, если текст был успешно сохранен
   */
  saveText() {
    try {
      if (!this.state.currentPage || !this.state.currentRegion) {
        return false;
      }
      
      this.logger?.info('Saving edited text', { 
        pageId: this.state.currentPage.id, 
        regionId: this.state.currentRegion.id 
      });
      
      // Получаем текст из текстовых областей
      if (this.elements) {
        if (this.elements.originalTextArea) {
          this.state.originalText = this.elements.originalTextArea.value;
        }
        
        if (this.elements.translatedTextArea) {
          this.state.translatedText = this.elements.translatedTextArea.value;
        }
      }
      
      // Обновляем информацию о текстовой области
      this.state.currentRegion.text = this.state.originalText;
      this.state.currentRegion.translatedText = this.state.translatedText;
      this.state.currentRegion.language = this.state.selectedLanguage;
      
      // Уведомляем об изменении текста
      this._notifyTextChanged();
      
      // Сбрасываем флаг изменений
      this.state.isDirty = false;
      
      // Обновляем UI
      this._updateUI();
      
      return true;
    } catch (error) {
      this.logger?.error('Error saving edited text', error);
      return false;
    }
  }

  /**
   * Отмена изменений
   * @returns {boolean} - true, если изменения были успешно отменены
   */
  cancelEditing() {
    try {
      if (!this.state.currentPage || !this.state.currentRegion) {
        return false;
      }
      
      this.logger?.info('Cancelling text editing', { 
        pageId: this.state.currentPage.id, 
        regionId: this.state.currentRegion.id 
      });
      
      // Восстанавливаем исходный текст
      if (this.state.history.length > 0) {
        const initialState = this.state.history[0];
        this.state.originalText = initialState.originalText;
        this.state.translatedText = initialState.translatedText;
      }
      
      // Сбрасываем флаг изменений
      this.state.isDirty = false;
      
      // Обновляем UI
      this._updateUI();
      
      return true;
    } catch (error) {
      this.logger?.error('Error cancelling text editing', error);
      return false;
    }
  }

  /**
   * Выполнение перевода текста
   * @returns {Promise<boolean>} - true, если перевод был успешно выполнен
   */
  async translateText() {
    try {
      if (!this.state.currentPage || !this.state.currentRegion) {
        return false;
      }
      
      // Получаем текст из текстовой области
      if (this.elements && this.elements.originalTextArea) {
        this.state.originalText = this.elements.originalTextArea.value;
      }
      
      this.logger?.info('Translating text', { 
        pageId: this.state.currentPage.id, 
        regionId: this.state.currentRegion.id,
        sourceLanguage: this.state.selectedLanguage,
        targetLanguage: this.state.targetLanguage
      });
      
      // Обновляем UI для отображения процесса перевода
      if (this.elements && this.elements.statusText) {
        this.elements.statusText.textContent = 'Выполняется перевод...';
      }
      
      // Выполняем перевод через UIConnector
      const result = await this.uiConnector.performTranslation(
        this.state.originalText,
        this.state.selectedLanguage,
        this.state.targetLanguage
      );
      
      // Обновляем переведенный текст
      this.state.translatedText = result.translationResult.text;
      
      // Добавляем изменение в историю
      this._addToHistory();
      
      // Обновляем UI
      this._updateUI();
      
      // Обновляем статус
      if (this.elements && this.elements.statusText) {
        this.elements.statusText.textContent = 'Перевод выполнен';
        
        // Скрываем сообщение через 3 секунды
        setTimeout(() => {
          if (this.elements && this.elements.statusText) {
            this.elements.statusText.textContent = '';
          }
        }, 3000);
      }
      
      return true;
    } catch (error) {
      this.logger?.error('Error translating text', error);
      
      // Обновляем статус с сообщением об ошибке
      if (this.elements && this.elements.statusText) {
        this.elements.statusText.textContent = `Ошибка перевода: ${error.message}`;
      }
      
      return false;
    }
  }

  /**
   * Отмена последнего действия
   * @returns {boolean} - true, если действие было успешно отменено
   */
  undo() {
    try {
      if (this.state.historyIndex <= 0) {
        return false;
      }
      
      this.logger?.info('Undoing last action');
      
      // Уменьшаем индекс истории
      this.state.historyIndex--;
      
      // Восстанавливаем состояние из истории
      const historyItem = this.state.history[this.state.historyIndex];
      this.state.originalText = historyItem.originalText;
      this.state.translatedText = historyItem.translatedText;
      
      // Обновляем UI
      this._updateUI();
      
      return true;
    } catch (error) {
      this.logger?.error('Error undoing last action', error);
      return false;
    }
  }

  /**
   * Повтор отмененного действия
   * @returns {boolean} - true, если действие было успешно повторено
   */
  redo() {
    try {
      if (this.state.historyIndex >= this.state.history.length - 1) {
        return false;
      }
      
      this.logger?.info('Redoing action');
      
      // Увеличиваем индекс истории
      this.state.historyIndex++;
      
      // Восстанавливаем состояние из истории
      const historyItem = this.state.history[this.state.historyIndex];
      this.state.originalText = historyItem.originalText;
      this.state.translatedText = historyItem.translatedText;
      
      // Обновляем UI
      this._updateUI();
      
      return true;
    } catch (error) {
      this.logger?.error('Error redoing action', error);
      return false;
    }
  }

  /**
   * Применение форматирования к выделенному тексту
   * @param {string} formatType - Тип форматирования (bold, italic, underline, etc.)
   * @param {string} value - Значение форматирования
   * @returns {boolean} - true, если форматирование было успешно применено
   */
  applyFormat(formatType, value) {
    try {
      if (!this.elements) {
        return false;
      }
      
      let textArea;
      
      // Определяем активную текстовую область
      if (document.activeElement === this.elements.originalTextArea) {
        textArea = this.elements.originalTextArea;
      } else if (document.activeElement === this.elements.translatedTextArea) {
        textArea = this.elements.translatedTextArea;
      } else {
        return false;
      }
      
      this.logger?.info('Applying format', { formatType, value });
      
      // В реальной реализации здесь был бы код для применения форматирования
      // к выделенному тексту в текстовой области
      
      // Для простого текстового поля это может быть обертывание текста в теги
      // или специальные маркеры форматирования
      
      // Например, для жирного текста:
      if (formatType === 'bold') {
        const start = textArea.selectionStart;
        const end = textArea.selectionEnd;
        const selectedText = textArea.value.substring(start, end);
        const newText = `**${selectedText}**`;
        
        textArea.value = textArea.value.substring(0, start) + newText + textArea.value.substring(end);
        
        // Устанавливаем новую позицию курсора
        textArea.selectionStart = start + 2;
        textArea.selectionEnd = start + 2 + selectedText.length;
        
        // Обновляем состояние
        if (textArea === this.elements.originalTextArea) {
          this.state.originalText = textArea.value;
        } else {
          this.state.translatedText = textArea.value;
        }
        
        // Добавляем изменение в историю
        this._addToHistory();
        
        // Устанавливаем флаг изменений
        this.state.isDirty = true;
        
        return true;
      }
      
      return false;
    } catch (error) {
      this.logger?.error('Error applying format', error);
      return false;
    }
  }

  /**
   * Изменение стиля шрифта
   * @param {string} styleProperty - Свойство стиля (family, size, weight, style, color, backgroundColor)
   * @param {string|number} value - Значение стиля
   * @returns {boolean} - true, если стиль был успешно изменен
   */
  changeFontStyle(styleProperty, value) {
    try {
      if (!this.state.fontStyles.hasOwnProperty(styleProperty)) {
        return false;
      }
      
      this.logger?.info('Changing font style', { styleProperty, value });
      
      // Обновляем стиль
      this.state.fontStyles[styleProperty] = value;
      
      // Применяем стиль к текстовым областям
      this._applyFontStyles();
      
      return true;
    } catch (error) {
      this.logger?.error('Error changing font style', error);
      return false;
    }
  }

  /**
   * Изменение языка
   * @param {string} type - Тип языка (source, target)
   * @param {string} languageCode - Код языка
   * @returns {boolean} - true, если язык был успешно изменен
   */
  changeLanguage(type, languageCode) {
    try {
      if (type === 'source') {
        this.state.selectedLanguage = languageCode;
      } else if (type === 'target') {
        this.state.targetLanguage = languageCode;
      } else {
        return false;
      }
      
      this.logger?.info('Changing language', { type, languageCode });
      
      // Обновляем UI
      this._updateUI();
      
      return true;
    } catch (error) {
      this.logger?.error('Error changing language', error);
      return false;
    }
  }

  /**
   * Добавление изменения в историю
   * @private
   */
  _addToHistory() {
    // Если мы находимся не в конце истории, обрезаем историю
    if (this.state.historyIndex < this.state.history.length - 1) {
      this.state.history = this.state.history.slice(0, this.state.historyIndex + 1);
    }
    
    // Добавляем новое состояние в историю
    this.state.history.push({
      originalText: this.state.originalText,
      translatedText: this.state.translatedText
    });
    
    // Обновляем индекс истории
    this.state.historyIndex = this.state.history.length - 1;
  }

  /**
   * Применение стилей шрифта к текстовым областям
   * @private
   */
  _applyFontStyles() {
    if (!this.elements) {
      return;
    }
    
    const style = `
      font-family: ${this.state.fontStyles.family};
      font-size: ${this.state.fontStyles.size}px;
      font-weight: ${this.state.fontStyles.weight};
      font-style: ${this.state.fontStyles.style};
      color: ${this.state.fontStyles.color};
      background-color: ${this.state.fontStyles.backgroundColor};
    `;
    
    if (this.elements.originalTextArea) {
      this.elements.originalTextArea.style.cssText = style;
    }
    
    if (this.elements.translatedTextArea) {
      this.elements.translatedTextArea.style.cssText = style;
    }
  }

  /**
   * Заполнение выпадающих списков языков
   * @private
   */
  _populateLanguageSelects() {
    if (!this.elements) {
      return;
    }
    
    // Заполняем выпадающий список исходного языка
    if (this.elements.sourceLanguageSelect) {
      this.elements.sourceLanguageSelect.innerHTML = '';
      
      this.state.availableLanguages.forEach(language => {
        const option = document.createElement('option');
        option.value = language.code;
        option.textContent = language.name;
        this.elements.sourceLanguageSelect.appendChild(option);
      });
      
      // Устанавливаем выбранный язык
      this.elements.sourceLanguageSelect.value = this.state.selectedLanguage;
    }
    
    // Заполняем выпадающий список целевого языка
    if (this.elements.targetLanguageSelect) {
      this.elements.targetLanguageSelect.innerHTML = '';
      
      // Исключаем "auto" из списка целевых языков
      const targetLanguages = this.state.availableLanguages.filter(
        language => language.code !== 'auto'
      );
      
      targetLanguages.forEach(language => {
        const option = document.createElement('option');
        option.value = language.code;
        option.textContent = language.name;
        this.elements.targetLanguageSelect.appendChild(option);
      });
      
      // Устанавливаем выбранный язык
      this.elements.targetLanguageSelect.value = this.state.targetLanguage;
    }
  }

  /**
   * Обновление состояния UI
   * @private
   */
  _updateUI() {
    if (!this.elements) {
      return;
    }
    
    // Обновляем текстовые области
    if (this.elements.originalTextArea) {
      this.elements.originalTextArea.value = this.state.originalText;
    }
    
    if (this.elements.translatedTextArea) {
      this.elements.translatedTextArea.value = this.state.translatedText;
    }
    
    // Обновляем выпадающие списки языков
    if (this.elements.sourceLanguageSelect) {
      this.elements.sourceLanguageSelect.value = this.state.selectedLanguage;
    }
    
    if (this.elements.targetLanguageSelect) {
      this.elements.targetLanguageSelect.value = this.state.targetLanguage;
    }
    
    // Обновляем состояние кнопок
    if (this.elements.saveButton) {
      this.elements.saveButton.disabled = !this.state.isDirty;
    }
    
    if (this.elements.undoButton) {
      this.elements.undoButton.disabled = this.state.historyIndex <= 0;
    }
    
    if (this.elements.redoButton) {
      this.elements.redoButton.disabled = this.state.historyIndex >= this.state.history.length - 1;
    }
    
    // Применяем стили шрифта
    this._applyFontStyles();
  }

  /**
   * Настройка обработчиков событий UI
   * @private
   */
  _setupUIEventHandlers() {
    if (!this.elements) {
      return;
    }
    
    try {
      // Обработчик изменения текста в оригинальной текстовой области
      if (this.elements.originalTextArea) {
        this.elements.originalTextArea.addEventListener('input', () => {
          this.state.originalText = this.elements.originalTextArea.value;
          this.state.isDirty = true;
          this._addToHistory();
          this._updateUI();
        });
      }
      
      // Обработчик изменения текста в переведенной текстовой области
      if (this.elements.translatedTextArea) {
        this.elements.translatedTextArea.addEventListener('input', () => {
          this.state.translatedText = this.elements.translatedTextArea.value;
          this.state.isDirty = true;
          this._addToHistory();
          this._updateUI();
        });
      }
      
      // Обработчик изменения исходного языка
      if (this.elements.sourceLanguageSelect) {
        this.elements.sourceLanguageSelect.addEventListener('change', () => {
          this.changeLanguage('source', this.elements.sourceLanguageSelect.value);
        });
      }
      
      // Обработчик изменения целевого языка
      if (this.elements.targetLanguageSelect) {
        this.elements.targetLanguageSelect.addEventListener('change', () => {
          this.changeLanguage('target', this.elements.targetLanguageSelect.value);
        });
      }
      
      // Обработчик кнопки перевода
      if (this.elements.translateButton) {
        this.elements.translateButton.addEventListener('click', () => {
          this.translateText();
        });
      }
      
      // Обработчик кнопки сохранения
      if (this.elements.saveButton) {
        this.elements.saveButton.addEventListener('click', () => {
          this.saveText();
        });
      }
      
      // Обработчик кнопки отмены
      if (this.elements.cancelButton) {
        this.elements.cancelButton.addEventListener('click', () => {
          this.cancelEditing();
        });
      }
      
      // Обработчик кнопки отмены последнего действия
      if (this.elements.undoButton) {
        this.elements.undoButton.addEventListener('click', () => {
          this.undo();
        });
      }
      
      // Обработчик кнопки повтора действия
      if (this.elements.redoButton) {
        this.elements.redoButton.addEventListener('click', () => {
          this.redo();
        });
      }
      
      // Обработчики кнопок форматирования
      if (this.elements.formatToolbar) {
        // В реальной реализации здесь был бы код для настройки обработчиков
        // кнопок форматирования на панели инструментов
      }
      
      this.logger?.debug('UI event handlers set up');
    } catch (error) {
      this.logger?.error('Error setting up UI event handlers', error);
    }
  }

  /**
   * Регистрация обработчиков событий
   * @private
   */
  _registerEventHandlers() {
    if (!this.eventEmitter) {
      return;
    }
    
    // Обработчик события запроса на редактирование текста
    this.eventEmitter.on('editor:edit_request', (data) => {
      if (data.page && data.region) {
        this.loadText(data.page, data.region);
      }
    });
    
    // Обработчик события изменения настроек
    this.eventEmitter.on('settings:changed', (data) => {
      if (data.section === 'interface' || data.section === 'all') {
        // Обновляем стили шрифта на основе настроек
        if (data.settings.interface) {
          this.state.fontStyles = {
            family: data.settings.interface.fontFamily || this.state.fontStyles.family,
            size: data.settings.interface.fontSize || this.state.fontStyles.size,
            weight: this.state.fontStyles.weight,
            style: this.state.fontStyles.style,
            color: data.settings.interface.textColor || this.state.fontStyles.color,
            backgroundColor: data.settings.interface.backgroundColor || this.state.fontStyles.backgroundColor
          };
          
          // Применяем стили
          this._applyFontStyles();
        }
      }
    });
  }

  /**
   * Уведомление об изменении текста
   * @private
   */
  _notifyTextChanged() {
    if (!this.eventEmitter) {
      return;
    }
    
    // Отправляем событие с обновленным текстом
    this.eventEmitter.emit('editor:text_changed', {
      page: this.state.currentPage,
      region: this.state.currentRegion,
      originalText: this.state.originalText,
      translatedText: this.state.translatedText
    });
  }
}

module.exports = TextEditorIntegration;
