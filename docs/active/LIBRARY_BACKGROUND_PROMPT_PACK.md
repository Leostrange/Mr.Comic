# Prompt Pack: Генерация Фонов Для Библиотеки Mr.Comic

Связанный документ:

- [LIBRARY_BACKGROUND_GENERATION_TZ.md](/C:/Users/xmeta/projects/Mr.Comic/docs/active/LIBRARY_BACKGROUND_GENERATION_TZ.md)

Этот файл нужен как готовый production-пакет промптов для генерации фоновых изображений под библиотечные пресеты Mr.Comic.

## 1. Общие Правила

Фон должен быть:

- фоном, а не постером;
- визуально богатым по краям;
- спокойным в центральной зоне;
- пригодным под карточки, title-плашки и overlay UI;
- без текста, логотипов, лиц, персонажей и предметов крупным планом.

Главная цель:

- не “красивая картинка сама по себе”,
- а качественная visual plate для библиотеки.

## 2. Базовый Negative Prompt

Использовать для всех генераций:

```text
text, letters, typography, logo, watermark, signature, ui, interface, buttons, panels, icons, speech bubbles, comic captions, characters, faces, hands, people, readable books, readable book spines, centered bright object, strong spotlight in center, clutter, oversharpening, jpeg artifacts, low resolution, distorted geometry, muddy texture, chaotic noise
```

## 3. Базовые Параметры Генерации

Рекомендуемая логика:

- стиль: high-quality editorial background
- детализация: medium
- контраст: restrained
- композиция: calm center, detail on edges
- свет: soft and diffused
- saturation: controlled

Рекомендуемые размеры:

- `1440x3200`
- `3200x1440`
- `2048x2732`
- master `3072x3072` или `3072x4096`

## 4. Universal Control Line

Эту строку полезно добавлять в конец каждого prompt:

```text
designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

## 5. PAPER_GRAIN

### 5.1 Prompt A

```text
Warm paper grain background for a premium digital library interface, soft cream parchment tones, subtle paper fibers, gentle editorial texture, diffuse daylight, elegant and calm atmosphere, warm ivory, sand, oat, pale beige palette, clean center area for book covers, slightly richer edges, refined tactile paper surface, designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

### 5.2 Prompt B

```text
Minimal warm paper library background, upscale editorial paper texture, creamy off-white surface, very subtle grain, soft tonal variation, warm reading-room mood, smooth center field, delicate vignette only at edges, quiet premium atmosphere, sophisticated bookstore material language, designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

### 5.3 Prompt C

```text
Refined paper-and-parchment background for a reading app library, light cream and soft wheat tones, matte tactile surface, understated texture, balanced brightness, airy and elegant composition, no objects, no shelves, no scene illustration, only material atmosphere, clean central zone, designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

### 5.4 Variation Notes

- делать чуть холоднее: добавить `hint of cool gray paper fiber`
- делать чуть дороже: добавить `luxury editorial stock texture`
- делать мягче: добавить `lower local contrast, smoother center`

## 6. DARK_STUDY

### 6.1 Prompt A

```text
Dark study background for a premium digital library UI, deep walnut and coffee tones, soft atmospheric shadows, refined matte wood and reading room ambience, subtle depth, quiet center for cover cards, elegant dark interior material language, restrained warm highlights, premium cozy reading atmosphere, designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

### 6.2 Prompt B

```text
Moody dark library background, walnut brown, cocoa, ink-black and smoked bronze palette, soft diffused warm light, understated wood grain cues, calm central field, richer edges, no visible books, no furniture close-up, high-end editorial darkness, cinematic but controlled, designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

### 6.3 Prompt C

```text
Premium dark study material background for a bookshelf app, deep wood atmosphere, subtle layered shadows, quiet warm reflections, muted contrast, central area left clean and readable, elegant old-library mood without objects or shelves, polished but understated, designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

### 6.4 Variation Notes

- теплее: добавить `amber-brown reflected light`
- строже: добавить `lower saturation, more graphite undertone`
- глубже: добавить `slightly more edge darkness, center remains readable`

## 7. EINK_WASH

### 7.1 Prompt A

```text
Minimal monochrome wash background for a reading library UI, white, pearl gray and soft graphite tones, subtle paper wash, e-ink inspired calm surface, clean center area, low contrast, elegant grayscale editorial texture, no clutter, no objects, no dramatic vignette, designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

### 7.2 Prompt B

```text
Clean grayscale paper atmosphere for a digital bookshelf interface, gentle tonal wash, smooth center, faint material grain, minimalist e-ink aesthetic, refined monochrome field, soft edge activity only, quiet and intelligent mood, designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

### 7.3 Prompt C

```text
High-end monochrome reading app background, white to pale gray tonal blend, delicate paper texture, calm modern editorial minimalism, center kept open and clean, very low contrast, soft structural rhythm near edges, elegant non-distracting surface, designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

### 7.4 Variation Notes

- светлее: добавить `near-white dominant background`
- фактурнее: добавить `subtle ink wash bloom near outer edges`
- строже: добавить `cleaner center, less visible paper grain`

## 8. MANGA_INK

### 8.1 Prompt A

```text
Stylized manga ink background for a premium comics library UI, dark ink wash, subtle halftone patterns, restrained cyan neon accents, poster energy without clutter, strong graphic mood, calm center area for cover cards, edge detail inspired by comic print and manga pages, no characters, no text, no bubbles, designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

### 8.2 Prompt B

```text
Graphic comic-library background, dark navy-black base, ink strokes, sparse halftone dots, subtle neon cyan and magenta reflections, premium poster-like material feel, dynamic edges, stable readable center, manga editorial energy without narrative elements, designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

### 8.3 Prompt C

```text
High-end manga ink texture background for a digital comics bookshelf, dark graphic field, subtle screen tone texture, diagonal visual rhythm, restrained neon trim, polished comic-print atmosphere, center kept clear for media cards, bold but controlled, designed as a premium background for a digital media library UI, clean center area for cover cards, subtle edge detail, no central focal object, no typography
```

### 8.4 Variation Notes

- спокойнее: уменьшить `neon accents`, усилить `ink wash`
- энергичнее: добавить `comic print rhythm, diagonal edge movement`
- чище: добавить `cleaner central field, less halftone in center`

## 9. Derived Theme Variants

Если нужно быстро получить производные под общие темы приложения, использовать такие модификаторы:

### 9.1 GLASS

Добавка:

```text
soft frosted glass mood, pale blue-gray highlights, luminous airy surface, elegant translucent atmosphere
```

### 9.2 SEPIA

Добавка:

```text
warmer sepia parchment tone, golden-brown undertone, antique editorial warmth without vintage clutter
```

### 9.3 GRAY

Добавка:

```text
neutral gray material palette, calm low-saturation atmosphere, modern minimal editorial surface
```

### 9.4 NEON

Добавка:

```text
dark neon editorial atmosphere, restrained magenta and cyan edge glow, premium futuristic comic shelf mood
```

## 10. Prompt Assembly Formula

Собирать prompt лучше в таком порядке:

1. базовый стиль
2. материалы и палитра
3. композиция
4. ограничения для центра
5. указание на UI-use
6. negative prompt отдельно

Шаблон:

```text
[STYLE DIRECTION], [MATERIALS], [PALETTE], [LIGHT], [COMPOSITION], clean center area for cover cards, edge detail only, designed as a premium background for a digital media library UI, no text, no characters
```

## 11. Быстрый Shortlist Для Первого Прогона

Если гнать первую тестовую пачку, рекомендую такой минимум:

- `PAPER_GRAIN`: Prompt A + Prompt C
- `DARK_STUDY`: Prompt A + Prompt B
- `EINK_WASH`: Prompt A + Prompt C
- `MANGA_INK`: Prompt A + Prompt B

Итого:

- `8` первичных генераций

После этого:

- отобрать по 1-2 лучших,
- сделать upscale,
- затем проверить в реальном UI библиотеки.

## 12. Критерии Отбраковки

Сразу бракуем, если:

- центр визуально шумный;
- есть псевдо-текст или знаки;
- фон слишком похож на постер;
- слишком сильный световой объект в центре;
- читаемость карточек падает;
- в `AMOLED` фон выглядит как грязно-серый, а не благородно-тёмный;
- в `PAPER` фон уходит в дешёвую жёлтую бумагу;
- в `MANGA_INK` фон выглядит как обои для рабочего стола, а не UI-background.

## 13. Что Делать После Генерации

Для каждой удачной генерации сохранить:

- исходный prompt;
- negative prompt;
- seed, если генератор его поддерживает;
- размеры;
- короткую пометку, под какой preset фон лучше всего лёг.

Рекомендуемая таблица учёта:

- `file`
- `preset`
- `prompt`
- `negative`
- `seed`
- `notes`

## 14. Следующий Шаг

После первого отбора можно сделать ещё один документ:

- `LIBRARY_BACKGROUND_SELECTION_MATRIX.md`

Туда уже свести:

- какой фон под какой пресет реально победил;
- где нужна доработка blur/veil;
- какие варианты идут в production.
