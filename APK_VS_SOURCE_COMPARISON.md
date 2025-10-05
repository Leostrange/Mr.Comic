# Сравнение APK и исходного кода Mr.Comic

**Дата анализа**: 30 сентября 2025  
**Версия APK**: 1.0.12-debug  
**Инструмент декомпиляции**: apktool 2.9.3

## Основная информация о APK

### Метаданные APK
- **Имя пакета**: `com.example.mrcomic.debug`
- **Версия кода**: 12
- **Версия приложения**: 1.0.12-debug
- **Min SDK**: 26 (Android 8.0)
- **Target SDK**: 35 (Android 15)
- **Compile SDK**: 35
- **Размер APK**: 146.2 MB

### Архитектурная поддержка
APK содержит нативные библиотеки для всех основных архитектур:
- **arm64-v8a** (основная для современных устройств)
- **armeabi-v7a** (совместимость со старыми ARM устройствами)
- **x86** и **x86_64** (эмуляторы и x86 устройства)
- **mips** и **mips64** (редкие архитектуры)

## Ключевые различия

### 1. AndroidManifest.xml

#### Основные отличия в манифесте:

| Параметр | Исходный код | Декомпилированный APK |
|----------|--------------|----------------------|
| **Пакет** | `com.example.mrcomic` | `com.example.mrcomic.debug` |
| **Отладка** | Не указан | `android:debuggable="true"` |
| **Разрешения** | Базовые | + `ACCESS_NETWORK_STATE`, `INTERNET` |
| **Компоненты** | Упрощенные | + Google Play Services, ML Kit |

#### Дополнительные компоненты в APK:

**Google ML Kit и OCR**:
- `com.google.mlkit.common.internal.MlKitComponentDiscoveryService`
- `com.google.mlkit.common.internal.MlKitInitProvider` 
- OCR модели: `mlkit-google-ocr-models/`

**Google Play Services**:
- `com.google.android.gms.common.api.GoogleApiActivity`
- Версия: определяется через `@integer/google_play_services_version`

**Дополнительные функции**:
- `androidx.room.MultiInstanceInvalidationService` (Room база данных)
- `com.google.android.datatransport` (аналитика и транспорт данных)
- `androidx.profileinstaller` (оптимизация профилей ART)

### 2. Нативные библиотеки

В APK присутствуют нативные библиотеки, отсутствующие в исходном коде:

#### Основные библиотеки:
- **libandroidx.graphics.path.so** - графические операции AndroidX
- **libc++_shared.so** - стандартная библиотека C++
- **libdatastore_shared_counter.so** - счетчики DataStore
- **libjniPdfium.so** - PDF рендеринг через PDFium
- **libmlkit_google_ocr_pipeline.so** - OCR конвейер ML Kit
- **libmodft2.so, libmodpdfium.so, libmodpng.so** - форматы файлов

### 3. Assets и ресурсы

#### Словари и модели в APK:
```
assets/
├── dictionaries/          # Словари перевода (как в исходниках)
├── mlkit-google-ocr-models/  # НОВЫЕ: ML Kit модели OCR
│   ├── gocr/              # Модели распознавания текста
│   └── taser/             # Детектор текста
├── tokenizers/            # НОВЫЕ: токенизаторы для NLP
├── com/tom_roush/         # НОВЫЕ: PDFBox ресурсы
│   ├── fontbox/
│   └── pdfbox/
└── licenses/              # НОВЫЕ: лицензии третьих сторон
```

### 4. Структура кода (Smali)

APK содержит **27 файлов DEX** (smali_classes, smali_classes2...smali_classes27), что указывает на:
- Большое количество зависимостей
- Сложную архитектуру с множеством модулей
- Включение всех внешних библиотек

#### Ключевые пакеты в APK:
- `com.example.mrcomic.*` - основной код приложения
- `com.example.core.*` - модули ядра
- `androidx.*` - библиотеки AndroidX
- `com.google.*` - Google Play Services и ML Kit
- `dagger.*` и `hilt_aggregated_deps.*` - Dependency Injection
- `retrofit2.*`, `okhttp3.*` - сетевые библиотеки
- `coil.*` - загрузка изображений
- `kotlin.*`, `kotlinx.*` - Kotlin runtime

### 5. Функции, присутствующие только в APK

#### ML Kit OCR (отсутствует в исходном коде):
- Автоматическое распознавание текста в комиксах
- Поддержка многих языков
- Модели машинного обучения для OCR

#### Сетевые функции:
- Разрешение `INTERNET` и `ACCESS_NETWORK_STATE`
- Retrofit и OkHttp для сетевых запросов
- Возможность загрузки контента или обновлений

#### Дополнительные активности:
- `ModernSplashActivity` - современный сплэш-скрин
- `VideoSplashActivity` - видео сплэш для legacy устройств  
- `AppIconSettingsActivity` - настройки иконки приложения

## Выводы

### Основные расширения APK по сравнению с исходным кодом:

1. **OCR Функциональность**: Полная интеграция Google ML Kit для распознавания текста
2. **PDF Поддержка**: Расширенная через PDFBox и PDFium  
3. **Сетевые возможности**: Retrofit, OkHttp для сетевого взаимодействия
4. **Аналитика**: Google Play Services для сбора метрик
5. **Оптимизация**: Профили ART, DataStore
6. **Многоязычность**: Токенизаторы и модели для разных языков

### Отсутствующие в исходном коде модули:

- `feature-ocr` - полная OCR функциональность
- `feature-translate` - возможности перевода  
- Сетевые модули для загрузки контента
- Аналитические модули
- Расширенная поддержка PDF через нативные библиотеки

### Рекомендации для синхронизации:

1. **Добавить OCR модули** в исходный код
2. **Интегрировать сетевые библиотеки** (Retrofit/OkHttp)  
3. **Обновить Gradle зависимости** для ML Kit
4. **Добавить нативные библиотеки** для PDF и OCR
5. **Синхронизировать AndroidManifest.xml** с APK версией

## Размер и производительность

- **Размер APK**: 146.2 MB (довольно большой из-за ML моделей и нативных библиотек)
- **DEX файлы**: 27 файлов (указывает на сложность и много зависимостей)
- **Поддержка архитектур**: Универсальная (все основные архитектуры включены)

Декомпилированный APK показывает, что приложение значительно более функциональное и сложное, чем текущий исходный код в репозитории.