# 📋 План реализации настроек Mr.Comic

## 🎯 Анализ текущего состояния

### ✅ Что уже реализовано:

#### 1. **Настройки ридера (Reader Settings)**
- **Режим чтения**: Страница / Потоково (page/continuous)
- **Масштаб**: По ширине / По высоте / Вписать / Заполнить (width/height/fit/fill)
- **Двойной тап зум**: 1.0x - 5.0x (слайдер)
- **Блокировка свайпа при зуме**: Вкл/Выкл
- **Яркость ридера**: 10% - 100% (слайдер)
- **Скорость анимации**: 0.5x - 2.0x (слайдер)
- **Звук перелистывания**: Вкл/Выкл

#### 2. **Настройки тем (Theme Settings)**
- **Тема приложения**: Системная / Светлая / Темная / Сепия / AMOLED / Манга
- **Динамические цвета**: Вкл/Выкл
- **AMOLED темная**: Вкл/Выкл
- **Тема для чтения**: Как в приложении / Светлая / Темная / AMOLED
- **AMOLED для чтения**: Вкл/Выкл

#### 3. **Настройки библиотеки (Library Settings)**
- **Порядок сортировки**: По дате добавления / По названию / По размеру
- **Папки библиотеки**: Добавление/удаление папок
- **Режим просмотра**: Список / Сетка / Папки

#### 4. **Настройки производительности (Performance Settings)**
- **Режим производительности**: Вкл/Выкл
- **Очистка кэша**: Кнопка
- **Размер кэша**: Отображение
- **Размер библиотеки**: Отображение

#### 5. **Настройки OCR и перевода (OCR & Translation Settings)**
- **Язык цели**: en, ru, es, de и др.
- **Движок OCR**: Tesseract
- **Провайдер перевода**: Google
- **API ключ перевода**: Поле ввода
- **Локальные ресурсы**: Словари и модели

#### 6. **Настройки PDF (PDF Settings)**
- **DPI рендеринга**: Настраиваемое значение
- **Предзагрузка миниатюр**: Вкл/Выкл

#### 7. **Настройки резервного копирования (Backup Settings)**
- **Локальное резервное копирование**: Создать/Восстановить
- **Облачное резервное копирование**: Google Drive/OneDrive (через MCP)
- **Последний бэкап**: URI и время

## 🔧 Что нужно доработать:

### 1. **Настройки кастомизации интерфейса**
```kotlin
// Добавить в SettingsUiState
val readerTapZonesSize: Float = 1.0f, // Размер зон для панелей
val readerTapZonesSensitivity: Float = 1.0f, // Чувствительность зон
val readerShowPageIndicator: Boolean = true, // Показывать индикатор страниц
val readerShowProgressBar: Boolean = true, // Показывать прогресс-бар
val readerAutoHideUI: Boolean = true, // Автоскрытие UI
val readerAutoHideDelay: Int = 3000, // Задержка автоскрытия (мс)
val readerGestureSensitivity: Float = 1.0f, // Чувствительность жестов
val readerVibrationFeedback: Boolean = true, // Вибрация при жестах
```

### 2. **Настройки качества изображений**
```kotlin
// Добавить в SettingsUiState
val imageQuality: String = "high", // high/medium/low
val imageRenderDpi: Int = 2560, // DPI рендеринга
val imageCacheSize: Int = 100, // Размер кэша в МБ
val imagePreloadPages: Int = 3, // Количество предзагружаемых страниц
val imageCompressionLevel: Int = 80, // Уровень сжатия (0-100)
```

### 3. **Настройки жестов и навигации**
```kotlin
// Добавить в SettingsUiState
val gestureSwipeThreshold: Float = 50f, // Порог свайпа
val gestureZoomSensitivity: Float = 1.0f, // Чувствительность зума
val gesturePanSensitivity: Float = 1.0f, // Чувствительность панорамирования
val navigationSwipeEnabled: Boolean = true, // Свайп для навигации
val navigationTapZonesEnabled: Boolean = true, // Тап-зоны
val navigationKeyboardShortcuts: Boolean = true, // Горячие клавиши
```

### 4. **Настройки уведомлений и звуков**
```kotlin
// Добавить в SettingsUiState
val soundPageTurn: Boolean = false, // Звук перелистывания
val soundVolume: Float = 0.5f, // Громкость звуков
val vibrationPageTurn: Boolean = true, // Вибрация при перелистывании
val vibrationIntensity: Float = 0.5f, // Интенсивность вибрации
val notificationProgress: Boolean = true, // Уведомления о прогрессе
```

## 🚀 План реализации:

### Этап 1: Расширение SettingsUiState
1. Добавить новые поля в `SettingsUiState.kt`
2. Обновить `SettingsRepository.kt` с новыми ключами
3. Реализовать методы сохранения/загрузки

### Этап 2: UI компоненты
1. Создать `ReaderCustomizationSection.kt`
2. Создать `ImageQualitySection.kt`
3. Создать `GestureSettingsSection.kt`
4. Создать `NotificationSettingsSection.kt`

### Этап 3: Интеграция с ридером
1. Подключить настройки к `ReaderViewModel`
2. Применить настройки к компонентам ридера
3. Добавить реактивность на изменения настроек

### Этап 4: Тестирование
1. Проверить сохранение/загрузку настроек
2. Протестировать влияние на производительность
3. Проверить совместимость с существующими функциями

## 📁 Структура файлов для реализации:

```
android/feature-settings/src/main/java/com/example/feature/settings/ui/
├── sections/
│   ├── ReaderCustomizationSection.kt
│   ├── ImageQualitySection.kt
│   ├── GestureSettingsSection.kt
│   ├── NotificationSettingsSection.kt
│   └── AdvancedReaderSettingsSection.kt
├── components/
│   ├── SliderWithLabel.kt
│   ├── SwitchWithDescription.kt
│   └── ButtonGroup.kt
└── SettingsScreen.kt (обновить)
```

## 🎯 Приоритеты реализации:

### Высокий приоритет:
1. **Настройки кастомизации интерфейса** - для проверки UX
2. **Настройки качества изображений** - для тестирования производительности
3. **Настройки жестов** - для проверки исправлений

### Средний приоритет:
4. **Настройки уведомлений** - для улучшения UX
5. **Расширенные настройки ридера** - для продвинутых пользователей

### Низкий приоритет:
6. **Экспериментальные функции** - для будущих версий

## 📊 Ожидаемые результаты:

- **Улучшенная кастомизация** - пользователи смогут настроить интерфейс под себя
- **Лучшая производительность** - настройки качества изображений
- **Более точные жесты** - настройки чувствительности
- **Персонализированный опыт** - настройки уведомлений и звуков

---

**Готов к реализации!** 🚀
