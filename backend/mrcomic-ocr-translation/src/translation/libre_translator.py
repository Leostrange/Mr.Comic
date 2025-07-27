#!/usr/bin/env python3
"""
Реализация интеграции с LibreTranslate API для Mr.Comic
"""

import os
import json
import requests
from typing import Dict, List, Optional, Any
from .translator_interface import TranslatorInterface


class LibreTranslator(TranslatorInterface):
    """
    Реализация переводчика на основе LibreTranslate API
    """
    
    # Базовый URL для API (по умолчанию используется публичный сервер)
    DEFAULT_URL = "https://libretranslate.com/api"
    
    def __init__(self, config: Dict[str, Any]):
        """
        Инициализация клиента LibreTranslate
        
        Args:
            config: Словарь с конфигурацией
                - api_key: API ключ для LibreTranslate (опционально)
                - url: URL сервера LibreTranslate (опционально)
        """
        self.api_key = config.get('api_key')
        if not self.api_key:
            # Попытка получить ключ из переменной окружения
            self.api_key = os.environ.get('LIBRETRANSLATE_API_KEY')
            
        # URL сервера (можно использовать локальный сервер)
        self.url = config.get('url', os.environ.get('LIBRETRANSLATE_URL', self.DEFAULT_URL))
        self._supported_languages = None
    
    def translate_text(self, text: str, source_lang: str, target_lang: str) -> str:
        """
        Перевод одиночного текста с исходного языка на целевой
        
        Args:
            text: Исходный текст для перевода
            source_lang: Код исходного языка (например, 'en', 'ru')
            target_lang: Код целевого языка (например, 'en', 'ru')
            
        Returns:
            Переведенный текст
            
        Raises:
            RuntimeError: Если произошла ошибка при переводе
        """
        if not text.strip():
            return text
            
        # Проверка длины текста
        if len(text) > self.max_text_length:
            raise ValueError(f"Текст превышает максимальную длину {self.max_text_length} символов")
        
        # Подготовка данных запроса
        payload = {
            'q': text,
            'source': source_lang if source_lang != 'auto' else 'auto',
            'target': target_lang,
            'format': 'text',
        }
        
        # Добавляем API ключ, если он есть
        if self.api_key:
            payload['api_key'] = self.api_key
        
        try:
            # Выполнение запроса к API
            translate_url = f"{self.url}/translate"
            response = requests.post(translate_url, json=payload)
            response.raise_for_status()  # Проверка на ошибки HTTP
            
            # Разбор ответа
            result = response.json()
            
            # Извлечение переведенного текста
            translated_text = result.get('translatedText')
            if translated_text is None:
                error_message = result.get('error', 'Неизвестная ошибка')
                raise RuntimeError(f"Ошибка LibreTranslate API: {error_message}")
                
            return translated_text
            
        except requests.RequestException as e:
            raise RuntimeError(f"Ошибка запроса к LibreTranslate API: {str(e)}")
    
    def translate_batch(self, texts: List[str], source_lang: str, target_lang: str) -> List[str]:
        """
        Пакетный перевод нескольких текстов
        
        Args:
            texts: Список исходных текстов для перевода
            source_lang: Код исходного языка (например, 'en', 'ru')
            target_lang: Код целевого языка (например, 'en', 'ru')
            
        Returns:
            Список переведенных текстов в том же порядке
            
        Raises:
            RuntimeError: Если произошла ошибка при переводе
            ValueError: Если размер пакета превышает максимально допустимый
        """
        if not texts:
            return []
            
        # Проверка размера пакета
        if len(texts) > self.max_batch_size:
            raise ValueError(f"Размер пакета превышает максимально допустимый ({self.max_batch_size})")
        
        # LibreTranslate не поддерживает пакетный перевод напрямую,
        # поэтому реализуем его через последовательные запросы
        result_texts = []
        for text in texts:
            if not text.strip():
                result_texts.append(text)  # Сохраняем пустые тексты как есть
                continue
                
            try:
                translated = self.translate_text(text, source_lang, target_lang)
                result_texts.append(translated)
            except Exception as e:
                # В случае ошибки сохраняем исходный текст
                result_texts.append(text)
                print(f"Ошибка при переводе текста: {str(e)}")
                
        return result_texts
    
    def detect_language(self, text: str) -> str:
        """
        Определение языка текста
        
        Args:
            text: Текст для определения языка
            
        Returns:
            Код определенного языка (например, 'en', 'ru')
            
        Raises:
            RuntimeError: Если произошла ошибка при определении языка
        """
        if not text.strip():
            return 'und'  # Неопределенный язык для пустого текста
        
        # Подготовка данных запроса
        payload = {
            'q': text,
        }
        
        # Добавляем API ключ, если он есть
        if self.api_key:
            payload['api_key'] = self.api_key
        
        try:
            # Выполнение запроса к API
            detect_url = f"{self.url}/detect"
            response = requests.post(detect_url, json=payload)
            response.raise_for_status()  # Проверка на ошибки HTTP
            
            # Разбор ответа
            result = response.json()
            
            # LibreTranslate возвращает список обнаруженных языков с уверенностью
            if not result or not isinstance(result, list):
                raise RuntimeError("Неожиданный формат ответа от LibreTranslate API")
                
            # Берем язык с наивысшей уверенностью
            if not result:
                return 'und'
                
            detection = max(result, key=lambda d: d.get('confidence', 0))
            return detection.get('language', 'und')
            
        except requests.RequestException as e:
            raise RuntimeError(f"Ошибка запроса к LibreTranslate API: {str(e)}")
    
    def get_supported_languages(self) -> List[Dict[str, str]]:
        """
        Получение списка поддерживаемых языков
        
        Returns:
            Список словарей с информацией о языках:
            [{'code': 'en', 'name': 'English'}, {'code': 'ru', 'name': 'Russian'}, ...]
            
        Raises:
            RuntimeError: Если произошла ошибка при получении списка языков
        """
        # Используем кэшированный результат, если он есть
        if self._supported_languages is not None:
            return self._supported_languages
        
        try:
            # Выполнение запроса к API
            languages_url = f"{self.url}/languages"
            response = requests.get(languages_url)
            response.raise_for_status()  # Проверка на ошибки HTTP
            
            # Разбор ответа
            languages = response.json()
            
            if not languages or not isinstance(languages, list):
                raise RuntimeError("Неожиданный формат ответа от LibreTranslate API")
                
            # Преобразование в нужный формат
            self._supported_languages = [
                {'code': lang.get('code'), 'name': lang.get('name')}
                for lang in languages
            ]
            
            return self._supported_languages
            
        except requests.RequestException as e:
            raise RuntimeError(f"Ошибка запроса к LibreTranslate API: {str(e)}")
    
    @property
    def name(self) -> str:
        """
        Имя сервиса перевода
        
        Returns:
            Строка с названием сервиса
        """
        return "LibreTranslate API"
    
    @property
    def max_text_length(self) -> int:
        """
        Максимальная длина текста для перевода
        
        Returns:
            Максимальное количество символов
        """
        return 5000  # Примерное ограничение LibreTranslate
    
    @property
    def max_batch_size(self) -> int:
        """
        Максимальный размер пакета для пакетного перевода
        
        Returns:
            Максимальное количество текстов в одном запросе
        """
        return 50  # Искусственное ограничение для последовательных запросов
