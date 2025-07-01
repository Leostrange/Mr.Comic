#!/bin/bash

# Скрипт для публикации отчетов о тестировании
# Используется для публикации отчетов на GitHub Pages или другой хостинг

# Создание директорий
mkdir -p published_reports
mkdir -p published_reports/html
mkdir -p published_reports/pdf

echo "=== Публикация отчетов о тестировании проекта Mr.Comic ==="
echo "Дата и время: $(date)"

# Проверка наличия отчетов
if [ ! -d "reports/final" ]; then
  echo "Ошибка: Не найдены итоговые отчеты."
  exit 1
fi

# Копирование HTML-отчетов
echo "Копирование HTML-отчетов..."
cp -r reports/final/html/* published_reports/html/ 2>/dev/null || echo "HTML-отчеты не найдены"

# Копирование PDF-отчетов
echo "Копирование PDF-отчетов..."
cp -r reports/final/pdf/* published_reports/pdf/ 2>/dev/null || echo "PDF-отчеты не найдены"

# Создание индексной страницы
echo "Создание индексной страницы..."
cat > published_reports/index.html << EOF
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Отчеты о тестировании проекта Mr.Comic</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    h1 { color: #333; }
    h2 { color: #666; margin-top: 30px; }
    .container { max-width: 800px; margin: 0 auto; }
    .report-list { background-color: #f5f5f5; padding: 15px; border-radius: 5px; }
    .report-item { margin-bottom: 10px; }
    .report-link { color: #0066cc; text-decoration: none; }
    .report-link:hover { text-decoration: underline; }
    .timestamp { color: #999; font-size: 0.8em; }
  </style>
</head>
<body>
  <div class="container">
    <h1>Отчеты о тестировании проекта Mr.Comic</h1>
    <p>Последнее обновление: $(date)</p>
    
    <div class="report-list">
      <h2>HTML-отчеты</h2>
      <div class="report-item">
        <a class="report-link" href="html/index.html">Последний отчет о тестировании</a>
        <span class="timestamp">$(date)</span>
      </div>
      <div class="report-item">
        <a class="report-link" href="html/static-analysis/summary.txt">Отчет статического анализа</a>
      </div>
      <div class="report-item">
        <a class="report-link" href="html/unit-tests/summary.txt">Отчет unit-тестов</a>
      </div>
      <div class="report-item">
        <a class="report-link" href="html/ui-tests/summary.txt">Отчет UI-тестов</a>
      </div>
    </div>
    
    <div class="report-list">
      <h2>PDF-отчеты</h2>
      <div class="report-item">
        <a class="report-link" href="pdf/full_report.pdf">Полный отчет (PDF)</a>
        <span class="timestamp">$(date)</span>
      </div>
    </div>
  </div>
</body>
</html>
EOF

# Публикация на GitHub Pages (в реальном сценарии)
echo "Публикация отчетов..."
echo "В реальном сценарии здесь был бы код для публикации отчетов на GitHub Pages или другой хостинг."

echo "Публикация отчетов завершена."
echo "Отчеты доступны в директории published_reports/"
exit 0
