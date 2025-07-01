#!/usr/bin/env python3
"""
Инициализация пакета translation
"""

# Импортируем основные классы для удобства использования
from .translator_interface import TranslatorInterface, TranslatorFactory
from .google_translator import GoogleTranslator
from .libre_translator import LibreTranslator
from .fallback_translator import FallbackTranslator

# Обновляем фабрику для поддержки fallback-переводчика
TranslatorFactory._create_fallback = lambda config: FallbackTranslator(config)
