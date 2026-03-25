# Gamification Tasklist

Актуальный тасклист по геймификации `Mr.Comic`, собранный из:
- `Геймификация приложения для чтения книг и комиксов с маскотом.md`
- `Mr.Comic_gameficator.txt`
- текущего состояния кода и уже внедрённых фич

Последнее обновление: `2026-03-23`

## Текущий статус

### Уже закрыто

- [x] `MVP progress layer`: recap после `chapter/title`, `Continue`, checkpoint trail.
- [x] `Goals MVP`: daily goal, weekly plan, soft streak, grace day.
- [x] `Mr.Comic MVP`: отдельная вкладка, `XP/stage`, `next unlock`, `quest-feedback`.
- [x] `Progress/Profile hub`: отдельный экран прогресса.
- [x] `Reader session policy`: jump через `TOC / bookmarks / slider` не фармит `pages / XP / completion`.
- [x] `P1 Reading Calendar / History`

### В работе / следующий цикл

- [~] `P0 Hardening текущего MVP`
- [~] `P2 Progress / Profile Hub v2`
- [x] `P3 Mascot State System`

### Ещё не начато

- [x] `P4 Return / Re-engagement Layer`
- [x] `P5 Discovery Quests`
- [~] `P6 Analytics / Experimentation`
- [~] `P7 Seasonal Layer`
- [ ] `P8 Social Layer`
- [ ] `P9 Economy / Unlocks`

## Пакеты работ

### P0. Hardening текущего MVP

Цель: стабилизировать уже внедрённую геймификацию и reader-recap слой.

- [ ] Прогнать ручной QA `after chapter / after title` на `text`, `image`, `webtoon`.
- [ ] Проверить сценарии `READING` vs `JUMP`: `TOC`, `bookmarks`, `slider`, `fast scroll`.
- [ ] Добавить integration-check для `ReaderClosed` analytics payload.
- [ ] Проверить консистентность `Mr.Comic` и `Progress/Profile` по `XP/stage/next unlock`.
- [ ] Проверить opt-out сценарии: `mascot off`, `goals off`, пустая библиотека, активный поиск.

### P1. Reading Calendar / History

Цель: перевести текущие daily/weekly счётчики в полноценную историю чтения.

- [x] Ввести модель истории чтения по дням.
- [x] Хранить `dayKey -> pages / minutes / completed checkpoints`.
- [x] Добавить компактный календарный блок в `Progress/Profile hub`.
- [x] Добавить фильтры `7 days / 30 days / all time`.
- [x] Показать `streak history` и `grace day usage` отдельно от сырых страниц.

### P2. Progress / Profile Hub v2

Цель: расширить текущий экран прогресса до полноценного центра геймификации.

- [~] Добавить safe `stage timeline / XP runway` от текущего снапшота без фальшивой исторической XP-ленты.
- [~] Протянуть реальную `XP history` через day-history без backfill старых наград и без фальшивого XP-графика.
- [~] Добавить блоки `XP history`, `stage timeline`, `achievements progress`, `reading rhythm`.
  Сейчас: `XP history`, `stage timeline`, `reading rhythm` и compact `achievements progress` уже встроены; richer achievements/history presentation остаётся хвостом.
- [x] Сделать архив стадий `Mr.Comic`.
- [x] Добавить `best week`, `best streak`, `completed titles`.
- [x] Выровнять маршруты из `Continue`, `Library -> Mr.Comic` и `Settings -> About`.
- [x] Проверить, что hub не расходится с данными вкладки `Mr.Comic`.

### P3. Mascot State System

Цель: убрать разрозненные UI-эвристики и перевести маскота на единую state-model.

- [x] Зафиксировать модель `stage + mood + context`.
- [x] Первый срез: вынести общий `mood/presence` state для `Continue` и `Library -> Mr.Comic`.
- [x] Вынести общий resolver для `stage preview`, чтобы `Continue` и `Library` не считали повышение стадии по-разному.
- [x] Ввести единый resolver состояний для `Home`, `Progress`, `Return`, `Level Up`, `Idle`.
  Сейчас: общий resolver и тесты закрывают `Home / Progress / Return / Level Up / Idle`, а presentation-contract для `mini avatar / scene lead / stage preview lead` единый.
- [x] Дотянуть `Continue` до quiet-mode: при `mascot off` поверхность остаётся, но уходит в нейтральную подачу без mascot-stage preview.
- [x] Разделить asset-contract: `mini avatar`, `scene character`, `stage preview`.
  Сейчас: `mini avatar`, `scene character` и `stage preview lead` уже вынесены в `core-ui`; на них переведены `Continue`, `Library`, `Progress/Profile`, `Reader` и `Onboarding`.
- [x] Подготовить архив образов в профиле.
  Сейчас: `Progress/Profile` показывает visual archive по стадиям через общий mascot-contract; архив уважает quiet-mode и не держит локальные mascot-only ветки.
- [x] Проверить quiet-mode и mascot opt-out на всех поверхностях.
  Сейчас: `Continue / Library / Progress / Reader / Onboarding` сидят на общем mascot-contract, direct mascot-only ветки убраны, quiet-mode покрыт общими resolver-ами, тестами и зелёной сборкой.

### P4. Return / Re-engagement Layer

Цель: мягко возвращать пользователя к чтению без давления.

- [x] Сделать `return screen` для пользователя, который не читал `2–4` дня.
- [x] Добавить CTA `Продолжить чтение`.
- [x] Подвязать `return` к `streak / grace / weekly state`.
- [x] Сделать нейтральную версию для `mascot off`.
- [x] Подготовить silent-вариант без тяжёлой сцены.
  Сейчас: `Continue` показывает лёгкую return-card при паузе в `2–4` дня, ведёт обратно в `continue` или последний checkpoint, уважает quiet-mode и не требует отдельного тяжёлого экрана.

### P5. Discovery Quests

Цель: превратить `next unlock` в полноценный discovery-loop.

- [x] Добавить типы квестов: `дочитай`, `начни новый тайтл`, `заверши серию`, `прочитай из подборки`.
- [x] Привязать достижения к подборкам и жанровым рекомендациям.
  Сейчас: `AUTHOR_FAN` и `GENRE_GOURMET` уже умеют вести в author/genre collection query, а `MARATHON` — в series-route, если на полке есть живая серия.
- [x] Вести пользователя в конкретный маршрут: `recent`, `files`, `series`, `collection`.
- [x] Ограничить частоту переключения квестов.
  Сейчас: хаб помнит не только target achievement, но и последний discovery-route, не дёргая пользователя между `recent / files / series / collection` без веской причины.
- [x] Проверить, что квесты не шумят при активном поиске.
  Сейчас: search не только глушит push-CTA и feedback-action, но и откладывает сам `quest feedback` до момента, когда поиск очищен, чтобы discovery-loop не спорил с текущим search-срезом.

### P6. Analytics / Experimentation

Цель: довести измерение геймификации до уровня, пригодного для rollout и A/B.

- [x] Добавить события `goal_set`, `goal_completed`, `stage_up`, `quest_switched`, `quest_completed`.
- [~] Протянуть события в рабочие точки приложения.
  Сейчас: `goal_set` шьётся из настроек цели, `goal_completed` — из reader progress, `stage_up` и `quest_switched / quest_completed` — из `Mr.Comic`/библиотеки.
- [x] Закрепить guardrails против накрутки через jump-навигацию.
  Сейчас: `TOC / bookmarks / slider / pure jump to last page` уже не фармят `pages / XP / completion / manualPageTurns`; session-policy покрыт тестами.
- [x] Подготовить feature flags для mascot surfaces и quest prompts.
  Сейчас: global mascot surfaces уже сидят на общем toggle, а discovery quest prompts выключаются отдельным флагом в настройках и реально гасятся во вкладке `Mr.Comic`.
- [x] Зафиксировать локальный snapshot-слой для метрик `WAR`, `completion`, `return prompt`, `opt-out`.
  Сейчас: `Continue` логирует `metrics_snapshot` с `activeMinutesLast7Days`, `naturalUnitsLast7Days`, `warQualified`, `completionRate`, `returnPromptEligible`, `mascotOptedOut`, `questPromptsOptedOut`. Это честный in-app сигнал для rollout, а не внешний агрегированный дашборд.
- [x] Проверить риск `novelty effect` и решить, нужны ли отдельные rate-дашборды вне приложения.
  Сейчас: `metrics_snapshot` дополнен `noveltyWindowActive`, `noveltySources`, `noveltyDaysRemaining`, а источники считаются по реальным timestamps включения `mascot / quest prompts / daily goal`. Для текущего локального rollout этого достаточно; отдельные внешние rate-дашборды можно отложить до следующего A/B-цикла.

### P7. Seasonal Layer

Цель: добавить ограниченные по времени события без перегруза core UX.

- [~] Сделать сезонные цепочки достижений на `4–6` недель.
  Сейчас: есть первый quiet seasonal arc на `28` дней во вкладке `Mr.Comic`; полноценная многосезонная цепочка ещё не развернута.
- [x] Добавить сезонный прогресс в `Mr.Comic` hub.
  Сейчас: после аналитики во вкладке `Mr.Comic` показывается компактная seasonal-card с прогрессом по активным дням, checkpoints и минутам.
- [x] Привязать сезон к подборкам, а не к grind-механике.
  Сейчас: seasonal CTA ведёт в `collection / series / files` по живому состоянию полки, а прогресс опирается на ритм чтения, checkpoints и минуты, а не на жёсткий фарм страниц.
- [x] Подготовить quiet rollout без агрессивных push.
  Сейчас: сезонный слой живёт только во вкладке `Mr.Comic`, остаётся компактным, и при активном поиске гасит push-CTA вместо спора с search-срезом.

### P8. Social Layer

Цель: добавить social-функции только как opt-in слой.

- [ ] Добавить совместные цели и shared challenge.
- [ ] Добавить настройки приватности и видимости активности.
- [ ] Избежать лидербордов по умолчанию.
- [ ] Подготовить social-слой как отдельный пакет после стабилизации `P0–P7`.

### P9. Economy / Unlocks

Цель: не трогать экономику, пока не стабилен core reading + gamification loop.

- [ ] Спроектировать валюту и unlock paths.
- [ ] Развести `wait / ad / pay` без скрытых приоритетов.
- [ ] Добавить прозрачный кошелёк, expiry и spending order.
- [ ] Сделать отдельный compliance-review под Android billing.

## Очередь выполнения

- [ ] `1.` P0 Hardening текущего MVP
- [x] `2.` P1 Reading Calendar / History
- [~] `3.` P2 Progress / Profile Hub v2
- [x] `4.` P3 Mascot State System
- [x] `5.` P4 Return / Re-engagement Layer

## Раздача по потокам

- `Anscombe`: `P0 + P1 + P6` — domain, analytics, storage, policy, tests.
- `Goodall`: `P2 + P3 + P4 + P5` — UI, hub, mascot surfaces, navigation flow.
- `Main`: интеграция, сборка, regression, финальная сводка.

## Acceptance notes

- Любая новая геймификация должна жить как слой вокруг чтения, а не поверх чтения.
- В ридере не добавлять шумные поверхности, если это не естественный checkpoint.
- Все новые механики должны уважать `mascot off` и тихий режим.
- Social и economy не брать раньше стабилизации `P0–P6`.

## P0 Manual QA Checklist

- [ ] `Text reader`: обычное чтение до chapter recap.
- [ ] `Image reader`: обычное чтение до chapter recap.
- [ ] `Webtoon`: scroll-progress и recap без лишних вспышек.
- [ ] `TOC jump`: переход не даёт `pages / XP / chapter recap`.
- [ ] `Bookmark jump`: переход не даёт `pages / XP / chapter recap`.
- [ ] `Slider jump`: переход не даёт `pages / XP / chapter recap`.
- [ ] `Pure jump to last page`: не даёт `title complete` и бонусный `XP`.
- [ ] `Jump to last page after real reading in same session`: completion допускается.
- [ ] `mascot off`: `Mr.Comic`, `Continue`, `Progress/Profile`, `Reader`, `Onboarding` уходят в нейтральный режим.
- [ ] `goals off`: rhythm-блоки показывают спокойный disabled-state, без битых счётчиков.
- [ ] `active search`: `Mr.Comic` tab и `Progress/Profile` честно маркируют search-context.
- [ ] `empty library`: recent/progress empty-state не выглядит как битый прогресс.

### P0 Automated Coverage Notes

- [x] `Reader jump/session policy` уже покрыт unit-тестами: `TOC / bookmarks / slider / pure jump / jump after reading / ReaderClosed payload`.
- [x] `Progress/Profile consistency` и `history/streak/grace policy` уже покрыты unit-тестами.
- [x] `Search / empty library / goals off` для `Progress/Profile` уже частично покрыты policy-тестами.
- [ ] Реальный UI-прогон на устройстве всё ещё нужен для `text / image / webtoon` recap-поведения и визуальных quiet-mode состояний.
