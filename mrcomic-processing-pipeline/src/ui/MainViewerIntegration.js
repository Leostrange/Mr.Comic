/**
 * MainViewerIntegration - Интеграция конвейера обработки с главным экраном просмотрщика комиксов
 * 
 * Особенности:
 * - Подключение функций OCR и перевода к элементам управления главного экрана
 * - Реализация индикаторов прогресса и состояния
 * - Обработка одиночных страниц и навигация между переведенными страницами
 * - Интерактивное отображение результатов OCR и перевода
 */
class MainViewerIntegration {
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
    
    // Состояние просмотрщика
    this.state = {
      currentPage: null,
      currentPageIndex: 0,
      pages: [],
      isOcrEnabled: false,
      isTranslationEnabled: false,
      isProcessing: false,
      showOriginal: false,
      processingProgress: 0,
      processingStage: null,
      currentJobId: null
    };
    
    // Регистрируем обработчики событий
    this._registerEventHandlers();
    
    this.logger?.info('MainViewerIntegration initialized');
  }

  /**
   * Инициализация интеграции с DOM-элементами
   * @param {Object} elements - DOM-элементы просмотрщика
   * @param {HTMLElement} elements.container - Контейнер просмотрщика
   * @param {HTMLElement} elements.pageView - Элемент отображения страницы
   * @param {HTMLElement} elements.toolbar - Панель инструментов
   * @param {HTMLElement} elements.progressBar - Индикатор прогресса
   * @param {HTMLElement} elements.statusText - Текст статуса
   * @param {HTMLElement} elements.ocrButton - Кнопка OCR
   * @param {HTMLElement} elements.translateButton - Кнопка перевода
   * @param {HTMLElement} elements.toggleViewButton - Кнопка переключения вида
   * @param {HTMLElement} elements.prevButton - Кнопка предыдущей страницы
   * @param {HTMLElement} elements.nextButton - Кнопка следующей страницы
   */
  initialize(elements) {
    this.elements = elements;
    
    // Настраиваем обработчики событий UI
    this._setupUIEventHandlers();
    
    // Обновляем состояние UI
    this._updateUI();
    
    this.logger?.info('MainViewerIntegration initialized with DOM elements');
  }

  /**
   * Загрузка страницы в просмотрщик
   * @param {Object} page - Информация о странице
   * @param {string|Buffer} page.image - Путь к изображению или буфер с данными
   * @param {string} page.id - Уникальный идентификатор страницы
   * @param {number} page.index - Индекс страницы в комиксе
   * @param {Object} [page.ocrResult] - Результат OCR (если уже выполнен)
   * @param {Object} [page.translationResult] - Результат перевода (если уже выполнен)
   */
  loadPage(page) {
    this.logger?.info('Loading page in viewer', { pageId: page.id, pageIndex: page.index });
    
    // Сохраняем информацию о странице
    this.state.currentPage = page;
    this.state.currentPageIndex = page.index;
    
    // Добавляем страницу в список, если её там нет
    const existingPageIndex = this.state.pages.findIndex(p => p.id === page.id);
    if (existingPageIndex === -1) {
      this.state.pages.push(page);
    } else {
      this.state.pages[existingPageIndex] = page;
    }
    
    // Отображаем страницу
    this._displayPage(page);
    
    // Обновляем состояние UI
    this._updateUI();
  }

  /**
   * Загрузка нескольких страниц в просмотрщик
   * @param {Array<Object>} pages - Массив информации о страницах
   */
  loadPages(pages) {
    this.logger?.info('Loading multiple pages in viewer', { pageCount: pages.length });
    
    // Сохраняем информацию о страницах
    this.state.pages = pages;
    
    // Если текущая страница не установлена, устанавливаем первую страницу
    if (!this.state.currentPage && pages.length > 0) {
      this.state.currentPage = pages[0];
      this.state.currentPageIndex = 0;
    }
    
    // Отображаем текущую страницу
    if (this.state.currentPage) {
      this._displayPage(this.state.currentPage);
    }
    
    // Обновляем состояние UI
    this._updateUI();
  }

  /**
   * Переход к предыдущей странице
   * @returns {boolean} - true, если переход выполнен успешно
   */
  previousPage() {
    if (this.state.currentPageIndex <= 0 || this.state.pages.length === 0) {
      return false;
    }
    
    const newIndex = this.state.currentPageIndex - 1;
    const page = this.state.pages[newIndex];
    
    if (page) {
      this.state.currentPage = page;
      this.state.currentPageIndex = newIndex;
      
      // Отображаем страницу
      this._displayPage(page);
      
      // Обновляем состояние UI
      this._updateUI();
      
      return true;
    }
    
    return false;
  }

  /**
   * Переход к следующей странице
   * @returns {boolean} - true, если переход выполнен успешно
   */
  nextPage() {
    if (this.state.currentPageIndex >= this.state.pages.length - 1 || this.state.pages.length === 0) {
      return false;
    }
    
    const newIndex = this.state.currentPageIndex + 1;
    const page = this.state.pages[newIndex];
    
    if (page) {
      this.state.currentPage = page;
      this.state.currentPageIndex = newIndex;
      
      // Отображаем страницу
      this._displayPage(page);
      
      // Обновляем состояние UI
      this._updateUI();
      
      return true;
    }
    
    return false;
  }

  /**
   * Переключение между оригиналом и переводом
   * @returns {boolean} - true, если переключение выполнено успешно
   */
  toggleView() {
    // Переключаем режим отображения только если есть перевод
    if (this.state.currentPage && this.state.currentPage.translationResult) {
      this.state.showOriginal = !this.state.showOriginal;
      
      // Обновляем отображение страницы
      this._displayPage(this.state.currentPage);
      
      // Обновляем состояние UI
      this._updateUI();
      
      return true;
    }
    
    return false;
  }

  /**
   * Выполнение OCR для текущей страницы
   * @param {Object} options - Опции OCR
   * @returns {Promise<Object>} - Результат OCR
   */
  async performOCR(options = {}) {
    if (!this.state.currentPage || this.state.isProcessing) {
      return null;
    }
    
    try {
      this.logger?.info('Performing OCR for current page', { 
        pageId: this.state.currentPage.id,
        options
      });
      
      // Обновляем состояние
      this.state.isProcessing = true;
      this.state.processingProgress = 0;
      this.state.processingStage = 'ocr';
      
      // Обновляем UI
      this._updateUI();
      
      // Выполняем OCR через UIConnector
      const result = await this.uiConnector.performOCR(
        this.state.currentPage.image,
        {
          ...options,
          pageId: this.state.currentPage.id,
          pageIndex: this.state.currentPageIndex
        }
      );
      
      // Сохраняем результат OCR в информации о странице
      this.state.currentPage.ocrResult = result.ocrResult;
      
      // Обновляем страницу в списке
      const pageIndex = this.state.pages.findIndex(p => p.id === this.state.currentPage.id);
      if (pageIndex !== -1) {
        this.state.pages[pageIndex] = this.state.currentPage;
      }
      
      // Обновляем состояние
      this.state.isProcessing = false;
      this.state.processingProgress = 100;
      this.state.isOcrEnabled = true;
      
      // Отображаем результат OCR
      this._displayPage(this.state.currentPage);
      
      // Обновляем UI
      this._updateUI();
      
      return result;
    } catch (error) {
      this.logger?.error('Error performing OCR for current page', error);
      
      // Обновляем состояние
      this.state.isProcessing = false;
      
      // Обновляем UI с сообщением об ошибке
      this._updateUI(error.message);
      
      throw error;
    }
  }

  /**
   * Выполнение перевода для текущей страницы
   * @param {Object} options - Опции перевода
   * @returns {Promise<Object>} - Результат перевода
   */
  async performTranslation(options = {}) {
    if (!this.state.currentPage || this.state.isProcessing || !this.state.currentPage.ocrResult) {
      return null;
    }
    
    try {
      this.logger?.info('Performing translation for current page', { 
        pageId: this.state.currentPage.id,
        options
      });
      
      // Обновляем состояние
      this.state.isProcessing = true;
      this.state.processingProgress = 0;
      this.state.processingStage = 'translation';
      
      // Обновляем UI
      this._updateUI();
      
      // Выполняем перевод через UIConnector
      const result = await this.uiConnector.performTranslation(
        this.state.currentPage.ocrResult.text,
        options.sourceLanguage || this.state.currentPage.ocrResult.language || 'auto',
        options.targetLanguage || 'en',
        {
          ...options,
          pageId: this.state.currentPage.id,
          pageIndex: this.state.currentPageIndex
        }
      );
      
      // Сохраняем результат перевода в информации о странице
      this.state.currentPage.translationResult = result.translationResult;
      
      // Обновляем страницу в списке
      const pageIndex = this.state.pages.findIndex(p => p.id === this.state.currentPage.id);
      if (pageIndex !== -1) {
        this.state.pages[pageIndex] = this.state.currentPage;
      }
      
      // Обновляем состояние
      this.state.isProcessing = false;
      this.state.processingProgress = 100;
      this.state.isTranslationEnabled = true;
      this.state.showOriginal = false; // Показываем перевод по умолчанию
      
      // Отображаем результат перевода
      this._displayPage(this.state.currentPage);
      
      // Обновляем UI
      this._updateUI();
      
      return result;
    } catch (error) {
      this.logger?.error('Error performing translation for current page', error);
      
      // Обновляем состояние
      this.state.isProcessing = false;
      
      // Обновляем UI с сообщением об ошибке
      this._updateUI(error.message);
      
      throw error;
    }
  }

  /**
   * Выполнение полного конвейера OCR и перевода для текущей страницы
   * @param {Object} options - Опции обработки
   * @returns {Promise<Object>} - Результат обработки
   */
  async performOCRAndTranslation(options = {}) {
    if (!this.state.currentPage || this.state.isProcessing) {
      return null;
    }
    
    try {
      this.logger?.info('Performing OCR and translation for current page', { 
        pageId: this.state.currentPage.id,
        options
      });
      
      // Обновляем состояние
      this.state.isProcessing = true;
      this.state.processingProgress = 0;
      this.state.processingStage = 'ocr_translation';
      
      // Обновляем UI
      this._updateUI();
      
      // Выполняем полный конвейер через UIConnector
      const result = await this.uiConnector.performOCRAndTranslation(
        this.state.currentPage.image,
        {
          ...options,
          pageId: this.state.currentPage.id,
          pageIndex: this.state.currentPageIndex
        }
      );
      
      // Сохраняем результаты в информации о странице
      this.state.currentPage.ocrResult = result.ocrResult;
      this.state.currentPage.translationResult = result.translationResult;
      
      // Обновляем страницу в списке
      const pageIndex = this.state.pages.findIndex(p => p.id === this.state.currentPage.id);
      if (pageIndex !== -1) {
        this.state.pages[pageIndex] = this.state.currentPage;
      }
      
      // Обновляем состояние
      this.state.isProcessing = false;
      this.state.processingProgress = 100;
      this.state.isOcrEnabled = true;
      this.state.isTranslationEnabled = true;
      this.state.showOriginal = false; // Показываем перевод по умолчанию
      
      // Отображаем результат
      this._displayPage(this.state.currentPage);
      
      // Обновляем UI
      this._updateUI();
      
      return result;
    } catch (error) {
      this.logger?.error('Error performing OCR and translation for current page', error);
      
      // Обновляем состояние
      this.state.isProcessing = false;
      
      // Обновляем UI с сообщением об ошибке
      this._updateUI(error.message);
      
      throw error;
    }
  }

  /**
   * Отмена текущей обработки
   * @returns {boolean} - true, если обработка была отменена
   */
  cancelProcessing() {
    if (!this.state.isProcessing) {
      return false;
    }
    
    this.logger?.info('Cancelling processing for current page');
    
    // Отменяем обработку через UIConnector
    const result = this.uiConnector.cancelProcessing();
    
    if (result) {
      // Обновляем состояние
      this.state.isProcessing = false;
      
      // Обновляем UI
      this._updateUI();
    }
    
    return result;
  }

  /**
   * Отображение страницы в просмотрщике
   * @private
   * @param {Object} page - Информация о странице
   */
  _displayPage(page) {
    if (!this.elements || !this.elements.pageView) {
      return;
    }
    
    // Отображаем изображение страницы
    if (typeof page.image === 'string') {
      // Если image - это путь к файлу
      this.elements.pageView.style.backgroundImage = `url(${page.image})`;
    } else if (page.image instanceof Buffer) {
      // Если image - это буфер с данными
      const blob = new Blob([page.image]);
      const url = URL.createObjectURL(blob);
      this.elements.pageView.style.backgroundImage = `url(${url})`;
    }
    
    // Очищаем контейнер от предыдущих элементов
    this.elements.pageView.innerHTML = '';
    
    // Если есть результат OCR и включен режим OCR, отображаем области текста
    if (page.ocrResult && this.state.isOcrEnabled) {
      this._displayOCRResult(page.ocrResult);
    }
    
    // Если есть результат перевода, включен режим перевода и не показываем оригинал,
    // отображаем переведенный текст
    if (page.translationResult && this.state.isTranslationEnabled && !this.state.showOriginal) {
      this._displayTranslationResult(page.translationResult);
    }
  }

  /**
   * Отображение результата OCR
   * @private
   * @param {Object} ocrResult - Результат OCR
   */
  _displayOCRResult(ocrResult) {
    if (!this.elements || !this.elements.pageView) {
      return;
    }
    
    // Если нет областей текста, выходим
    if (!ocrResult.regions || ocrResult.regions.length === 0) {
      return;
    }
    
    // Создаем контейнер для областей текста
    const textRegionsContainer = document.createElement('div');
    textRegionsContainer.className = 'text-regions-container';
    
    // Добавляем области текста
    ocrResult.regions.forEach((region, index) => {
      const textRegion = document.createElement('div');
      textRegion.className = 'text-region';
      textRegion.dataset.regionId = index;
      
      // Устанавливаем позицию и размеры области
      textRegion.style.left = `${region.bounds.x}px`;
      textRegion.style.top = `${region.bounds.y}px`;
      textRegion.style.width = `${region.bounds.width}px`;
      textRegion.style.height = `${region.bounds.height}px`;
      
      // Если показываем оригинал или нет перевода, отображаем оригинальный текст
      if (this.state.showOriginal || !this.state.currentPage.translationResult) {
        const textElement = document.createElement('div');
        textElement.className = 'text-content original';
        textElement.textContent = region.text;
        textRegion.appendChild(textElement);
      }
      
      textRegionsContainer.appendChild(textRegion);
    });
    
    // Добавляем контейнер с областями текста на страницу
    this.elements.pageView.appendChild(textRegionsContainer);
  }

  /**
   * Отображение результата перевода
   * @private
   * @param {Object} translationResult - Результат перевода
   */
  _displayTranslationResult(translationResult) {
    if (!this.elements || !this.elements.pageView || !this.state.currentPage.ocrResult) {
      return;
    }
    
    // Если нет областей текста, выходим
    if (!this.state.currentPage.ocrResult.regions || 
        this.state.currentPage.ocrResult.regions.length === 0) {
      return;
    }
    
    // Получаем контейнер для областей текста
    let textRegionsContainer = this.elements.pageView.querySelector('.text-regions-container');
    
    // Если контейнер не найден, создаем его
    if (!textRegionsContainer) {
      textRegionsContainer = document.createElement('div');
      textRegionsContainer.className = 'text-regions-container';
      this.elements.pageView.appendChild(textRegionsContainer);
    }
    
    // Добавляем переведенный текст в области
    this.state.currentPage.ocrResult.regions.forEach((region, index) => {
      let textRegion = textRegionsContainer.querySelector(`[data-region-id="${index}"]`);
      
      // Если область не найдена, создаем её
      if (!textRegion) {
        textRegion = document.createElement('div');
        textRegion.className = 'text-region';
        textRegion.dataset.regionId = index;
        
        // Устанавливаем позицию и размеры области
        textRegion.style.left = `${region.bounds.x}px`;
        textRegion.style.top = `${region.bounds.y}px`;
        textRegion.style.width = `${region.bounds.width}px`;
        textRegion.style.height = `${region.bounds.height}px`;
        
        textRegionsContainer.appendChild(textRegion);
      }
      
      // Удаляем предыдущий переведенный текст, если он есть
      const existingTranslation = textRegion.querySelector('.text-content.translated');
      if (existingTranslation) {
        textRegion.removeChild(existingTranslation);
      }
      
      // Добавляем переведенный текст
      const translatedText = translationResult.translatedRegions && 
                            translationResult.translatedRegions[index] ? 
                            translationResult.translatedRegions[index].text : 
                            '';
      
      if (translatedText) {
        const textElement = document.createElement('div');
        textElement.className = 'text-content translated';
        textElement.textContent = translatedText;
        textRegion.appendChild(textElement);
      }
    });
  }

  /**
   * Обновление состояния UI
   * @private
   * @param {string} [errorMessage] - Сообщение об ошибке
   */
  _updateUI(errorMessage) {
    if (!this.elements) {
      return;
    }
    
    // Обновляем кнопки навигации
    if (this.elements.prevButton) {
      this.elements.prevButton.disabled = this.state.currentPageIndex <= 0 || this.state.isProcessing;
    }
    
    if (this.elements.nextButton) {
      this.elements.nextButton.disabled = this.state.currentPageIndex >= this.state.pages.length - 1 || this.state.isProcessing;
    }
    
    // Обновляем кнопки OCR и перевода
    if (this.elements.ocrButton) {
      this.elements.ocrButton.disabled = !this.state.currentPage || this.state.isProcessing;
      this.elements.ocrButton.classList.toggle('active', this.state.isOcrEnabled);
    }
    
    if (this.elements.translateButton) {
      this.elements.translateButton.disabled = !this.state.currentPage || 
                                              !this.state.currentPage.ocrResult || 
                                              this.state.isProcessing;
      this.elements.translateButton.classList.toggle('active', this.state.isTranslationEnabled);
    }
    
    // Обновляем кнопку переключения вида
    if (this.elements.toggleViewButton) {
      this.elements.toggleViewButton.disabled = !this.state.currentPage || 
                                               !this.state.currentPage.translationResult || 
                                               this.state.isProcessing;
      this.elements.toggleViewButton.classList.toggle('original', this.state.showOriginal);
      this.elements.toggleViewButton.classList.toggle('translated', !this.state.showOriginal);
    }
    
    // Обновляем индикатор прогресса
    if (this.elements.progressBar) {
      this.elements.progressBar.style.width = `${this.state.processingProgress}%`;
      this.elements.progressBar.classList.toggle('visible', this.state.isProcessing);
    }
    
    // Обновляем текст статуса
    if (this.elements.statusText) {
      if (errorMessage) {
        this.elements.statusText.textContent = `Ошибка: ${errorMessage}`;
        this.elements.statusText.classList.add('error');
      } else if (this.state.isProcessing) {
        let statusText = 'Обработка...';
        
        if (this.state.processingStage === 'ocr') {
          statusText = `Распознавание текста (${this.state.processingProgress}%)...`;
        } else if (this.state.processingStage === 'translation') {
          statusText = `Перевод текста (${this.state.processingProgress}%)...`;
        } else if (this.state.processingStage === 'ocr_translation') {
          if (this.state.processingProgress < 50) {
            statusText = `Распознавание текста (${this.state.processingProgress * 2}%)...`;
          } else {
            statusText = `Перевод текста (${(this.state.processingProgress - 50) * 2}%)...`;
          }
        }
        
        this.elements.statusText.textContent = statusText;
        this.elements.statusText.classList.remove('error');
      } else if (this.state.currentPage) {
        let statusText = `Страница ${this.state.currentPageIndex + 1} из ${this.state.pages.length}`;
        
        if (this.state.currentPage.ocrResult) {
          statusText += ' | OCR: Выполнено';
        }
        
        if (this.state.currentPage.translationResult) {
          statusText += ` | Перевод: ${this.state.showOriginal ? 'Оригинал' : 'Перевод'}`;
        }
        
        this.elements.statusText.textContent = statusText;
        this.elements.statusText.classList.remove('error');
      } else {
        this.elements.statusText.textContent = 'Готово к работе';
        this.elements.statusText.classList.remove('error');
      }
    }
  }

  /**
   * Настройка обработчиков событий UI
   * @private
   */
  _setupUIEventHandlers() {
    if (!this.elements) {
      return;
    }
    
    // Обработчик для кнопки предыдущей страницы
    if (this.elements.prevButton) {
      this.elements.prevButton.addEventListener('click', () => {
        this.previousPage();
      });
    }
    
    // Обработчик для кнопки следующей страницы
    if (this.elements.nextButton) {
      this.elements.nextButton.addEventListener('click', () => {
        this.nextPage();
      });
    }
    
    // Обработчик для кнопки OCR
    if (this.elements.ocrButton) {
      this.elements.ocrButton.addEventListener('click', () => {
        if (this.state.isOcrEnabled) {
          // Если OCR уже включен, отключаем его
          this.state.isOcrEnabled = false;
          
          // Если был включен перевод, отключаем его тоже
          if (this.state.isTranslationEnabled) {
            this.state.isTranslationEnabled = false;
          }
          
          // Обновляем отображение страницы
          this._displayPage(this.state.currentPage);
          
          // Обновляем UI
          this._updateUI();
        } else {
          // Если OCR выключен, выполняем его
          this.performOCR();
        }
      });
    }
    
    // Обработчик для кнопки перевода
    if (this.elements.translateButton) {
      this.elements.translateButton.addEventListener('click', () => {
        if (this.state.isTranslationEnabled) {
          // Если перевод уже включен, отключаем его
          this.state.isTranslationEnabled = false;
          
          // Обновляем отображение страницы
          this._displayPage(this.state.currentPage);
          
          // Обновляем UI
          this._updateUI();
        } else {
          // Если перевод выключен, выполняем его
          if (this.state.currentPage.ocrResult) {
            this.performTranslation();
          } else {
            // Если OCR еще не выполнен, выполняем полный конвейер
            this.performOCRAndTranslation();
          }
        }
      });
    }
    
    // Обработчик для кнопки переключения вида
    if (this.elements.toggleViewButton) {
      this.elements.toggleViewButton.addEventListener('click', () => {
        this.toggleView();
      });
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
    
    // Обработчик обновления прогресса
    this.eventEmitter.on('ui:progress_update', (data) => {
      if (data.jobId === this.state.currentJobId) {
        this.state.processingProgress = data.progress;
        
        // Обновляем UI
        this._updateUI();
      }
    });
    
    // Обработчик ошибок
    this.eventEmitter.on('ui:error', (data) => {
      // Обновляем UI с сообщением об ошибке
      this._updateUI(data.error.message || 'Произошла ошибка');
    });
  }
}

module.exports = MainViewerIntegration;
