# Реагирование на утечку Tavily API-ключа

Дата инвентаризации: 2026-08-13.

## Что произошло

- Ключ был захардкожен в `TavilySearchAgent.kt` и попал в git-историю.
- Из рабочего дерева удалён коммитом `5225e0a`, но остался в истории и в удалённых refs.
- Единственный уникальный секрет в истории (проверено по префиксам
  Tavily/OpenAI/Google/AWS/GitHub/Slack/Yandex/Stripe/приватные ключи).

## Масштаб (по факту на 2026-08-13)

- Коммиты, менявшие вхождения ключа: `61ce56a` (удаление), `d0013fd` (пере-добавление
  при переименовании namespace), `5225e0a` (финальное удаление).
- Refs, содержащие ключ на конце (21): локальные `backup/arc11-stale-894176f`,
  `freebuff/apk-*`, `freebuff/https-api-*`, `freebuff/task-44e3619f`,
  `freebuff/task-69b57678`, `wip/opds-fb2-2026-08-09`, `worktree-opds-verify`,
  их `origin/*`-копии, `origin/main`, `origin/HEAD`; теги `v2.2.0`, `v2.3.0`,
  `freebuff-snapshot/*`.
- Чистые: `v2.1.0`, `origin/cursor/*`.

## Порядок действий (строго в этом порядке)

### Шаг 1 — Ротация ключа (ДО вычистки истории)

Вычистка истории не отменяет того, что ключ мог быть уже скопирован. Сначала отзываем.

- [ ] Открыть панель Tavily (https://app.tavily.com → API Keys).
- [ ] Найти ключ `tvly-dev-1N5efc…`, нажать **Revoke** / **Delete**.
- [ ] Создать новый ключ того же уровня (development).
- [ ] Положить новый ключ только в `local.properties` (локально) и в
      GitHub Secrets (для CI) — никогда в код.
- [ ] Проверка «ключ мёртв»: любой API-запрос со старым ключом должен вернуть 401/403.
- [ ] Учесть всех потребителей: если ключ использовался ещё где-то (деплой, скрипты,
      другие репозитории) — перевыпустить и там.

### Шаг 2 — Вычистка истории (после ротации, на свежем клоне)

Требует согласования со всеми, у кого есть клон (после force-push все переклонируют).

```bash
# 0) установить инструмент (один из вариантов)
#    brew install git-filter-repo          # macOS
#    sudo apt install git-filter-repo      # Debian/Ubuntu
#    pipx install git-filter-repo          # иначе

# 1) полное зеркало со всеми ветками/тегами
git clone --mirror <URL> repo-filtered.git
cd repo-filtered.git

# 2) извлечь полное значение ключа из истории (до перезаписи)
KEY="$(git log --all -p -G 'tvly-' | grep -oE 'tvly-[A-Za-z0-9_-]{20,}' | sort -u | head -1)"
test -n "$KEY" || { echo "ключ не найден"; exit 1; }

# 3) файл замены: literal==>replacement
printf '%s==>REDACTED_TAVILY_API_KEY\n' "$KEY" > replacements.txt

# 4) переписать всю историю (все коммиты, ветки, теги)
git filter-repo --replace-text replacements.txt --force

# 5) верификация (обе команды — пустой вывод)
git log --all -S "$KEY" --oneline
git rev-list --all | while read -r c; do
  git grep -q "$KEY" "$c" -- 2>/dev/null && echo "leak in $c"
done
```

Примечания:

- `--force` нужен, если клон не «свежий» или история уже переписывалась.
- `git filter-repo` сам удаляет remote `origin` (мера безопасности) — добавить заново.
- Если появятся другие значения ключей — добавить их отдельными строками в
  `replacements.txt`; regex-вариант: `regex:tvly-[A-Za-z0-9_-]{20,}==>REDACTED_TAVILY_KEY`.

### Шаг 3 — Force-push (деструктивно, только с явного одобрения)

```bash
git remote add origin <URL>
git push --force --all
git push --force --tags
```

### Шаг 4 — Удалить протухшие remote-ветки

Ветки, которых нет локально, но которые всё ещё содержат ключ на origin, удалить явно:

```bash
git fetch --prune
git push origin --delete backup/arc11-stale-894176f
git push origin --delete worktree-opds-verify
git push origin --delete freebuff/apk-6adb2719-9db0-4636-8e83-76257bc94b21
git push origin --delete freebuff/https-api-hcnsec-cn-claude-code-bd1cc3a8-3e4f-49d7-a4ec-7a34740b2dbc
git push origin --delete freebuff/task-44e3619f-2b5b-4ee7-a14f-c14e96b57589
git push origin --delete freebuff/task-69b57678-647e-4f2e-ad31-224f00f2260b
```

### Шаг 5 — Оповестить всех разработчиков

- Все переклонируют репозиторий заново (force-push ломает их локальную историю).
- Запретить `git pull` поверх старого клона.

## Защита от повторения (уже внедрена)

- `scripts/scan-secrets.sh` — рабочий скрипт скана (рабочее дерево + диапазон коммитов).
- `.githooks/pre-commit` — локальный hook (`core.hooksPath = .githooks`).
- CI `.github/workflows/build-apk.yml` → джоба `secrets-scan` — сканирует рабочее дерево
  И новые коммиты PR/push (`git log -p` только по добавленным строкам).
- `.gitignore` усилен (`local.properties`, `*.pem`, `*.key`, `.env*`).
