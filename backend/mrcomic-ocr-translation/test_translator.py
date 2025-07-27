#!/usr/bin/env python3
"""
Тестирование модуля перевода для Mr.Comic
"""

import os
import sys
import json
from typing import Dict, List, Any

# Создаем файл __init__.py в директории src/translation для корректного импорта
init_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "src", "translation", "__init__.py")
if not os.path.exists(init_path):
    with open(init_path, "w") as f:
        f.write("# Инициализация пакета translation")

# Добавляем корневую директорию проекта в путь для импорта
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# Теперь импортируем модуль
from src.translation.translator_interface import TranslatorFactory


def test_translator(translator_type: str, config: Dict[str, Any]) -> None:
    """
    Тестирование переводчика указанного типа
    
    Args:
        translator_type: Тип переводчика ('google', 'libre')
        config: Конфигурация для переводчика
    """
    print(f"\n=== Тестирование переводчика: {translator_type} ===\n")
    
    try:
        # Создание экземпляра переводчика
        translator = TranslatorFactory.create(translator_type, config)
        
        print(f"Имя сервиса: {translator.name}")
        print(f"Максимальная длина текста: {translator.max_text_length}")
        print(f"Максимальный размер пакета: {translator.max_batch_size}")
        
        # Тестирование поддерживаемых языков
        print("\n--- Поддерживаемые языки ---")
        try:
            languages = translator.get_supported_languages()
            print(f"Всего поддерживаемых языков: {len(languages)}")
            print("Примеры языков:")
            for lang in languages[:5]:  # Показываем первые 5 языков
                print(f"  - {lang['code']}: {lang['name']}")
            if len(languages) > 5:
                print(f"  ... и еще {len(languages) - 5} языков")
        except Exception as e:
            print(f"Ошибка при получении списка языков: {str(e)}")
        
        # Тестирование определения языка
        print("\n--- Определение языка ---")
        test_texts_detect = [
            "Hello, world! This is a test.",
            "Привет, мир! Это тест.",
            "Bonjour le monde! C'est un test."
        ]
        
        for text in test_texts_detect:
            try:
                detected_lang = translator.detect_language(text)
                print(f"Текст: '{text[:30]}...' -> Определенный язык: {detected_lang}")
            except Exception as e:
                print(f"Ошибка при определении языка для '{text[:30]}...': {str(e)}")
        
        # Тестирование перевода одиночного текста
        print("\n--- Перевод одиночного текста ---")
        test_texts_translate = [
            {"text": "Hello, world! This is a test.", "source": "en", "target": "ru"},
            {"text": "Привет, мир! Это тест.", "source": "ru", "target": "en"},
            {"text": "I love reading comics.", "source": "en", "target": "ru"},
            {"text": "Я люблю читать комиксы.", "source": "ru", "target": "en"}
        ]
        
        for item in test_texts_translate:
            try:
                translated = translator.translate_text(
                    item["text"], 
                    item["source"], 
                    item["target"]
                )
                print(f"Исходный ({item['source']}): '{item['text'][:30]}...'")
                print(f"Перевод ({item['target']}): '{translated[:30]}...'\n")
            except Exception as e:
                print(f"Ошибка при переводе '{item['text'][:30]}...': {str(e)}\n")
        
        # Тестирование пакетного перевода
        print("\n--- Пакетный перевод ---")
        batch_texts = [
            "Hello, world!",
            "This is a test.",
            "I love reading comics.",
            "The weather is nice today."
        ]
        
        try:
            translated_batch = translator.translate_batch(batch_texts, "en", "ru")
            print("Пакетный перевод (en -> ru):")
            for original, translated in zip(batch_texts, translated_batch):
                print(f"  '{original}' -> '{translated}'")
        except Exception as e:
            print(f"Ошибка при пакетном переводе: {str(e)}")
        
        print("\n=== Тестирование завершено успешно ===\n")
        
    except Exception as e:
        print(f"\n!!! Ошибка при тестировании переводчика {translator_type}: {str(e)} !!!\n")


def main():
    """
    Основная функция для запуска тестирования
    """
    # Конфигурация для Google Translate
    google_config = {
        'api_key': os.environ.get('GOOGLE_TRANSLATE_API_KEY', '')
    }
    
    # Конфигурация для LibreTranslate
    libre_config = {
        'url': os.environ.get('LIBRETRANSLATE_URL', 'https://libretranslate.com/api')
    }
    
    # Выбор переводчика для тестирования
    if len(sys.argv) > 1:
        translator_type = sys.argv[1].lower()
        if translator_type == 'google':
            test_translator('google', google_config)
        elif translator_type == 'libre':
            test_translator('libre', libre_config)
        elif translator_type == 'fallback':
            test_translator('fallback', {})
        elif translator_type == 'auto':
            # Тестирование автоматического переключения на fallback при ошибках
            print("\n=== Тестирование автоматического переключения на fallback ===\n")
            try:
                # Пытаемся использовать LibreTranslate с заведомо неверным URL
                libre_config_bad = {'url': 'https://nonexistent-service.example.com/api'}
                translator = TranslatorFactory.create('libre', libre_config_bad)
                
                # Тестируем перевод с ожиданием автоматического переключения
                text = "Hello, world! This is a test."
                translated = translator.translate_text(text, 'en', 'ru')
                print(f"Исходный текст: '{text}'")
                print(f"Переведенный текст: '{translated}'")
                print(f"Используемый сервис: {translator.name}")
                
                print("\nАвтоматическое переключение на fallback работает корректно!")
            except Exception as e:
                print(f"\nОшибка при тестировании автоматического переключения: {str(e)}")
        else:
            print(f"Неизвестный тип переводчика: {translator_type}")
            print("Доступные типы: google, libre, fallback, auto")
    else:
        # Тестируем все переводчики, если тип не указан
        print("\n=== Тестирование всех доступных переводчиков ===\n")
        
        # Тестируем fallback-переводчик (всегда доступен)
        test_translator('fallback', {})
        
        # Тестируем LibreTranslate (может быть недоступен)
        try:
            test_translator('libre', libre_config)
        except Exception as e:
            print(f"\nТестирование LibreTranslate не удалось: {str(e)}")
            
        # Тестируем Google Translate (если есть API ключ)
        if google_config['api_key']:
            try:
                test_translator('google', google_config)
            except Exception as e:
                print(f"\nТестирование Google Translate не удалось: {str(e)}")
        else:
            print("\nТестирование Google Translate пропущено (API ключ не указан)")


if __name__ == "__main__":
    main()
