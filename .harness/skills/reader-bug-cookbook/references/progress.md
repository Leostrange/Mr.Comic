# progress.md — reading progress 100% bug, completion gating

## Симптом → файл → причина → фикс

### «Книга не прочитана, но показывает 100%»

| Поле | Значение |
| --- | --- |
| Где живёт | `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt:4629-4650` (функция `shouldMarkCompleted`) и `:3825-3882` (где выставляется `isCompleted = true, readingProgress = 1f`) |
| Стреляющая строка | L4633: `return countsTowardReadingProgress || sessionManualPageTurns > 0` |
| Корневая причина | Если пользователь хотя бы раз листанул страницу за сессию (`sessionManualPageTurns > 0`), и книга дошла до `lastPage` (`reachedLastPage == true`), то она помечается как прочитанная. Это даёт false-positive, когда читатель открывает превью книги и пролистывает одну страницу. |
| Минимальный фикс | (1) Условие должно быть `reachedLastPage && (countsTowardReadingProgress && sessionManualPageTurns >= 5)` — не просто «больше нуля», а ≥ N перелистываний. (2) Дополнительно — gate по `elapsedTime` (например, ≥30 секунд сессии). (3) Не сбрасывать `isCompleted=false` автоматически без команды пользователя. |
| Дополнительный фикс | Если `currentPage / totalPages` используется как fallback для прогресса — отображать `99.x%` округлённое до 99, а не `100%`, пока `isCompleted != true`. |
| Verified-in | `fbreader` использует `lastReadParagraph / totalParagraphs` (дробный), не бинарный `currentPage == pageCount`. |

### «Прогресс сохраняется на текущей странице при выходе, но в следующий раз перепрыгивает в конец»

| Поле | Значение |
| --- | --- |
| Где живёт | `ReaderViewModel.kt:3406-3445` (запись прогресса); цепочка `comicRepository.updateProgress` (L3827) |
| Корневая причина | Возможно, что `previousPersistedPage = null` (первый запуск) расценивается как «можем сразу прыгнуть», а `newPage = lastPage` помечается как 100%. |
| Минимальный фикс | Добавить явный guard: `if (previousPersistedPage == null && sessionManualPageTurns < MIN_REQUIRED_TURNS) return 0 // не учитывать как дельту`. |

### «Статус bar показывает 99% на последней странице, но обложка зелёная (100%)»

| Поле | Значение |
| --- | --- |
| Где живёт | `LibraryScreen.kt` + `comicRepository.updateProgress` |
| Корневая причина | Расхождение между `progressPercent` (computed on the fly) и `isCompleted` (stored). При смене последней страницы бар пересчитывается, а флаг «completed» приходит асинхронно. |
| Минимальный фикс | В LibraryViewModel.upsert читать из той же транзакции `progress = currentPage / max(totalPages, 1)` и `isCompleted = progress >= 0.99`. Не хранить их раздельно. |

## Что НЕ надо делать

- Не использовать `currentPage >= totalPages` без `>=` для off-by-one — `totalPages` рассчитывается асинхронно и может отставать от `currentPage` на одну итерацию.
- Не сбрасывать `isCompleted=false` при очередном page turn (это сломает «прочитанные книги» в библиотеке). Сброс только при команде пользователя или смене книги.

## Smoke test

1. Открыть книгу, долистать до последней страницы с первой попытки (т.е. без чтения).
2. Прогресс должен остаться ≤99%.
3. Долистать, делая ≥5 перелистываний и держа книгу открытой ≥30 секунд, тогда уже 100%.
4. Сравнить с тестами в `core-model/.../ReaderProgressPolicyTest.kt` (L1-100).

## Verified-in

- `fbreaderj/ZLTextView` хранит прогресс как `lastVisibleElement / totalElements`, не как «currentPage == totalPages». Это наиболее устойчивая схема.
- `koodo-reader/src/utils/file/reader.ts` хранит отдельный `progress` (0..1, дробный), а флаг «finished» ставится вручную.
