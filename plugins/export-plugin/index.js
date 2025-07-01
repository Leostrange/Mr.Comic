/**
 * ExportPlugin - Плагин для экспорта в различные форматы
 * 
 * Расширенная версия плагина для экспорта с поддержкой
 * различных форматов и настраиваемыми опциями.
 */

// Импорт базового класса плагина
const MrComicPlugin = require('../../core/MrComicPlugin');

class ExportPlugin extends MrComicPlugin {
  /**
   * Конструктор плагина
   */
  constructor() {
    super({
      id: 'export-plugin',
      name: 'Export Plugin',
      version: '1.0.0',
      description: 'Export comics to various formats',
      author: 'Mr.Comic Team'
    });
    
    // Поддерживаемые форматы экспорта
    this.supportedFormats = new Map();
  }
  
  /**
   * Метод активации плагина
   * @param {PluginContext} context - Контекст плагина
   * @returns {Promise<void>}
   */
  async activate(context) {
    await super.activate(context);
    
    this._context.log.info('Activating Export Plugin');
    
    // Регистрация команд экспорта
    this._registerCommands();
    
    // Регистрация форматов экспорта
    this._registerExportFormats();
    
    // Регистрация пунктов меню
    this._registerMenuItems();
    
    this._context.log.info('Export Plugin activated successfully');
  }
  
  /**
   * Метод деактивации плагина
   * @returns {Promise<void>}
   */
  async deactivate() {
    this._context.log.info('Deactivating Export Plugin');
    
    // Очистка ресурсов выполняется автоматически через context.subscriptions
    
    await super.deactivate();
  }
  
  /**
   * Регистрация команд экспорта
   * @private
   */
  _registerCommands() {
    // Команда экспорта в PDF
    this._context.registerCommand('export.pdf', async (projectId, options) => {
      return await this._exportToPdf(projectId, options);
    }, {
      title: 'Export to PDF',
      description: 'Export project to PDF format',
      category: 'Export'
    });
    
    // Команда экспорта в PNG
    this._context.registerCommand('export.png', async (projectId, options) => {
      return await this._exportToImage(projectId, 'png', options);
    }, {
      title: 'Export to PNG',
      description: 'Export project to PNG format',
      category: 'Export'
    });
    
    // Команда экспорта в JPEG
    this._context.registerCommand('export.jpeg', async (projectId, options) => {
      return await this._exportToImage(projectId, 'jpeg', options);
    }, {
      title: 'Export to JPEG',
      description: 'Export project to JPEG format',
      category: 'Export'
    });
    
    // Команда экспорта в TXT
    this._context.registerCommand('export.txt', async (projectId, options) => {
      return await this._exportToText(projectId, 'txt', options);
    }, {
      title: 'Export to TXT',
      description: 'Export project to plain text format',
      category: 'Export'
    });
    
    // Команда экспорта в DOCX
    this._context.registerCommand('export.docx', async (projectId, options) => {
      return await this._exportToText(projectId, 'docx', options);
    }, {
      title: 'Export to DOCX',
      description: 'Export project to Microsoft Word format',
      category: 'Export'
    });
    
    // Команда экспорта в HTML
    this._context.registerCommand('export.html', async (projectId, options) => {
      return await this._exportToHtml(projectId, options);
    }, {
      title: 'Export to HTML',
      description: 'Export project to HTML format',
      category: 'Export'
    });
    
    // Команда экспорта в ZIP
    this._context.registerCommand('export.zip', async (projectId, options) => {
      return await this._exportToZip(projectId, options);
    }, {
      title: 'Export to ZIP',
      description: 'Export project to ZIP archive',
      category: 'Export'
    });
  }
  
  /**
   * Регистрация форматов экспорта
   * @private
   */
  _registerExportFormats() {
    // Регистрация формата PDF
    this.supportedFormats.set('pdf', {
      name: 'PDF',
      description: 'Portable Document Format',
      extension: '.pdf',
      mimeType: 'application/pdf',
      exportFunc: this._exportToPdf.bind(this)
    });
    
    // Регистрация формата PNG
    this.supportedFormats.set('png', {
      name: 'PNG',
      description: 'Portable Network Graphics',
      extension: '.png',
      mimeType: 'image/png',
      exportFunc: (projectId, options) => this._exportToImage(projectId, 'png', options)
    });
    
    // Регистрация формата JPEG
    this.supportedFormats.set('jpeg', {
      name: 'JPEG',
      description: 'Joint Photographic Experts Group',
      extension: '.jpg',
      mimeType: 'image/jpeg',
      exportFunc: (projectId, options) => this._exportToImage(projectId, 'jpeg', options)
    });
    
    // Регистрация формата TXT
    this.supportedFormats.set('txt', {
      name: 'TXT',
      description: 'Plain Text',
      extension: '.txt',
      mimeType: 'text/plain',
      exportFunc: (projectId, options) => this._exportToText(projectId, 'txt', options)
    });
    
    // Регистрация формата DOCX
    this.supportedFormats.set('docx', {
      name: 'DOCX',
      description: 'Microsoft Word Document',
      extension: '.docx',
      mimeType: 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
      exportFunc: (projectId, options) => this._exportToText(projectId, 'docx', options)
    });
    
    // Регистрация формата HTML
    this.supportedFormats.set('html', {
      name: 'HTML',
      description: 'HyperText Markup Language',
      extension: '.html',
      mimeType: 'text/html',
      exportFunc: this._exportToHtml.bind(this)
    });
    
    // Регистрация формата ZIP
    this.supportedFormats.set('zip', {
      name: 'ZIP',
      description: 'ZIP Archive',
      extension: '.zip',
      mimeType: 'application/zip',
      exportFunc: this._exportToZip.bind(this)
    });
    
    // Регистрация форматов в API экспорта
    for (const [formatId, format] of this.supportedFormats.entries()) {
      this._context.export.registerExportFormat(formatId, format.exportFunc, {
        name: format.name,
        description: format.description,
        extension: format.extension,
        mimeType: format.mimeType
      });
    }
  }
  
  /**
   * Регистрация пунктов меню
   * @private
   */
  _registerMenuItems() {
    // Регистрация пункта меню для экспорта в PDF
    this._context.ui.registerMenuItem('file', 'export.pdf', {
      title: 'Export to PDF',
      shortcut: 'Ctrl+Shift+P',
      order: 100
    });
    
    // Регистрация пункта меню для экспорта в PNG
    this._context.ui.registerMenuItem('file', 'export.png', {
      title: 'Export to PNG',
      order: 110
    });
    
    // Регистрация пункта меню для экспорта в JPEG
    this._context.ui.registerMenuItem('file', 'export.jpeg', {
      title: 'Export to JPEG',
      order: 120
    });
    
    // Регистрация пункта меню для экспорта в TXT
    this._context.ui.registerMenuItem('file', 'export.txt', {
      title: 'Export to TXT',
      order: 130
    });
    
    // Регистрация пункта меню для экспорта в DOCX
    this._context.ui.registerMenuItem('file', 'export.docx', {
      title: 'Export to DOCX',
      order: 140
    });
    
    // Регистрация пункта меню для экспорта в HTML
    this._context.ui.registerMenuItem('file', 'export.html', {
      title: 'Export to HTML',
      order: 150
    });
    
    // Регистрация пункта меню для экспорта в ZIP
    this._context.ui.registerMenuItem('file', 'export.zip', {
      title: 'Export to ZIP',
      order: 160
    });
  }
  
  /**
   * Экспорт в PDF
   * @param {string} projectId - Идентификатор проекта
   * @param {Object} options - Опции экспорта
   * @returns {Promise<Object>} - Результат экспорта
   */
  async _exportToPdf(projectId, options = {}) {
    this._context.log.info(`Exporting project ${projectId} to PDF`);
    
    try {
      // Проверка разрешений
      if (!this._context.checkPermission('read_file') || !this._context.checkPermission('write_file')) {
        const granted = await this._requestRequiredPermissions(['read_file', 'write_file']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение данных проекта
      const projectData = await this._getProjectData(projectId);
      
      // Настройки экспорта по умолчанию
      const exportOptions = {
        pageSize: 'A4',
        orientation: 'portrait',
        quality: 'high',
        includeMetadata: true,
        ...options
      };
      
      // Экспорт в PDF
      const result = await this._context.export.exportToPdf(projectId, exportOptions);
      
      this._context.log.info(`Project ${projectId} exported to PDF successfully`);
      
      // Показать уведомление
      await this._context.ui.showNotification(`Project exported to PDF successfully`, {
        type: 'success',
        duration: 3000
      });
      
      return result;
    } catch (error) {
      this._context.log.error(`Error exporting project ${projectId} to PDF:`, error);
      
      // Показать уведомление об ошибке
      await this._context.ui.showNotification(`Error exporting to PDF: ${error.message}`, {
        type: 'error',
        duration: 5000
      });
      
      throw error;
    }
  }
  
  /**
   * Экспорт в изображение
   * @param {string} projectId - Идентификатор проекта
   * @param {string} format - Формат изображения (png, jpeg)
   * @param {Object} options - Опции экспорта
   * @returns {Promise<Object>} - Результат экспорта
   */
  async _exportToImage(projectId, format, options = {}) {
    this._context.log.info(`Exporting project ${projectId} to ${format.toUpperCase()}`);
    
    try {
      // Проверка разрешений
      if (!this._context.checkPermission('read_file') || !this._context.checkPermission('write_file')) {
        const granted = await this._requestRequiredPermissions(['read_file', 'write_file']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение данных проекта
      const projectData = await this._getProjectData(projectId);
      
      // Настройки экспорта по умолчанию
      const exportOptions = {
        quality: format === 'jpeg' ? 90 : 100,
        resolution: 300,
        includeMetadata: true,
        ...options
      };
      
      // Экспорт в изображение
      const result = await this._context.export.exportToImage(projectId, format, exportOptions);
      
      this._context.log.info(`Project ${projectId} exported to ${format.toUpperCase()} successfully`);
      
      // Показать уведомление
      await this._context.ui.showNotification(`Project exported to ${format.toUpperCase()} successfully`, {
        type: 'success',
        duration: 3000
      });
      
      return result;
    } catch (error) {
      this._context.log.error(`Error exporting project ${projectId} to ${format.toUpperCase()}:`, error);
      
      // Показать уведомление об ошибке
      await this._context.ui.showNotification(`Error exporting to ${format.toUpperCase()}: ${error.message}`, {
        type: 'error',
        duration: 5000
      });
      
      throw error;
    }
  }
  
  /**
   * Экспорт в текстовый формат
   * @param {string} projectId - Идентификатор проекта
   * @param {string} format - Формат текста (txt, docx)
   * @param {Object} options - Опции экспорта
   * @returns {Promise<Object>} - Результат экспорта
   */
  async _exportToText(projectId, format, options = {}) {
    this._context.log.info(`Exporting project ${projectId} to ${format.toUpperCase()}`);
    
    try {
      // Проверка разрешений
      if (!this._context.checkPermission('read_file') || !this._context.checkPermission('write_file')) {
        const granted = await this._requestRequiredPermissions(['read_file', 'write_file']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение данных проекта
      const projectData = await this._getProjectData(projectId);
      
      // Настройки экспорта по умолчанию
      const exportOptions = {
        includeMetadata: true,
        extractText: true,
        ...options
      };
      
      // Экспорт в текстовый формат
      const result = await this._context.export.exportToText(projectId, format, exportOptions);
      
      this._context.log.info(`Project ${projectId} exported to ${format.toUpperCase()} successfully`);
      
      // Показать уведомление
      await this._context.ui.showNotification(`Project exported to ${format.toUpperCase()} successfully`, {
        type: 'success',
        duration: 3000
      });
      
      return result;
    } catch (error) {
      this._context.log.error(`Error exporting project ${projectId} to ${format.toUpperCase()}:`, error);
      
      // Показать уведомление об ошибке
      await this._context.ui.showNotification(`Error exporting to ${format.toUpperCase()}: ${error.message}`, {
        type: 'error',
        duration: 5000
      });
      
      throw error;
    }
  }
  
  /**
   * Экспорт в HTML
   * @param {string} projectId - Идентификатор проекта
   * @param {Object} options - Опции экспорта
   * @returns {Promise<Object>} - Результат экспорта
   */
  async _exportToHtml(projectId, options = {}) {
    this._context.log.info(`Exporting project ${projectId} to HTML`);
    
    try {
      // Проверка разрешений
      if (!this._context.checkPermission('read_file') || !this._context.checkPermission('write_file')) {
        const granted = await this._requestRequiredPermissions(['read_file', 'write_file']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение данных проекта
      const projectData = await this._getProjectData(projectId);
      
      // Настройки экспорта по умолчанию
      const exportOptions = {
        includeMetadata: true,
        includeStyles: true,
        responsive: true,
        ...options
      };
      
      // Экспорт в HTML
      // В реальном приложении здесь будет вызов API экспорта
      const result = {
        success: true,
        path: `/exports/${projectId}/export.html`,
        format: 'html'
      };
      
      this._context.log.info(`Project ${projectId} exported to HTML successfully`);
      
      // Показать уведомление
      await this._context.ui.showNotification(`Project exported to HTML successfully`, {
        type: 'success',
        duration: 3000
      });
      
      return result;
    } catch (error) {
      this._context.log.error(`Error exporting project ${projectId} to HTML:`, error);
      
      // Показать уведомление об ошибке
      await this._context.ui.showNotification(`Error exporting to HTML: ${error.message}`, {
        type: 'error',
        duration: 5000
      });
      
      throw error;
    }
  }
  
  /**
   * Экспорт в ZIP
   * @param {string} projectId - Идентификатор проекта
   * @param {Object} options - Опции экспорта
   * @returns {Promise<Object>} - Результат экспорта
   */
  async _exportToZip(projectId, options = {}) {
    this._context.log.info(`Exporting project ${projectId} to ZIP`);
    
    try {
      // Проверка разрешений
      if (!this._context.checkPermission('read_file') || !this._context.checkPermission('write_file')) {
        const granted = await this._requestRequiredPermissions(['read_file', 'write_file']);
        if (!granted) {
          throw new Error('Required permissions not granted');
        }
      }
      
      // Получение данных проекта
      const projectData = await this._getProjectData(projectId);
      
      // Настройки экспорта по умолчанию
      const exportOptions = {
        includeMetadata: true,
        includeOriginalFiles: true,
        includeExportedFiles: false,
        ...options
      };
      
      // Экспорт в ZIP
      // В реальном приложении здесь будет вызов API экспорта
      const result = {
        success: true,
        path: `/exports/${projectId}/export.zip`,
        format: 'zip'
      };
      
      this._context.log.info(`Project ${projectId} exported to ZIP successfully`);
      
      // Показать уведомление
      await this._context.ui.showNotification(`Project exported to ZIP successfully`, {
        type: 'success',
        duration: 3000
      });
      
      return result;
    } catch (error) {
      this._context.log.error(`Error exporting project ${projectId} to ZIP:`, error);
      
      // Показать уведомление об ошибке
      await this._context.ui.showNotification(`Error exporting to ZIP: ${error.message}`, {
        type: 'error',
        duration: 5000
      });
      
      throw error;
    }
  }
  
  /**
   * Получение данных проекта
   * @param {string} projectId - Идентификатор проекта
   * @returns {Promise<Object>} - Данные проекта
   */
  async _getProjectData(projectId) {
    // В реальном приложении здесь будет получение данных проекта
    return {
      id: projectId,
      name: `Project ${projectId}`,
      pages: [
        { id: 'page1', content: 'Page 1 content' },
        { id: 'page2', content: 'Page 2 content' }
      ]
    };
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
      case 'export.pdf':
        return await this._exportToPdf(...args);
      case 'export.png':
        return await this._exportToImage(args[0], 'png', args[1]);
      case 'export.jpeg':
        return await this._exportToImage(args[0], 'jpeg', args[1]);
      case 'export.txt':
        return await this._exportToText(args[0], 'txt', args[1]);
      case 'export.docx':
        return await this._exportToText(args[0], 'docx', args[1]);
      case 'export.html':
        return await this._exportToHtml(...args);
      case 'export.zip':
        return await this._exportToZip(...args);
      default:
        throw new Error(`Command ${command} not implemented in plugin ${this.id}`);
    }
  }
}

// Экспорт класса
module.exports = ExportPlugin;
