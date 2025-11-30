/**
 * TextEditorTool - Специализированный инструмент для редактирования текста
 * 
 * Отвечает за:
 * - Редактирование текстового содержимого
 * - Форматирование текста
 * - Проверку орфографии и грамматики
 */
class TextEditorTool extends require('./BaseTool') {
  /**
   * @constructor
   * @param {Object} options - Опции для инициализации инструмента
   */
  constructor(options = {}) {
    super({
      ...options,
      type: 'text-editor',
      name: options.name || 'Редактор текста',
      description: options.description || 'Инструмент для редактирования и форматирования текста',
      category: options.category || 'text',
      capabilities: [...(options.capabilities || []), 'text-editing', 'text-formatting', 'spell-checking']
    });
    
    this.container = null; // Контейнер для редактора
    this.content = ''; // Текущее содержимое
    this.selection = { start: 0, end: 0 }; // Текущее выделение
    this.formats = new Map(); // Доступные форматы текста
    this.history = []; // История изменений
    this.historyIndex = -1; // Индекс текущего состояния в истории
    this.spellChecker = options.spellChecker || null; // Проверка орфографии
    this.fontFamily = options.fontFamily || 'Arial, sans-serif'; // Шрифт по умолчанию
    this.fontSize = options.fontSize || 16; // Размер шрифта по умолчанию
    this.textColor = options.textColor || '#000000'; // Цвет текста по умолчанию
    this.backgroundColor = options.backgroundColor || 'transparent'; // Цвет фона по умолчанию
  }

  /**
   * Инициализация инструмента
   * @returns {Promise<void>}
   */
  async initialize() {
    await super.initialize();
    
    // Регистрируем базовые форматы текста
    this.registerFormat('plain', this._formatPlainText.bind(this));
    this.registerFormat('markdown', this._formatMarkdownText.bind(this));
    this.registerFormat('html', this._formatHtmlText.bind(this));
    this.registerFormat('rich', this._formatRichText.bind(this));
    
    // Создаем контейнер, если его еще нет
    if (!this.container) {
      this.container = document.createElement('div');
      this.container.contentEditable = 'true';
      this.container.style.fontFamily = this.fontFamily;
      this.container.style.fontSize = `${this.fontSize}px`;
      this.container.style.color = this.textColor;
      this.container.style.backgroundColor = this.backgroundColor;
      this.container.style.minHeight = '100px';
      this.container.style.padding = '10px';
      this.container.style.border = '1px solid #ccc';
      this.container.style.outline = 'none';
      this.container.style.overflowY = 'auto';
      
      // Добавляем обработчики событий
      this.container.addEventListener('input', this._handleInput.bind(this));
      this.container.addEventListener('keydown', this._handleKeyDown.bind(this));
      this.container.addEventListener('mouseup', this._handleSelectionChange.bind(this));
      this.container.addEventListener('keyup', this._handleSelectionChange.bind(this));
    }
  }

  /**
   * Проверка возможности обработки команды
   * @param {Object} command - Команда для проверки
   * @returns {boolean} - true, если инструмент может обработать команду
   */
  canHandleCommand(command) {
    const supportedCommands = [
      'text.load',
      'text.save',
      'text.insert',
      'text.delete',
      'text.replace',
      'text.select',
      'text.format',
      'text.setStyle',
      'text.checkSpelling',
      'text.undo',
      'text.redo',
      'text.clear'
    ];
    
    return command && supportedCommands.includes(command.type);
  }

  /**
   * Реализация выполнения команды
   * @protected
   * @param {Object} command - Команда для выполнения
   * @returns {Promise<Object>} - Результат выполнения команды
   */
  async _executeCommand(command) {
    switch (command.type) {
      case 'text.load':
        return this.loadText(command.text, command.format);
      case 'text.save':
        return this.saveText(command.format);
      case 'text.insert':
        return this.insertText(command.text, command.position);
      case 'text.delete':
        return this.deleteText(command.start, command.end);
      case 'text.replace':
        return this.replaceText(command.start, command.end, command.text);
      case 'text.select':
        return this.selectText(command.start, command.end);
      case 'text.format':
        return this.formatText(command.format, command.options);
      case 'text.setStyle':
        return this.setStyle(command.style);
      case 'text.checkSpelling':
        return this.checkSpelling();
      case 'text.undo':
        return this.undo();
      case 'text.redo':
        return this.redo();
      case 'text.clear':
        return this.clear();
      default:
        throw new Error(`Unsupported command type: ${command.type}`);
    }
  }

  /**
   * Загрузка текста
   * @param {string} text - Текст для загрузки
   * @param {string} [format='plain'] - Формат текста
   * @returns {Promise<Object>} - Результат загрузки
   */
  async loadText(text, format = 'plain') {
    this.content = text || '';
    
    // Обновляем содержимое контейнера в зависимости от формата
    if (format === 'html') {
      this.container.innerHTML = this.content;
    } else if (format === 'markdown' || format === 'rich') {
      // Преобразуем Markdown в HTML
      const html = await this._formatMarkdownText(this.content);
      this.container.innerHTML = html;
    } else {
      // Обычный текст
      this.container.textContent = this.content;
    }
    
    // Сбрасываем выделение
    this.selection = { start: 0, end: 0 };
    
    // Сохраняем текущее состояние в истории
    this._addToHistory({
      content: this.content,
      format
    });
    
    return {
      success: true,
      length: this.content.length,
      format
    };
  }

  /**
   * Сохранение текста
   * @param {string} [format='plain'] - Формат текста
   * @returns {Promise<Object>} - Результат сохранения
   */
  async saveText(format = 'plain') {
    let result;
    
    if (format === 'html') {
      result = this.container.innerHTML;
    } else if (format === 'markdown') {
      // Преобразуем HTML в Markdown
      result = await this._htmlToMarkdown(this.container.innerHTML);
    } else if (format === 'rich') {
      // Сохраняем как HTML с дополнительными метаданными
      result = JSON.stringify({
        html: this.container.innerHTML,
        styles: {
          fontFamily: this.fontFamily,
          fontSize: this.fontSize,
          textColor: this.textColor,
          backgroundColor: this.backgroundColor
        }
      });
    } else {
      // Обычный текст
      result = this.container.textContent;
    }
    
    return {
      success: true,
      text: result,
      format,
      length: result.length
    };
  }

  /**
   * Вставка текста
   * @param {string} text - Текст для вставки
   * @param {number} [position] - Позиция для вставки (если не указана, используется текущая позиция курсора)
   * @returns {Promise<Object>} - Результат вставки
   */
  async insertText(text, position) {
    if (!text) {
      return {
        success: false,
        message: 'No text to insert'
      };
    }
    
    // Если позиция не указана, используем текущую позицию курсора
    if (position === undefined) {
      position = this.selection.start;
    }
    
    // Проверяем границы
    position = Math.max(0, Math.min(position, this.content.length));
    
    // Вставляем текст
    const newContent = this.content.substring(0, position) + text + this.content.substring(position);
    this.content = newContent;
    
    // Обновляем содержимое контейнера
    this._updateContainerContent();
    
    // Обновляем выделение
    this.selection = {
      start: position + text.length,
      end: position + text.length
    };
    
    // Сохраняем текущее состояние в истории
    this._addToHistory({
      content: this.content,
      selection: { ...this.selection }
    });
    
    return {
      success: true,
      position,
      insertedLength: text.length,
      newLength: this.content.length
    };
  }

  /**
   * Удаление текста
   * @param {number} start - Начальная позиция
   * @param {number} end - Конечная позиция
   * @returns {Promise<Object>} - Результат удаления
   */
  async deleteText(start, end) {
    // Если границы не указаны, используем текущее выделение
    if (start === undefined || end === undefined) {
      start = this.selection.start;
      end = this.selection.end;
      
      // Если нет выделения, удаляем один символ перед курсором
      if (start === end) {
        start = Math.max(0, start - 1);
      }
    }
    
    // Проверяем границы
    start = Math.max(0, Math.min(start, this.content.length));
    end = Math.max(start, Math.min(end, this.content.length));
    
    // Если нечего удалять, возвращаем успех
    if (start === end) {
      return {
        success: true,
        deletedLength: 0
      };
    }
    
    // Удаляем текст
    const deletedText = this.content.substring(start, end);
    const newContent = this.content.substring(0, start) + this.content.substring(end);
    this.content = newContent;
    
    // Обновляем содержимое контейнера
    this._updateContainerContent();
    
    // Обновляем выделение
    this.selection = {
      start,
      end: start
    };
    
    // Сохраняем текущее состояние в истории
    this._addToHistory({
      content: this.content,
      selection: { ...this.selection }
    });
    
    return {
      success: true,
      start,
      end,
      deletedText,
      deletedLength: deletedText.length,
      newLength: this.content.length
    };
  }

  /**
   * Замена текста
   * @param {number} start - Начальная позиция
   * @param {number} end - Конечная позиция
   * @param {string} text - Новый текст
   * @returns {Promise<Object>} - Результат замены
   */
  async replaceText(start, end, text) {
    // Если границы не указаны, используем текущее выделение
    if (start === undefined || end === undefined) {
      start = this.selection.start;
      end = this.selection.end;
    }
    
    // Проверяем границы
    start = Math.max(0, Math.min(start, this.content.length));
    end = Math.max(start, Math.min(end, this.content.length));
    
    // Заменяем текст
    const replacedText = this.content.substring(start, end);
    const newContent = this.content.substring(0, start) + (text || '') + this.content.substring(end);
    this.content = newContent;
    
    // Обновляем содержимое контейнера
    this._updateContainerContent();
    
    // Обновляем выделение
    this.selection = {
      start: start + (text || '').length,
      end: start + (text || '').length
    };
    
    // Сохраняем текущее состояние в истории
    this._addToHistory({
      content: this.content,
      selection: { ...this.selection }
    });
    
    return {
      success: true,
      start,
      end,
      replacedText,
      replacedLength: replacedText.length,
      newText: text,
      newLength: this.content.length
    };
  }

  /**
   * Выделение текста
   * @param {number} start - Начальная позиция
   * @param {number} end - Конечная позиция
   * @returns {Promise<Object>} - Результат выделения
   */
  async selectText(start, end) {
    // Проверяем границы
    start = Math.max(0, Math.min(start, this.content.length));
    end = Math.max(start, Math.min(end, this.content.length));
    
    // Обновляем выделение
    this.selection = { start, end };
    
    // Обновляем выделение в контейнере
    this._updateSelection();
    
    return {
      success: true,
      start,
      end,
      selectedText: this.content.substring(start, end),
      selectedLength: end - start
    };
  }

  /**
   * Форматирование текста
   * @param {string} format - Формат текста
   * @param {Object} [options={}] - Опции форматирования
   * @returns {Promise<Object>} - Результат форматирования
   */
  async formatText(format, options = {}) {
    if (!this.formats.has(format)) {
      throw new Error(`Format ${format} is not registered`);
    }
    
    // Получаем функцию форматирования
    const formatFunction = this.formats.get(format);
    
    // Определяем текст для форматирования
    let textToFormat;
    let start, end;
    
    if (this.selection.start !== this.selection.end) {
      // Форматируем выделенный текст
      start = this.selection.start;
      end = this.selection.end;
      textToFormat = this.content.substring(start, end);
    } else {
      // Форматируем весь текст
      start = 0;
      end = this.content.length;
      textToFormat = this.content;
    }
    
    // Применяем форматирование
    const formattedText = await formatFunction(textToFormat, options);
    
    // Заменяем текст
    const newContent = this.content.substring(0, start) + formattedText + this.content.substring(end);
    this.content = newContent;
    
    // Обновляем содержимое контейнера
    this._updateContainerContent();
    
    // Обновляем выделение
    this.selection = {
      start,
      end: start + formattedText.length
    };
    
    // Сохраняем текущее состояние в истории
    this._addToHistory({
      content: this.content,
      selection: { ...this.selection }
    });
    
    return {
      success: true,
      format,
      start,
      end: start + formattedText.length,
      formattedLength: formattedText.length
    };
  }

  /**
   * Установка стиля текста
   * @param {Object} style - Стиль текста
   * @returns {Promise<Object>} - Результат установки стиля
   */
  async setStyle(style) {
    // Обновляем стили
    if (style.fontFamily !== undefined) {
      this.fontFamily = style.fontFamily;
      this.container.style.fontFamily = this.fontFamily;
    }
    
    if (style.fontSize !== undefined) {
      this.fontSize = style.fontSize;
      this.container.style.fontSize = `${this.fontSize}px`;
    }
    
    if (style.textColor !== undefined) {
      this.textColor = style.textColor;
      this.container.style.color = this.textColor;
    }
    
    if (style.backgroundColor !== undefined) {
      this.backgroundColor = style.backgroundColor;
      this.container.style.backgroundColor = this.backgroundColor;
    }
    
    // Если есть выделение, применяем стиль к выделенному тексту
    if (this.selection.start !== this.selection.end) {
      const selection = window.getSelection();
      const range = selection.getRangeAt(0);
      
      // Создаем элемент span с нужными стилями
      const span = document.createElement('span');
      
      if (style.fontFamily !== undefined) {
        span.style.fontFamily = style.fontFamily;
      }
      
      if (style.fontSize !== undefined) {
        span.style.fontSize = `${style.fontSize}px`;
      }
      
      if (style.textColor !== undefined) {
        span.style.color = style.textColor;
      }
      
      if (style.backgroundColor !== undefined) {
        span.style.backgroundColor = style.backgroundColor;
      }
      
      // Оборачиваем выделенный текст в span
      range.surroundContents(span);
      
      // Обновляем содержимое
      this.content = this.container.innerHTML;
      
      // Сохраняем текущее состояние в истории
      this._addToHistory({
        content: this.content,
        selection: { ...this.selection }
      });
    }
    
    return {
      success: true,
      style: {
        fontFamily: this.fontFamily,
        fontSize: this.fontSize,
        textColor: this.textColor,
        backgroundColor: this.backgroundColor
      }
    };
  }

  /**
   * Проверка орфографии
   * @returns {Promise<Object>} - Результат проверки орфографии
   */
  async checkSpelling() {
    if (!this.spellChecker) {
      return {
        success: false,
        message: 'Spell checker is not available'
      };
    }
    
    // Определяем текст для проверки
    let textToCheck;
    let start, end;
    
    if (this.selection.start !== this.selection.end) {
      // Проверяем выделенный текст
      start = this.selection.start;
      end = this.selection.end;
      textToCheck = this.content.substring(start, end);
    } else {
      // Проверяем весь текст
      start = 0;
      end = this.content.length;
      textToCheck = this.content;
    }
    
    // Проверяем орфографию
    const result = await this.spellChecker.check(textToCheck);
    
    return {
      success: true,
      errors: result.errors,
      suggestions: result.suggestions,
      start,
      end
    };
  }

  /**
   * Отмена последнего действия
   * @returns {Promise<Object>} - Результат отмены
   */
  async undo() {
    if (this.historyIndex <= 0) {
      return {
        success: false,
        message: 'Nothing to undo'
      };
    }
    
    this.historyIndex--;
    const prevState = this.history[this.historyIndex];
    
    // Восстанавливаем предыдущее состояние
    this.content = prevState.content;
    this.selection = prevState.selection || { start: 0, end: 0 };
    
    // Обновляем содержимое контейнера
    this._updateContainerContent();
    
    // Обновляем выделение
    this._updateSelection();
    
    return {
      success: true,
      historyIndex: this.historyIndex,
      historyLength: this.history.length
    };
  }

  /**
   * Повтор отмененного действия
   * @returns {Promise<Object>} - Результат повтора
   */
  async redo() {
    if (this.historyIndex >= this.history.length - 1) {
      return {
        success: false,
        message: 'Nothing to redo'
      };
    }
    
    this.historyIndex++;
    const nextState = this.history[this.historyIndex];
    
    // Восстанавливаем следующее состояние
    this.content = nextState.content;
    this.selection = nextState.selection || { start: 0, end: 0 };
    
    // Обновляем содержимое контейнера
    this._updateContainerContent();
    
    // Обновляем выделение
    this._updateSelection();
    
    return {
      success: true,
      historyIndex: this.historyIndex,
      historyLength: this.history.length
    };
  }

  /**
   * Очистка текста
   * @returns {Promise<Object>} - Результат очистки
   */
  async clear() {
    // Очищаем содержимое
    this.content = '';
    this.selection = { start: 0, end: 0 };
    
    // Обновляем содержимое контейнера
    this._updateContainerContent();
    
    // Сохраняем текущее состояние в истории
    this._addToHistory({
      content: this.content,
      selection: { ...this.selection }
    });
    
    return {
      success: true
    };
  }

  /**
   * Регистрация формата текста
   * @param {string} id - Идентификатор формата
   * @param {Function} formatFunction - Функция форматирования
   * @returns {boolean} - Успешность регистрации
   */
  registerFormat(id, formatFunction) {
    if (!id || typeof formatFunction !== 'function') {
      console.error('Invalid format ID or function');
      return false;
    }
    
    if (this.formats.has(id)) {
      console.warn(`Format with id ${id} is already registered`);
      return false;
    }
    
    this.formats.set(id, formatFunction);
    return true;
  }

  /**
   * Обновление содержимого контейнера
   * @private
   */
  _updateContainerContent() {
    // Определяем текущий формат содержимого
    const isHtml = /<[^>]+>/.test(this.content);
    
    if (isHtml) {
      this.container.innerHTML = this.content;
    } else {
      this.container.textContent = this.content;
    }
  }

  /**
   * Обновление выделения в контейнере
   * @private
   */
  _updateSelection() {
    if (!this.container) {
      return;
    }
    
    const selection = window.getSelection();
    const range = document.createRange();
    
    // Находим текстовый узел
    let currentNode = this.container.firstChild;
    let currentPos = 0;
    
    // Функция для рекурсивного поиска позиции
    const findPosition = (node, targetPos) => {
      if (!node) {
        return null;
      }
      
      if (node.nodeType === Node.TEXT_NODE) {
        const nodeLength = node.nodeValue.length;
        
        if (currentPos + nodeLength >= targetPos) {
          return {
            node,
            offset: targetPos - currentPos
          };
        }
        
        currentPos += nodeLength;
      } else if (node.nodeType === Node.ELEMENT_NODE) {
        for (let i = 0; i < node.childNodes.length; i++) {
          const result = findPosition(node.childNodes[i], targetPos);
          if (result) {
            return result;
          }
        }
      }
      
      return null;
    };
    
    // Находим начальную и конечную позиции
    const startPos = findPosition(this.container, this.selection.start);
    const endPos = findPosition(this.container, this.selection.end);
    
    if (startPos && endPos) {
      range.setStart(startPos.node, startPos.offset);
      range.setEnd(endPos.node, endPos.offset);
      
      selection.removeAllRanges();
      selection.addRange(range);
    }
  }

  /**
   * Обработчик ввода текста
   * @private
   * @param {Event} event - Событие ввода
   */
  _handleInput(event) {
    // Обновляем содержимое
    this.content = this.container.innerHTML;
    
    // Сохраняем текущее состояние в истории
    this._addToHistory({
      content: this.content,
      selection: { ...this.selection }
    });
  }

  /**
   * Обработчик нажатия клавиш
   * @private
   * @param {KeyboardEvent} event - Событие нажатия клавиш
   */
  _handleKeyDown(event) {
    // Обрабатываем сочетания клавиш
    if (event.ctrlKey || event.metaKey) {
      switch (event.key) {
        case 'z':
          event.preventDefault();
          this.undo();
          break;
        case 'y':
          event.preventDefault();
          this.redo();
          break;
        case 'b':
          event.preventDefault();
          this._applyInlineStyle('bold');
          break;
        case 'i':
          event.preventDefault();
          this._applyInlineStyle('italic');
          break;
        case 'u':
          event.preventDefault();
          this._applyInlineStyle('underline');
          break;
      }
    }
  }

  /**
   * Обработчик изменения выделения
   * @private
   * @param {Event} event - Событие изменения выделения
   */
  _handleSelectionChange(event) {
    const selection = window.getSelection();
    
    if (selection.rangeCount > 0) {
      const range = selection.getRangeAt(0);
      
      // Функция для рекурсивного подсчета смещения
      const getOffset = (node, container) => {
        let offset = 0;
        
        if (node === container) {
          return offset;
        }
        
        if (node.nodeType === Node.TEXT_NODE) {
          return offset;
        }
        
        for (let i = 0; i < node.childNodes.length; i++) {
          const child = node.childNodes[i];
          
          if (child === container || child.contains(container)) {
            return offset + getOffset(child, container);
          }
          
          if (child.nodeType === Node.TEXT_NODE) {
            offset += child.nodeValue.length;
          } else if (child.nodeType === Node.ELEMENT_NODE) {
            offset += child.textContent.length;
          }
        }
        
        return offset;
      };
      
      // Вычисляем начальную и конечную позиции
      const startOffset = getOffset(this.container, range.startContainer) + range.startOffset;
      const endOffset = getOffset(this.container, range.endContainer) + range.endOffset;
      
      // Обновляем выделение
      this.selection = {
        start: startOffset,
        end: endOffset
      };
    }
  }

  /**
   * Применение встроенного стиля к выделенному тексту
   * @private
   * @param {string} style - Стиль для применения ('bold', 'italic', 'underline')
   */
  _applyInlineStyle(style) {
    if (this.selection.start === this.selection.end) {
      return; // Нет выделения
    }
    
    const selection = window.getSelection();
    const range = selection.getRangeAt(0);
    
    let tagName;
    switch (style) {
      case 'bold':
        tagName = 'strong';
        break;
      case 'italic':
        tagName = 'em';
        break;
      case 'underline':
        tagName = 'u';
        break;
      default:
        return;
    }
    
    // Создаем элемент с нужным стилем
    const element = document.createElement(tagName);
    
    // Оборачиваем выделенный текст
    range.surroundContents(element);
    
    // Обновляем содержимое
    this.content = this.container.innerHTML;
    
    // Сохраняем текущее состояние в истории
    this._addToHistory({
      content: this.content,
      selection: { ...this.selection }
    });
  }

  /**
   * Добавление состояния в историю
   * @private
   * @param {Object} state - Состояние
   */
  _addToHistory(state) {
    // Если мы находимся не в конце истории, обрезаем ее
    if (this.historyIndex < this.history.length - 1) {
      this.history = this.history.slice(0, this.historyIndex + 1);
    }
    
    // Добавляем новое состояние
    this.history.push(state);
    this.historyIndex = this.history.length - 1;
    
    // Ограничиваем размер истории
    const maxHistoryLength = 50;
    if (this.history.length > maxHistoryLength) {
      this.history = this.history.slice(this.history.length - maxHistoryLength);
      this.historyIndex = this.history.length - 1;
    }
  }

  /**
   * Форматирование обычного текста
   * @private
   * @param {string} text - Текст для форматирования
   * @returns {Promise<string>} - Отформатированный текст
   */
  async _formatPlainText(text) {
    // Для обычного текста просто возвращаем его без изменений
    return text;
  }

  /**
   * Форматирование текста в формате Markdown
   * @private
   * @param {string} text - Текст для форматирования
   * @returns {Promise<string>} - Отформатированный текст в формате HTML
   */
  async _formatMarkdownText(text) {
    // Простая реализация преобразования Markdown в HTML
    let html = text
      // Заголовки
      .replace(/^# (.+)$/gm, '<h1>$1</h1>')
      .replace(/^## (.+)$/gm, '<h2>$1</h2>')
      .replace(/^### (.+)$/gm, '<h3>$1</h3>')
      // Выделение
      .replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>')
      .replace(/\*(.+?)\*/g, '<em>$1</em>')
      .replace(/\_\_(.+?)\_\_/g, '<strong>$1</strong>')
      .replace(/\_(.+?)\_/g, '<em>$1</em>')
      // Списки
      .replace(/^\* (.+)$/gm, '<ul><li>$1</li></ul>')
      .replace(/^\d+\. (.+)$/gm, '<ol><li>$1</li></ol>')
      // Ссылки
      .replace(/\[(.+?)\]\((.+?)\)/g, '<a href="$2">$1</a>')
      // Изображения
      .replace(/!\[(.+?)\]\((.+?)\)/g, '<img src="$2" alt="$1">')
      // Параграфы
      .replace(/^(?!<[a-z]).+$/gm, '<p>$&</p>');
    
    // Объединяем последовательные элементы списков
    html = html
      .replace(/<\/ul><ul>/g, '')
      .replace(/<\/ol><ol>/g, '');
    
    return html;
  }

  /**
   * Форматирование текста в формате HTML
   * @private
   * @param {string} text - Текст для форматирования
   * @returns {Promise<string>} - Отформатированный текст
   */
  async _formatHtmlText(text) {
    // Для HTML просто возвращаем его без изменений
    return text;
  }

  /**
   * Форматирование текста в формате Rich Text
   * @private
   * @param {string} text - Текст для форматирования
   * @param {Object} options - Опции форматирования
   * @returns {Promise<string>} - Отформатированный текст
   */
  async _formatRichText(text, options = {}) {
    // Для Rich Text возвращаем HTML с дополнительными стилями
    let html = text;
    
    // Если текст не содержит HTML-тегов, оборачиваем его в параграф
    if (!/<[^>]+>/.test(html)) {
      html = `<p>${html}</p>`;
    }
    
    // Применяем стили
    if (options.fontFamily) {
      html = `<div style="font-family: ${options.fontFamily};">${html}</div>`;
    }
    
    if (options.fontSize) {
      html = `<div style="font-size: ${options.fontSize}px;">${html}</div>`;
    }
    
    if (options.textColor) {
      html = `<div style="color: ${options.textColor};">${html}</div>`;
    }
    
    if (options.backgroundColor) {
      html = `<div style="background-color: ${options.backgroundColor};">${html}</div>`;
    }
    
    return html;
  }

  /**
   * Преобразование HTML в Markdown
   * @private
   * @param {string} html - HTML для преобразования
   * @returns {Promise<string>} - Текст в формате Markdown
   */
  async _htmlToMarkdown(html) {
    // Простая реализация преобразования HTML в Markdown
    let markdown = html
      // Заголовки
      .replace(/<h1[^>]*>(.*?)<\/h1>/gi, '# $1\n\n')
      .replace(/<h2[^>]*>(.*?)<\/h2>/gi, '## $1\n\n')
      .replace(/<h3[^>]*>(.*?)<\/h3>/gi, '### $1\n\n')
      // Выделение
      .replace(/<strong[^>]*>(.*?)<\/strong>/gi, '**$1**')
      .replace(/<b[^>]*>(.*?)<\/b>/gi, '**$1**')
      .replace(/<em[^>]*>(.*?)<\/em>/gi, '*$1*')
      .replace(/<i[^>]*>(.*?)<\/i>/gi, '*$1*')
      // Списки
      .replace(/<ul[^>]*>(.*?)<\/ul>/gi, (match, content) => {
        return content.replace(/<li[^>]*>(.*?)<\/li>/gi, '* $1\n');
      })
      .replace(/<ol[^>]*>(.*?)<\/ol>/gi, (match, content) => {
        let index = 1;
        return content.replace(/<li[^>]*>(.*?)<\/li>/gi, () => {
          return `${index++}. $1\n`;
        });
      })
      // Ссылки
      .replace(/<a[^>]*href="(.*?)"[^>]*>(.*?)<\/a>/gi, '[$2]($1)')
      // Изображения
      .replace(/<img[^>]*src="(.*?)"[^>]*alt="(.*?)"[^>]*>/gi, '![$2]($1)')
      .replace(/<img[^>]*alt="(.*?)"[^>]*src="(.*?)"[^>]*>/gi, '![$1]($2)')
      // Параграфы
      .replace(/<p[^>]*>(.*?)<\/p>/gi, '$1\n\n')
      // Удаление оставшихся тегов
      .replace(/<[^>]+>/g, '')
      // Удаление лишних переносов строк
      .replace(/\n\n+/g, '\n\n')
      .trim();
    
    return markdown;
  }

  /**
   * Обработчик активации инструмента
   * @protected
   * @returns {Promise<void>}
   */
  async _onActivate() {
    // Реализация активации инструмента
    console.log(`TextEditorTool ${this.id} activated`);
  }

  /**
   * Обработчик деактивации инструмента
   * @protected
   * @returns {Promise<void>}
   */
  async _onDeactivate() {
    // Реализация деактивации инструмента
    console.log(`TextEditorTool ${this.id} deactivated`);
  }

  /**
   * Обработчик освобождения ресурсов
   * @protected
   * @returns {Promise<void>}
   */
  async _onDispose() {
    // Очищаем ресурсы
    if (this.container) {
      this.container.removeEventListener('input', this._handleInput);
      this.container.removeEventListener('keydown', this._handleKeyDown);
      this.container.removeEventListener('mouseup', this._handleSelectionChange);
      this.container.removeEventListener('keyup', this._handleSelectionChange);
    }
    
    this.container = null;
    this.content = '';
    this.selection = { start: 0, end: 0 };
    this.history = [];
    this.historyIndex = -1;
    this.formats.clear();
    this.spellChecker = null;
  }
}

module.exports = TextEditorTool;
