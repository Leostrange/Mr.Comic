/**
 * ImageFilterPlugin - Плагин для применения фильтров к изображениям
 * 
 * Расширенная версия плагина для обработки изображений с поддержкой
 * различных фильтров и эффектов.
 */

// Импорт базового класса плагина
const MrComicPlugin = require('../../core/MrComicPlugin');

class ImageFilterPlugin extends MrComicPlugin {
  /**
   * Конструктор плагина
   */
  constructor() {
    super({
      id: 'image-filter-plugin',
      name: 'Image Filter Plugin',
      version: '1.0.0',
      description: 'Apply various filters to images',
      author: 'Mr.Comic Team',
      permissions: ['read_image', 'modify_image']
    });
    
    // Зарегистрированные фильтры
    this.filters = new Map();
    
    // Зарегистрированные эффекты
    this.effects = new Map();
    
    // Зарегистрированные улучшения
    this.enhancers = new Map();
  }
  
  /**
   * Метод активации плагина
   * @param {PluginContext} context - Контекст плагина
   * @returns {Promise<void>}
   */
  async activate(context) {
    await super.activate(context);
    
    this._context.log.info('Activating Image Filter Plugin');
    
    // Регистрация команд
    this._registerCommands();
    
    // Регистрация фильтров
    this._registerFilters();
    
    // Регистрация эффектов
    this._registerEffects();
    
    // Регистрация улучшений
    this._registerEnhancers();
    
    // Регистрация пунктов меню
    this._registerMenuItems();
    
    // Регистрация панели фильтров
    this._registerFilterPanel();
    
    this._context.log.info('Image Filter Plugin activated successfully');
  }
  
  /**
   * Метод деактивации плагина
   * @returns {Promise<void>}
   */
  async deactivate() {
    this._context.log.info('Deactivating Image Filter Plugin');
    
    // Очистка ресурсов выполняется автоматически через context.subscriptions
    
    await super.deactivate();
  }
  
  /**
   * Регистрация команд
   * @private
   */
  _registerCommands() {
    // Команда применения фильтра
    this._context.registerCommand('image.applyFilter', async (imageId, filterId, options) => {
      return await this._applyFilter(imageId, filterId, options);
    }, {
      title: 'Apply Filter',
      description: 'Apply filter to image',
      category: 'Image'
    });
    
    // Команда получения доступных фильтров
    this._context.registerCommand('image.getFilters', () => {
      return this._getAvailableFilters();
    }, {
      title: 'Get Available Filters',
      description: 'Get list of available filters',
      category: 'Image'
    });
    
    // Команда предпросмотра фильтра
    this._context.registerCommand('image.previewFilter', async (imageId, filterId, options) => {
      return await this._previewFilter(imageId, filterId, options);
    }, {
      title: 'Preview Filter',
      description: 'Preview filter on image',
      category: 'Image'
    });
    
    // Команда сброса фильтров
    this._context.registerCommand('image.resetFilters', async (imageId) => {
      return await this._resetFilters(imageId);
    }, {
      title: 'Reset Filters',
      description: 'Reset all filters on image',
      category: 'Image'
    });
    
    // Команда применения пакетной обработки
    this._context.registerCommand('image.batchProcess', async (imageIds, filterId, options) => {
      return await this._batchProcess(imageIds, filterId, options);
    }, {
      title: 'Batch Process',
      description: 'Apply filter to multiple images',
      category: 'Image'
    });
    
    // Команда применения эффекта
    this._context.registerCommand('image.applyEffect', async (imageId, effectId, options) => {
      return await this._applyEffect(imageId, effectId, options);
    }, {
      title: 'Apply Effect',
      description: 'Apply effect to image',
      category: 'Image'
    });
    
    // Команда применения улучшения
    this._context.registerCommand('image.applyEnhancer', async (imageId, enhancerId, options) => {
      return await this._applyEnhancer(imageId, enhancerId, options);
    }, {
      title: 'Apply Enhancer',
      description: 'Apply enhancer to image',
      category: 'Image'
    });
  }
  
  /**
   * Регистрация фильтров
   * @private
   */
  _registerFilters() {
    // Фильтр: Черно-белый
    this._registerFilter('grayscale', {
      name: 'Grayscale',
      description: 'Convert image to grayscale',
      category: 'Basic',
      params: [
        {
          id: 'intensity',
          name: 'Intensity',
          type: 'range',
          min: 0,
          max: 100,
          default: 100
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения фильтра
        return imageData;
      }
    });
    
    // Фильтр: Сепия
    this._registerFilter('sepia', {
      name: 'Sepia',
      description: 'Apply sepia tone to image',
      category: 'Basic',
      params: [
        {
          id: 'intensity',
          name: 'Intensity',
          type: 'range',
          min: 0,
          max: 100,
          default: 70
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения фильтра
        return imageData;
      }
    });
    
    // Фильтр: Яркость
    this._registerFilter('brightness', {
      name: 'Brightness',
      description: 'Adjust image brightness',
      category: 'Adjustments',
      params: [
        {
          id: 'value',
          name: 'Value',
          type: 'range',
          min: -100,
          max: 100,
          default: 0
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения фильтра
        return imageData;
      }
    });
    
    // Фильтр: Контрастность
    this._registerFilter('contrast', {
      name: 'Contrast',
      description: 'Adjust image contrast',
      category: 'Adjustments',
      params: [
        {
          id: 'value',
          name: 'Value',
          type: 'range',
          min: -100,
          max: 100,
          default: 0
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения фильтра
        return imageData;
      }
    });
    
    // Фильтр: Насыщенность
    this._registerFilter('saturation', {
      name: 'Saturation',
      description: 'Adjust image saturation',
      category: 'Adjustments',
      params: [
        {
          id: 'value',
          name: 'Value',
          type: 'range',
          min: -100,
          max: 100,
          default: 0
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения фильтра
        return imageData;
      }
    });
    
    // Фильтр: Размытие
    this._registerFilter('blur', {
      name: 'Blur',
      description: 'Apply Gaussian blur to image',
      category: 'Effects',
      params: [
        {
          id: 'radius',
          name: 'Radius',
          type: 'range',
          min: 0,
          max: 50,
          default: 5
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения фильтра
        return imageData;
      }
    });
    
    // Фильтр: Резкость
    this._registerFilter('sharpen', {
      name: 'Sharpen',
      description: 'Increase image sharpness',
      category: 'Effects',
      params: [
        {
          id: 'amount',
          name: 'Amount',
          type: 'range',
          min: 0,
          max: 100,
          default: 50
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения фильтра
        return imageData;
      }
    });
    
    // Фильтр: Шум
    this._registerFilter('noise', {
      name: 'Noise',
      description: 'Add noise to image',
      category: 'Effects',
      params: [
        {
          id: 'amount',
          name: 'Amount',
          type: 'range',
          min: 0,
          max: 100,
          default: 20
        },
        {
          id: 'type',
          name: 'Type',
          type: 'select',
          options: [
            { value: 'gaussian', label: 'Gaussian' },
            { value: 'uniform', label: 'Uniform' },
            { value: 'salt', label: 'Salt & Pepper' }
          ],
          default: 'gaussian'
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения фильтра
        return imageData;
      }
    });
  }
  
  /**
   * Регистрация эффектов
   * @private
   */
  _registerEffects() {
    // Эффект: Виньетка
    this._registerEffect('vignette', {
      name: 'Vignette',
      description: 'Apply vignette effect to image',
      category: 'Effects',
      params: [
        {
          id: 'size',
          name: 'Size',
          type: 'range',
          min: 0,
          max: 100,
          default: 50
        },
        {
          id: 'amount',
          name: 'Amount',
          type: 'range',
          min: 0,
          max: 100,
          default: 60
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения эффекта
        return imageData;
      }
    });
    
    // Эффект: Зернистость
    this._registerEffect('grain', {
      name: 'Grain',
      description: 'Apply film grain effect to image',
      category: 'Effects',
      params: [
        {
          id: 'amount',
          name: 'Amount',
          type: 'range',
          min: 0,
          max: 100,
          default: 30
        },
        {
          id: 'size',
          name: 'Size',
          type: 'range',
          min: 0,
          max: 100,
          default: 50
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения эффекта
        return imageData;
      }
    });
    
    // Эффект: Комикс
    this._registerEffect('comic', {
      name: 'Comic',
      description: 'Apply comic effect to image',
      category: 'Artistic',
      params: [
        {
          id: 'strength',
          name: 'Strength',
          type: 'range',
          min: 0,
          max: 100,
          default: 75
        },
        {
          id: 'edges',
          name: 'Edge Strength',
          type: 'range',
          min: 0,
          max: 100,
          default: 50
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения эффекта
        return imageData;
      }
    });
    
    // Эффект: Акварель
    this._registerEffect('watercolor', {
      name: 'Watercolor',
      description: 'Apply watercolor effect to image',
      category: 'Artistic',
      params: [
        {
          id: 'strength',
          name: 'Strength',
          type: 'range',
          min: 0,
          max: 100,
          default: 60
        },
        {
          id: 'blur',
          name: 'Blur',
          type: 'range',
          min: 0,
          max: 100,
          default: 40
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения эффекта
        return imageData;
      }
    });
    
    // Эффект: Дуотон
    this._registerEffect('duotone', {
      name: 'Duotone',
      description: 'Apply duotone effect to image',
      category: 'Artistic',
      params: [
        {
          id: 'color1',
          name: 'Color 1',
          type: 'color',
          default: '#000000'
        },
        {
          id: 'color2',
          name: 'Color 2',
          type: 'color',
          default: '#ffffff'
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения эффекта
        return imageData;
      }
    });
  }
  
  /**
   * Регистрация улучшений
   * @private
   */
  _registerEnhancers() {
    // Улучшение: Автоконтраст
    this._registerEnhancer('auto-contrast', {
      name: 'Auto Contrast',
      description: 'Automatically adjust image contrast',
      category: 'Auto',
      params: [
        {
          id: 'strength',
          name: 'Strength',
          type: 'range',
          min: 0,
          max: 100,
          default: 75
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения улучшения
        return imageData;
      }
    });
    
    // Улучшение: Автояркость
    this._registerEnhancer('auto-brightness', {
      name: 'Auto Brightness',
      description: 'Automatically adjust image brightness',
      category: 'Auto',
      params: [
        {
          id: 'strength',
          name: 'Strength',
          type: 'range',
          min: 0,
          max: 100,
          default: 75
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения улучшения
        return imageData;
      }
    });
    
    // Улучшение: Автоцвет
    this._registerEnhancer('auto-color', {
      name: 'Auto Color',
      description: 'Automatically adjust image colors',
      category: 'Auto',
      params: [
        {
          id: 'strength',
          name: 'Strength',
          type: 'range',
          min: 0,
          max: 100,
          default: 75
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения улучшения
        return imageData;
      }
    });
    
    // Улучшение: Автоуровни
    this._registerEnhancer('auto-levels', {
      name: 'Auto Levels',
      description: 'Automatically adjust image levels',
      category: 'Auto',
      params: [
        {
          id: 'strength',
          name: 'Strength',
          type: 'range',
          min: 0,
          max: 100,
          default: 75
        }
      ],
      apply: async (imageData, params) => {
        // В реальном приложении здесь будет логика применения улучшения
        return imageData;
      }
    });
  }
  
  /**
   * Регистрация фильтра
   * @param {string} id - Идентификатор фильтра
   * @param {Object} filter - Объект фильтра
   * @private
   */
  _registerFilter(id, filter) {
    this.filters.set(id, filter);
    
    // Регистрация фильтра в API изображений
    if (this._context.image && typeof this._context.image.registerFilter === 'function') {
      this._context.image.registerFilter(id, filter.apply, {
        name: filter.name,
        description: filter.description,
        category: filter.category,
        params: filter.params
      });
    }
  }
  
  /**
   * Регистрация эффекта
   * @param {string} id - Идентификатор эффекта
   * @param {Object} effect - Объект эффекта
   * @private
   */
  _registerEffect(id, effect) {
    this.effects.set(id, effect);
    
    // Регистрация эффекта в API изображений, если метод доступен
    if (this._context.image && typeof this._context.image.registerEffect === 'function') {
      this._context.image.registerEffect(id, effect.apply, {
        name: effect.name,
        description: effect.description,
        category: effect.category,
        params: effect.params
      });
    }
  }
  
  /**
   * Регистрация улучшения
   * @param {string} id - Идентификатор улучшения
   * @param {Object} enhancer - Объект улучшения
   * @private
   */
  _registerEnhancer(id, enhancer) {
    this.enhancers.set(id, enhancer);
    
    // Регистрация улучшения в API изображений, если метод доступен
    if (this._context.image && typeof this._context.image.registerEnhancer === 'function') {
      this._context.image.registerEnhancer(id, enhancer.apply, {
        name: enhancer.name,
        description: enhancer.description,
        category: enhancer.category,
        params: enhancer.params
      });
    }
  }
  
  /**
   * Регистрация пунктов меню
   * @private
   */
  _registerMenuItems() {
    // Регистрация пункта меню для открытия панели фильтров
    this._context.ui.registerMenuItem('image', 'image.filters', {
      title: 'Image Filters',
      shortcut: 'Ctrl+Shift+F',
      order: 100
    });
    
    // Регистрация пункта меню для сброса фильтров
    this._context.ui.registerMenuItem('image', 'image.resetFilters', {
      title: 'Reset Filters',
      order: 110
    });
  }
  
  /**
   * Регистрация панели фильтров
   * @private
   */
  _registerFilterPanel() {
    // Регистрация панели фильтров
    this._context.ui.registerPanel('image-filters', (container) => {
      // В реальном приложении здесь будет рендеринг панели фильтров
      return {
        update: (data) => {
          // Обновление панели при изменении данных
        },
        dispose: () => {
          // Очистка ресурсов при удалении панели
        }
      };
    }, {
      title: 'Image Filters',
      icon: 'filter',
      position: 'right',
      width: 300
    });
  }
  
  /**
   * Применение фильтра к изображению
   * @param {string} imageId - Идентификатор изображения
   * @param {string} filterId - Идентификатор фильтра
   * @param {Object} options - Опции фильтра
   * @returns {Promise<Object>} - Результат применения фильтра
   */
  async _applyFilter(imageId, filterId, options = {}) {
    this._context.log.info(`Applying filter ${filterId} to image ${imageId}`);
    
    try {
      // Проверка наличия фильтра
      if (!this.filters.has(filterId)) {
        throw new Error(`Filter ${filterId} not found`);
      }
      
      // Проверка разрешений
      if (!this._context.checkPermission('read_image') || !this._context.checkPermission('modify_image')) {
        const granted = await this._requestRequiredPermissions(['read_image', 'modify_image']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение изображения
      const image = await this._context.image.getImage(imageId);
      
      // Получение фильтра
      const filter = this.filters.get(filterId);
      
      // Применение фильтра
      const result = await this._context.image.applyFilter(imageId, filterId, options);
      
      this._context.log.info(`Filter ${filterId} applied to image ${imageId} successfully`);
      
      // Показать уведомление
      await this._context.ui.showNotification(`Filter ${filter.name} applied successfully`, {
        type: 'success',
        duration: 3000
      });
      
      return result;
    } catch (error) {
      this._context.log.error(`Error applying filter ${filterId} to image ${imageId}:`, error);
      
      // Показать уведомление об ошибке
      await this._context.ui.showNotification(`Error applying filter: ${error.message}`, {
        type: 'error',
        duration: 5000
      });
      
      throw error;
    }
  }
  
  /**
   * Применение эффекта к изображению
   * @param {string} imageId - Идентификатор изображения
   * @param {string} effectId - Идентификатор эффекта
   * @param {Object} options - Опции эффекта
   * @returns {Promise<Object>} - Результат применения эффекта
   */
  async _applyEffect(imageId, effectId, options = {}) {
    this._context.log.info(`Applying effect ${effectId} to image ${imageId}`);
    
    try {
      // Проверка наличия эффекта
      if (!this.effects.has(effectId)) {
        throw new Error(`Effect ${effectId} not found`);
      }
      
      // Проверка разрешений
      if (!this._context.checkPermission('read_image') || !this._context.checkPermission('modify_image')) {
        const granted = await this._requestRequiredPermissions(['read_image', 'modify_image']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение изображения
      const image = await this._context.image.getImage(imageId);
      
      // Получение эффекта
      const effect = this.effects.get(effectId);
      
      // Применение эффекта (используем apply напрямую, если API недоступен)
      let result;
      if (this._context.image && typeof this._context.image.applyEffect === 'function') {
        result = await this._context.image.applyEffect(imageId, effectId, options);
      } else {
        result = await effect.apply(image, options);
      }
      
      this._context.log.info(`Effect ${effectId} applied to image ${imageId} successfully`);
      
      // Показать уведомление
      await this._context.ui.showNotification(`Effect ${effect.name} applied successfully`, {
        type: 'success',
        duration: 3000
      });
      
      return result;
    } catch (error) {
      this._context.log.error(`Error applying effect ${effectId} to image ${imageId}:`, error);
      
      // Показать уведомление об ошибке
      await this._context.ui.showNotification(`Error applying effect: ${error.message}`, {
        type: 'error',
        duration: 5000
      });
      
      throw error;
    }
  }
  
  /**
   * Применение улучшения к изображению
   * @param {string} imageId - Идентификатор изображения
   * @param {string} enhancerId - Идентификатор улучшения
   * @param {Object} options - Опции улучшения
   * @returns {Promise<Object>} - Результат применения улучшения
   */
  async _applyEnhancer(imageId, enhancerId, options = {}) {
    this._context.log.info(`Applying enhancer ${enhancerId} to image ${imageId}`);
    
    try {
      // Проверка наличия улучшения
      if (!this.enhancers.has(enhancerId)) {
        throw new Error(`Enhancer ${enhancerId} not found`);
      }
      
      // Проверка разрешений
      if (!this._context.checkPermission('read_image') || !this._context.checkPermission('modify_image')) {
        const granted = await this._requestRequiredPermissions(['read_image', 'modify_image']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение изображения
      const image = await this._context.image.getImage(imageId);
      
      // Получение улучшения
      const enhancer = this.enhancers.get(enhancerId);
      
      // Применение улучшения (используем apply напрямую, если API недоступен)
      let result;
      if (this._context.image && typeof this._context.image.applyEnhancer === 'function') {
        result = await this._context.image.applyEnhancer(imageId, enhancerId, options);
      } else {
        result = await enhancer.apply(image, options);
      }
      
      this._context.log.info(`Enhancer ${enhancerId} applied to image ${imageId} successfully`);
      
      // Показать уведомление
      await this._context.ui.showNotification(`Enhancer ${enhancer.name} applied successfully`, {
        type: 'success',
        duration: 3000
      });
      
      return result;
    } catch (error) {
      this._context.log.error(`Error applying enhancer ${enhancerId} to image ${imageId}:`, error);
      
      // Показать уведомление об ошибке
      await this._context.ui.showNotification(`Error applying enhancer: ${error.message}`, {
        type: 'error',
        duration: 5000
      });
      
      throw error;
    }
  }
  
  /**
   * Получение списка доступных фильтров
   * @returns {Array<Object>} - Список фильтров
   */
  _getAvailableFilters() {
    const result = [];
    
    for (const [id, filter] of this.filters.entries()) {
      result.push({
        id,
        name: filter.name,
        description: filter.description,
        category: filter.category,
        params: filter.params
      });
    }
    
    // Группировка по категориям
    const categorized = {};
    for (const filter of result) {
      if (!categorized[filter.category]) {
        categorized[filter.category] = [];
      }
      categorized[filter.category].push(filter);
    }
    
    return categorized;
  }
  
  /**
   * Предпросмотр фильтра
   * @param {string} imageId - Идентификатор изображения
   * @param {string} filterId - Идентификатор фильтра
   * @param {Object} options - Опции фильтра
   * @returns {Promise<Object>} - Результат предпросмотра
   */
  async _previewFilter(imageId, filterId, options = {}) {
    this._context.log.info(`Previewing filter ${filterId} on image ${imageId}`);
    
    try {
      // Проверка наличия фильтра
      if (!this.filters.has(filterId)) {
        throw new Error(`Filter ${filterId} not found`);
      }
      
      // Проверка разрешений
      if (!this._context.checkPermission('read_image')) {
        const granted = await this._requestRequiredPermissions(['read_image']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение изображения
      const image = await this._context.image.getImage(imageId);
      
      // Получение фильтра
      const filter = this.filters.get(filterId);
      
      // Применение фильтра для предпросмотра
      // В реальном приложении здесь будет создание временной копии изображения
      const previewResult = {
        id: `preview-${imageId}`,
        data: {}
      };
      
      return previewResult;
    } catch (error) {
      this._context.log.error(`Error previewing filter ${filterId} on image ${imageId}:`, error);
      throw error;
    }
  }
  
  /**
   * Сброс всех фильтров
   * @param {string} imageId - Идентификатор изображения
   * @returns {Promise<Object>} - Результат сброса
   */
  async _resetFilters(imageId) {
    this._context.log.info(`Resetting filters on image ${imageId}`);
    
    try {
      // Проверка разрешений
      if (!this._context.checkPermission('modify_image')) {
        const granted = await this._requestRequiredPermissions(['modify_image']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // В реальном приложении здесь будет сброс фильтров
      const result = {
        id: imageId,
        data: {}
      };
      
      // Показать уведомление
      await this._context.ui.showNotification(`Filters reset successfully`, {
        type: 'success',
        duration: 3000
      });
      
      return result;
    } catch (error) {
      this._context.log.error(`Error resetting filters on image ${imageId}:`, error);
      
      // Показать уведомление об ошибке
      await this._context.ui.showNotification(`Error resetting filters: ${error.message}`, {
        type: 'error',
        duration: 5000
      });
      
      throw error;
    }
  }
  
  /**
   * Пакетная обработка изображений
   * @param {Array<string>} imageIds - Идентификаторы изображений
   * @param {string} filterId - Идентификатор фильтра
   * @param {Object} options - Опции фильтра
   * @returns {Promise<Array<Object>>} - Результаты применения фильтра
   */
  async _batchProcess(imageIds, filterId, options = {}) {
    this._context.log.info(`Batch processing ${imageIds.length} images with filter ${filterId}`);
    
    try {
      // Проверка наличия фильтра
      if (!this.filters.has(filterId)) {
        throw new Error(`Filter ${filterId} not found`);
      }
      
      // Проверка разрешений
      if (!this._context.checkPermission('read_image') || !this._context.checkPermission('modify_image')) {
        const granted = await this._requestRequiredPermissions(['read_image', 'modify_image']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Применение фильтра к каждому изображению
      const results = [];
      for (const imageId of imageIds) {
        try {
          const result = await this._applyFilter(imageId, filterId, options);
          results.push({ imageId, success: true, result });
        } catch (error) {
          results.push({ imageId, success: false, error: error.message });
        }
      }
      
      // Показать уведомление
      const successCount = results.filter(r => r.success).length;
      await this._context.ui.showNotification(`Filter applied to ${successCount} of ${imageIds.length} images`, {
        type: successCount === imageIds.length ? 'success' : 'warning',
        duration: 3000
      });
      
      return results;
    } catch (error) {
      this._context.log.error(`Error in batch processing:`, error);
      
      // Показать уведомление об ошибке
      await this._context.ui.showNotification(`Error in batch processing: ${error.message}`, {
        type: 'error',
        duration: 5000
      });
      
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
      case 'image.applyFilter':
      case 'applyFilter':
        return await this._applyFilter(...args);
      case 'image.getFilters':
      case 'getFilters':
        return this._getAvailableFilters();
      case 'image.previewFilter':
      case 'previewFilter':
        return await this._previewFilter(...args);
      case 'image.resetFilters':
      case 'resetFilters':
        return await this._resetFilters(...args);
      case 'image.batchProcess':
      case 'batchProcess':
        return await this._batchProcess(...args);
      case 'image.applyEffect':
      case 'applyEffect':
        return await this._applyEffect(...args);
      case 'image.applyEnhancer':
      case 'applyEnhancer':
        return await this._applyEnhancer(...args);
      default:
        throw new Error(`Command ${command} not implemented in plugin ${this.id}`);
    }
  }
}

// Экспорт класса
module.exports = ImageFilterPlugin;
