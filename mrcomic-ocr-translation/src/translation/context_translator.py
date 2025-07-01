#!/usr/bin/env python3
"""
Контекстный переводчик для Mr.Comic
Обеспечивает перевод с учетом контекста комиксов
"""

import os
import json
import re
from typing import Dict, List, Optional, Any, Tuple
from .translator_interface import TranslatorInterface
from .cache import TranslationCache


class ContextTranslator(TranslatorInterface):
    """
    Контекстный переводчик, улучшающий качество перевода комиксов
    путем учета контекста и специфических терминов
    """
    
    def __init__(self, config: Dict[str, Any]):
        """
        Инициализация контекстного переводчика
        
        Args:
            config: Словарь с конфигурацией
                - base_translator: Тип базового переводчика ('google', 'libre', 'deepl')
                - base_translator_config: Конфигурация для базового переводчика
                - context_window: Размер окна контекста (количество предыдущих переводов)
                - use_cache: Использовать ли кэширование переводов
                - cache_size: Размер кэша переводов
                - dictionaries_path: Путь к словарям специфических терминов
        """
        from .translator_interface import TranslatorFactory
        
        # Конфигурация
        self.context_window = config.get('context_window', 5)
        self.use_cache = config.get('use_cache', True)
        self.cache_size = config.get('cache_size', 1000)
        
        # Путь к словарям
        self.dictionaries_path = config.get('dictionaries_path', os.path.join(
            os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 
            'dictionaries'
        ))
        
        # Создание базового переводчика
        base_translator_type = config.get('base_translator', 'google')
        base_translator_config = config.get('base_translator_config', {})
        self.base_translator = TranslatorFactory.create(base_translator_type, base_translator_config)
        
        # Инициализация кэша переводов
        self.translation_cache = TranslationCache(max_size=self.cache_size) if self.use_cache else None
        
        # Контекст перевода (история предыдущих переводов)
        self.context_history = []
        
        # Загрузка словарей специфических терминов
        self.dictionaries = {}
        self._load_dictionaries()
    
    def _load_dictionaries(self):
        """
        Загрузка словарей специфических терминов комиксов
        """
        # Создаем директорию для словарей, если она не существует
        os.makedirs(self.dictionaries_path, exist_ok=True)
        
        # Пытаемся загрузить существующие словари
        for dict_file in ['comic_terms.json', 'manga_terms.json', 'sound_effects.json', 'character_names.json']:
            dict_file_path = os.path.join(self.dictionaries_path, dict_file)
            
            # Если словарь не существует, создаем базовый шаблон
            if not os.path.exists(dict_file_path):
                dict_name = os.path.splitext(dict_file)[0]
                self._create_default_dictionary(dict_file_path, dict_name)
            
            # Загружаем словарь
            try:
                with open(dict_file_path, 'r', encoding='utf-8') as f:
                    self.dictionaries[dict_file] = json.load(f)
                print(f"Загружен словарь: {dict_file}")
            except Exception as e:
                print(f"Не удалось загрузить словарь {dict_file}: {e}")
                self.dictionaries[dict_file] = {}
    
    def _create_default_dictionary(self, file_path: str, dict_name: str):
        """
        Создание базового шаблона словаря
        
        Args:
            file_path: Путь к файлу словаря
            dict_name: Имя словаря
        """
        default_dict = {}
        
        # Базовые термины для разных типов словарей
        if dict_name == 'comic_terms':
            default_dict = {
                "POW": "БАХ",
                "BOOM": "БУМ",
                "CRASH": "ТРЕСК",
                "WHAM": "БАМ",
                "ZAP": "ВЖУХ",
                "KAPOW": "БАБАХ",
                "SPLAT": "ШЛЕП",
                "THUD": "БУХ",
                "WHACK": "ХРЯСЬ",
                "SLAM": "ХЛОП"
            }
        elif dict_name == 'manga_terms':
            default_dict = {
                "SENSEI": "СЕНСЕЙ",
                "SENPAI": "СЕМПАЙ",
                "KOHAI": "КОХАЙ",
                "NAKAMA": "НАКАМА",
                "BAKA": "БАКА",
                "NANI": "НАНИ",
                "SUGOI": "СУГОЙ",
                "KAWAII": "КАВАЙ",
                "KATANA": "КАТАНА",
                "SHINOBI": "СИНОБИ"
            }
        elif dict_name == 'sound_effects':
            default_dict = {
                "WHOOSH": "ВЖУХ",
                "BANG": "БАХ",
                "CLICK": "КЛИК",
                "CRUNCH": "ХРУСТЬ",
                "DRIP": "КАП",
                "FIZZ": "ШШШ",
                "HISS": "ШШШ",
                "KNOCK": "ТУК",
                "RING": "ДЗЫНЬ",
                "SPLASH": "ПЛЮХ"
            }
        elif dict_name == 'character_names':
            default_dict = {
                "BATMAN": "БЭТМЕН",
                "SUPERMAN": "СУПЕРМЕН",
                "SPIDER-MAN": "ЧЕЛОВЕК-ПАУК",
                "WONDER WOMAN": "ЧУДО-ЖЕНЩИНА",
                "IRON MAN": "ЖЕЛЕЗНЫЙ ЧЕЛОВЕК",
                "HULK": "ХАЛК",
                "THOR": "ТОР",
                "CAPTAIN AMERICA": "КАПИТАН АМЕРИКА",
                "BLACK WIDOW": "ЧЕРНАЯ ВДОВА",
                "JOKER": "ДЖОКЕР"
            }
        
        # Сохраняем словарь
        try:
            with open(file_path, 'w', encoding='utf-8') as f:
                json.dump(default_dict, f, ensure_ascii=False, indent=4)
            print(f"Создан базовый словарь: {dict_name}")
        except Exception as e:
            print(f"Не удалось создать словарь {dict_name}: {e}")
    
    def _preprocess_text(self, text: str, source_lang: str) -> str:
        """
        Предобработка текста перед переводом
        
        Args:
            text: Исходный текст
            source_lang: Код исходного языка
            
        Returns:
            Предобработанный текст
        """
        # Удаление лишних пробелов
        text = re.sub(r'\s+', ' ', text).strip()
        
        # Обработка специфических паттернов комиксов
        # Например, звуковые эффекты часто пишутся заглавными буквами
        if re.match(r'^[A-Z\s!?.]+$', text):
            # Это может быть звуковой эффект
            for dict_file, terms in self.dictionaries.items():
                if dict_file == 'sound_effects.json':
                    for term, replacement in terms.items():
                        if text.upper() == term.upper():
                            return text  # Оставляем как есть для последующей замены
        
        return text
    
    def _postprocess_translation(self, text: str, translated_text: str, target_lang: str) -> str:
        """
        Постобработка переведенного текста
        
        Args:
            text: Исходный текст
            translated_text: Переведенный текст
            target_lang: Код целевого языка
            
        Returns:
            Обработанный переведенный текст
        """
        # Замена специфических терминов комиксов
        for dict_file, terms in self.dictionaries.items():
            for term, replacement in terms.items():
                # Поиск термина с учетом регистра
                pattern = re.compile(re.escape(term), re.IGNORECASE)
                if pattern.search(text):
                    # Если термин найден в исходном тексте, заменяем его в переводе
                    translated_text = pattern.sub(replacement, translated_text)
        
        # Сохранение регистра
        if text.isupper():
            translated_text = translated_text.upper()
        elif text.islower():
            translated_text = translated_text.lower()
        elif text[0].isupper() and text[1:].islower():
            translated_text = translated_text[0].upper() + translated_text[1:].lower()
        
        # Сохранение знаков препинания
        if text.endswith('!') and not translated_text.endswith('!'):
            translated_text += '!'
        elif text.endswith('?') and not translated_text.endswith('?'):
            translated_text += '?'
        elif text.endswith('.') and not translated_text.endswith('.'):
            translated_text += '.'
        
        return translated_text
    
    def _get_context(self, text: str) -> List[Tuple[str, str]]:
        """
        Получение контекста для перевода
        
        Args:
            text: Текущий текст для перевода
            
        Returns:
            Список кортежей (исходный текст, переведенный текст) из истории
        """
        # Возвращаем последние N элементов из истории
        return self.context_history[-self.context_window:] if self.context_history else []
    
    def _update_context(self, text: str, translated_text: str):
        """
        Обновление контекста после перевода
        
        Args:
            text: Исходный текст
            translated_text: Переведенный текст
        """
        # Добавляем новый перевод в историю
        self.context_history.append((text, translated_text))
        
        # Ограничиваем размер истории
        if len(self.context_history) > self.context_window * 2:
            self.context_history = self.context_history[-self.context_window:]
    
    def translate_text(self, text: str, source_lang: str, target_lang: str) -> str:
        """
        Перевод одиночного текста с учетом контекста
        
        Args:
            text: Исходный текст для перевода
            source_lang: Код исходного языка (например, 'en', 'ru')
            target_lang: Код целевого языка (например, 'en', 'ru')
            
        Returns:
            Переведенный текст
        """
        if not text.strip():
            return text
        
        # Предобработка текста
        preprocessed_text = self._preprocess_text(text, source_lang)
        
        # Проверка кэша
        cache_key = f"{preprocessed_text}:{source_lang}:{target_lang}"
        if self.use_cache and self.translation_cache.has(cache_key):
            translated_text = self.translation_cache.get(cache_key)
            return self._postprocess_translation(text, translated_text, target_lang)
        
        # Получение контекста
        context = self._get_context(preprocessed_text)
        
        # Если есть контекст, добавляем его к тексту для перевода
        if context:
            # Формируем текст с контекстом
            context_text = ""
            for src, tgt in context:
                context_text += f"{src}\n{tgt}\n"
            
            # Добавляем разделитель и текущий текст
            context_text += f"---\n{preprocessed_text}"
            
            try:
                # Пытаемся перевести с контекстом
                translated_with_context = self.base_translator.translate_text(
                    context_text, source_lang, target_lang
                )
                
                # Извлекаем только перевод текущего текста
                translated_text = translated_with_context.split("---\n")[-1].strip()
            except Exception:
                # Если не удалось перевести с контекстом, переводим без него
                translated_text = self.base_translator.translate_text(
                    preprocessed_text, source_lang, target_lang
                )
        else:
            # Перевод без контекста
            translated_text = self.base_translator.translate_text(
                preprocessed_text, source_lang, target_lang
            )
        
        # Постобработка перевода
        final_translation = self._postprocess_translation(text, translated_text, target_lang)
        
        # Обновление контекста и кэша
        self._update_context(preprocessed_text, final_translation)
        if self.use_cache:
            self.translation_cache.set(cache_key, final_translation)
        
        return final_translation
    
    def translate_batch(self, texts: List[str], source_lang: str, target_lang: str) -> List[str]:
        """
        Пакетный перевод нескольких текстов с учетом контекста
        
        Args:
            texts: Список исходных текстов для перевода
            source_lang: Код исходного языка (например, 'en', 'ru')
            target_lang: Код целевого языка (например, 'en', 'ru')
            
        Returns:
            Список переведенных текстов в том же порядке
        """
        if not texts:
            return []
        
        # Переводим тексты по одному с учетом контекста
        translated_texts = []
        for text in texts:
            translated_text = self.translate_text(text, source_lang, target_lang)
            translated_texts.append(translated_text)
        
        return translated_texts
    
    def detect_language(self, text: str) -> str:
        """
        Определение языка текста
        
        Args:
            text: Текст для определения языка
            
        Returns:
            Код определенного языка (например, 'en', 'ru')
        """
        # Используем базовый переводчик для определения языка
        return self.base_translator.detect_language(text)
    
    def get_supported_languages(self) -> List[Dict[str, str]]:
        """
        Получение списка поддерживаемых языков
        
        Returns:
            Список словарей с информацией о языках:
            [{'code': 'en', 'name': 'English'}, {'code': 'ru', 'name': 'Russian'}, ...]
        """
        # Используем базовый переводчик для получения списка языков
        return self.base_translator.get_supported_languages()
    
    def clear_context(self):
        """
        Очистка контекста перевода
        """
        self.context_history = []
    
    def clear_cache(self):
        """
        Очистка кэша переводов
        """
        if self.use_cache:
            self.translation_cache.clear()
    
    @property
    def name(self) -> str:
        """
        Имя сервиса перевода
        
        Returns:
            Строка с названием сервиса
        """
        return f"Context Translator ({self.base_translator.name})"
    
    @property
    def max_text_length(self) -> int:
        """
        Максимальная длина текста для перевода
        
        Returns:
            Максимальное количество символов
        """
        # Учитываем, что контекст может увеличить размер текста
        return max(1000, self.base_translator.max_text_length // 2)
    
    @property
    def max_batch_size(self) -> int:
        """
        Максимальный размер пакета для пакетного перевода
        
        Returns:
            Максимальное количество текстов в одном запросе
        """
        # Для контекстного перевода лучше использовать меньший размер пакета
        return min(10, self.base_translator.max_batch_size)


# Регистрация в фабрике переводчиков
from .translator_interface import TranslatorFactory

# Добавляем новый тип переводчика в фабрику
def register_context_translator():
    """
    Регистрация контекстного переводчика в фабрике
    """
    original_create = TranslatorFactory.create
    
    def extended_create(translator_type: str, config: Optional[Dict[str, Any]] = None) -> TranslatorInterface:
        """
        Расширенная версия метода create с поддержкой контекстного переводчика
        """
        if translator_type.lower() == 'context':
            return ContextTranslator(config or {})
        return original_create(translator_type, config)
    
    TranslatorFactory.create = staticmethod(extended_create)

# Регистрируем контекстный переводчик
register_context_translator()
