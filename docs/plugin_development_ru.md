# Руководство по разработке плагинов для Mr.Comic

## Содержание

1. [Введение](#введение)
2. [Архитектура системы плагинов](#архитектура-системы-плагинов)
3. [Создание плагина](#создание-плагина)
4. [API плагинов](#api-плагинов)
5. [Точки расширения](#точки-расширения)
6. [Лучшие практики](#лучшие-практики)
7. [Отладка плагинов](#отладка-плагинов)
8. [Публикация плагинов](#публикация-плагинов)

## Введение

Mr.Comic предоставляет мощную систему плагинов, которая позволяет расширять функциональность приложения. Это руководство поможет вам создать собственные плагины для Mr.Comic.

## Архитектура системы плагинов

Система плагинов Mr.Comic построена на следующих принципах:

1. **Модульность** - каждый плагин является независимым модулем с четко определенным интерфейсом.
2. **Расширяемость** - плагины могут расширять различные аспекты приложения через точки расширения.
3. **Изоляция** - плагины работают в изолированной среде для обеспечения стабильности основного приложения.
4. **Управляемость** - пользователи могут включать, отключать и настраивать плагины.

### Основные компоненты

- **PluginManager** - управляет жизненным циклом плагинов (установка, удаление, включение, отключение).
- **PluginAPI** - предоставляет API для взаимодействия плагинов с приложением.
- **PluginExtensionManager** - управляет точками расширения и расширениями.
- **PluginEditorIntegration** - обеспечивает интеграцию плагинов с редактором.

## Создание плагина

### Структура плагина

Плагин для Mr.Comic представляет собой ZIP-архив с расширением `.mrcp` (Mr.Comic Plugin) и следующей структурой:

```
plugin-name.mrcp/
├── manifest.json       # Манифест плагина
├── main.js             # Основной код плагина
├── ui/                 # Компоненты пользовательского интерфейса
│   ├── views/          # Представления
│   ├── components/     # Компоненты
│   └── styles/         # Стили
├── assets/             # Ресурсы (изображения, шрифты и т.д.)
├── locales/            # Локализации
│   ├── en.json         # Английский
│   ├── ru.json         # Русский
│   └── ...             # Другие языки
└── README.md           # Документация плагина
```

### Манифест плагина

Файл `manifest.json` содержит метаданные плагина:

```json
{
  "id": "com.example.plugin-name",
  "name": "Plugin Name",
  "version": "1.0.0",
  "description": "Description of the plugin",
  "author": "Your Name",
  "email": "your.email@example.com",
  "website": "https://example.com",
  "license": "MIT",
  "main": "main.js",
  "minAppVersion": "1.0.0",
  "maxAppVersion": "2.0.0",
  "permissions": [
    "editor",
    "ocr",
    "translation",
    "filesystem"
  ],
  "dependencies": {
    "com.example.another-plugin": "^1.0.0"
  }
}
```

### Основной код плагина

Файл `main.js` является точкой входа плагина:

```javascript
/**
 * Пример плагина для Mr.Comic
 */
class ExamplePlugin {
  /**
   * Конструктор плагина
   * @param {PluginAPI} api - API плагина
   */
  constructor(api) {
    this.api = api;
    this.logger = api.getLogger();
    this.settings = api.getSettings() || {};
  }

  /**
   * Инициализация плагина
   * @returns {Boolean} - Результат инициализации
   */
  async initialize() {
    this.logger.info('Initializing Example Plugin');
    
    // Регистрация расширений
    this.registerExtensions();
    
    // Регистрация обработчиков событий
    this.registerEventHandlers();
    
    // Регистрация команд
    this.registerCommands();
    
    this.logger.info('Example Plugin initialized successfully');
    return true;
  }

  /**
   * Регистрация расширений
   */
  registerExtensions() {
    // Регистрация инструмента редактора
    this.api.registerExtension('editor.tools', {
      id: 'example-tool',
      name: 'Example Tool',
      icon: 'example-icon',
      action: () => this.onToolAction()
    });
    
    // Регистрация пункта меню
    this.api.registerExtension('ui.menu', {
      id: 'example-menu-item',
      path: 'Tools/Example',
      label: 'Example Action',
      action: () => this.onMenuAction()
    });
  }

  /**
   * Регистрация обработчиков событий
   */
  registerEventHandlers() {
    // Обработчик события открытия проекта
    this.api.registerEventHandler('project.opened', (project) => {
      this.logger.info('Project opened:', project.name);
    });
    
    // Обработчик события сохранения проекта
    this.api.registerEventHandler('project.saved', (project) => {
      this.logger.info('Project saved:', project.name);
    });
  }

  /**
   * Регистрация команд
   */
  registerCommands() {
    this.api.registerCommand('example.command', {
      label: 'Example Command',
      shortcut: 'Ctrl+Alt+E',
      action: () => this.onCommandAction()
    });
  }

  /**
   * Обработчик действия инструмента
   */
  onToolAction() {
    this.logger.info('Tool action triggered');
    this.api.showNotification('Example tool activated');
  }

  /**
   * Обработчик действия меню
   */
  onMenuAction() {
    this.logger.info('Menu action triggered');
    this.api.showDialog('example.dialog', {
      title: 'Example Dialog',
      message: 'This is an example dialog',
      buttons: ['OK', 'Cancel']
    }).then(result => {
      this.logger.info('Dialog result:', result);
    });
  }

  /**
   * Обработчик команды
   */
  onCommandAction() {
    this.logger.info('Command action triggered');
    // Пример использования API редактора
    const editorAPI = this.api.getEditorAPI();
    const activePage = editorAPI.getActivePage();
    
    if (activePage) {
      const textBlocks = editorAPI.getTextBlocks(activePage);
      this.logger.info(`Active page has ${textBlocks.length} text blocks`);
    }
  }

  /**
   * Освобождение ресурсов плагина
   * @returns {Boolean} - Результат освобождения ресурсов
   */
  dispose() {
    this.logger.info('Disposing Example Plugin');
    // Освобождение ресурсов
    return true;
  }
}

/**
 * Фабрика плагина
 * @param {PluginAPI} api - API плагина
 * @returns {ExamplePlugin} - Экземпляр плагина
 */
function createPlugin(api) {
  return new ExamplePlugin(api);
}

// Экспорт фабрики плагина
module.exports = createPlugin;
```

## API плагинов

Плагины взаимодействуют с приложением через объект `PluginAPI`, который предоставляется при инициализации плагина.

### Основные методы PluginAPI

```javascript
/**
 * Получает API редактора
 * @returns {Object} - API редактора
 */
getEditorAPI();

/**
 * Получает API OCR
 * @returns {Object} - API OCR
 */
getOCRAPI();

/**
 * Получает API перевода
 * @returns {Object} - API перевода
 */
getTranslationAPI();

/**
 * Регистрирует расширение
 * @param {String} extensionPointId - Идентификатор точки расширения
 * @param {Object} extension - Расширение
 * @returns {String} - Идентификатор расширения
 */
registerExtension(extensionPointId, extension);

/**
 * Регистрирует обработчик события
 * @param {String} eventType - Тип события
 * @param {Function} handler - Обработчик события
 * @returns {String} - Идентификатор обработчика
 */
registerEventHandler(eventType, handler);

/**
 * Регистрирует команду
 * @param {String} commandId - Идентификатор команды
 * @param {Object} commandDefinition - Определение команды
 * @returns {Boolean} - Результат операции
 */
registerCommand(commandId, commandDefinition);

/**
 * Показывает диалоговое окно
 * @param {String} dialogType - Тип диалога
 * @param {Object} options - Параметры диалога
 * @returns {Promise<*>} - Результат диалога
 */
showDialog(dialogType, options);

/**
 * Показывает уведомление
 * @param {String} message - Сообщение
 * @param {Object} options - Параметры уведомления
 * @returns {String} - Идентификатор уведомления
 */
showNotification(message, options);

/**
 * Получает логгер
 * @returns {Object} - Логгер
 */
getLogger();

/**
 * Получает настройки плагина
 * @returns {Object} - Настройки плагина
 */
getSettings();

/**
 * Сохраняет настройки плагина
 * @param {Object} settings - Настройки плагина
 * @returns {Boolean} - Результат операции
 */
saveSettings(settings);

/**
 * Получает путь к директории плагина
 * @returns {String} - Путь к директории плагина
 */
getPluginPath();

/**
 * Загружает ресурс плагина
 * @param {String} path - Относительный путь к ресурсу
 * @returns {Promise<*>} - Загруженный ресурс
 */
loadResource(path);
```

## Точки расширения

Mr.Comic предоставляет различные точки расширения, которые плагины могут использовать для расширения функциональности приложения.

### Основные точки расширения

#### editor.tools

Добавляет инструменты в панель инструментов редактора.

```javascript
api.registerExtension('editor.tools', {
  id: 'my-tool',
  name: 'My Tool',
  icon: 'my-tool-icon',
  action: () => {
    // Действие инструмента
  }
});
```

#### ui.menu

Добавляет пункты в меню приложения.

```javascript
api.registerExtension('ui.menu', {
  id: 'my-menu-item',
  path: 'Tools/My Plugin',
  label: 'My Action',
  shortcut: 'Ctrl+Alt+M',
  action: () => {
    // Действие меню
  }
});
```

#### ui.sidebar

Добавляет панели в боковую панель.

```javascript
api.registerExtension('ui.sidebar', {
  id: 'my-sidebar-panel',
  title: 'My Panel',
  icon: 'my-panel-icon',
  component: 'my-sidebar-component',
  position: 'right',
  order: 100
});
```

#### ui.contextMenu

Добавляет пункты в контекстное меню.

```javascript
api.registerExtension('ui.contextMenu', {
  id: 'my-context-menu-item',
  target: 'textBlock',
  label: 'My Action',
  action: (target) => {
    // Действие контекстного меню
  }
});
```

#### editor.textEffects

Добавляет эффекты для текстовых блоков.

```javascript
api.registerExtension('editor.textEffects', {
  id: 'my-text-effect',
  name: 'My Effect',
  apply: (textBlock, options) => {
    // Применение эффекта
    return modifiedTextBlock;
  }
});
```

#### ocr.preprocessors

Добавляет препроцессоры для OCR.

```javascript
api.registerExtension('ocr.preprocessors', {
  id: 'my-preprocessor',
  name: 'My Preprocessor',
  process: (image, options) => {
    // Обработка изображения
    return processedImage;
  }
});
```

#### translation.processors

Добавляет процессоры для перевода.

```javascript
api.registerExtension('translation.processors', {
  id: 'my-processor',
  name: 'My Processor',
  process: (text, sourceLang, targetLang, options) => {
    // Обработка текста
    return processedText;
  }
});
```

## Лучшие практики

### Производительность

1. **Избегайте блокирующих операций** - используйте асинхронные функции для длительных операций.
2. **Оптимизируйте использование памяти** - освобождайте ресурсы, когда они больше не нужны.
3. **Кэшируйте результаты** - избегайте повторных вычислений.

### Пользовательский интерфейс

1. **Следуйте стилю приложения** - используйте предоставляемые компоненты UI.
2. **Поддерживайте локализацию** - используйте систему локализации для текстов.
3. **Обеспечьте доступность** - следуйте принципам доступности.

### Обработка ошибок

1. **Обрабатывайте исключения** - не позволяйте ошибкам распространяться.
2. **Логируйте ошибки** - используйте предоставляемый логгер.
3. **Предоставляйте понятные сообщения об ошибках** - помогайте пользователям понять, что пошло не так.

### Совместимость

1. **Указывайте совместимые версии приложения** - используйте поля `minAppVersion` и `maxAppVersion` в манифесте.
2. **Проверяйте наличие API** - некоторые API могут быть доступны только в определенных версиях.
3. **Обеспечьте обратную совместимость** - поддерживайте старые версии вашего плагина.

## Отладка плагинов

### Режим разработки

Mr.Comic предоставляет режим разработки для плагинов, который можно включить в настройках приложения:

1. Откройте **Настройки** > **Плагины** > **Разработка**
2. Включите **Режим разработки**
3. Укажите путь к директории с плагином

В режиме разработки:
- Плагин загружается из указанной директории
- Изменения в файлах плагина применяются при перезагрузке плагина
- Доступны расширенные возможности отладки

### Логирование

Используйте логгер, предоставляемый через `api.getLogger()`:

```javascript
const logger = api.getLogger();
logger.debug('Debug message');
logger.info('Info message');
logger.warn('Warning message');
logger.error('Error message');
```

Логи можно просмотреть в консоли разработчика (F12) или в журнале приложения.

### Инспектор плагинов

Mr.Comic включает инспектор плагинов, который позволяет:
- Просматривать зарегистрированные расширения
- Отслеживать события
- Проверять состояние плагина
- Тестировать функциональность плагина

Для доступа к инспектору:
1. Откройте **Инструменты** > **Плагины** > **Инспектор плагинов**
2. Выберите плагин из списка

## Публикация плагинов

### Подготовка к публикации

1. **Тестирование** - убедитесь, что плагин работает корректно.
2. **Документация** - создайте подробную документацию в файле README.md.
3. **Локализация** - добавьте поддержку различных языков.
4. **Упаковка** - создайте архив плагина (.mrcp).

### Создание архива плагина

```bash
# Создание архива плагина
zip -r my-plugin.mrcp manifest.json main.js ui/ assets/ locales/ README.md
```

### Публикация в каталоге плагинов

Mr.Comic имеет официальный каталог плагинов, где вы можете опубликовать свой плагин:

1. Создайте аккаунт на [сайте каталога плагинов](https://plugins.mrcomic.app)
2. Заполните информацию о плагине
3. Загрузите архив плагина
4. Отправьте плагин на проверку

После проверки ваш плагин будет доступен в каталоге плагинов и пользователи смогут установить его через приложение.

### Распространение вне каталога

Вы также можете распространять плагин самостоятельно:

1. Разместите архив плагина на своем сайте или в репозитории
2. Предоставьте пользователям инструкции по установке:
   - Скачать архив плагина
   - Открыть Mr.Comic
   - Перейти в **Инструменты** > **Плагины** > **Установить плагин**
   - Выбрать скачанный архив

## Заключение

Система плагинов Mr.Comic предоставляет мощные возможности для расширения функциональности приложения. Следуя этому руководству, вы сможете создавать плагины, которые улучшат опыт пользователей и добавят новые возможности в Mr.Comic.

Для получения дополнительной информации обратитесь к [API Reference](api_reference_ru.md) и [Developer Guide](developer_guide_ru.md).
