# Branch Protection + Kover-порог в PR

**Дата:** 2026-08-08 · **Репозиторий:** [github.com/Leostrange/Mr.Comic](https://github.com/Leostrange/Mr.Comic)

Branch Protection — это настройка GitHub (Settings → Branches), её нельзя включить из
кода репозитория. Ниже — точные шаги, а также что уже настроено в репозитории.

## Что уже в репозитории (готово)

| Механизм | Где | Статус |
|---|---|---|
| CI на push/PR в `main` | `.github/workflows/build-apk.yml` | ✅ |
| `unit-tests` — все модули | `./gradlew testDebugUnitTest` | ✅ |
| `lint` — detekt + Android lint | `./gradlew detekt :app:lintDebug` | ✅ |
| `coverage` — Kover отчёт **+ порог 20%** | `./gradlew koverXmlReport koverVerify` | ✅ |
| Nightly — тесты + detekt на `main` | `.github/workflows/nightly.yml` | ✅ |
| Порог 20% (Kover `verify`) | `build.gradle.kts` → `kover { reports { verify { rule { bound { minValue = 20 } } } } }` | ✅ |

Порог enforcement: Kover 0.9.x навешивает `koverVerify` на `check`. В CI-джобе
`coverage` вызывается `koverVerify` явно, поэтому падение покрытия ниже 20%
проваливает PR.

## Что нужно включить вручную (GitHub UI)

1. **GitHub → Settings → Branches → Add branch protection rule**
   - Branch name pattern: `main`
2. Включить **Require a pull request before merging**:
   - `Require approvals` → 1 (или 0 для соло-проекта)
   - `Dismiss stale pull request approvals when new commits are pushed` — ✅
3. Включить **Require status checks to pass before merging**:
   - `Require branches to be up to date before merging` — ✅
   - Выбрать из списка (имена соответствуют job в `build-apk.yml`):
     - `unit-tests`
     - `lint`
     - `coverage`
     - `build`
4. Включить **Require conversation resolution** — ✅
5. **Do not allow bypassing the above settings** — ✅ (для прода)
6. Save changes.

## Примечания

- Job `coverage` зависит от `unit-tests` (`needs: [unit-tests]`), поэтому при падении
  юнит-тестов coverage не запускается — лишний цикл CI не тратится.
- Nightly (`nightly.yml`) дополнительно ловит регрессии, не покрытые PR: полный
  прогон `testDebugUnitTest` + `detekt` на свежем `main`.
- Если порог 20% окажется слишком строгим/мягким — правка только в
  `build.gradle.kts` (одно число), без изменения workflow.
