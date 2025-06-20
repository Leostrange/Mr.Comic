# Реализация обучения на пользовательских данных

## Обзор

Данный документ описывает реализацию системы обучения на пользовательских данных для проекта Mr.Comic. Система позволяет пользователям создавать собственные наборы данных для обучения моделей OCR и перевода, обучать модели на этих данных и использовать обученные модели для распознавания текста и перевода.

## Архитектура

Система обучения на пользовательских данных состоит из следующих компонентов:

1. **UserDataTrainer** - основной класс для обучения моделей на пользовательских данных
2. **UserDataManager** - класс для управления пользовательскими данными (наборы данных, модели)
3. **UserDataTrainingIntegration** - класс для интеграции системы обучения с пользовательским интерфейсом

### Диаграмма компонентов

```
+-------------------+      +-------------------+      +-------------------+
| UserDataTrainer   |<---->| UserDataManager   |<---->| OCR/Translation   |
+-------------------+      +-------------------+      | Engines           |
         ^                         ^                  +-------------------+
         |                         |
         v                         v
+-------------------+      +-------------------+
| UserDataTraining  |<---->| UI Components     |
| Integration       |      +-------------------+
+-------------------+
```

## Компоненты системы

### UserDataTrainer

Класс `UserDataTrainer` отвечает за обучение моделей OCR и перевода на пользовательских данных. Он предоставляет следующие возможности:

- Обучение моделей OCR на наборах изображений с текстом
- Обучение моделей перевода на парах текстов (исходный текст - перевод)
- Управление процессом обучения (запуск, приостановка, возобновление, отмена)
- Отслеживание прогресса обучения
- Экспорт и импорт обученных моделей
- Сбор статистики обучения

#### Основные методы

- `trainOCRModel(options)` - обучение модели OCR
- `trainTranslationModel(options)` - обучение модели перевода
- `pauseCurrentSession()` - приостановка текущей сессии обучения
- `resumeCurrentSession()` - возобновление текущей сессии обучения
- `cancelCurrentSession()` - отмена текущей сессии обучения
- `exportModel(name, type, format)` - экспорт модели
- `importModel(name, type, data)` - импорт модели
- `deleteModel(name, type)` - удаление модели
- `getStats()` - получение статистики обучения

### UserDataManager

Класс `UserDataManager` отвечает за управление пользовательскими данными для обучения. Он предоставляет следующие возможности:

- Создание, получение, обновление и удаление наборов данных
- Добавление и удаление образцов в наборах данных
- Сохранение, получение и удаление моделей
- Сохранение и загрузка данных из хранилища

#### Основные методы

- `createDataset(datasetData)` - создание набора данных
- `getDataset(datasetId)` - получение набора данных
- `getAllDatasets()` - получение всех наборов данных
- `updateDataset(datasetId, datasetData)` - обновление набора данных
- `deleteDataset(datasetId)` - удаление набора данных
- `addSamplesToDataset(datasetId, samples)` - добавление образцов в набор данных
- `removeSamplesFromDataset(datasetId, sampleIds)` - удаление образцов из набора данных
- `saveModel(modelData)` - сохранение модели
- `getModel(modelId)` - получение модели
- `getAllModels(type)` - получение всех моделей
- `deleteModel(modelId)` - удаление модели

### UserDataTrainingIntegration

Класс `UserDataTrainingIntegration` отвечает за интеграцию системы обучения с пользовательским интерфейсом. Он предоставляет следующие возможности:

- Создание компонентов пользовательского интерфейса для работы с наборами данных и моделями
- Обработка событий от пользовательского интерфейса
- Обработка событий от системы обучения
- Отображение прогресса обучения
- Отображение результатов обучения

#### Основные методы

- `initialize()` - инициализация интегратора
- `createUIComponents()` - создание компонентов пользовательского интерфейса
- `showDatasetDetails(datasetId)` - показ деталей набора данных
- `showAddSamplesDialog(datasetId, datasetType)` - показ диалога добавления образцов
- Обработчики событий от UserDataTrainer и UserDataManager
- Обработчики событий от пользовательского интерфейса

## Пользовательский интерфейс

Система обучения на пользовательских данных предоставляет следующие элементы пользовательского интерфейса:

### Вкладка "Обучение"

Основная вкладка для работы с системой обучения, содержащая следующие секции:

1. **Наборы данных** - управление наборами данных для обучения
2. **Обучение моделей** - запуск и управление процессом обучения
3. **Модели** - управление обученными моделями
4. **Статистика** - отображение статистики обучения

### Секция "Наборы данных"

Содержит список наборов данных и элементы управления для работы с ними:

- Создание нового набора данных
- Просмотр деталей набора данных
- Добавление образцов в набор данных
- Удаление набора данных

### Секция "Обучение моделей"

Содержит форму для настройки параметров обучения и запуска процесса обучения:

- Выбор типа модели (OCR или перевод)
- Выбор набора данных
- Настройка параметров обучения (количество эпох, размер батча, скорость обучения)
- Запуск обучения
- Отображение прогресса обучения
- Управление процессом обучения (приостановка, возобновление, отмена)

### Секция "Модели"

Содержит список обученных моделей и элементы управления для работы с ними:

- Импорт модели
- Экспорт модели
- Удаление модели

### Секция "Статистика"

Содержит статистику обучения:

- Количество обученных моделей
- Общее время обучения
- Средняя точность моделей
- График обучения

## Процесс обучения

### Обучение модели OCR

1. Пользователь создает набор данных типа "OCR"
2. Пользователь добавляет образцы в набор данных (изображения с текстом)
3. Пользователь настраивает параметры обучения и запускает процесс обучения
4. Система обучает модель на наборе данных
5. Система сохраняет обученную модель
6. Пользователь может использовать обученную модель для распознавания текста

### Обучение модели перевода

1. Пользователь создает набор данных типа "Перевод"
2. Пользователь добавляет образцы в набор данных (пары текстов: исходный текст - перевод)
3. Пользователь настраивает параметры обучения и запускает процесс обучения
4. Система обучает модель на наборе данных
5. Система сохраняет обученную модель
6. Пользователь может использовать обученную модель для перевода текста

## Интеграция с другими компонентами

### Интеграция с движками OCR и перевода

Система обучения на пользовательских данных интегрируется с движками OCR и перевода, позволяя:

- Использовать обученные модели для распознавания текста и перевода
- Автоматически распознавать текст на изображениях при добавлении образцов в набор данных OCR
- Переключаться между предустановленными и пользовательскими моделями

### Интеграция с пользовательским интерфейсом

Система обучения на пользовательских данных интегрируется с пользовательским интерфейсом, предоставляя:

- Компоненты для работы с наборами данных и моделями
- Отображение прогресса обучения
- Отображение результатов обучения
- Уведомления о событиях системы обучения

## Технические детали

### Форматы данных

#### Набор данных OCR

```javascript
{
  id: "dataset-123456789",
  name: "Мой набор данных OCR",
  type: "ocr",
  samples: [
    {
      id: "sample-123456789-1",
      image: <ImageData>,
      text: "Пример текста на изображении"
    },
    // ...
  ],
  createdAt: 1622547600000,
  lastModified: 1622547600000
}
```

#### Набор данных перевода

```javascript
{
  id: "dataset-987654321",
  name: "Мой набор данных перевода",
  type: "translation",
  samples: [
    {
      id: "sample-987654321-1",
      sourceText: "Hello, world!",
      targetText: "Привет, мир!"
    },
    // ...
  ],
  createdAt: 1622547600000,
  lastModified: 1622547600000
}
```

#### Модель

```javascript
{
  id: "model-123456789",
  name: "Моя модель OCR",
  type: "ocr",
  data: <ModelData>,
  metadata: {
    accuracy: 0.95,
    loss: 0.05,
    epochs: 10,
    trainingTime: 3600000,
    samplesCount: 100
  },
  createdAt: 1622547600000,
  lastModified: 1622547600000
}
```

### События

Система обучения на пользовательских данных использует следующие события:

#### События от UserDataManager

- `dataset:created` - создание набора данных
- `dataset:deleted` - удаление набора данных
- `dataset:samplesAdded` - добавление образцов в набор данных
- `dataset:samplesRemoved` - удаление образцов из набора данных
- `model:saved` - сохранение модели
- `model:deleted` - удаление модели

#### События от UserDataTrainer

- `training:start` - начало обучения
- `training:progress` - прогресс обучения
- `training:complete` - завершение обучения
- `training:error` - ошибка обучения
- `training:paused` - приостановка обучения
- `training:resumed` - возобновление обучения
- `training:cancelled` - отмена обучения

#### События от пользовательского интерфейса

- `ui:createDataset` - запрос на создание набора данных
- `ui:deleteDataset` - запрос на удаление набора данных
- `ui:addSamples` - запрос на добавление образцов
- `ui:removeSamples` - запрос на удаление образцов
- `ui:trainModel` - запрос на обучение модели
- `ui:pauseTraining` - запрос на приостановку обучения
- `ui:resumeTraining` - запрос на возобновление обучения
- `ui:cancelTraining` - запрос на отмену обучения
- `ui:exportModel` - запрос на экспорт модели
- `ui:importModel` - запрос на импорт модели
- `ui:deleteModel` - запрос на удаление модели

## Заключение

Система обучения на пользовательских данных предоставляет пользователям возможность создавать собственные наборы данных для обучения моделей OCR и перевода, обучать модели на этих данных и использовать обученные модели для распознавания текста и перевода. Система полностью интегрирована с пользовательским интерфейсом и другими компонентами Mr.Comic, обеспечивая удобный и интуитивно понятный процесс обучения моделей.
