#!/bin/bash

# Скрипт сборки проекта Mr.Comic
# Выполняет сборку проекта и подготовку к тестированию

# Установка переменных окружения
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# Создание директорий для результатов сборки
mkdir -p build
mkdir -p reports/build

echo "=== Начало сборки проекта Mr.Comic ==="
echo "Дата и время: $(date)"
echo "Версия: $(cat version.txt 2>/dev/null || echo 'dev')"

# Очистка предыдущей сборки
echo "Очистка предыдущей сборки..."
rm -rf build/*

# Проверка зависимостей
echo "Проверка зависимостей..."
./gradlew dependencies > reports/build/dependencies.txt

# Компиляция проекта
echo "Компиляция проекта..."
./gradlew compileDebug

# Сборка APK
echo "Сборка APK..."
./gradlew assembleDebug

# Копирование артефактов
echo "Копирование артефактов сборки..."
cp app/build/outputs/apk/debug/*.apk build/ 2>/dev/null || echo "APK не найден"

# Проверка результатов сборки
if [ -f build/*.apk ]; then
  echo "Сборка успешно завершена."
  echo "Артефакты сборки доступны в директории build/"
  exit 0
else
  echo "Ошибка сборки. APK не создан."
  exit 1
fi
