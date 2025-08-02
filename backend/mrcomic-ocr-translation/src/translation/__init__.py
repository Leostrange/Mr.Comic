#!/usr/bin/env python3
"""Инициализация пакета ``translation``.

Модуль предоставляет только базовые интерфейсы перевода. Конкретные
реализации переводчиков импортируются фабрикой по требованию, что
позволяет использовать отдельные подсистемы (например, кэш переводов)
без установки дополнительных зависимостей.
"""

from .translator_interface import TranslatorInterface, TranslatorFactory

__all__ = ["TranslatorInterface", "TranslatorFactory"]
