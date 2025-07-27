#!/usr/bin/env python3
"""
Реализация интеграции с Google Cloud Translation API для Mr.Comic
"""

import os
import json
import requests
from typing import Dict, List, Optional, Any
from .translator_interface import TranslatorInterface


class GoogleTranslator(TranslatorInterface):
    """
    Реализация переводчика на основе Google Cloud Translation API
    """
    
    # Базовый URL для API
    BASE_URL = "https://translation.googleapis.com/language/translate/v2"
    
    def __init__(self, config: Dict[str, Any]):
        """
        Инициализация клиента Google Translate
        
        Args:
            config: Словарь с конфигурацией
                - api_key: API ключ для Google Cloud Translation API
                - project_id: ID проекта Google Cloud (опционально)
        """
        self.api_key = config.get('api_key')
        if not self.api_key:
            # Попытка получить ключ из переменной окружения
            self.api_key = os.environ.get('GOOGLE_TRANSLATE_API_KEY')
            
        if not self.api_key:
            raise ValueError("API ключ для Google Translate не указан")
            
        self.project_id = config.get('project_id', os.environ.get('GOOGLE_CLOUD_PROJECT_ID'))
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
        
        # Подготовка параметров запроса
        params = {
            'key': self.api_key,
            'q': text,
            'target': target_lang,
        }
        
        # Добавляем исходный язык, если он указан
        if source_lang and source_lang != 'auto':
            params['source'] = source_lang
        
        try:
            # Выполнение запроса к API
            response = requests.post(self.BASE_URL, params=params)
            response.raise_for_status()  # Проверка на ошибки HTTP
            
            # Разбор ответа
            result = response.json()
            
            # Проверка наличия ошибок в ответе
            if 'error' in result:
                error_message = result['error'].get('message', 'Неизвестная ошибка')
                raise RuntimeError(f"Ошибка Google Translate API: {error_message}")
            
            # Извлечение переведенного текста
            translations = result.get('data', {}).get('translations', [])
            if not translations:
                raise RuntimeError("Пустой ответ от Google Translate API")
                
            return translations[0].get('translatedText', '')
            
        except requests.RequestException as e:
            raise RuntimeError(f"Ошибка запроса к Google Translate API: {str(e)}")
    
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
        
        # Фильтрация пустых текстов
        non_empty_indices = [i for i, text in enumerate(texts) if text.strip()]
        non_empty_texts = [texts[i] for i in non_empty_indices]
        
        if not non_empty_texts:
            return texts  # Все тексты пустые, возвращаем исходный список
        
        # Подготовка параметров запроса
        params = {
            'key': self.api_key,
            'q': non_empty_texts,
            'target': target_lang,
        }
        
        # Добавляем исходный язык, если он указан
        if source_lang and source_lang != 'auto':
            params['source'] = source_lang
        
        try:
            # Выполнение запроса к API
            response = requests.post(self.BASE_URL, params=params)
            response.raise_for_status()  # Проверка на ошибки HTTP
            
            # Разбор ответа
            result = response.json()
            
            # Проверка наличия ошибок в ответе
            if 'error' in result:
                error_message = result['error'].get('message', 'Неизвестная ошибка')
                raise RuntimeError(f"Ошибка Google Translate API: {error_message}")
            
            # Извлечение переведенных текстов
            translations = result.get('data', {}).get('translations', [])
            if len(translations) != len(non_empty_texts):
                raise RuntimeError("Количество переведенных текстов не соответствует запросу")
            
            # Восстановление исходного порядка и включение пустых текстов
            result_texts = texts.copy()
            for i, translation in zip(non_empty_indices, translations):
                result_texts[i] = translation.get('translatedText', texts[i])
                
            return result_texts
            
        except requests.RequestException as e:
            raise RuntimeError(f"Ошибка запроса к Google Translate API: {str(e)}")
    
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
        
        # Подготовка параметров запроса
        params = {
            'key': self.api_key,
            'q': text,
        }
        
        try:
            # Выполнение запроса к API
            detect_url = f"{self.BASE_URL}/detect"
            response = requests.post(detect_url, params=params)
            response.raise_for_status()  # Проверка на ошибки HTTP
            
            # Разбор ответа
            result = response.json()
            
            # Проверка наличия ошибок в ответе
            if 'error' in result:
                error_message = result['error'].get('message', 'Неизвестная ошибка')
                raise RuntimeError(f"Ошибка Google Translate API: {error_message}")
            
            # Извлечение определенного языка
            detections = result.get('data', {}).get('detections', [[]])
            if not detections or not detections[0]:
                raise RuntimeError("Пустой ответ от Google Translate API")
                
            # Берем язык с наивысшей уверенностью
            detection = max(detections[0], key=lambda d: d.get('confidence', 0))
            return detection.get('language', 'und')
            
        except requests.RequestException as e:
            raise RuntimeError(f"Ошибка запроса к Google Translate API: {str(e)}")
    
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
        
        # Подготовка параметров запроса
        params = {
            'key': self.api_key,
        }
        
        try:
            # Выполнение запроса к API
            languages_url = f"{self.BASE_URL}/languages"
            response = requests.get(languages_url, params=params)
            response.raise_for_status()  # Проверка на ошибки HTTP
            
            # Разбор ответа
            result = response.json()
            
            # Проверка наличия ошибок в ответе
            if 'error' in result:
                error_message = result['error'].get('message', 'Неизвестная ошибка')
                raise RuntimeError(f"Ошибка Google Translate API: {error_message}")
            
            # Извлечение списка языков
            languages = result.get('data', {}).get('languages', [])
            if not languages:
                raise RuntimeError("Пустой ответ от Google Translate API")
                
            # Преобразование в нужный формат
            self._supported_languages = [
                {'code': lang.get('language'), 'name': lang.get('name', lang.get('language'))}
                for lang in languages
            ]
            
            return self._supported_languages
            
        except requests.RequestException as e:
            raise RuntimeError(f"Ошибка запроса к Google Translate API: {str(e)}")
    
    @property
    def name(self) -> str:
        """
        Имя сервиса перевода
        
        Returns:
            Строка с названием сервиса
        """
        return "Google Cloud Translation API"
    
    @property
    def max_text_length(self) -> int:
        """
        Максимальная длина текста для перевода
        
        Returns:
            Максимальное количество символов
        """
        return 5000  # Ограничение Google Translate API
    
    @property
    def max_batch_size(self) -> int:
        """
        Максимальный размер пакета для пакетного перевода
        
        Returns:
            Максимальное количество текстов в одном запросе
        """
        return 100  # Ограничение Google Translate API
