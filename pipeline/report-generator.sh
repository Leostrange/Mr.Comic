#!/bin/bash

# Скрипт генерации отчетов о тестировании проекта Mr.Comic
# Собирает результаты всех этапов тестирования и создает итоговый отчет

# Создание директорий для отчетов
mkdir -p reports/final
mkdir -p reports/final/html
mkdir -p reports/final/pdf

echo "=== Начало генерации отчетов о тестировании проекта Mr.Comic ==="
echo "Дата и время: $(date)"

# Сбор данных из всех этапов
echo "Сбор данных из всех этапов тестирования..."

# Проверка наличия отчетов
if [ ! -d "reports/static-analysis" ] || [ ! -d "reports/unit-tests" ] || [ ! -d "reports/ui-tests" ]; then
  echo "Ошибка: Не найдены отчеты предыдущих этапов тестирования."
  exit 1
fi

# Создание сводного текстового отчета
echo "Создание сводного текстового отчета..."
cat > reports/final/summary.txt << EOF
=== Сводный отчет о тестировании проекта Mr.Comic ===
Дата и время: $(date)

EOF

# Добавление результатов статического анализа
if [ -f "reports/static-analysis/summary.txt" ]; then
  echo "== Результаты статического анализа ==" >> reports/final/summary.txt
  cat reports/static-analysis/summary.txt >> reports/final/summary.txt
  echo "" >> reports/final/summary.txt
fi

# Добавление результатов unit-тестов
if [ -f "reports/unit-tests/summary.txt" ]; then
  echo "== Результаты unit-тестов ==" >> reports/final/summary.txt
  cat reports/unit-tests/summary.txt >> reports/final/summary.txt
  echo "" >> reports/final/summary.txt
fi

# Добавление результатов UI-тестов
if [ -f "reports/ui-tests/summary.txt" ]; then
  echo "== Результаты UI-тестов ==" >> reports/final/summary.txt
  cat reports/ui-tests/summary.txt >> reports/final/summary.txt
  echo "" >> reports/final/summary.txt
fi

# Создание HTML-отчета
echo "Создание HTML-отчета..."
cat > reports/final/html/index.html << EOF
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Отчет о тестировании проекта Mr.Comic</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    h1 { color: #333; }
    h2 { color: #666; margin-top: 30px; }
    .summary { background-color: #f5f5f5; padding: 15px; border-radius: 5px; }
    .success { color: green; }
    .failure { color: red; }
    table { border-collapse: collapse; width: 100%; margin-top: 20px; }
    th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
    th { background-color: #f2f2f2; }
    tr:nth-child(even) { background-color: #f9f9f9; }
  </style>
</head>
<body>
  <h1>Отчет о тестировании проекта Mr.Comic</h1>
  <p>Дата и время: $(date)</p>
  
  <div class="summary">
    <h2>Сводная информация</h2>
    <p>Статический анализ: $(grep -o "Ошибок: [0-9]*" reports/static-analysis/summary.txt 2>/dev/null | awk '{sum += $2} END {print sum}' || echo "Нет данных") ошибок</p>
    <p>Unit-тесты: $(grep -o "Неудачно: [0-9]*" reports/unit-tests/summary.txt 2>/dev/null | awk '{print $2}' || echo "Нет данных") неудачных из $(grep -o "Всего тестов: [0-9]*" reports/unit-tests/summary.txt 2>/dev/null | awk '{print $3}' || echo "0")</p>
    <p>UI-тесты: $(grep -o "Неудачно: [0-9]*" reports/ui-tests/summary.txt 2>/dev/null | awk '{print $2}' || echo "Нет данных") неудачных из $(grep -o "Всего тестов: [0-9]*" reports/ui-tests/summary.txt 2>/dev/null | awk '{print $3}' || echo "0")</p>
  </div>
  
  <h2>Статический анализ</h2>
  <table>
    <tr>
      <th>Инструмент</th>
      <th>Предупреждения</th>
      <th>Ошибки</th>
    </tr>
    <tr>
      <td>Android Lint</td>
      <td>$(grep -o "Lint.*Предупреждений: [0-9]*" reports/static-analysis/summary.txt 2>/dev/null | awk '{print $3}' || echo "Нет данных")</td>
      <td>$(grep -o "Lint.*Ошибок: [0-9]*" reports/static-analysis/summary.txt 2>/dev/null | awk '{print $3}' || echo "Нет данных")</td>
    </tr>
    <tr>
      <td>Checkstyle</td>
      <td>$(grep -o "Checkstyle.*Предупреждений: [0-9]*" reports/static-analysis/summary.txt 2>/dev/null | awk '{print $3}' || echo "Нет данных")</td>
      <td>$(grep -o "Checkstyle.*Ошибок: [0-9]*" reports/static-analysis/summary.txt 2>/dev/null | awk '{print $3}' || echo "Нет данных")</td>
    </tr>
    <tr>
      <td>PMD</td>
      <td>$(grep -o "PMD.*Предупреждений: [0-9]*" reports/static-analysis/summary.txt 2>/dev/null | awk '{print $3}' || echo "Нет данных")</td>
      <td>$(grep -o "PMD.*Ошибок: [0-9]*" reports/static-analysis/summary.txt 2>/dev/null | awk '{print $3}' || echo "Нет данных")</td>
    </tr>
  </table>
  
  <h2>Unit-тесты</h2>
  <p>Всего тестов: $(grep -o "Всего тестов: [0-9]*" reports/unit-tests/summary.txt 2>/dev/null | awk '{print $3}' || echo "Нет данных")</p>
  <p>Успешно: $(grep -o "Успешно: [0-9]*" reports/unit-tests/summary.txt 2>/dev/null | awk '{print $2}' || echo "Нет данных")</p>
  <p>Неудачно: $(grep -o "Неудачно: [0-9]*" reports/unit-tests/summary.txt 2>/dev/null | awk '{print $2}' || echo "Нет данных")</p>
  
  <h2>UI-тесты</h2>
  <p>Всего тестов: $(grep -o "Всего тестов: [0-9]*" reports/ui-tests/summary.txt 2>/dev/null | awk '{print $3}' || echo "Нет данных")</p>
  <p>Успешно: $(grep -o "Успешно: [0-9]*" reports/ui-tests/summary.txt 2>/dev/null | awk '{print $2}' || echo "Нет данных")</p>
  <p>Неудачно: $(grep -o "Неудачно: [0-9]*" reports/ui-tests/summary.txt 2>/dev/null | awk '{print $2}' || echo "Нет данных")</p>
  
  <h2>Заключение</h2>
  <p>Тестирование завершено $(date).</p>
  <p>Подробные отчеты доступны в соответствующих директориях.</p>
</body>
</html>
EOF

# Копирование дополнительных отчетов
echo "Копирование дополнительных отчетов..."
cp -r reports/static-analysis reports/final/html/ 2>/dev/null || echo "Отчеты статического анализа не найдены"
cp -r reports/unit-tests reports/final/html/ 2>/dev/null || echo "Отчеты unit-тестов не найдены"
cp -r reports/ui-tests reports/final/html/ 2>/dev/null || echo "Отчеты UI-тестов не найдены"

# Создание PDF-отчета
echo "Создание PDF-отчета..."
# В реальном сценарии здесь был бы код для конвертации HTML в PDF
# Например, с использованием wkhtmltopdf или другой утилиты
echo "PDF-отчет будет создан при наличии соответствующих инструментов."

echo "Генерация отчетов завершена."
echo "Отчеты доступны в директории reports/final/"
exit 0
