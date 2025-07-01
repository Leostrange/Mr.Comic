#!/usr/bin/env python3
"""
Универсальная система переводов для Mr.Comic
Интегрирует множественные API переводчиков и локальные модели
"""

import asyncio
import aiohttp
import requests
import json
import logging
import time
import hashlib
import sqlite3
from typing import List, Dict, Tuple, Any, Optional, Union
from dataclasses import dataclass, asdict
from enum import Enum
from pathlib import Path
import re
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading
import onnxruntime
import sentencepiece as spm

# Настройка логирования
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger('UniversalTranslator')

class TranslatorEngine(Enum):
    """Типы переводчиков"""
    GOOGLE_TRANSLATE = "google_translate"
    DEEPL = "deepl"
    MICROSOFT_TRANSLATOR = "microsoft_translator"
    YANDEX_TRANSLATE = "yandex_translate"
    AMAZON_TRANSLATE = "amazon_translate"
    LIBRE_TRANSLATE = "libre_translate"
    OPUS_MT = "opus_mt"
    M2M100 = "m2m100"
    NLLB = "nllb"
    COMIC_SPECIALIZED = "comic_specialized"
    MANGA_SPECIALIZED = "manga_specialized"
    FALLBACK_DICTIONARY = "fallback_dictionary"
    SMALL100 = "small100"

class TranslationDomain(Enum):
    """Домены перевода"""
    GENERAL = "general"
    COMIC = "comic"
    MANGA = "manga"
    DIALOGUE = "dialogue"
    NARRATION = "narration"
    SOUND_EFFECT = "sound_effect"
    PROPER_NAMES = "proper_names"
    SLANG = "slang"
    CULTURAL_REFERENCES = "cultural_references"

@dataclass
class TranslationRequest:
    """Запрос на перевод"""
    text: str
    source_lang: str
    target_lang: str
    domain: TranslationDomain = TranslationDomain.GENERAL
    context: Optional[str] = None
    character_name: Optional[str] = None
    emotion: Optional[str] = None
    priority: int = 1  # 1-5, где 5 - наивысший приоритет

@dataclass
class TranslationResult:
    """Результат перевода"""
    original_text: str
    translated_text: str
    source_lang: str
    target_lang: str
    engine: TranslatorEngine
    confidence: float
    processing_time: float
    domain: TranslationDomain
    metadata: Dict[str, Any]
    alternatives: List[str] = None

@dataclass
class TranslationMemoryEntry:
    """Запись в памяти переводов"""
    source_text: str
    target_text: str
    source_lang: str
    target_lang: str
    domain: TranslationDomain
    context: Optional[str]
    quality_score: float
    usage_count: int
    last_used: float
    created_at: float

class UniversalTranslationSystem:
    """
    Универсальная система переводов с поддержкой множественных API
    и специализированных моделей для комиксов
    """
    
    def __init__(self, config: Optional[Dict[str, Any]] = None):
        """
        Инициализация системы переводов
        
        Args:
            config: Конфигурация системы
        """
        self.config = config or {}
        
        # Настройки по умолчанию
        self.default_config = {
            'enabled_engines': [
                TranslatorEngine.GOOGLE_TRANSLATE,
                TranslatorEngine.LIBRE_TRANSLATE,
                TranslatorEngine.FALLBACK_DICTIONARY
            ],
            'primary_engine': TranslatorEngine.GOOGLE_TRANSLATE,
            'fallback_engines': [
                TranslatorEngine.LIBRE_TRANSLATE,
                TranslatorEngine.FALLBACK_DICTIONARY
            ],
            'max_retries': 3,
            'timeout': 30,
            'cache_enabled': True,
            'translation_memory_enabled': True,
            'consensus_translation': True,
            'quality_threshold': 0.7,
            'max_concurrent_requests': 5,
            'rate_limit_delay': 0.1,
            'database_path': 'translation_cache.db'
        }
        
        # Объединение конфигураций
        self.config = {**self.default_config, **self.config}
        
        # Инициализация компонентов
        self.engines = {}
        self.session = None
        self.db_connection = None
        self.translation_memory = {}
        self.specialized_dictionaries = {}
        
        # Блокировки для потокобезопасности
        self.cache_lock = threading.Lock()
        self.memory_lock = threading.Lock()
        
        self._initialize_database()
        self._initialize_engines()
        self._load_specialized_dictionaries()
        self._load_translation_memory()
        
        logger.info("Универсальная система переводов инициализирована")
    
    def _initialize_database(self):
        """Инициализация базы данных для кэша и памяти переводов"""
        try:
            db_path = self.config['database_path']
            self.db_connection = sqlite3.connect(db_path, check_same_thread=False)
            
            # Создание таблиц
            cursor = self.db_connection.cursor()
            
            # Таблица кэша переводов
            cursor.execute('''
                CREATE TABLE IF NOT EXISTS translation_cache (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    text_hash TEXT UNIQUE,
                    source_text TEXT,
                    translated_text TEXT,
                    source_lang TEXT,
                    target_lang TEXT,
                    engine TEXT,
                    domain TEXT,
                    confidence REAL,
                    created_at REAL,
                    last_used REAL,
                    usage_count INTEGER DEFAULT 1
                )
            ''')
            
            # Таблица памяти переводов
            cursor.execute('''
                CREATE TABLE IF NOT EXISTS translation_memory (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    source_text TEXT,
                    target_text TEXT,
                    source_lang TEXT,
                    target_lang TEXT,
                    domain TEXT,
                    context TEXT,
                    quality_score REAL,
                    usage_count INTEGER DEFAULT 1,
                    last_used REAL,
                    created_at REAL
                )
            ''')
            
            # Таблица пользовательских словарей
            cursor.execute('''
                CREATE TABLE IF NOT EXISTS user_dictionaries (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    source_term TEXT,
                    target_term TEXT,
                    source_lang TEXT,
                    target_lang TEXT,
                    domain TEXT,
                    character_name TEXT,
                    created_at REAL
                )
            ''')
            
            self.db_connection.commit()
            logger.info("База данных переводов инициализирована")
            
        except Exception as e:
            logger.error(f"Ошибка инициализации базы данных: {e}")
            self.db_connection = None
    
    def _initialize_engines(self):
        """Инициализация переводческих движков"""
        for engine in self.config['enabled_engines']:
            try:
                if engine == TranslatorEngine.GOOGLE_TRANSLATE:
                    self._init_google_translate()
                elif engine == TranslatorEngine.DEEPL:
                    self._init_deepl()
                elif engine == TranslatorEngine.MICROSOFT_TRANSLATOR:
                    self._init_microsoft_translator()
                elif engine == TranslatorEngine.YANDEX_TRANSLATE:
                    self._init_yandex_translate()
                elif engine == TranslatorEngine.AMAZON_TRANSLATE:
                    self._init_amazon_translate()
                elif engine == TranslatorEngine.LIBRE_TRANSLATE:
                    self._init_libre_translate()
                elif engine == TranslatorEngine.OPUS_MT:
                    self._init_opus_mt()
                elif engine == TranslatorEngine.M2M100:
                    self._init_m2m100()
                elif engine == TranslatorEngine.NLLB:
                    self._init_nllb()
                elif engine == TranslatorEngine.COMIC_SPECIALIZED:
                    self._init_comic_specialized()
                elif engine == TranslatorEngine.MANGA_SPECIALIZED:
                    self._init_manga_specialized()
                elif engine == TranslatorEngine.FALLBACK_DICTIONARY:
                    self._init_fallback_dictionary()
                elif engine == TranslatorEngine.SMALL100:
                    self._init_small100()
                
                logger.info(f"Движок {engine.value} успешно инициализирован")
                
            except Exception as e:
                logger.warning(f"Не удалось инициализировать движок {engine.value}: {e}")
    
    def _init_google_translate(self):
        """Инициализация Google Translate"""
        try:
            # Используем googletrans библиотеку как fallback
            from googletrans import Translator
            
            self.engines[TranslatorEngine.GOOGLE_TRANSLATE] = {
                'translator': Translator(),
                'initialized': True,
                'type': 'api',
                'languages': ['en', 'ru', 'ja', 'ko', 'zh', 'es', 'fr', 'de', 'it'],
                'rate_limit': 0.1
            }
            
        except ImportError:
            logger.warning("googletrans не установлен, используется заглушка")
            self.engines[TranslatorEngine.GOOGLE_TRANSLATE] = {
                'initialized': False,
                'note': 'Требуется установка googletrans'
            }
    
    def _init_deepl(self):
        """Инициализация DeepL"""
        # Заглушка для DeepL API
        self.engines[TranslatorEngine.DEEPL] = {
            'initialized': False,
            'note': 'Требуется API ключ DeepL',
            'api_key': self.config.get('deepl_api_key'),
            'languages': ['en', 'ru', 'ja', 'de', 'fr', 'es', 'it', 'pl']
        }
    
    def _init_microsoft_translator(self):
        """Инициализация Microsoft Translator"""
        # Заглушка для Microsoft Translator
        self.engines[TranslatorEngine.MICROSOFT_TRANSLATOR] = {
            'initialized': False,
            'note': 'Требуется API ключ Microsoft Translator',
            'api_key': self.config.get('microsoft_api_key'),
            'languages': ['en', 'ru', 'ja', 'ko', 'zh', 'ar', 'hi']
        }
    
    def _init_yandex_translate(self):
        """Инициализация Яндекс.Переводчик"""
        # Заглушка для Яндекс.Переводчик
        self.engines[TranslatorEngine.YANDEX_TRANSLATE] = {
            'initialized': False,
            'note': 'Требуется API ключ Яндекс.Переводчик',
            'api_key': self.config.get('yandex_api_key'),
            'languages': ['en', 'ru', 'uk', 'be', 'kk', 'ky']
        }
    
    def _init_amazon_translate(self):
        """Инициализация Amazon Translate"""
        # Заглушка для Amazon Translate
        self.engines[TranslatorEngine.AMAZON_TRANSLATE] = {
            'initialized': False,
            'note': 'Требуются AWS credentials',
            'languages': ['en', 'ru', 'ja', 'ko', 'zh', 'ar', 'hi', 'th']
        }
    
    def _init_libre_translate(self):
        """Инициализация LibreTranslate"""
        try:
            # Проверка доступности LibreTranslate сервера
            test_url = self.config.get('libretranslate_url', 'https://libretranslate.de')
            
            self.engines[TranslatorEngine.LIBRE_TRANSLATE] = {
                'url': test_url,
                'api_key': self.config.get('libretranslate_api_key'),
                'initialized': True,
                'type': 'api',
                'languages': ['en', 'ru', 'ja', 'ko', 'zh', 'es', 'fr', 'de'],
                'rate_limit': 0.5
            }
            
        except Exception as e:
            logger.warning(f"LibreTranslate недоступен: {e}")
            self.engines[TranslatorEngine.LIBRE_TRANSLATE] = {'initialized': False}
    
    def _init_opus_mt(self):
        """Инициализация OPUS-MT локальных моделей"""
        try:
            # Проверка доступности transformers
            from transformers import MarianMTModel, MarianTokenizer
            
            self.engines[TranslatorEngine.OPUS_MT] = {
                'initialized': False,
                'note': 'Локальные модели OPUS-MT (требуется загрузка)',
                'type': 'local',
                'models': {}
            }
            
        except ImportError:
            self.engines[TranslatorEngine.OPUS_MT] = {
                'initialized': False,
                'note': 'Требуется установка transformers'
            }
    
    def _init_small100(self):
        """Инициализация SMALL100"""
        try:
            model_path = Path("/home/ubuntu/repos/Mr.Comic/local-translation-models/model.onnx")
            tokenizer_path = Path("/home/ubuntu/repos/Mr.Comic/local-translation-models/sentencepiece.bpe.model")

            if not model_path.exists():
                logger.warning(f"Файл модели ONNX не найден: {model_path}")
                self.engines[TranslatorEngine.SMALL100] = {
                    'initialized': False,
                    'note': 'Файл модели ONNX не найден'
                }
                return

            if not tokenizer_path.exists():
                logger.warning(f"Файл токенизатора SentencePiece не найден: {tokenizer_path}")
                self.engines[TranslatorEngine.SMALL100] = {
                    'initialized': False,
                    'note': 'Файл токенизатора SentencePiece не найден'
                }
                return

            self.engines[TranslatorEngine.SMALL100] = {
                'session': onnxruntime.InferenceSession(str(model_path)),
                'tokenizer': spm.SentencePieceProcessor(model_file=str(tokenizer_path)),
                'initialized': True,
                'type': 'local',
                'languages': ['en', 'ru', 'ja', 'ko', 'zh', 'es', 'fr', 'de'],
                'rate_limit': 0.01  # Локальная модель, можно переводить быстрее
            }
            logger.info("SMALL100 успешно инициализирован")
        except Exception as e:
            logger.error(f"Ошибка инициализации SMALL100: {e}")
            self.engines[TranslatorEngine.SMALL100] = {
                'initialized': False,
                'note': f'Ошибка инициализации: {e}'
            }
        # Инициализация M2M-100
    
    def _init_manga_specialized(self):
        """Инициализация специализированного переводчика для манги"""
        self.engines[TranslatorEngine.MANGA_SPECIALIZED] = {
            'initialized': True,
            'type': 'specialized',
            'domains': [TranslationDomain.MANGA, TranslationDomain.CULTURAL_REFERENCES],
            'note': 'Специализированный переводчик для манги'
        }
    
    def _init_fallback_dictionary(self):
        """Инициализация словарного переводчика"""
        self.engines[TranslatorEngine.FALLBACK_DICTIONARY] = {
            'initialized': True,
            'type': 'dictionary',
            'note': 'Словарный переводчик (fallback)'
        }
    
    def _load_specialized_dictionaries(self):
        """Загрузка специализированных словарей"""
        # Словарь звуковых эффектов
        self.specialized_dictionaries['sound_effects'] = {
            'en_ru': {
                'BANG': 'БАХ',
                'BOOM': 'БУМ',
                'CRASH': 'КРАХ',
                'WHOOSH': 'СВИСТ',
                'SPLASH': 'ВСПЛЕСК',
                'THUD': 'ГЛУХОЙ УДАР',
                'CRACK': 'ТРЕСК',
                'SLAM': 'ХЛОПОК',
                'BUZZ': 'ЖУЖЖАНИЕ',
                'RING': 'ЗВОНОК'
            }
        }
        
        # Словарь эмоциональных выражений
        self.specialized_dictionaries['emotions'] = {
            'en_ru': {
                'Wow!': 'Вау!',
                'Oh no!': 'О нет!',
                'Amazing!': 'Потрясающе!',
                'Huh?': 'А?',
                'What?!': 'Что?!',
                'Awesome!': 'Круто!',
                'Ouch!': 'Ой!',
                'Yay!': 'Ура!'
            }
        }
        
        # Словарь имен персонажей (будет пополняться)
        self.specialized_dictionaries['character_names'] = {
            'en_ru': {}
        }
        
        logger.info("Специализированные словари загружены")
    
    def _load_translation_memory(self):
        """Загрузка памяти переводов из базы данных"""
        if not self.config['translation_memory_enabled'] or not self.db_connection:
            return
        
        try:
            cursor = self.db_connection.cursor()
            cursor.execute('''
                SELECT source_text, target_text, source_lang, target_lang, 
                       domain, context, quality_score, usage_count, 
                       last_used, created_at
                FROM translation_memory
                ORDER BY quality_score DESC, usage_count DESC
                LIMIT 10000
            ''')
            
            rows = cursor.fetchall()
            
            for row in rows:
                entry = TranslationMemoryEntry(
                    source_text=row[0],
                    target_text=row[1],
                    source_lang=row[2],
                    target_lang=row[3],
                    domain=TranslationDomain(row[4]),
                    context=row[5],
                    quality_score=row[6],
                    usage_count=row[7],
                    last_used=row[8],
                    created_at=row[9]
                )
                
                key = self._get_memory_key(row[0], row[2], row[3], row[4])
                self.translation_memory[key] = entry
            
            logger.info(f"Загружено {len(rows)} записей из памяти переводов")
            
        except Exception as e:
            logger.error(f"Ошибка загрузки памяти переводов: {e}")
    
    def _get_cache_key(self, text: str, source_lang: str, target_lang: str, engine: str) -> str:
        """Генерация ключа кэша"""
        content = f"{text}|{source_lang}|{target_lang}|{engine}"
        return hashlib.md5(content.encode()).hexdigest()
    
    def _get_memory_key(self, text: str, source_lang: str, target_lang: str, domain: str) -> str:
        """Генерация ключа памяти переводов"""
        content = f"{text}|{source_lang}|{target_lang}|{domain}"
        return hashlib.md5(content.encode()).hexdigest()
    
    def _check_cache(self, request: TranslationRequest, engine: TranslatorEngine) -> Optional[TranslationResult]:
        """Проверка кэша переводов"""
        if not self.config['cache_enabled'] or not self.db_connection:
            return None
        
        try:
            text_hash = self._get_cache_key(
                request.text, 
                request.source_lang, 
                request.target_lang, 
                engine.value
            )
            
            cursor = self.db_connection.cursor()
            cursor.execute('''
                SELECT translated_text, confidence, created_at
                FROM translation_cache
                WHERE text_hash = ?
            ''', (text_hash,))
            
            row = cursor.fetchone()
            if row:
                # Обновление статистики использования
                cursor.execute('''
                    UPDATE translation_cache
                    SET last_used = ?, usage_count = usage_count + 1
                    WHERE text_hash = ?
                ''', (time.time(), text_hash))
                self.db_connection.commit()
                
                return TranslationResult(
                    original_text=request.text,
                    translated_text=row[0],
                    source_lang=request.source_lang,
                    target_lang=request.target_lang,
                    engine=engine,
                    confidence=row[1],
                    processing_time=0.001,  # Кэш очень быстрый
                    domain=request.domain,
                    metadata={'cached': True, 'cache_created': row[2]}
                )
        
        except Exception as e:
            logger.warning(f"Ошибка проверки кэша: {e}")
        
        return None
    
    def _save_to_cache(self, request: TranslationRequest, result: TranslationResult):
        """Сохранение результата в кэш"""
        if not self.config['cache_enabled'] or not self.db_connection:
            return
        
        try:
            text_hash = self._get_cache_key(
                request.text,
                request.source_lang,
                request.target_lang,
                result.engine.value
            )
            
            cursor = self.db_connection.cursor()
            cursor.execute('''
                INSERT OR REPLACE INTO translation_cache
                (text_hash, source_text, translated_text, source_lang, target_lang,
                 engine, domain, confidence, created_at, last_used)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            ''', (
                text_hash,
                request.text,
                result.translated_text,
                request.source_lang,
                request.target_lang,
                result.engine.value,
                request.domain.value,
                result.confidence,
                time.time(),
                time.time()
            ))
            
            self.db_connection.commit()
            
        except Exception as e:
            logger.warning(f"Ошибка сохранения в кэш: {e}")
    
    def _check_translation_memory(self, request: TranslationRequest) -> Optional[str]:
        """Проверка памяти переводов"""
        if not self.config['translation_memory_enabled']:
            return None
        
        memory_key = self._get_memory_key(
            request.text,
            request.source_lang,
            request.target_lang,
            request.domain.value
        )
        
        if memory_key in self.translation_memory:
            entry = self.translation_memory[memory_key]
            
            # Обновление статистики
            entry.usage_count += 1
            entry.last_used = time.time()
            
            return entry.target_text
        
        return None
    
    def translate_with_google(self, request: TranslationRequest) -> Optional[TranslationResult]:
        """Перевод с помощью Google Translate"""
        engine_info = self.engines.get(TranslatorEngine.GOOGLE_TRANSLATE)
        if not engine_info or not engine_info.get('initialized'):
            return None
        
        try:
            start_time = time.time()
            
            translator = engine_info['translator']
            result = translator.translate(
                request.text,
                src=request.source_lang,
                dest=request.target_lang
            )
            
            processing_time = time.time() - start_time
            
            return TranslationResult(
                original_text=request.text,
                translated_text=result.text,
                source_lang=request.source_lang,
                target_lang=request.target_lang,
                engine=TranslatorEngine.GOOGLE_TRANSLATE,
                confidence=0.8,  # Google обычно дает хорошие результаты
                processing_time=processing_time,
                domain=request.domain,
                metadata={
                    'detected_source_lang': result.src,
                    'pronunciation': getattr(result, 'pronunciation', None)
                }
            )
            
        except Exception as e:
            logger.error(f"Ошибка Google Translate: {e}")
            return None
    
    def translate_with_libre(self, request: TranslationRequest) -> Optional[TranslationResult]:
        """Перевод с помощью LibreTranslate"""
        engine_info = self.engines.get(TranslatorEngine.LIBRE_TRANSLATE)
        if not engine_info or not engine_info.get('initialized'):
            return None
        
        try:
            start_time = time.time()
            
            url = f"{engine_info['url']}/translate"
            data = {
                'q': request.text,
                'source': request.source_lang,
                'target': request.target_lang,
                'format': 'text'
            }
            
            if engine_info.get('api_key'):
                data['api_key'] = engine_info['api_key']
            
            response = requests.post(url, data=data, timeout=self.config['timeout'])
            response.raise_for_status()
            
            result = response.json()
            processing_time = time.time() - start_time
            
            return TranslationResult(
                original_text=request.text,
                translated_text=result['translatedText'],
                source_lang=request.source_lang,
                target_lang=request.target_lang,
                engine=TranslatorEngine.LIBRE_TRANSLATE,
                confidence=0.7,  # LibreTranslate обычно хорошо работает
                processing_time=processing_time,
                domain=request.domain,
                metadata={'service': 'LibreTranslate'}
            )
            
        except Exception as e:
            logger.error(f"Ошибка LibreTranslate: {e}")
            return None
    
    def translate_with_specialized(self, request: TranslationRequest, engine: TranslatorEngine) -> Optional[TranslationResult]:
        """Перевод с помощью специализированных переводчиков"""
        if engine not in [TranslatorEngine.COMIC_SPECIALIZED, TranslatorEngine.MANGA_SPECIALIZED]:
            return None
        
        start_time = time.time()
        
        # Проверка специализированных словарей
        lang_pair = f"{request.source_lang}_{request.target_lang}"
        
        # Поиск в словаре звуковых эффектов
        if request.domain == TranslationDomain.SOUND_EFFECT:
            sound_dict = self.specialized_dictionaries.get('sound_effects', {}).get(lang_pair, {})
            if request.text.upper() in sound_dict:
                return TranslationResult(
                    original_text=request.text,
                    translated_text=sound_dict[request.text.upper()],
                    source_lang=request.source_lang,
                    target_lang=request.target_lang,
                    engine=engine,
                    confidence=0.95,  # Словарные переводы очень точные
                    processing_time=time.time() - start_time,
                    domain=request.domain,
                    metadata={'dictionary': 'sound_effects'}
                )
        
        # Поиск в словаре эмоций
        emotion_dict = self.specialized_dictionaries.get('emotions', {}).get(lang_pair, {})
        if request.text in emotion_dict:
            return TranslationResult(
                original_text=request.text,
                translated_text=emotion_dict[request.text],
                source_lang=request.source_lang,
                target_lang=request.target_lang,
                engine=engine,
                confidence=0.9,
                processing_time=time.time() - start_time,
                domain=request.domain,
                metadata={'dictionary': 'emotions'}
            )
        
        return None
    
    def translate_with_fallback_dictionary(self, request: TranslationRequest) -> Optional[TranslationResult]:
        """Перевод с помощью словарного переводчика (fallback)"""
        start_time = time.time()
        
        # Простейший словарный перевод для базовых слов
        basic_dict = {
            'en_ru': {
                'yes': 'да',
                'no': 'нет',
                'hello': 'привет',
                'goodbye': 'пока',
                'thank you': 'спасибо',
                'please': 'пожалуйста',
                'sorry': 'извините',
                'help': 'помощь',
                'stop': 'стоп',
                'go': 'идти'
            }
        }
        
        lang_pair = f"{request.source_lang}_{request.target_lang}"
        dictionary = basic_dict.get(lang_pair, {})
        
        text_lower = request.text.lower().strip()
        if text_lower in dictionary:
            return TranslationResult(
                original_text=request.text,
                translated_text=dictionary[text_lower],
                source_lang=request.source_lang,
                target_lang=request.target_lang,
                engine=TranslatorEngine.FALLBACK_DICTIONARY,
                confidence=0.6,  # Базовая уверенность для словаря
                processing_time=time.time() - start_time,
                domain=request.domain,
                metadata={'dictionary': 'basic_fallback'}
            )
        
        return None
    
    def translate_single(self, request: TranslationRequest, engine: TranslatorEngine) -> Optional[TranslationResult]:
        """
        Перевод с помощью одного движка
        
        Args:
            request: Запрос на перевод
            engine: Движок для перевода
            
        Returns:
            Результат перевода или None
        """
        # Проверка кэша
        cached_result = self._check_cache(request, engine)
        if cached_result:
            return cached_result
        
        # Проверка памяти переводов
        memory_result = self._check_translation_memory(request)
        if memory_result:
            result = TranslationResult(
                original_text=request.text,
                translated_text=memory_result,
                source_lang=request.source_lang,
                target_lang=request.target_lang,
                engine=engine,
                confidence=0.85,
                processing_time=0.001,
                domain=request.domain,
                metadata={'source': 'translation_memory'}
            )
            return result
        
        # Выполнение перевода
        result = None
        
        if engine == TranslatorEngine.GOOGLE_TRANSLATE:
            result = self.translate_with_google(request)
        elif engine == TranslatorEngine.LIBRE_TRANSLATE:
            result = self.translate_with_libre(request)
        elif engine in [TranslatorEngine.COMIC_SPECIALIZED, TranslatorEngine.MANGA_SPECIALIZED]:
            result = self.translate_with_specialized(request, engine)
        elif engine == TranslatorEngine.FALLBACK_DICTIONARY:
            result = self.translate_with_fallback_dictionary(request)
        
        # Сохранение в кэш
        if result:
            self._save_to_cache(request, result)
        
        return result
    
    def translate_consensus(self, request: TranslationRequest) -> List[TranslationResult]:
        """
        Консенсусный перевод с использованием нескольких движков
        
        Args:
            request: Запрос на перевод
            
        Returns:
            Список результатов от разных движков
        """
        results = []
        
        # Определение движков для использования
        engines_to_use = []
        
        # Специализированные движки для определенных доменов
        if request.domain in [TranslationDomain.COMIC, TranslationDomain.DIALOGUE]:
            engines_to_use.append(TranslatorEngine.COMIC_SPECIALIZED)
        elif request.domain == TranslationDomain.MANGA:
            engines_to_use.append(TranslatorEngine.MANGA_SPECIALIZED)
        
        # Основные движки
        engines_to_use.extend([
            self.config['primary_engine'],
            *self.config['fallback_engines']
        ])
        
        # Удаление дубликатов
        engines_to_use = list(dict.fromkeys(engines_to_use))
        
        # Параллельное выполнение переводов
        with ThreadPoolExecutor(max_workers=self.config['max_concurrent_requests']) as executor:
            futures = {}
            
            for engine in engines_to_use:
                if engine in self.engines and self.engines[engine].get('initialized'):
                    future = executor.submit(self.translate_single, request, engine)
                    futures[future] = engine
            
            # Сбор результатов
            for future in as_completed(futures):
                engine = futures[future]
                try:
                    result = future.result()
                    if result:
                        results.append(result)
                        logger.info(f"Перевод от {engine.value}: {result.confidence:.2f}")
                except Exception as e:
                    logger.error(f"Ошибка в движке {engine.value}: {e}")
        
        return results
    
    def select_best_translation(self, results: List[TranslationResult]) -> Optional[TranslationResult]:
        """
        Выбор лучшего перевода из результатов
        
        Args:
            results: Список результатов переводов
            
        Returns:
            Лучший результат перевода
        """
        if not results:
            return None
        
        # Сортировка по уверенности и приоритету движка
        engine_priority = {
            TranslatorEngine.COMIC_SPECIALIZED: 10,
            TranslatorEngine.MANGA_SPECIALIZED: 9,
            TranslatorEngine.GOOGLE_TRANSLATE: 8,
            TranslatorEngine.DEEPL: 7,
            TranslatorEngine.MICROSOFT_TRANSLATOR: 6,
            TranslatorEngine.LIBRE_TRANSLATE: 5,
            TranslatorEngine.OPUS_MT: 4,
            TranslatorEngine.M2M100: 3,
            TranslatorEngine.NLLB: 2,
            TranslatorEngine.FALLBACK_DICTIONARY: 1
        }
        
        def score_result(result: TranslationResult) -> float:
            base_score = result.confidence
            engine_bonus = engine_priority.get(result.engine, 0) * 0.1
            
            # Бонус за специализированные домены
            if result.metadata.get('dictionary'):
                base_score += 0.1
            
            # Штраф за медленную обработку
            if result.processing_time > 5.0:
                base_score -= 0.1
            
            return base_score + engine_bonus
        
        # Выбор результата с наивысшим счетом
        best_result = max(results, key=score_result)
        
        # Добавление альтернативных переводов
        alternatives = [r.translated_text for r in results if r != best_result]
        best_result.alternatives = alternatives[:3]  # Максимум 3 альтернативы
        
        return best_result
    
    def translate(self, request: TranslationRequest) -> Optional[TranslationResult]:
        """
        Основной метод перевода
        
        Args:
            request: Запрос на перевод
            
        Returns:
            Результат перевода
        """
        if not request.text.strip():
            return None
        
        logger.info(f"Перевод: '{request.text}' ({request.source_lang} -> {request.target_lang})")
        
        if self.config['consensus_translation']:
            # Консенсусный перевод
            results = self.translate_consensus(request)
            best_result = self.select_best_translation(results)
        else:
            # Перевод основным движком
            best_result = self.translate_single(request, self.config['primary_engine'])
            
            # Fallback на резервные движки
            if not best_result:
                for fallback_engine in self.config['fallback_engines']:
                    best_result = self.translate_single(request, fallback_engine)
                    if best_result:
                        break
        
        if best_result:
            logger.info(f"Лучший перевод: '{best_result.translated_text}' "
                       f"(движок: {best_result.engine.value}, уверенность: {best_result.confidence:.2f})")
        else:
            logger.warning("Не удалось выполнить перевод")
        
        return best_result
    
    def get_engine_status(self) -> Dict[str, Any]:
        """
        Получение статуса всех движков
        
        Returns:
            Словарь со статусом движков
        """
        status = {}
        
        for engine_type in TranslatorEngine:
            if engine_type in self.engines:
                engine_info = self.engines[engine_type]
                status[engine_type.value] = {
                    'initialized': engine_info.get('initialized', False),
                    'type': engine_info.get('type', 'unknown'),
                    'note': engine_info.get('note', ''),
                    'languages': engine_info.get('languages', [])
                }
            else:
                status[engine_type.value] = {
                    'initialized': False,
                    'type': 'unknown',
                    'note': 'Не инициализирован'
                }
        
        return status


def main():
    """Тестирование универсальной системы переводов"""
    try:
        # Инициализация системы
        translator = UniversalTranslationSystem()
        
        # Проверка статуса движков
        status = translator.get_engine_status()
        print("Статус переводческих движков:")
        for engine, info in status.items():
            print(f"  {engine}: {'✓' if info['initialized'] else '✗'} "
                  f"({info['type']}) - {info['note']}")
        
        # Тестовый перевод
        test_request = TranslationRequest(
            text="Hello, world!",
            source_lang="en",
            target_lang="ru",
            domain=TranslationDomain.GENERAL
        )
        
        result = translator.translate(test_request)
        if result:
            print(f"\nТестовый перевод:")
            print(f"  Оригинал: {result.original_text}")
            print(f"  Перевод: {result.translated_text}")
            print(f"  Движок: {result.engine.value}")
            print(f"  Уверенность: {result.confidence:.2f}")
        
        print("\nУниверсальная система переводов готова к работе!")
        
    except Exception as e:
        logger.error(f"Ошибка инициализации: {e}")
        raise


if __name__ == "__main__":
    main()





            model_path = Path("local-translation-models/model.onnx")
            tokenizer_path = Path("local-translation-models/sentencepiece.bpe.model")

            if not model_path.exists():
                logger.warning(f"ONNX model not found at {model_path}")
                self.engines[TranslatorEngine.SMALL100] = {
                    'initialized': False,
                    'note': f'ONNX model not found at {model_path}'
                }
                return
            
            if not tokenizer_path.exists():
                logger.warning(f"SentencePiece tokenizer not found at {tokenizer_path}")
                self.engines[TranslatorEngine.SMALL100] = {
                    'initialized': False,
                    'note': f'SentencePiece tokenizer not found at {tokenizer_path}'
                }
                return

            self.engines[TranslatorEngine.SMALL100] = {
                'initialized': True,
                'type': 'local',
                'session': onnxruntime.InferenceSession(str(model_path)),
                'tokenizer': spm.SentencePieceProcessor(model_file=str(tokenizer_path)),
                'languages': ['en', 'ru', 'ja', 'ko', 'zh', 'es', 'fr', 'de'], # Пример поддерживаемых языков
                'note': 'Локальная ONNX-модель small100'
            }
            logger.info("ONNX-модель small100 успешно инициализирована")

        except ImportError:
            self.engines[TranslatorEngine.SMALL100] = {
                'initialized': False,
                'note': 'Требуется установка onnxruntime и sentencepiece'
            }
        except Exception as e:
            logger.warning(f"Не удалось инициализировать ONNX-модель small100: {e}")
            self.engines[TranslatorEngine.SMALL100] = {
                'initialized': False,
                'note': f'Ошибка инициализации small100: {e}'
            }



    def _translate_small100(self, text: str, source_lang: str, target_lang: str) -> Optional[str]:
        """Перевод текста с использованием ONNX-модели small100"""
        engine_info = self.engines.get(TranslatorEngine.SMALL100)
        if not engine_info or not engine_info.get("initialized"):
            logger.warning("small100 движок не инициализирован.")
            return None

        session = engine_info["session"]
        tokenizer = engine_info["tokenizer"]

        try:
            # Предобработка текста
            # Добавляем префикс для целевого языка, как это принято в small100
            # Например, для русского языка: >>rus<<
            # Для английского: >>eng<<
            # Необходимо будет уточнить точные префиксы для всех поддерживаемых языков
            # В данном примере используем упрощенный подход
            lang_prefix_map = {
                "en": ">>eng<<",
                "ru": ">>rus<<",
                "ja": ">>jpn<<",
                "ko": ">>kor<<",
                "zh": ">>zho<<",
                "es": ">>spa<<",
                "fr": ">>fra<<",
                "de": ">>deu<<",
            }
            target_lang_prefix = lang_prefix_map.get(target_lang, f">>{target_lang}<<")
            input_text = f"{target_lang_prefix} {text}"

            # Токенизация
            input_ids = tokenizer.encode(input_text, out_type=int)
            # ONNX Runtime ожидает входные данные в виде numpy массивов
            import numpy as np
            input_ids = np.array([input_ids], dtype=np.int64)

            # Выполнение инференса
            outputs = session.run(None, {"input_ids": input_ids})
            # Предполагаем, что выходной тензор называется 'output'
            # И что это массив с одним элементом, который нужно детокенизировать
            translated_tokens = outputs[0][0]

            # Детокенизация
            translated_text = tokenizer.decode(translated_tokens)

            # Удаляем возможные артефакты токенизации (например, лишние пробелы в начале/конце)
            translated_text = translated_text.strip()

            logger.info(f"Перевод small100: {text} -> {translated_text}")
            return translated_text

        except Exception as e:
            logger.error(f"Ошибка при переводе с small100: {e}")
            return None



    def _translate_small100(self, text: str, source_lang: str, target_lang: str) -> Tuple[str, float]:
        """Перевод текста с использованием SMALL100"""
        try:
            engine_data = self.engines.get(TranslatorEngine.SMALL100)
            if not engine_data or not engine_data.get("initialized"):
                logger.warning("SMALL100 не инициализирован.")
                return text, 0.0

            session = engine_data["session"]
            tokenizer = engine_data["tokenizer"]

            # SMALL100 использует свои собственные коды языков
            # TODO: Реализовать более сложную логику маппинга языков, если необходимо
            # Для примера, предположим, что входные source_lang и target_lang уже совместимы
            # или требуется их преобразование.
            # Например, 'en' -> 'eng_Latn', 'ru' -> 'rus_Cyrl'
            # Пока что используем напрямую, если они совпадают с ожидаемыми токенизатором

            # Преобразование текста в токены
            input_ids = tokenizer.encode_as_ids(text)
            input_ids = [tokenizer.bos_id()] + input_ids + [tokenizer.eos_id()]
            input_ids = [input_ids] # Добавляем батч-размер

            # Выполнение инференса
            # Входные и выходные имена могут отличаться в зависимости от модели ONNX
            # Предполагаем, что вход - 'input_ids', выход - 'output_ids'
            input_name = session.get_inputs()[0].name
            output_name = session.get_outputs()[0].name

            outputs = session.run([output_name], {input_name: input_ids})
            output_ids = outputs[0][0]

            # Декодирование токенов обратно в текст
            translated_text = tokenizer.decode_ids(output_ids)

            # SMALL100 не предоставляет прямого показателя уверенности, используем заглушку
            confidence = 0.9  # Условное значение

            return translated_text, confidence

        except Exception as e:
            logger.error(f"Ошибка перевода с использованием SMALL100: {e}")
            return text, 0.0:
            engine_info = self.engines.get(TranslatorEngine.SMALL100)
            if not engine_info or not engine_info.get("initialized"):
                logger.warning("SMALL100 не инициализирован.")
                return text, 0.0

            session = engine_info["session"]
            tokenizer = engine_info["tokenizer"]

            # Преобразование языковых кодов в формат, понятный модели small100
            # small100 использует формат 'lang_code' (например, 'en', 'ru')
            # Если модель small100 требует другой формат, это нужно будет адаптировать
            # Для small100, языковые токены добавляются к входной последовательности
            # Например, '__en__ ' для английского, '__ru__ ' для русского

            # Токенизация входного текста
            # Добавляем целевой языковой токен в начало
            input_text = f"__{target_lang}__ {text}"
            input_ids = tokenizer.encode(input_text, add_bos=True, add_eos=True)

            # Подготовка входных данных для ONNX Runtime
            input_name = session.get_inputs()[0].name
            output_name = session.get_outputs()[0].name

            # Выполнение инференса
            outputs = session.run([output_name], {input_name: [input_ids]})
            translated_ids = outputs[0][0]

            # Детокенизация результата
            translated_text = tokenizer.decode(translated_ids, skip_special_tokens=True)

            # SMALL100 не предоставляет прямого показателя уверенности, используем заглушку
            confidence = 0.95

            return translated_text, confidence

        except Exception as e:
            logger.error(f"Ошибка при переводе с использованием SMALL100: {e}")
            return text, 0.0


