## Summary

<!-- Кратко опишите, что изменено и зачем. -->

## Related issue

<!-- Например: Closes #154 или Relates to #123. -->

## Scope

- [ ] Reader / navigation
- [ ] Library / formats
- [ ] Translation / dictionaries / AI
- [ ] OCR / comic overlay
- [ ] Settings / themes
- [ ] Build / CI / documentation

## Validation

- [ ] `./gradlew --no-daemon --console=plain testDebugUnitTest`
- [ ] `./gradlew --no-daemon --console=plain :app:lintDebug`
- [ ] `./gradlew --no-daemon --console=plain :app:assembleDebug`
- [ ] Targeted module tests added or updated
- [ ] Six text-reader presets checked where relevant
- [ ] Offline/no-network behavior checked where relevant
- [ ] No API keys, personal data or user documents added

## UI evidence

<!-- Для изменений интерфейса добавьте screenshots/video и укажите preset/device/API level. -->

## Risk and rollback

<!-- Укажите риск регрессии, миграции данных и способ отката. -->

## Checklist

- [ ] Documentation updated
- [ ] Third-party notices updated if dependencies/assets changed
- [ ] Commit messages follow project convention
- [ ] This PR is limited to one coherent change
