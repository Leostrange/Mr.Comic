#!/bin/bash

# Скрипт запуска тестов проекта Mr.Comic
# Выполняет запуск unit-тестов или UI-тестов в зависимости от параметров

# Установка переменных окружения
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# Парсинг аргументов
TEST_TYPE="all"
while [[ "$#" -gt 0 ]]; do
  case $1 in
    --type=*) TEST_TYPE="${1#*=}" ;;
    *) echo "Неизвестный параметр: $1"; exit 1 ;;
  esac
  shift
done

# Создание директорий для отчетов
mkdir -p reports/unit-tests
mkdir -p reports/ui-tests

echo "=== Начало запуска тестов проекта Mr.Comic ==="
echo "Дата и время: $(date)"
echo "Тип тестов: $TEST_TYPE"

# Запуск unit-тестов
run_unit_tests() {
  echo "Запуск unit-тестов..."
  ./gradlew test > reports/unit-tests/unit-tests-output.txt
  
  # Копирование отчетов
  cp -r app/build/reports/tests/testDebugUnitTest/* reports/unit-tests/ 2>/dev/null || echo "Отчеты unit-тестов не найдены"
  
  # Анализ результатов
  FAILURES=$(grep -c "FAILED" reports/unit-tests/unit-tests-output.txt || echo 0)
  TOTAL=$(grep -o "Tests run: [0-9]*" reports/unit-tests/unit-tests-output.txt | awk '{sum += $3} END {print sum}')
  SUCCESS=$((TOTAL - FAILURES))
  
  echo "Результаты unit-тестов:"
  echo "  Всего тестов: $TOTAL"
  echo "  Успешно: $SUCCESS"
  echo "  Неудачно: $FAILURES"
  
  # Создание сводного отчета
  cat > reports/unit-tests/summary.txt << EOF
=== Сводный отчет unit-тестов ===
Дата и время: $(date)

Всего тестов: $TOTAL
Успешно: $SUCCESS
Неудачно: $FAILURES
EOF
  
  if [ $FAILURES -gt 0 ]; then
    echo "Unit-тесты завершены с ошибками: $FAILURES"
    return 1
  else
    echo "Unit-тесты успешно завершены."
    return 0
  fi
}

# Запуск UI-тестов
run_ui_tests() {
  echo "Запуск UI-тестов с Espresso..."
  ./gradlew connectedAndroidTest > reports/ui-tests/ui-tests-output.txt
  
  # Копирование отчетов
  cp -r app/build/reports/androidTests/connected/* reports/ui-tests/ 2>/dev/null || echo "Отчеты UI-тестов не найдены"
  
  # Анализ результатов
  FAILURES=$(grep -c "FAILED" reports/ui-tests/ui-tests-output.txt || echo 0)
  TOTAL=$(grep -o "Tests run: [0-9]*" reports/ui-tests/ui-tests-output.txt | awk '{sum += $3} END {print sum}')
  SUCCESS=$((TOTAL - FAILURES))
  
  echo "Результаты UI-тестов:"
  echo "  Всего тестов: $TOTAL"
  echo "  Успешно: $SUCCESS"
  echo "  Неудачно: $FAILURES"
  
  # Создание сводного отчета
  cat > reports/ui-tests/summary.txt << EOF
=== Сводный отчет UI-тестов ===
Дата и время: $(date)

Всего тестов: $TOTAL
Успешно: $SUCCESS
Неудачно: $FAILURES
EOF
  
  if [ $FAILURES -gt 0 ]; then
    echo "UI-тесты завершены с ошибками: $FAILURES"
    return 1
  else
    echo "UI-тесты успешно завершены."
    return 0
  fi
}

# Запуск тестов в зависимости от типа
UNIT_RESULT=0
UI_RESULT=0

if [ "$TEST_TYPE" = "unit" ] || [ "$TEST_TYPE" = "all" ]; then
  run_unit_tests
  UNIT_RESULT=$?
fi

if [ "$TEST_TYPE" = "ui" ] || [ "$TEST_TYPE" = "all" ]; then
  run_ui_tests
  UI_RESULT=$?
fi

# Проверка результатов
if [ $UNIT_RESULT -eq 0 ] && [ $UI_RESULT -eq 0 ]; then
  echo "Все тесты успешно завершены."
  echo "Отчеты доступны в директории reports/"
  exit 0
else
  echo "Тесты завершены с ошибками."
  echo "Подробности в директории reports/"
  exit 1
fi
