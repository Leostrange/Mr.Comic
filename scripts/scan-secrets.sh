#!/usr/bin/env bash
#
# Scans tracked files for hardcoded secrets (API keys, tokens, private keys).
# Runs in CI (build-apk.yml -> secrets-scan job) and locally:
#     bash scripts/scan-secrets.sh                  # working tree only (pre-commit)
#     bash scripts/scan-secrets.sh <base>...<head>  # working tree + added lines in range (CI)
#
# Exits 1 when a match is found. Deliberate non-secrets (test fixtures,
# documentation examples) can be marked with a trailing "secret-scan-ignore"
# comment on the offending line.
set -uo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

# Known provider key formats. Keep in sync with the audit recipe:
# Tavily, OpenAI/OpenRouter, Google, AWS, GitHub PAT, Slack, Yandex,
# Stripe, and PEM/DER private keys.
PATTERN='tvly-[A-Za-z0-9_-]{20,}|sk-[A-Za-z0-9]{20,}|AIza[0-9A-Za-z_-]{35}|AKIA[0-9A-Z]{16}|ghp_[0-9A-Za-z]{36}|github_pat_[0-9A-Za-z_]{20,}|xox[baprs]-[0-9A-Za-z-]{10,}|ya29\.[0-9A-Za-z_-]{20,}|sk_live_[0-9a-zA-Z]{16,}|pk_live_[0-9a-zA-Z]{16,}|-----BEGIN (RSA |EC |OPENSSH |DSA |PGP )?PRIVATE KEY-----'

# Only tracked files: build outputs, generated code and gitignored files
# (local.properties, *.pem, .env) are skipped automatically by git grep.
# Dictionary assets (*.tsv) carry word lists, never secrets.
matches="$(git grep -n -I -E "$PATTERN" -- ':!*.tsv' | grep -v 'secret-scan-ignore' || true)"

if [ -n "$matches" ]; then
  echo "error: possible hardcoded secrets found in tracked files:" >&2
  echo "$matches" >&2
  echo "error: rotate any leaked key and remove it from the source tree." >&2
  exit 1
fi

# Untracked but not ignored files can also carry secrets (a freshly created
# config with a key that has not been `git add`ed yet). git grep skips them,
# so scan them explicitly; -I skips binary files such as archives.
untracked_matches="$(git ls-files --others --exclude-standard -z | xargs -0 -r grep -n -I -E "$PATTERN" 2>/dev/null | grep -v 'secret-scan-ignore' || true)"
if [ -n "$untracked_matches" ]; then
  echo "error: possible hardcoded secrets found in untracked files:" >&2
  echo "$untracked_matches" >&2
  echo "error: rotate any leaked key and remove it from the source tree." >&2
  exit 1
fi

# Optional history scan. When a commit range is passed, also fail on secrets
# *introduced* by those commits. Only added lines are inspected, so a commit
# that removes a leaked key never trips the check, and the PATTERN literal in
# this file cannot self-match (it needs 20+ chars after the prefix).
RANGE="${1:-}"
if [ -n "$RANGE" ]; then
  history_matches="$(git log -p "$RANGE" 2>/dev/null | grep -E '^\+[^+]' | grep -E "$PATTERN" | grep -v 'secret-scan-ignore' || true)"
  if [ -n "$history_matches" ]; then
    echo "error: hardcoded secrets introduced in commit range $RANGE:" >&2
    echo "$history_matches" >&2
    echo "error: rotate any leaked key and remove it from the source tree." >&2
    exit 1
  fi
fi

echo "ok: no hardcoded secrets found."
