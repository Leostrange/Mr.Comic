#!/bin/bash

# Скрипт статического анализа кода проекта Mr.Comic
# Выполняет проверку качества кода и поиск потенциальных проблем

# Установка переменных окружения
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# Создание директорий для отчетов
mkdir -p reports/static-analysis
mkdir -p reports/static-analysis/lint
mkdir -p reports/static-analysis/checkstyle
mkdir -p reports/static-analysis/pmd

echo "=== Начало статического анализа кода проекта Mr.Comic ==="
echo "Дата и время: $(date)"

# Запуск Android Lint
echo "Запуск Android Lint..."
./gradlew lint > reports/static-analysis/lint/lint-output.txt
cp app/build/reports/lint-results*.html reports/static-analysis/lint/ 2>/dev/null || echo "Отчет Lint не найден"

# Запуск Checkstyle
echo "Запуск Checkstyle..."
./gradlew checkstyle > reports/static-analysis/checkstyle/checkstyle-output.txt
cp app/build/reports/checkstyle/*.html reports/static-analysis/checkstyle/ 2>/dev/null || echo "Отчет Checkstyle не найден"

# Запуск PMD
echo "Запуск PMD..."
./gradlew pmd > reports/static-analysis/pmd/pmd-output.txt
cp app/build/reports/pmd/*.html reports/static-analysis/pmd/ 2>/dev/null || echo "Отчет PMD не найден"

# Анализ результатов
echo "Анализ результатов статического анализа..."

# Подсчет предупреждений Lint
LINT_WARNINGS=$(grep -c "Warning" reports/static-analysis/lint/lint-output.txt || echo 0)
LINT_ERRORS=$(grep -c "Error" reports/static-analysis/lint/lint-output.txt || echo 0)

# Подсчет предупреждений Checkstyle
CHECKSTYLE_WARNINGS=$(grep -c "warning" reports/static-analysis/checkstyle/checkstyle-output.txt || echo 0)
CHECKSTYLE_ERRORS=$(grep -c "error" reports/static-analysis/checkstyle/checkstyle-output.txt || echo 0)

# Подсчет предупреждений PMD
PMD_WARNINGS=$(grep -c "warning" reports/static-analysis/pmd/pmd-output.txt || echo 0)
PMD_ERRORS=$(grep -c "error" reports/static-analysis/pmd/pmd-output.txt || echo 0)

# Создание сводного отчета
echo "Создание сводного отчета..."
cat > reports/static-analysis/summary.txt << EOF
=== Сводный отчет статического анализа кода ===
Дата и время: $(date)

Android Lint:
  Предупреждений: $LINT_WARNINGS
  Ошибок: $LINT_ERRORS

Checkstyle:
  Предупреждений: $CHECKSTYLE_WARNINGS
  Ошибок: $CHECKSTYLE_ERRORS

PMD:
  Предупреждений: $PMD_WARNINGS
  Ошибок: $PMD_ERRORS

Общее количество:
  Предупреждений: $(($LINT_WARNINGS + $CHECKSTYLE_WARNINGS + $PMD_WARNINGS))
  Ошибок: $(($LINT_ERRORS + $CHECKSTYLE_ERRORS + $PMD_ERRORS))
EOF

# Проверка результатов
TOTAL_ERRORS=$(($LINT_ERRORS + $CHECKSTYLE_ERRORS + $PMD_ERRORS))
if [ $TOTAL_ERRORS -gt 0 ]; then
  echo "Статический анализ завершен с ошибками: $TOTAL_ERRORS"
  echo "Подробности в директории reports/static-analysis/"
  exit 1
else
  echo "Статический анализ успешно завершен."
  echo "Отчеты доступны в директории reports/static-analysis/"
  exit 0
fi
