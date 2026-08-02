# ТЗ: Генерация Фоновых Изображений Для Библиотеки Mr.Comic

## 1. Цель

Нужно подготовить набор фоновых изображений для экрана библиотеки Mr.Comic, которые будут использоваться как визуальная основа под существующие пресеты тем библиотеки.

Фоны должны:

- усиливать характер пресета, а не спорить с обложками;
- не мешать читаемости названий и карточек;
- работать на телефонах и планшетах в портретной и альбомной ориентации;
- не содержать текста, логотипов, персонажей крупным планом и агрессивных деталей в центре;
- хорошо переживать размытие, затемнение и наложение UI.

## 2. На Что Опираться В Коде

Текущие библиотечные quick-presets живут в:

- [LibraryVisualPresets.kt](/C:/Users/xmeta/projects/Mr.Comic/android/core-ui/src/main/java/com/example/core/ui/library/LibraryVisualPresets.kt)

Текущие общие темы приложения живут в:

- [ThemePreset.kt](/C:/Users/xmeta/projects/Mr.Comic/android/core-ui/src/main/java/com/example/core/ui/theme/ThemePreset.kt)

Текущие пресеты чтения живут в:

- [ReadingPreset.kt](/C:/Users/xmeta/projects/Mr.Comic/android/core-ui/src/main/java/com/example/core/ui/theme/ReadingPreset.kt)

Это ТЗ в первую очередь покрывает библиотечные фоны, но стилистически они должны быть согласованы и с темами приложения.

## 3. Текущие Пресеты Библиотеки

Нужно сгенерировать фоновые ассеты минимум для 4 текущих библиотечных пресетов:

1. `PAPER`
   Связка:
   - `backgroundStyle = PAPER_GRAIN`
   - `shelfStyle = OAK`
   - `graphicCoverStyle = MINIMAL`

2. `DARK_SHELF`
   Связка:
   - `backgroundStyle = DARK_STUDY`
   - `shelfStyle = WALNUT`
   - `graphicCoverStyle = INK`

3. `AMOLED`
   Связка:
   - `backgroundStyle = EINK_WASH`
   - `shelfStyle = MINIMAL`
   - `useAmoledDark = true`

4. `COMICS_NEON`
   Связка:
   - `backgroundStyle = MANGA_INK`
   - `shelfStyle = NEON`
   - `graphicCoverStyle = POSTER`

## 4. Обязательные Визуальные Направления

### 4.1 `PAPER_GRAIN`

Настроение:
- тёплая бумага;
- спокойная библиотечная витрина;
- мягкий дневной свет;
- тактильная фактура без грубого шума.

Визуальные признаки:
- светлый кремово-песочный фон;
- едва заметное бумажное зерно;
- очень мягкие переходы светло-бежевого, тёплого серого, охры;
- можно добавлять лёгкие тени полок или архитектурные намёки, но не реальные полки крупным планом.

Нельзя:
- выраженную фотографичную деревянную стену;
- контрастные пятна в центре;
- виньетку, делающую фон грязным;
- активные иллюстративные объекты.

### 4.2 `DARK_STUDY`

Настроение:
- кабинет;
- тёмное дерево;
- тёплый рассеянный свет;
- глубина, уют и премиальность.

Визуальные признаки:
- тёмно-коричневая, ореховая, кофейная гамма;
- мягкая глубина, лёгкие тени, намёк на интерьер;
- центр относительно спокойный;
- края могут быть богаче по фактуре.

Нельзя:
- полноценные книжные полки с читаемыми корешками;
- слишком яркие лампы;
- оранжевые пересветы;
- клишированную фото-реалистичную библиотеку.

### 4.3 `EINK_WASH`

Настроение:
- монохром;
- чистота;
- почти бумажная поверхность;
- минимализм без пустоты.

Визуальные признаки:
- белый, молочный, светло-серый, графитовый;
- лёгкий wash, туман, бумажная микрофактура;
- очень низкий контраст;
- ощущение чистого фона для карточек.

Нельзя:
- грязные пятна;
- резкие чёрные мазки в центре;
- текстурный шум, который “рябит” под обложками;
- псевдо-старую бумагу с жёлтизной.

### 4.4 `MANGA_INK`

Настроение:
- манга/комикс энергия;
- неоновая витрина;
- ink, halftone, постерность;
- динамика без визуального мусора.

Визуальные признаки:
- тёмная база;
- графические чернильные формы;
- полутоновые точки, диагональные ритмы, comic panel energy;
- умеренные неоновые акценты cyan/magenta/blue, но не по всему полю;
- центр всё ещё должен оставаться пригодным для карточек.

Нельзя:
- текст, bubble-диалоги, персонажей, логотипы;
- кислотный full-screen noise;
- слишком яркий центр;
- перегруженный киберпанк фон, который спорит с обложками.

## 5. Дополнительная Привязка К Общим Темам Приложения

Если будем расширять набор дальше, фоновые генерации должны быть совместимы с этими theme-профилями:

1. `PAPER`
2. `GLASS`
3. `AMOLED`
4. `NEON`
5. `GRAY`
6. `SEPIA`
7. `EINK`

Рекомендация:

- сначала делаем 4 базовых библиотечных background-style;
- затем, при необходимости, делаем производные варианты `GLASS`, `SEPIA`, `GRAY`, `NEON`.

## 6. Технические Требования К Генерации

### 6.1 Форматы Выхода

На каждый background-style нужен минимум такой комплект:

1. `phone_portrait`
   - размер: `1440x3200`

2. `phone_landscape`
   - размер: `3200x1440`

3. `tablet_portrait`
   - размер: `2048x2732`

4. `ultra_master`
   - размер: `3072x3072` или `3072x4096`
   - для будущих crop/derive задач

Формат файлов:

- основной: `webp`
- архивный мастер: `png`

## 6.2 Качество

- без JPEG-артефактов;
- без banding на мягких градиентах;
- без AI-ломаных линий, странных букв, псевдо-текста;
- без резкой микродетализации в центральной части экрана.

## 6.3 Контраст И Читаемость

Фон работает под:

- карточками книг/комиксов;
- title-плашками;
- полупрозрачными поверхностями;
- shelf overlay;
- blur/veil/backdrop strength.

Поэтому:

- центр кадра должен быть ровнее и спокойнее;
- активную фактуру лучше держать ближе к краям;
- средний локальный контраст должен быть умеренным;
- нельзя делать очень яркое пятно за типичной зоной карточек.

## 6.4 Safe-зоны

Нужно учитывать, что поверх фона лежат:

- верхний chrome;
- нижняя навигация;
- островки/фильтры;
- карточки библиотеки;
- popup-окна.

Условные safe-зоны:

1. Верхние `15%` кадра:
   - без активных объектов и без ярких контрастных границ.

2. Центральные `55-60%`:
   - максимально пригодны под карточки;
   - только мягкая фактура.

3. Нижние `12-15%`:
   - без визуально важных объектов, которые будут перекрыты навигацией.

## 7. Что Нельзя Генерировать

Запрещено:

- текст любого языка;
- логотипы;
- читаемые книжные корешки;
- лица, руки, персонажи;
- иконки, рамки интерфейса;
- реальные полки крупным планом с мелким повторяющимся деталем;
- резкие источники света по центру;
- предметы, которые будут выглядеть “ошибкой рендера” под карточками.

## 8. Принципы Для Промптов Генерации

Каждый промпт должен:

- описывать материал, свет, глубину и цвет;
- отдельно требовать clean center;
- отдельно запрещать text/logo/characters;
- отдельно требовать background use for media library UI.

Общий negative block:

- no text
- no letters
- no watermark
- no logo
- no characters
- no face
- no readable bookshelves
- no UI elements
- no speech bubbles
- no poster typography
- no strong bright object in center

## 9. Базовые Prompt-направления

### 9.1 `PAPER_GRAIN`

Prompt-направление:

`Warm paper grain background for a digital media library UI, soft cream and parchment tones, subtle tactile fiber texture, gentle diffuse daylight, calm center area for book covers, minimal contrast, elegant editorial atmosphere, premium background plate, no objects, no text, no characters`

### 9.2 `DARK_STUDY`

Prompt-направление:

`Dark study background for a digital library interface, deep walnut and coffee tones, soft atmospheric shadows, refined wood and matte surface cues, premium reading room mood, quiet center area for media cards, subtle depth, restrained contrast, no readable shelves, no text, no characters`

### 9.3 `EINK_WASH`

Prompt-направление:

`Minimal monochrome e-ink paper wash background for a reading library UI, white to light gray tonal field, subtle paper grain, clean center, low contrast, calm editorial texture, refined grayscale atmosphere, no objects, no text, no logos, no characters`

### 9.4 `MANGA_INK`

Prompt-направление:

`Stylized manga ink background for a comics library UI, dark ink wash, subtle halftone patterns, restrained cyan neon accent, poster-like energy, clean center for cover grid, high-end comic editorial feel, no characters, no text, no logos, no speech bubbles`

## 10. Схема Именования Файлов

Рекомендуемая схема:

- `library_bg_paper_grain_phone_portrait.webp`
- `library_bg_paper_grain_phone_landscape.webp`
- `library_bg_paper_grain_tablet_portrait.webp`
- `library_bg_paper_grain_master.png`

И так же для:

- `dark_study`
- `eink_wash`
- `manga_ink`

## 11. Критерии Приёмки

Фон считается годным, если:

1. Под карточками библиотеки не теряется читаемость.
2. Названия файлов и островки остаются различимыми.
3. В центре нет визуального конфликта с обложками.
4. При blur и veil фон не превращается в грязь.
5. В `AMOLED`-сценарии фон не выглядит серым мусором.
6. В `PAPER` и `SEPIA`-сценариях фон не уходит в дешёвую жёлтую бумагу.
7. В `COMICS_NEON`-сценарии есть энергия, но нет визуального шума.
8. Нет артефактов генерации, текста и псевдо-символов.

## 12. Желаемый Итоговый Пакет

Минимальный production-пакет:

- 4 фоновых стиля
- по 4 размера на стиль
- итого `16` финальных файлов
- плюс `4` мастер-файла в `png`

Итого:

- `20` файлов на первый релиз набора

## 13. Следующий Этап После Генерации

После генерации нужен второй проход:

1. Отбор `2-3` лучших вариантов на каждый стиль.
2. Проверка прямо в библиотеке под реальным UI.
3. Подрезка contrast/blur/veil при необходимости.
4. Финальный экспорт ассетов в production-имена.

## 14. Что Можно Добавить Потом

Не в первый этап, но полезно заложить:

- сезонные варианты фонов;
- альтернативные “тихие” версии для e-ink / low-distraction;
- отдельные glass-варианты для `ThemePreset.GLASS`;
- генерацию не только background image, но и связанной shelf-texture.
