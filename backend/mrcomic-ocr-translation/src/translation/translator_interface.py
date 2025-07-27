#!/usr/bin/env python3
"""
Интерфейс для модуля перевода Mr.Comic
Определяет абстракцию для различных сервисов перевода
"""

from abc import ABC, abstractmethod
from typing import Dict, List, Optional, Any


class TranslatorInterface(ABC):
    """
    Абстрактный базовый класс для всех реализаций переводчиков
    """
    
    @abstractmethod
    def translate_text(self, text: str, source_lang: str, target_lang: str) -> str:
        """
        Перевод одиночного текста с исходного языка на целевой
        
        Args:
            text: Исходный текст для перевода
            source_lang: Код исходного языка (например, 'en', 'ru')
            target_lang: Код целевого языка (например, 'en', 'ru')
            
        Returns:
            Переведенный текст
        """
        pass
    
    @abstractmethod
    def translate_batch(self, texts: List[str], source_lang: str, target_lang: str) -> List[str]:
        """
        Пакетный перевод нескольких текстов
        
        Args:
            texts: Список исходных текстов для перевода
            source_lang: Код исходного языка (например, 'en', 'ru')
            target_lang: Код целевого языка (например, 'en', 'ru')
            
        Returns:
            Список переведенных текстов в том же порядке
        """
        pass
    
    @abstractmethod
    def detect_language(self, text: str) -> str:
        """
        Определение языка текста
        
        Args:
            text: Текст для определения языка
            
        Returns:
            Код определенного языка (например, 'en', 'ru')
        """
        pass
    
    @abstractmethod
    def get_supported_languages(self) -> List[Dict[str, str]]:
        """
        Получение списка поддерживаемых языков
        
        Returns:
            Список словарей с информацией о языках:
            [{'code': 'en', 'name': 'English'}, {'code': 'ru', 'name': 'Russian'}, ...]
        """
        pass
    
    @property
    @abstractmethod
    def name(self) -> str:
        """
        Имя сервиса перевода
        
        Returns:
            Строка с названием сервиса
        """
        pass
    
    @property
    @abstractmethod
    def max_text_length(self) -> int:
        """
        Максимальная длина текста для перевода
        
        Returns:
            Максимальное количество символов
        """
        pass
    
    @property
    @abstractmethod
    def max_batch_size(self) -> int:
        """
        Максимальный размер пакета для пакетного перевода
        
        Returns:
            Максимальное количество текстов в одном запросе
        """
        pass


class TranslatorFactory:
    """
    Фабрика для создания экземпляров переводчиков
    """
    
    @staticmethod
    def create(translator_type: str, config: Optional[Dict[str, Any]] = None) -> TranslatorInterface:
        """
        Создание экземпляра переводчика указанного типа
        
        Args:
            translator_type: Тип переводчика ('google', 'libre', 'deepl', 'fallback')
            config: Конфигурация для переводчика (API ключи и т.д.)
            
        Returns:
            Экземпляр переводчика, реализующий TranslatorInterface
            
        Raises:
            ValueError: Если указан неподдерживаемый тип переводчика
        """
        if config is None:
            config = {}
        
        try:
            if translator_type.lower() == 'google':
                from .google_translator import GoogleTranslator
                return GoogleTranslator(config)
            elif translator_type.lower() == 'libre':
                from .libre_translator import LibreTranslator
                return LibreTranslator(config)
            elif translator_type.lower() == 'deepl':
                from .deepl_translator import DeepLTranslator
                return DeepLTranslator(config)
            elif translator_type.lower() == 'fallback':
                from .fallback_translator import FallbackTranslator
                return FallbackTranslator(config)
            else:
                raise ValueError(f"Неподдерживаемый тип переводчика: {translator_type}")
        except Exception as e:
            print(f"Ошибка при создании переводчика {translator_type}: {str(e)}")
            print("Использую запасной переводчик...")
            from .fallback_translator import FallbackTranslator
            return FallbackTranslator(config)
