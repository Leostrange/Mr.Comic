# Реализация выбора движка OCR/перевода в пользовательском интерфейсе

## Обзор

Данная документация описывает реализацию подзадачи "Добавление выбора движка OCR/перевода в пользовательском интерфейсе" для проекта Mr.Comic. Эта функциональность позволяет пользователям выбирать и настраивать различные движки OCR (оптического распознавания символов) и перевода непосредственно через пользовательский интерфейс приложения.

## Архитектура решения

Решение состоит из трех основных компонентов:

1. **OCREngineSelector** - компонент для выбора и настройки движков OCR
2. **TranslationEngineSelector** - компонент для выбора и настройки движков перевода
3. **EngineSelectionIntegration** - интеграционный слой для объединения селекторов в пользовательском интерфейсе

### Диаграмма компонентов

```
+-----------------------------------+
|     EngineSelectionIntegration    |
+-----------------------------------+
              /        \
             /          \
            /            \
+----------------+  +----------------------+
| OCREngineSelector |  | TranslationEngineSelector |
+----------------+  +----------------------+
```

## Компоненты

### OCREngineSelector

Компонент `OCREngineSelector` предоставляет интерфейс для выбора и настройки различных движков OCR. Он поддерживает следующие функции:

- Выбор из предустановленных движков OCR (Tesseract, Google Vision API, Microsoft Azure OCR, MangaOCR и др.)
- Настройка параметров каждого движка (язык, режим, качество и т.д.)
- Сохранение и загрузка пользовательских настроек
- Добавление и удаление пользовательских движков OCR

#### Поддерживаемые движки OCR

1. **Tesseract OCR**
   - Открытый движок OCR с поддержкой множества языков
   - Настраиваемые параметры: язык, режим, сегментация, режим движка, режим сегментации страницы, DPI, предобработка

2. **Google Vision API**
   - Облачный сервис OCR от Google с высокой точностью
   - Настраиваемые параметры: API ключ, подсказки языка, тип распознавания, модель

3. **Microsoft Azure OCR**
   - Облачный сервис OCR от Microsoft с поддержкой рукописного текста
   - Настраиваемые параметры: ключ подписки, конечная точка, язык, определение ориентации, версия модели

4. **MangaOCR**
   - Специализированный движок OCR для манги и комиксов
   - Настраиваемые параметры: язык, вертикальный текст, обнаружение пузырей, порог уверенности, модель

5. **Пользовательский OCR**
   - Настраиваемый движок OCR с поддержкой пользовательских моделей
   - Настраиваемые параметры: путь к модели, язык, пользовательские параметры

### TranslationEngineSelector

Компонент `TranslationEngineSelector` предоставляет интерфейс для выбора и настройки различных движков перевода. Он поддерживает следующие функции:

- Выбор из предустановленных движков перевода (Google Translate, Microsoft Translator, DeepL, Yandex Translate и др.)
- Настройка параметров каждого движка (исходный язык, целевой язык, формальность и т.д.)
- Сохранение и загрузка пользовательских настроек
- Добавление и удаление пользовательских движков перевода

#### Поддерживаемые движки перевода

1. **Google Translate**
   - Популярный сервис машинного перевода от Google
   - Настраиваемые параметры: API ключ, исходный язык, целевой язык, модель, формат

2. **Microsoft Translator**
   - Сервис машинного перевода от Microsoft
   - Настраиваемые параметры: ключ подписки, конечная точка, регион, исходный язык, целевой язык, тип текста, обработка нецензурной лексики

3. **DeepL**
   - Высококачественный сервис машинного перевода с поддержкой контекста
   - Настраиваемые параметры: ключ авторизации, исходный язык, целевой язык, формальность, разделение предложений, сохранение форматирования

4. **Yandex Translate**
   - Сервис машинного перевода от Яндекс
   - Настраиваемые параметры: API ключ, исходный язык, целевой язык, формат

5. **MangaTranslator**
   - Специализированный движок перевода для манги и комиксов
   - Настраиваемые параметры: исходный язык, целевой язык, стиль перевода, учет контекста, сохранение японских обращений, путь к глоссарию

6. **Пользовательский переводчик**
   - Настраиваемый движок перевода с поддержкой пользовательских моделей
   - Настраиваемые параметры: путь к модели, исходный язык, целевой язык, пользовательские параметры

### EngineSelectionIntegration

Компонент `EngineSelectionIntegration` объединяет селекторы OCR и перевода в единый пользовательский интерфейс. Он поддерживает следующие функции:

- Отображение селекторов OCR и перевода в виде вкладок
- Обработка событий изменения настроек OCR и перевода
- Предоставление единого API для работы с настройками OCR и перевода
- Интеграция с остальными компонентами пользовательского интерфейса

## Пользовательский интерфейс

Пользовательский интерфейс для выбора движков OCR и перевода представляет собой панель с вкладками:

1. **Вкладка OCR**
   - Выпадающий список для выбора движка OCR
   - Форма с настройками выбранного движка
   - Кнопка сохранения настроек

2. **Вкладка Перевод**
   - Выпадающий список для выбора движка перевода
   - Форма с настройками выбранного движка
   - Кнопка сохранения настроек

## Интеграция с существующими компонентами

Компонент `EngineSelectionIntegration` интегрируется с существующими компонентами Mr.Comic следующим образом:

1. **Интеграция с системой OCR**
   - Предоставляет информацию о выбранном движке OCR и его настройках
   - Обрабатывает события изменения настроек OCR

2. **Интеграция с системой перевода**
   - Предоставляет информацию о выбранном движке перевода и его настройках
   - Обрабатывает события изменения настроек перевода

3. **Интеграция с пользовательским интерфейсом**
   - Встраивается в существующий пользовательский интерфейс в виде панели настроек
   - Использует общие стили и компоненты пользовательского интерфейса

## Хранение настроек

Настройки движков OCR и перевода хранятся в локальном хранилище браузера (localStorage) в следующем формате:

- `ocr_engine_id` - ID выбранного движка OCR
- `ocr_engine_settings` - JSON-строка с настройками всех движков OCR
- `translation_engine_id` - ID выбранного движка перевода
- `translation_engine_settings` - JSON-строка с настройками всех движков перевода

## Система событий

Компоненты используют систему событий для обмена информацией:

- `ocrEngineSelector:initialized` - селектор OCR инициализирован
- `ocrEngineSelector:settingsChanged` - изменены настройки OCR
- `translationEngineSelector:initialized` - селектор перевода инициализирован
- `translationEngineSelector:settingsChanged` - изменены настройки перевода
- `engineSelectionIntegration:initialized` - интеграция инициализирована
- `engineSelectionIntegration:ocrSettingsChanged` - изменены настройки OCR (через интеграцию)
- `engineSelectionIntegration:translationSettingsChanged` - изменены настройки перевода (через интеграцию)

## API

### OCREngineSelector

```javascript
// Создание экземпляра
const ocrEngineSelector = new OCREngineSelector({
  eventEmitter,
  logger,
  config,
  storage
});

// Инициализация
ocrEngineSelector.initialize();

// Рендеринг
ocrEngineSelector.render(container);

// Получение текущего движка
const currentEngine = ocrEngineSelector.getCurrentEngine();

// Установка текущего движка
ocrEngineSelector.setCurrentEngine('tesseract');

// Обновление настроек движка
ocrEngineSelector.updateEngineSettings('tesseract', { language: 'ru' });

// Добавление нового движка
ocrEngineSelector.addEngine({
  id: 'custom-ocr',
  name: 'Пользовательский OCR',
  settings: [...]
});

// Удаление движка
ocrEngineSelector.removeEngine('custom-ocr');

// Обновление списка доступных движков
ocrEngineSelector.updateAvailableEngines([...]);

// Уничтожение
ocrEngineSelector.destroy();
```

### TranslationEngineSelector

```javascript
// Создание экземпляра
const translationEngineSelector = new TranslationEngineSelector({
  eventEmitter,
  logger,
  config,
  storage
});

// Инициализация
translationEngineSelector.initialize();

// Рендеринг
translationEngineSelector.render(container);

// Получение текущего движка
const currentEngine = translationEngineSelector.getCurrentEngine();

// Установка текущего движка
translationEngineSelector.setCurrentEngine('google-translate');

// Обновление настроек движка
translationEngineSelector.updateEngineSettings('google-translate', { 'target-language': 'ru' });

// Добавление нового движка
translationEngineSelector.addEngine({
  id: 'custom-translator',
  name: 'Пользовательский переводчик',
  settings: [...]
});

// Удаление движка
translationEngineSelector.removeEngine('custom-translator');

// Обновление списка доступных движков
translationEngineSelector.updateAvailableEngines([...]);

// Уничтожение
translationEngineSelector.destroy();
```

### EngineSelectionIntegration

```javascript
// Создание экземпляра
const engineSelectionIntegration = new EngineSelectionIntegration({
  eventEmitter,
  logger,
  config,
  storage
});

// Инициализация
engineSelectionIntegration.initialize();

// Рендеринг
engineSelectionIntegration.render(container);

// Получение текущих настроек
const currentSettings = engineSelectionIntegration.getCurrentSettings();

// Установка текущего движка OCR
engineSelectionIntegration.setCurrentOCREngine('tesseract');

// Установка текущего движка перевода
engineSelectionIntegration.setCurrentTranslationEngine('google-translate');

// Обновление настроек движка OCR
engineSelectionIntegration.updateOCREngineSettings('tesseract', { language: 'ru' });

// Обновление настроек движка перевода
engineSelectionIntegration.updateTranslationEngineSettings('google-translate', { 'target-language': 'ru' });

// Добавление нового движка OCR
engineSelectionIntegration.addOCREngine({
  id: 'custom-ocr',
  name: 'Пользовательский OCR',
  settings: [...]
});

// Добавление нового движка перевода
engineSelectionIntegration.addTranslationEngine({
  id: 'custom-translator',
  name: 'Пользовательский переводчик',
  settings: [...]
});

// Удаление движка OCR
engineSelectionIntegration.removeOCREngine('custom-ocr');

// Удаление движка перевода
engineSelectionIntegration.removeTranslationEngine('custom-translator');

// Обновление списка доступных движков OCR
engineSelectionIntegration.updateAvailableOCREngines([...]);

// Обновление списка доступных движков перевода
engineSelectionIntegration.updateAvailableTranslationEngines([...]);

// Уничтожение
engineSelectionIntegration.destroy();
```

## Примеры использования

### Пример 1: Инициализация и рендеринг

```javascript
// Создаем экземпляр интеграции
const engineSelectionIntegration = new EngineSelectionIntegration({
  eventEmitter: new EventEmitter(),
  logger: console,
  config: {
    ocr: {
      availableEngines: [...]
    },
    translation: {
      availableEngines: [...]
    }
  },
  storage: localStorage
});

// Инициализируем интеграцию
engineSelectionIntegration.initialize();

// Рендерим интеграцию в контейнер
const container = document.getElementById('engine-selection-container');
engineSelectionIntegration.render(container);
```

### Пример 2: Обработка событий изменения настроек

```javascript
// Подписываемся на события изменения настроек
eventEmitter.on('engineSelectionIntegration:ocrSettingsChanged', (data) => {
  console.log('OCR settings changed:', data);
  
  // Обновляем настройки OCR в приложении
  updateOCRSettings(data.engineId, data.settings);
});

eventEmitter.on('engineSelectionIntegration:translationSettingsChanged', (data) => {
  console.log('Translation settings changed:', data);
  
  // Обновляем настройки перевода в приложении
  updateTranslationSettings(data.engineId, data.settings);
});
```

### Пример 3: Добавление пользовательского движка OCR

```javascript
// Добавляем пользовательский движок OCR
engineSelectionIntegration.addOCREngine({
  id: 'my-custom-ocr',
  name: 'Мой пользовательский OCR',
  description: 'Пользовательский движок OCR для специфических задач',
  version: '1.0',
  languages: ['en', 'ru'],
  settings: [
    {
      id: 'model-path',
      name: 'Путь к модели',
      type: 'file',
      default: ''
    },
    {
      id: 'language',
      name: 'Язык',
      type: 'select',
      options: [
        { value: 'en', label: 'Английский' },
        { value: 'ru', label: 'Русский' }
      ],
      default: 'en'
    }
  ]
});
```

## Заключение

Реализация выбора движка OCR/перевода в пользовательском интерфейсе предоставляет пользователям гибкие возможности для настройки процесса распознавания текста и перевода в приложении Mr.Comic. Компоненты разработаны с учетом возможности расширения и интеграции с другими частями приложения.

Данная функциональность значительно улучшает пользовательский опыт, позволяя пользователям выбирать наиболее подходящие для их задач движки OCR и перевода, а также настраивать их параметры в соответствии с конкретными требованиями.
