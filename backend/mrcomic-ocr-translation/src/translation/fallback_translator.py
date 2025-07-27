#!/usr/bin/env python3
"""
Реализация интеграции с локальным сервисом перевода для Mr.Comic
Используется как запасной вариант при недоступности внешних API
"""

import os
import json
import re
from typing import Dict, List, Optional, Any
from .translator_interface import TranslatorInterface

# Словари для базового перевода
EN_RU_DICT = {
    "hello": "привет",
    "world": "мир",
    "test": "тест",
    "comic": "комикс",
    "comics": "комиксы",
    "page": "страница",
    "book": "книга",
    "read": "читать",
    "reading": "чтение",
    "love": "любить",
    "i": "я",
    "you": "ты",
    "he": "он",
    "she": "она",
    "it": "это",
    "we": "мы",
    "they": "они",
    "this": "это",
    "that": "то",
    "is": "является",
    "are": "являются",
    "was": "был",
    "were": "были",
    "will": "будет",
    "would": "бы",
    "can": "может",
    "could": "мог бы",
    "should": "должен",
    "may": "может",
    "might": "мог бы",
    "must": "должен",
    "have": "иметь",
    "has": "имеет",
    "had": "имел",
    "do": "делать",
    "does": "делает",
    "did": "делал",
    "a": "",
    "an": "",
    "the": "",
    "and": "и",
    "or": "или",
    "but": "но",
    "if": "если",
    "because": "потому что",
    "as": "как",
    "until": "до",
    "while": "пока",
    "of": "",
    "at": "в",
    "by": "от",
    "for": "для",
    "with": "с",
    "about": "о",
    "against": "против",
    "between": "между",
    "into": "в",
    "through": "через",
    "during": "во время",
    "before": "до",
    "after": "после",
    "above": "над",
    "below": "под",
    "to": "к",
    "from": "от",
    "up": "вверх",
    "down": "вниз",
    "in": "в",
    "out": "из",
    "on": "на",
    "off": "выключено",
    "over": "над",
    "under": "под",
    "again": "снова",
    "further": "дальше",
    "then": "затем",
    "once": "однажды",
    "here": "здесь",
    "there": "там",
    "when": "когда",
    "where": "где",
    "why": "почему",
    "how": "как",
    "all": "все",
    "any": "любой",
    "both": "оба",
    "each": "каждый",
    "few": "немного",
    "more": "больше",
    "most": "большинство",
    "other": "другой",
    "some": "некоторые",
    "such": "такой",
    "no": "нет",
    "nor": "ни",
    "not": "не",
    "only": "только",
    "own": "собственный",
    "same": "тот же",
    "so": "так",
    "than": "чем",
    "too": "тоже",
    "very": "очень",
    "one": "один",
    "two": "два",
    "three": "три",
    "four": "четыре",
    "five": "пять",
    "six": "шесть",
    "seven": "семь",
    "eight": "восемь",
    "nine": "девять",
    "ten": "десять",
    "first": "первый",
    "second": "второй",
    "new": "новый",
    "old": "старый",
    "good": "хороший",
    "bad": "плохой",
    "high": "высокий",
    "low": "низкий",
    "last": "последний",
    "long": "длинный",
    "great": "великий",
    "little": "маленький",
    "own": "собственный",
    "other": "другой",
    "right": "правильный",
    "left": "левый",
    "big": "большой",
    "small": "маленький",
    "large": "большой",
    "next": "следующий",
    "early": "ранний",
    "late": "поздний",
    "young": "молодой",
    "important": "важный",
    "few": "немного",
    "public": "общественный",
    "private": "частный",
    "today": "сегодня",
    "tomorrow": "завтра",
    "yesterday": "вчера",
    "day": "день",
    "week": "неделя",
    "month": "месяц",
    "year": "год",
    "hour": "час",
    "minute": "минута",
    "second": "секунда",
    "time": "время",
    "place": "место",
    "room": "комната",
    "home": "дом",
    "house": "дом",
    "world": "мир",
    "country": "страна",
    "city": "город",
    "state": "штат",
    "school": "школа",
    "college": "колледж",
    "university": "университет",
    "library": "библиотека",
    "store": "магазин",
    "restaurant": "ресторан",
    "hotel": "отель",
    "hospital": "больница",
    "church": "церковь",
    "market": "рынок",
    "building": "здание",
    "ground": "земля",
    "land": "земля",
    "field": "поле",
    "garden": "сад",
    "street": "улица",
    "road": "дорога",
    "hill": "холм",
    "mountain": "гора",
    "lake": "озеро",
    "river": "река",
    "sea": "море",
    "ocean": "океан",
    "forest": "лес",
    "sky": "небо",
    "earth": "земля",
    "sun": "солнце",
    "moon": "луна",
    "star": "звезда",
    "tree": "дерево",
    "plant": "растение",
    "flower": "цветок",
    "grass": "трава",
    "leaf": "лист",
    "air": "воздух",
    "water": "вода",
    "fire": "огонь",
    "ice": "лед",
    "light": "свет",
    "dark": "темный",
    "weather": "погода",
    "rain": "дождь",
    "snow": "снег",
    "wind": "ветер",
    "cloud": "облако",
    "storm": "буря",
    "heat": "жара",
    "cold": "холод",
    "spring": "весна",
    "summer": "лето",
    "fall": "осень",
    "winter": "зима",
    "season": "сезон",
    "north": "север",
    "south": "юг",
    "east": "восток",
    "west": "запад",
    "top": "верх",
    "bottom": "низ",
    "side": "сторона",
    "inside": "внутри",
    "outside": "снаружи",
    "around": "вокруг",
    "across": "через",
    "along": "вдоль",
    "behind": "позади",
    "beyond": "за",
    "near": "рядом",
    "far": "далеко",
    "away": "прочь",
    "together": "вместе",
    "apart": "отдельно",
}

RU_EN_DICT = {v: k for k, v in EN_RU_DICT.items()}

# Словари для определения языка
LANG_PATTERNS = {
    'en': r'[a-zA-Z]',
    'ru': r'[а-яА-ЯёЁ]',
    'fr': r'[àâäæçéèêëîïôœùûüÿÀÂÄÆÇÉÈÊËÎÏÔŒÙÛÜŸ]',
    'de': r'[äöüßÄÖÜ]',
    'es': r'[áéíóúüñÁÉÍÓÚÜÑ]',
    'it': r'[àèéìíîòóùÀÈÉÌÍÎÒÓÙ]',
    'ja': r'[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FFF]',
    'zh': r'[\u4E00-\u9FFF]',
    'ko': r'[\uAC00-\uD7AF\u1100-\u11FF\u3130-\u318F\uA960-\uA97F\uD7B0-\uD7FF]',
    'ar': r'[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\uFB50-\uFDFF\uFE70-\uFEFF]',
}


class FallbackTranslator(TranslatorInterface):
    """
    Реализация локального переводчика на основе словарей
    Используется как запасной вариант при недоступности внешних API
    """
    
    def __init__(self, config: Dict[str, Any]):
        """
        Инициализация локального переводчика
        
        Args:
            config: Словарь с конфигурацией (не используется)
        """
        self._supported_languages = [
            {'code': 'en', 'name': 'English'},
            {'code': 'ru', 'name': 'Russian'},
        ]
    
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
            ValueError: Если указана неподдерживаемая языковая пара
        """
        if not text.strip():
            return text
            
        # Проверка поддерживаемых языков
        if source_lang not in ['en', 'ru'] or target_lang not in ['en', 'ru']:
            raise ValueError(f"Неподдерживаемая языковая пара: {source_lang} -> {target_lang}")
            
        # Определение словаря для перевода
        if source_lang == 'en' and target_lang == 'ru':
            translation_dict = EN_RU_DICT
        elif source_lang == 'ru' and target_lang == 'en':
            translation_dict = RU_EN_DICT
        else:
            return text  # Возвращаем исходный текст для одинаковых языков
        
        # Простой алгоритм перевода на основе словаря
        words = re.findall(r'\b\w+\b', text.lower())
        translated_words = []
        
        for word in words:
            translated_word = translation_dict.get(word, word)
            translated_words.append(translated_word)
        
        # Собираем переведенный текст
        translated_text = ' '.join(translated_words)
        
        # Сохраняем знаки препинания и регистр первой буквы
        if text and text[0].isupper() and translated_text:
            translated_text = translated_text[0].upper() + translated_text[1:]
            
        # Добавляем знаки препинания из оригинального текста
        for i, char in enumerate(text):
            if not char.isalnum() and not char.isspace():
                # Находим соответствующую позицию в переведенном тексте
                word_count_original = len(re.findall(r'\b\w+\b', text[:i]))
                
                # Вставляем знак препинания после соответствующего слова
                words_translated = translated_text.split()
                if word_count_original < len(words_translated):
                    words_translated[word_count_original] += char
                    translated_text = ' '.join(words_translated)
                else:
                    translated_text += char
        
        return translated_text
    
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
        if not texts:
            return []
            
        # Переводим каждый текст по отдельности
        translated_texts = []
        for text in texts:
            try:
                translated = self.translate_text(text, source_lang, target_lang)
                translated_texts.append(translated)
            except Exception as e:
                # В случае ошибки сохраняем исходный текст
                translated_texts.append(text)
                print(f"Ошибка при переводе текста: {str(e)}")
                
        return translated_texts
    
    def detect_language(self, text: str) -> str:
        """
        Определение языка текста
        
        Args:
            text: Текст для определения языка
            
        Returns:
            Код определенного языка (например, 'en', 'ru')
        """
        if not text.strip():
            return 'und'  # Неопределенный язык для пустого текста
        
        # Подсчитываем количество символов каждого языка
        lang_counts = {}
        for lang, pattern in LANG_PATTERNS.items():
            matches = re.findall(pattern, text)
            lang_counts[lang] = len(matches)
        
        # Определяем язык с наибольшим количеством совпадений
        if not lang_counts:
            return 'und'
            
        detected_lang = max(lang_counts.items(), key=lambda x: x[1])
        
        # Если нет совпадений, возвращаем неопределенный язык
        if detected_lang[1] == 0:
            return 'und'
            
        return detected_lang[0]
    
    def get_supported_languages(self) -> List[Dict[str, str]]:
        """
        Получение списка поддерживаемых языков
        
        Returns:
            Список словарей с информацией о языках:
            [{'code': 'en', 'name': 'English'}, {'code': 'ru', 'name': 'Russian'}]
        """
        return self._supported_languages
    
    @property
    def name(self) -> str:
        """
        Имя сервиса перевода
        
        Returns:
            Строка с названием сервиса
        """
        return "Fallback Dictionary Translator"
    
    @property
    def max_text_length(self) -> int:
        """
        Максимальная длина текста для перевода
        
        Returns:
            Максимальное количество символов
        """
        return 10000  # Практически неограниченно для локального переводчика
    
    @property
    def max_batch_size(self) -> int:
        """
        Максимальный размер пакета для пакетного перевода
        
        Returns:
            Максимальное количество текстов в одном запросе
        """
        return 100  # Практически неограниченно для локального переводчика
