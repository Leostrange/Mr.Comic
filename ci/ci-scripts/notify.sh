#!/bin/bash

# Скрипты для отправки уведомлений о результатах CI
# Используется для отправки уведомлений о результатах сборки и тестирования

# Функция для отправки уведомления по email
send_email_notification() {
  local subject="$1"
  local message="$2"
  local recipients="$3"
  
  echo "Отправка email-уведомления:"
  echo "Тема: $subject"
  echo "Сообщение: $message"
  echo "Получатели: $recipients"
  
  # В реальном сценарии здесь был бы код для отправки email
  # Например, с использованием утилиты mail или API сервиса отправки email
  echo "Email отправлен (симуляция)"
}

# Функция для отправки уведомления в Slack
send_slack_notification() {
  local channel="$1"
  local message="$2"
  local webhook_url="$3"
  
  echo "Отправка Slack-уведомления:"
  echo "Канал: $channel"
  echo "Сообщение: $message"
  
  # В реальном сценарии здесь был бы код для отправки уведомления в Slack
  # Например, с использованием curl для отправки POST-запроса на webhook URL
  echo "Slack-уведомление отправлено (симуляция)"
}

# Функция для отправки уведомления в Telegram
send_telegram_notification() {
  local chat_id="$1"
  local message="$2"
  local bot_token="$3"
  
  echo "Отправка Telegram-уведомления:"
  echo "Чат ID: $chat_id"
  echo "Сообщение: $message"
  
  # В реальном сценарии здесь был бы код для отправки уведомления в Telegram
  # Например, с использованием curl для отправки запроса к Telegram Bot API
  echo "Telegram-уведомление отправлено (симуляция)"
}

# Основная функция для отправки уведомлений
send_notification() {
  local type="$1"
  local status="$2"
  local details="$3"
  
  # Формирование сообщения
  local subject="Mr.Comic CI: $type - $status"
  local message="Статус сборки: $status\n\nДетали:\n$details\n\nВремя: $(date)"
  
  # Определение получателей в зависимости от статуса
  local recipients=""
  local slack_channel=""
  
  if [ "$status" == "SUCCESS" ]; then
    recipients="team@mrcomic.com"
    slack_channel="ci-success"
  elif [ "$status" == "FAILURE" ]; then
    recipients="team@mrcomic.com,alerts@mrcomic.com"
    slack_channel="ci-alerts"
  else
    recipients="team@mrcomic.com"
    slack_channel="ci-info"
  fi
  
  # Отправка уведомлений
  send_email_notification "$subject" "$message" "$recipients"
  send_slack_notification "$slack_channel" "$message" "${SLACK_WEBHOOK_URL:-https://hooks.slack.com/services/TXXXXXXXX/BXXXXXXXX/XXXXXXXXXXXXXXXXXXXXXXXX}"
  
  # Отправка уведомления в Telegram только при ошибке
  if [ "$status" == "FAILURE" ]; then
    send_telegram_notification "${TELEGRAM_CHAT_ID:-123456789}" "$subject\n\n$message" "${TELEGRAM_BOT_TOKEN:-bot123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11}"
  fi
}

# Проверка аргументов
if [ $# -lt 2 ]; then
  echo "Использование: $0 <тип_сборки> <статус> [детали]"
  echo "Пример: $0 'Pull Request #123' 'SUCCESS' 'Все тесты пройдены успешно'"
  exit 1
fi

# Получение аргументов
TYPE="$1"
STATUS="$2"
DETAILS="${3:-Нет дополнительных деталей}"

# Отправка уведомления
send_notification "$TYPE" "$STATUS" "$DETAILS"

exit 0
