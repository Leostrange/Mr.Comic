#!/usr/bin/env python3
"""
Тестирование системы кэширования переводов для Mr.Comic
"""

import os
import sys
import time
import json
from typing import Dict, List, Any

# Добавляем директорию src в путь для импорта
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "src"))

from translation.cache import TranslationCache


def test_cache():
    """
    Тестирование функциональности кэша переводов
    """
    print("\n=== Тестирование системы кэширования переводов ===\n")
    
    # Создаем временную директорию для тестового кэша
    test_cache_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), "test_cache")
    os.makedirs(test_cache_dir, exist_ok=True)
    
    # Инициализируем кэш с коротким сроком жизни для тестирования
    cache = TranslationCache(cache_dir=test_cache_dir, max_age_days=1)
    
    # Тестовые данные
    test_texts = [
        "Hello, world!",
        "This is a test.",
        "I love reading comics.",
        "The weather is nice today."
    ]
    
    test_translations_ru = [
        "Привет, мир!",
        "Это тест.",
        "Я люблю читать комиксы.",
        "Погода сегодня хорошая."
    ]
    
    test_translations_fr = [
        "Bonjour le monde!",
        "C'est un test.",
        "J'aime lire des bandes dessinées.",
        "Le temps est beau aujourd'hui."
    ]
    
    # Тест 1: Проверка отсутствия записей в новом кэше
    print("Тест 1: Проверка нового кэша")
    for i, text in enumerate(test_texts):
        cached_ru = cache.get(text, "en", "ru")
        cached_fr = cache.get(text, "en", "fr")
        
        print(f"  Текст: '{text}'")
        print(f"  Кэш (en->ru): {cached_ru or 'Не найдено'}")
        print(f"  Кэш (en->fr): {cached_fr or 'Не найдено'}")
        print()
    
    # Тест 2: Сохранение и получение одиночных переводов
    print("\nТест 2: Сохранение и получение одиночных переводов")
    for i, text in enumerate(test_texts):
        # Сохраняем переводы в кэш
        cache.set(text, "en", "ru", test_translations_ru[i])
        cache.set(text, "en", "fr", test_translations_fr[i])
        
        # Получаем переводы из кэша
        cached_ru = cache.get(text, "en", "ru")
        cached_fr = cache.get(text, "en", "fr")
        
        print(f"  Текст: '{text}'")
        print(f"  Кэш (en->ru): {cached_ru or 'Не найдено'}")
        print(f"  Кэш (en->fr): {cached_fr or 'Не найдено'}")
        print(f"  Совпадение (ru): {cached_ru == test_translations_ru[i]}")
        print(f"  Совпадение (fr): {cached_fr == test_translations_fr[i]}")
        print()
    
    # Тест 3: Пакетное сохранение и получение переводов
    print("\nТест 3: Пакетное сохранение и получение переводов")
    
    # Очищаем кэш перед тестом
    cache.clear_all()
    
    # Сохраняем пакет переводов
    cache.set_batch(test_texts, "en", "ru", test_translations_ru)
    
    # Получаем пакет переводов
    cached_texts, missing_indices = cache.get_batch(test_texts, "en", "ru")
    
    print(f"  Количество текстов в пакете: {len(test_texts)}")
    print(f"  Количество найденных в кэше: {len(cached_texts) - len(missing_indices)}")
    print(f"  Отсутствующие индексы: {missing_indices}")
    
    for i, (original, cached) in enumerate(zip(test_translations_ru, cached_texts)):
        print(f"  Текст {i+1}: '{test_texts[i]}'")
        print(f"  Оригинальный перевод: '{original}'")
        print(f"  Кэшированный перевод: '{cached}'")
        print(f"  Совпадение: {original == cached}")
        print()
    
    # Тест 4: Проверка устаревания кэша
    print("\nТест 4: Проверка устаревания кэша")
    
    # Создаем кэш с очень коротким сроком жизни (1 секунда)
    short_cache = TranslationCache(cache_dir=test_cache_dir, max_age_days=1/86400)  # 1 секунда
    
    # Сохраняем перевод
    test_text = "This is an expiring test."
    test_translation = "Это тест на устаревание."
    short_cache.set(test_text, "en", "ru", test_translation)
    
    # Проверяем сразу после сохранения
    cached = short_cache.get(test_text, "en", "ru")
    print(f"  Сразу после сохранения: {cached or 'Не найдено'}")
    
    # Ждем 2 секунды (больше срока жизни)
    print("  Ожидание 2 секунды...")
    time.sleep(2)
    
    # Проверяем после ожидания
    cached = short_cache.get(test_text, "en", "ru")
    print(f"  После ожидания: {cached or 'Не найдено'}")
    
    # Тест 5: Статистика кэша
    print("\nТест 5: Статистика кэша")
    
    # Очищаем кэш и добавляем тестовые данные
    cache.clear_all()
    for i, text in enumerate(test_texts):
        cache.set(text, "en", "ru", test_translations_ru[i])
        cache.set(text, "en", "fr", test_translations_fr[i])
    
    # Получаем статистику
    stats = cache.get_stats()
    
    print(f"  Общее количество записей: {stats['total_entries']}")
    print(f"  Устаревшие записи: {stats['expired_entries']}")
    print(f"  Размер базы данных: {stats['size_bytes']/1024:.2f} КБ")
    print("  Языковые пары:")
    for pair, count in stats['language_pairs'].items():
        print(f"    {pair}: {count} записей")
    
    # Тест 6: Очистка кэша
    print("\nТест 6: Очистка кэша")
    
    # Очищаем устаревшие записи
    expired_count = cache.clear_expired()
    print(f"  Удалено устаревших записей: {expired_count}")
    
    # Полная очистка
    total_count = cache.clear_all()
    print(f"  Удалено всего записей: {total_count}")
    
    # Проверяем статистику после очистки
    stats = cache.get_stats()
    print(f"  Записей после очистки: {stats['total_entries']}")
    
    print("\n=== Тестирование системы кэширования завершено успешно ===\n")


if __name__ == "__main__":
    test_cache()
