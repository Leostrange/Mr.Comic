# Реализация отображения прогресса OCR/перевода

## Обзор

Данная документация описывает реализацию подзадачи "Реализация отображения прогресса OCR/перевода" для проекта Mr.Comic. Эта функциональность позволяет пользователям отслеживать прогресс выполнения операций OCR и перевода в реальном времени, а также управлять этими процессами.

## Архитектура решения

Решение состоит из двух основных компонентов:

1. **ProgressManager** - базовый компонент для управления и отображения прогресса процессов
2. **ProgressIntegration** - интеграционный слой для связи менеджера прогресса с системами OCR и перевода

### Диаграмма компонентов

```
+-----------------------------------+
|        ProgressIntegration        |
+-----------------------------------+
                |
                |
                v
+-----------------------------------+
|          ProgressManager          |
+-----------------------------------+
```

## Компоненты

### ProgressManager

Компонент `ProgressManager` предоставляет базовую функциональность для управления и отображения прогресса различных процессов. Он поддерживает следующие функции:

- Создание и отслеживание нескольких параллельных процессов
- Визуализация прогресса процессов в виде прогресс-баров
- Отображение детальной информации о процессах (статус, время, количество обработанных элементов)
- Управление процессами (приостановка, возобновление, отмена)
- Обработка ошибок и предупреждений

#### Жизненный цикл процесса

Процесс в `ProgressManager` проходит через следующие состояния:

1. **running** - процесс выполняется
2. **paused** - процесс приостановлен
3. **completed** - процесс успешно завершен
4. **error** - процесс завершен с ошибкой
5. **cancelled** - процесс отменен пользователем

#### Система событий

`ProgressManager` использует следующие события для обмена информацией:

- `process:start` - начало процесса
- `process:progress` - обновление прогресса процесса
- `process:complete` - успешное завершение процесса
- `process:error` - ошибка в процессе
- `process:cancel` - отмена процесса
- `process:pause` - приостановка процесса
- `process:resume` - возобновление процесса

### ProgressIntegration

Компонент `ProgressIntegration` связывает `ProgressManager` с системами OCR и перевода. Он поддерживает следующие функции:

- Обработка событий от систем OCR и перевода
- Преобразование этих событий в формат, понятный для `ProgressManager`
- Предоставление пользовательского интерфейса для отображения прогресса
- Управление видимостью панели прогресса
- Демонстрационные функции для тестирования

#### Обрабатываемые типы процессов

`ProgressIntegration` обрабатывает следующие типы процессов:

1. **OCR** - процессы распознавания текста
2. **Translation** - процессы перевода текста
3. **Batch** - процессы пакетной обработки

#### Система событий

`ProgressIntegration` обрабатывает следующие события от систем OCR и перевода:

- `ocr:start`, `translation:start`, `batch:start` - начало процесса
- `ocr:progress`, `translation:progress`, `batch:progress` - обновление прогресса
- `ocr:complete`, `translation:complete`, `batch:complete` - завершение процесса
- `ocr:error`, `translation:error`, `batch:error` - ошибка в процессе

И генерирует следующие события для управления процессами:

- `ocr:pause`, `translation:pause`, `batch:pause` - запрос на приостановку процесса
- `ocr:resume`, `translation:resume`, `batch:resume` - запрос на возобновление процесса
- `ocr:cancel`, `translation:cancel`, `batch:cancel` - запрос на отмену процесса

## Пользовательский интерфейс

Пользовательский интерфейс для отображения прогресса OCR и перевода состоит из следующих элементов:

1. **Кнопка переключения видимости** - позволяет показать или скрыть панель прогресса
2. **Панель прогресса** - содержит информацию о всех активных процессах
3. **Карточки процессов** - отображают информацию о каждом процессе:
   - Название и тип процесса
   - Прогресс-бар с процентом выполнения
   - Статус процесса
   - Количество обработанных элементов
   - Оставшееся или затраченное время
   - Текущее сообщение
   - Кнопки управления (приостановить/возобновить, отменить)

## Интеграция с существующими компонентами

Компонент `ProgressIntegration` интегрируется с существующими компонентами Mr.Comic следующим образом:

1. **Интеграция с системой OCR**
   - Отслеживает события от системы OCR
   - Отображает прогресс распознавания текста
   - Позволяет управлять процессом распознавания

2. **Интеграция с системой перевода**
   - Отслеживает события от системы перевода
   - Отображает прогресс перевода текста
   - Позволяет управлять процессом перевода

3. **Интеграция с системой пакетной обработки**
   - Отслеживает события от системы пакетной обработки
   - Отображает прогресс обработки нескольких страниц или файлов
   - Позволяет управлять процессом пакетной обработки

4. **Интеграция с пользовательским интерфейсом**
   - Встраивается в существующий пользовательский интерфейс
   - Использует общие стили и компоненты
   - Адаптируется под различные размеры экрана

## Система оценки времени

Система оценки времени в `ProgressManager` работает следующим образом:

1. При старте процесса может быть указано предполагаемое время выполнения
2. В процессе выполнения оставшееся время рассчитывается на основе:
   - Затраченного времени
   - Количества обработанных элементов
   - Общего количества элементов
3. Время отображается в человекочитаемом формате (часы, минуты, секунды)

## API

### ProgressManager

```javascript
// Создание экземпляра
const progressManager = new ProgressManager({
  eventEmitter,
  logger,
  config
});

// Инициализация
progressManager.initialize();

// Рендеринг
progressManager.render(container);

// Создание процесса
const processId = progressManager.createProcess({
  id: 'process-1',
  type: 'ocr',
  name: 'Распознавание текста',
  totalItems: 10,
  estimatedTime: 60000
});

// Обновление прогресса
progressManager.updateProgress(processId, {
  progress: 50,
  processedItems: 5,
  remainingTime: 30000,
  currentItem: 'Страница 5',
  message: 'Обработка страницы 5'
});

// Завершение процесса
progressManager.completeProcess(processId, {
  pages: 10,
  characters: 10000,
  words: 2000
});

// Отметка ошибки
progressManager.markError(processId, new Error('Ошибка распознавания'), true);

// Отмена процесса
progressManager.cancelProcess(processId, 'Отменено пользователем');

// Приостановка процесса
progressManager.pauseProcess(processId, 'Приостановлено пользователем');

// Возобновление процесса
progressManager.resumeProcess(processId);

// Получение информации о процессе
const processInfo = progressManager.getProcessInfo(processId);

// Получение списка активных процессов
const activeProcesses = progressManager.getActiveProcesses();

// Уничтожение
progressManager.destroy();
```

### ProgressIntegration

```javascript
// Создание экземпляра
const progressIntegration = new ProgressIntegration({
  eventEmitter,
  logger,
  config
});

// Инициализация
progressIntegration.initialize();

// Рендеринг
progressIntegration.render(container);

// Симуляция процесса OCR для демонстрации
const ocrProcessId = progressIntegration.simulateOCRProcess({
  totalPages: 10,
  duration: 10000,
  withError: false
});

// Симуляция процесса перевода для демонстрации
const translationProcessId = progressIntegration.simulateTranslationProcess({
  totalItems: 20,
  duration: 15000,
  withError: false
});

// Симуляция процесса пакетной обработки для демонстрации
const batchProcessId = progressIntegration.simulateBatchProcess({
  totalItems: 30,
  duration: 20000,
  withError: false
});

// Уничтожение
progressIntegration.destroy();
```

## Примеры использования

### Пример 1: Инициализация и рендеринг

```javascript
// Создаем экземпляр интеграции
const progressIntegration = new ProgressIntegration({
  eventEmitter: new EventEmitter(),
  logger: console,
  config: {
    progress: {
      completedProcessDisplayTime: 5000,
      cancelledProcessDisplayTime: 5000
    }
  }
});

// Инициализируем интеграцию
progressIntegration.initialize();

// Рендерим интеграцию в контейнер
const container = document.getElementById('progress-container');
progressIntegration.render(container);
```

### Пример 2: Отслеживание процесса OCR

```javascript
// Запускаем процесс OCR
eventEmitter.emit('ocr:start', {
  id: 'ocr-1',
  totalPages: 5,
  estimatedTime: 30000,
  name: 'Распознавание комикса'
});

// Обновляем прогресс
eventEmitter.emit('ocr:progress', {
  processId: 'ocr-1',
  progress: 20,
  currentPage: 1,
  totalPages: 5,
  remainingTime: 24000,
  message: 'Распознавание страницы 1'
});

// Завершаем процесс
eventEmitter.emit('ocr:complete', {
  processId: 'ocr-1',
  results: {
    pages: 5,
    characters: 5000,
    words: 1000
  }
});
```

### Пример 3: Обработка ошибок

```javascript
// Запускаем процесс перевода
eventEmitter.emit('translation:start', {
  id: 'translation-1',
  totalItems: 10,
  estimatedTime: 20000,
  name: 'Перевод комикса'
});

// Обновляем прогресс
eventEmitter.emit('translation:progress', {
  processId: 'translation-1',
  progress: 30,
  currentItem: 3,
  totalItems: 10,
  remainingTime: 14000,
  message: 'Перевод элемента 3'
});

// Отмечаем ошибку
eventEmitter.emit('translation:error', {
  processId: 'translation-1',
  error: new Error('Ошибка перевода'),
  isFatal: true
});
```

### Пример 4: Управление процессом

```javascript
// Подписываемся на события управления процессами
eventEmitter.on('ocr:pause', ({ processId }) => {
  console.log(`Приостановка процесса OCR ${processId}`);
  // Логика приостановки процесса OCR
  
  // После приостановки процесса
  eventEmitter.emit('process:pause', {
    processId,
    reason: 'Приостановлено пользователем'
  });
});

eventEmitter.on('ocr:resume', ({ processId }) => {
  console.log(`Возобновление процесса OCR ${processId}`);
  // Логика возобновления процесса OCR
  
  // После возобновления процесса
  eventEmitter.emit('process:resume', {
    processId
  });
});

eventEmitter.on('ocr:cancel', ({ processId }) => {
  console.log(`Отмена процесса OCR ${processId}`);
  // Логика отмены процесса OCR
  
  // После отмены процесса
  eventEmitter.emit('process:cancel', {
    processId,
    reason: 'Отменено пользователем'
  });
});
```

## CSS стили

Для корректного отображения компонентов прогресса необходимо добавить следующие CSS стили:

```css
/* Стили для интеграции прогресса */
.progress-integration {
  width: 100%;
  margin-bottom: 20px;
}

.toggle-button {
  width: 100%;
  padding: 10px;
  background-color: #f0f0f0;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-weight: bold;
  margin-bottom: 10px;
}

.toggle-button.active {
  background-color: #e0e0e0;
}

.progress-container {
  width: 100%;
  max-height: 300px;
  overflow-y: auto;
  border: 1px solid #ddd;
  border-radius: 5px;
  padding: 10px;
}

/* Стили для менеджера прогресса */
.progress-manager {
  width: 100%;
}

.progress-manager h2 {
  margin-top: 0;
  margin-bottom: 15px;
  font-size: 18px;
}

.process-container {
  margin-bottom: 15px;
  padding: 10px;
  border: 1px solid #ddd;
  border-radius: 5px;
  background-color: #f9f9f9;
}

.process-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 10px;
}

.process-header h3 {
  margin: 0;
  font-size: 16px;
}

.process-type {
  font-size: 12px;
  padding: 3px 6px;
  background-color: #eee;
  border-radius: 3px;
}

.progress-container {
  position: relative;
  height: 20px;
  background-color: #f0f0f0;
  border-radius: 10px;
  margin-bottom: 10px;
  overflow: hidden;
}

.progress-container.running .progress-bar {
  background-color: #4caf50;
}

.progress-container.paused .progress-bar {
  background-color: #ff9800;
}

.progress-container.completed .progress-bar {
  background-color: #2196f3;
}

.progress-container.error .progress-bar {
  background-color: #f44336;
}

.progress-container.cancelled .progress-bar {
  background-color: #9e9e9e;
}

.progress-bar {
  height: 100%;
  background-color: #4caf50;
  border-radius: 10px;
  transition: width 0.3s ease;
}

.progress-text {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #000;
  font-weight: bold;
  font-size: 12px;
}

.process-info {
  margin-bottom: 10px;
}

.info-row {
  display: flex;
  justify-content: space-between;
  margin-bottom: 5px;
}

.info-label {
  font-weight: bold;
}

.process-message {
  padding: 5px;
  background-color: #f0f0f0;
  border-radius: 3px;
  margin-bottom: 10px;
  font-size: 12px;
}

.process-controls {
  display: flex;
  justify-content: flex-end;
}

.control-button {
  padding: 5px 10px;
  margin-left: 10px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

.pause-resume-button {
  background-color: #ff9800;
  color: white;
}

.cancel-button {
  background-color: #f44336;
  color: white;
}

.control-button:disabled {
  background-color: #ddd;
  color: #999;
  cursor: not-allowed;
}
```

## Заключение

Реализация отображения прогресса OCR/перевода предоставляет пользователям возможность отслеживать выполнение длительных операций и управлять ими. Компоненты разработаны с учетом возможности расширения и интеграции с другими частями приложения.

Данная функциональность значительно улучшает пользовательский опыт, предоставляя информацию о текущем состоянии процессов и оставшемся времени, а также позволяя пользователям приостанавливать, возобновлять и отменять процессы по необходимости.
