#!/usr/bin/env python3
"""
Система кэширования переводов для Mr.Comic
"""

import os
import json
import time
import sqlite3
import hashlib
from typing import Dict, List, Optional, Any, Tuple


class TranslationCache:
    """
    Класс для кэширования результатов перевода
    """
    
    def __init__(self, cache_dir: str = None, max_age_days: int = 30):
        """
        Инициализация кэша переводов
        
        Args:
            cache_dir: Директория для хранения кэша (по умолчанию ~/.mrcomic/cache/translations)
            max_age_days: Максимальный возраст записей кэша в днях (по умолчанию 30 дней)
        """
        if cache_dir is None:
            home_dir = os.path.expanduser("~")
            cache_dir = os.path.join(home_dir, ".mrcomic", "cache", "translations")
            
        self.cache_dir = cache_dir
        self.max_age_seconds = max_age_days * 24 * 60 * 60
        
        # Создаем директорию кэша, если она не существует
        os.makedirs(self.cache_dir, exist_ok=True)
        
        # Инициализируем базу данных SQLite для кэша
        self.db_path = os.path.join(self.cache_dir, "translations.db")
        self._init_db()
        
    def _init_db(self):
        """
        Инициализация базы данных SQLite для кэша
        """
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        
        # Создаем таблицу для кэша переводов, если она не существует
        cursor.execute('''
        CREATE TABLE IF NOT EXISTS translations (
            hash TEXT PRIMARY KEY,
            source_lang TEXT,
            target_lang TEXT,
            source_text TEXT,
            translated_text TEXT,
            timestamp INTEGER
        )
        ''')
        
        # Создаем индексы для ускорения поиска
        cursor.execute('CREATE INDEX IF NOT EXISTS idx_langs ON translations (source_lang, target_lang)')
        cursor.execute('CREATE INDEX IF NOT EXISTS idx_timestamp ON translations (timestamp)')
        
        conn.commit()
        conn.close()
        
    def _compute_hash(self, text: str, source_lang: str, target_lang: str) -> str:
        """
        Вычисление хэша для текста и языковой пары
        
        Args:
            text: Исходный текст
            source_lang: Код исходного языка
            target_lang: Код целевого языка
            
        Returns:
            Строка с хэшем
        """
        # Создаем строку для хэширования
        hash_str = f"{text}|{source_lang}|{target_lang}"
        
        # Вычисляем SHA-256 хэш
        hash_obj = hashlib.sha256(hash_str.encode('utf-8'))
        return hash_obj.hexdigest()
        
    def get(self, text: str, source_lang: str, target_lang: str) -> Optional[str]:
        """
        Получение перевода из кэша
        
        Args:
            text: Исходный текст
            source_lang: Код исходного языка
            target_lang: Код целевого языка
            
        Returns:
            Переведенный текст или None, если перевод не найден в кэше
        """
        if not text.strip():
            return text
            
        # Вычисляем хэш для поиска
        text_hash = self._compute_hash(text, source_lang, target_lang)
        
        # Подключаемся к базе данных
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        
        # Ищем перевод в кэше
        cursor.execute('''
        SELECT translated_text, timestamp FROM translations
        WHERE hash = ? AND source_lang = ? AND target_lang = ?
        ''', (text_hash, source_lang, target_lang))
        
        result = cursor.fetchone()
        conn.close()
        
        # Если перевод найден и не устарел, возвращаем его
        if result:
            translated_text, timestamp = result
            current_time = int(time.time())
            
            if current_time - timestamp <= self.max_age_seconds:
                return translated_text
                
        # Перевод не найден или устарел
        return None
        
    def set(self, text: str, source_lang: str, target_lang: str, translated_text: str) -> None:
        """
        Сохранение перевода в кэш
        
        Args:
            text: Исходный текст
            source_lang: Код исходного языка
            target_lang: Код целевого языка
            translated_text: Переведенный текст
        """
        if not text.strip():
            return
            
        # Вычисляем хэш для сохранения
        text_hash = self._compute_hash(text, source_lang, target_lang)
        current_time = int(time.time())
        
        # Подключаемся к базе данных
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        
        # Сохраняем перевод в кэш (заменяем, если уже существует)
        cursor.execute('''
        INSERT OR REPLACE INTO translations
        (hash, source_lang, target_lang, source_text, translated_text, timestamp)
        VALUES (?, ?, ?, ?, ?, ?)
        ''', (text_hash, source_lang, target_lang, text, translated_text, current_time))
        
        conn.commit()
        conn.close()
        
    def get_batch(self, texts: List[str], source_lang: str, target_lang: str) -> Tuple[List[str], List[int]]:
        """
        Получение пакета переводов из кэша
        
        Args:
            texts: Список исходных текстов
            source_lang: Код исходного языка
            target_lang: Код целевого языка
            
        Returns:
            Кортеж из двух списков:
            - Список переведенных текстов (None для отсутствующих в кэше)
            - Список индексов текстов, которые не были найдены в кэше
        """
        if not texts:
            return [], []
            
        # Подключаемся к базе данных
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        
        # Подготавливаем результаты
        translated_texts = [None] * len(texts)
        missing_indices = []
        current_time = int(time.time())
        
        # Проверяем каждый текст в кэше
        for i, text in enumerate(texts):
            if not text.strip():
                translated_texts[i] = text
                continue
                
            # Вычисляем хэш для поиска
            text_hash = self._compute_hash(text, source_lang, target_lang)
            
            # Ищем перевод в кэше
            cursor.execute('''
            SELECT translated_text, timestamp FROM translations
            WHERE hash = ? AND source_lang = ? AND target_lang = ?
            ''', (text_hash, source_lang, target_lang))
            
            result = cursor.fetchone()
            
            # Если перевод найден и не устарел, используем его
            if result:
                translated_text, timestamp = result
                
                if current_time - timestamp <= self.max_age_seconds:
                    translated_texts[i] = translated_text
                    continue
                    
            # Перевод не найден или устарел
            missing_indices.append(i)
            
        conn.close()
        return translated_texts, missing_indices
        
    def set_batch(self, texts: List[str], source_lang: str, target_lang: str, 
                 translated_texts: List[str]) -> None:
        """
        Сохранение пакета переводов в кэш
        
        Args:
            texts: Список исходных текстов
            source_lang: Код исходного языка
            target_lang: Код целевого языка
            translated_texts: Список переведенных текстов
        """
        if not texts or len(texts) != len(translated_texts):
            return
            
        # Подключаемся к базе данных
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        current_time = int(time.time())
        
        # Сохраняем каждый перевод в кэш
        for text, translated_text in zip(texts, translated_texts):
            if not text.strip():
                continue
                
            # Вычисляем хэш для сохранения
            text_hash = self._compute_hash(text, source_lang, target_lang)
            
            # Сохраняем перевод в кэш (заменяем, если уже существует)
            cursor.execute('''
            INSERT OR REPLACE INTO translations
            (hash, source_lang, target_lang, source_text, translated_text, timestamp)
            VALUES (?, ?, ?, ?, ?, ?)
            ''', (text_hash, source_lang, target_lang, text, translated_text, current_time))
            
        conn.commit()
        conn.close()
        
    def clear_expired(self) -> int:
        """
        Очистка устаревших записей кэша
        
        Returns:
            Количество удаленных записей
        """
        # Подключаемся к базе данных
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        current_time = int(time.time())
        
        # Удаляем устаревшие записи
        cursor.execute('''
        DELETE FROM translations
        WHERE timestamp < ?
        ''', (current_time - self.max_age_seconds,))
        
        deleted_count = cursor.rowcount
        conn.commit()
        conn.close()
        
        return deleted_count
        
    def clear_all(self) -> int:
        """
        Полная очистка кэша
        
        Returns:
            Количество удаленных записей
        """
        # Подключаемся к базе данных
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        
        # Получаем количество записей перед удалением
        cursor.execute('SELECT COUNT(*) FROM translations')
        total_count = cursor.fetchone()[0]
        
        # Удаляем все записи
        cursor.execute('DELETE FROM translations')
        
        conn.commit()
        conn.close()
        
        return total_count
        
    def get_stats(self) -> Dict[str, Any]:
        """
        Получение статистики кэша
        
        Returns:
            Словарь со статистикой:
            - total_entries: общее количество записей
            - expired_entries: количество устаревших записей
            - size_bytes: размер файла базы данных в байтах
            - language_pairs: словарь с количеством записей для каждой языковой пары
        """
        # Подключаемся к базе данных
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        current_time = int(time.time())
        
        # Получаем общее количество записей
        cursor.execute('SELECT COUNT(*) FROM translations')
        total_entries = cursor.fetchone()[0]
        
        # Получаем количество устаревших записей
        cursor.execute('''
        SELECT COUNT(*) FROM translations
        WHERE timestamp < ?
        ''', (current_time - self.max_age_seconds,))
        expired_entries = cursor.fetchone()[0]
        
        # Получаем статистику по языковым парам
        cursor.execute('''
        SELECT source_lang, target_lang, COUNT(*) FROM translations
        GROUP BY source_lang, target_lang
        ''')
        language_pairs = {}
        for source_lang, target_lang, count in cursor.fetchall():
            pair_key = f"{source_lang}->{target_lang}"
            language_pairs[pair_key] = count
            
        conn.close()
        
        # Получаем размер файла базы данных
        size_bytes = os.path.getsize(self.db_path) if os.path.exists(self.db_path) else 0
        
        return {
            'total_entries': total_entries,
            'expired_entries': expired_entries,
            'size_bytes': size_bytes,
            'language_pairs': language_pairs
        }
