#!/usr/bin/env python3
"""
Универсальная система переводов для Mr.Comic
Интегрирует множественные API переводчиков и локальные модели
"""

import asyncio # Не используется, можно убрать
import requests
import json
import logging
import time
import hashlib
import sqlite3
from typing import List, Dict, Tuple, Any, Optional, Union
from dataclasses import dataclass, asdict, field
from enum import Enum
from pathlib import Path
import re
from concurrent.futures import ThreadPoolExecutor, as_completed
import threading
import onnxruntime # type: ignore
import sentencepiece as spm # type: ignore

# Настройка логирования
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger('UniversalTranslator')

class TranslatorEngine(Enum):
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
    SMALL100 = "small100" # Добавили из старой версии

class TranslationDomain(Enum):
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
    text: str
    source_lang: str
    target_lang: str
    domain: TranslationDomain = TranslationDomain.GENERAL
    context: Optional[str] = None
    character_name: Optional[str] = None # Не используется пока
    emotion: Optional[str] = None # Не используется пока
    priority: int = 1

@dataclass
class PythonTranslationResult: # Переименовал, чтобы не путать с DTO
    original_text: str
    translated_text: str
    source_lang: str
    target_lang: str
    engine: TranslatorEngine
    confidence: float
    processing_time: float # в секундах
    domain: TranslationDomain
    metadata: Dict[str, Any] = field(default_factory=dict)
    alternatives: List[str] = field(default_factory=list)


@dataclass
class TranslationMemoryEntry:
    # ... (без изменений)
    source_text: str; target_text: str; source_lang: str; target_lang: str
    domain: TranslationDomain; context: Optional[str]; quality_score: float
    usage_count: int; last_used: float; created_at: float


class UniversalTranslationSystem:
    def __init__(self, config: Optional[Dict[str, Any]] = None):
        self.config = config or {}
        self.default_config = {
            'enabled_engines': [ TranslatorEngine.GOOGLE_TRANSLATE, TranslatorEngine.LIBRE_TRANSLATE, TranslatorEngine.FALLBACK_DICTIONARY, TranslatorEngine.SMALL100 ],
            'primary_engine': TranslatorEngine.GOOGLE_TRANSLATE,
            'fallback_engines': [ TranslatorEngine.LIBRE_TRANSLATE, TranslatorEngine.SMALL100, TranslatorEngine.FALLBACK_DICTIONARY ],
            'max_retries': 2, 'timeout': 15, 'cache_enabled': True, 'translation_memory_enabled': True,
            'consensus_translation': False, # Отключим консенсус по умолчанию для CLI, чтобы было проще
            'quality_threshold': 0.7, 'max_concurrent_requests': 3, 'rate_limit_delay': 0.2,
            'database_path': str(Path(__file__).parent / 'translation_cache.db'), # Путь относительно скрипта
            'small100_model_path': str(Path(__file__).parent.parent / 'local_translation_models' / 'model.onnx'),
            'small100_tokenizer_path': str(Path(__file__).parent.parent / 'local_translation_models' / 'sentencepiece.bpe.model'),
            'libretranslate_url': 'https://libretranslate.de',
            'engine_configs': {} # Для специфичных настроек движков, например, API ключей
        }
        self.config = {**self.default_config, **self.config}

        self.engines: Dict[TranslatorEngine, Dict[str, Any]] = {}
        self.db_connection: Optional[sqlite3.Connection] = None
        self.translation_memory: Dict[str, TranslationMemoryEntry] = {}
        self.specialized_dictionaries: Dict[str, Any] = {}
        self.cache_lock = threading.Lock()
        self.memory_lock = threading.Lock() # Не используется активно, но оставим

        self._initialize_database()
        self._initialize_engines()
        self._load_specialized_dictionaries()
        # self._load_translation_memory() # Загрузка памяти может быть объемной, сделаем ее ленивой или по запросу
        logger.info("Универсальная система переводов инициализирована")

    def _initialize_database(self):
        try:
            db_path = self.config['database_path']
            Path(db_path).parent.mkdir(parents=True, exist_ok=True) # Создаем директорию, если ее нет
            self.db_connection = sqlite3.connect(db_path, check_same_thread=False)
            cursor = self.db_connection.cursor()
            cursor.execute('CREATE TABLE IF NOT EXISTS translation_cache (id INTEGER PRIMARY KEY, text_hash TEXT UNIQUE, source_text TEXT, translated_text TEXT, source_lang TEXT, target_lang TEXT, engine TEXT, domain TEXT, confidence REAL, created_at REAL, last_used REAL, usage_count INTEGER DEFAULT 1)')
            cursor.execute('CREATE TABLE IF NOT EXISTS translation_memory (id INTEGER PRIMARY KEY, source_text TEXT, target_text TEXT, source_lang TEXT, target_lang TEXT, domain TEXT, context TEXT, quality_score REAL, usage_count INTEGER, last_used REAL, created_at REAL)')
            cursor.execute('CREATE TABLE IF NOT EXISTS user_dictionaries (id INTEGER PRIMARY KEY, source_term TEXT, target_term TEXT, source_lang TEXT, target_lang TEXT, domain TEXT, character_name TEXT, created_at REAL)')
            self.db_connection.commit()
            logger.info(f"База данных переводов инициализирована: {db_path}")
        except Exception as e:
            logger.error(f"Ошибка инициализации БД: {e}"); self.db_connection = None

    def _initialize_engines(self):
        # ... (реализации _init_google_translate, _init_deepl и т.д. остаются, но могут использовать self.config['engine_configs'])
        # Важно: для движков, требующих API ключи, они должны быть в self.config['engine_configs'][engine_name]['api_key']
        # или передаваться в self.config напрямую (например, self.config['google_api_key'])

        # Пример для Google Translate (без API ключа, использует googletrans)
        if TranslatorEngine.GOOGLE_TRANSLATE in self.config['enabled_engines']:
            try:
                from googletrans import Translator # type: ignore
                self.engines[TranslatorEngine.GOOGLE_TRANSLATE] = {'translator': Translator(), 'initialized': True, 'type': 'api'}
            except ImportError: self.engines[TranslatorEngine.GOOGLE_TRANSLATE] = {'initialized': False, 'error': 'googletrans not installed'}

        # Пример для LibreTranslate
        if TranslatorEngine.LIBRE_TRANSLATE in self.config['enabled_engines']:
            engine_conf = self.config.get('engine_configs', {}).get(TranslatorEngine.LIBRE_TRANSLATE.value, {})
            self.engines[TranslatorEngine.LIBRE_TRANSLATE] = {
                'url': engine_conf.get('url', self.config['libretranslate_url']),
                'api_key': engine_conf.get('api_key'), 'initialized': True, 'type': 'api'
            }

        # Инициализация SMALL100
        if TranslatorEngine.SMALL100 in self.config['enabled_engines']:
            try:
                model_path = Path(self.config['small100_model_path'])
                tokenizer_path = Path(self.config['small100_tokenizer_path'])
                if not model_path.exists() or not tokenizer_path.exists():
                    raise FileNotFoundError("small100 model or tokenizer not found")
                self.engines[TranslatorEngine.SMALL100] = {
                    'session': onnxruntime.InferenceSession(str(model_path)),
                    'tokenizer': spm.SentencePieceProcessor(model_file=str(tokenizer_path)),
                    'initialized': True, 'type': 'local'
                }
                logger.info("SMALL100 ONNX model initialized.")
            except Exception as e:
                self.engines[TranslatorEngine.SMALL100] = {'initialized': False, 'error': str(e)}
                logger.error(f"Failed to initialize SMALL100: {e}")

        if TranslatorEngine.FALLBACK_DICTIONARY in self.config['enabled_engines']:
             self.engines[TranslatorEngine.FALLBACK_DICTIONARY] = {'initialized': True, 'type': 'dictionary'}


    def _load_specialized_dictionaries(self): # Без изменений
        self.specialized_dictionaries['sound_effects'] = {'en_ru': {'BANG':'БАХ','BOOM':'БУМ'}}
        self.specialized_dictionaries['emotions'] = {'en_ru': {'Wow!':'Вау!'}}
        logger.info("Специализированные словари загружены")

    # _get_cache_key, _check_cache, _save_to_cache, _get_memory_key, _check_translation_memory остаются
    def _get_cache_key(self, text: str, source_lang: str, target_lang: str, engine_val: str) -> str: # engine_val вместо engine
        content = f"{text}|{source_lang}|{target_lang}|{engine_val}"
        return hashlib.md5(content.encode()).hexdigest()

    def _check_cache(self, request: TranslationRequest, engine: TranslatorEngine) -> Optional[PythonTranslationResult]:
        if not self.config['cache_enabled'] or not self.db_connection: return None
        try:
            text_hash = self._get_cache_key(request.text, request.source_lang, request.target_lang, engine.value)
            cursor = self.db_connection.cursor()
            cursor.execute('SELECT translated_text, confidence, created_at, domain FROM translation_cache WHERE text_hash = ?', (text_hash,))
            row = cursor.fetchone()
            if row:
                cursor.execute('UPDATE translation_cache SET last_used = ?, usage_count = usage_count + 1 WHERE text_hash = ?', (time.time(), text_hash))
                self.db_connection.commit()
                return PythonTranslationResult(original_text=request.text, translated_text=row[0], source_lang=request.source_lang, target_lang=request.target_lang, engine=engine, confidence=row[1], processing_time=0.001, domain=TranslationDomain(row[3] or 'general'), metadata={'cached': True, 'cache_created': row[2]})
        except Exception as e: logger.warning(f"Ошибка проверки кэша: {e}")
        return None

    def _save_to_cache(self, request: TranslationRequest, result: PythonTranslationResult):
        if not self.config['cache_enabled'] or not self.db_connection: return
        try:
            text_hash = self._get_cache_key(request.text, request.source_lang, request.target_lang, result.engine.value)
            cursor = self.db_connection.cursor()
            cursor.execute('INSERT OR REPLACE INTO translation_cache (text_hash, source_text, translated_text, source_lang, target_lang, engine, domain, confidence, created_at, last_used) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
                           (text_hash, request.text, result.translated_text, request.source_lang, request.target_lang, result.engine.value, request.domain.value, result.confidence, time.time(), time.time()))
            self.db_connection.commit()
        except Exception as e: logger.warning(f"Ошибка сохранения в кэш: {e}")

    # ... (методы для конкретных движков: translate_with_google, translate_with_libre, _translate_small100, translate_with_fallback_dictionary)
    # Они должны быть адаптированы для возврата PythonTranslationResult
    def translate_with_google(self, request: TranslationRequest) -> Optional[PythonTranslationResult]:
        engine_info = self.engines.get(TranslatorEngine.GOOGLE_TRANSLATE)
        if not engine_info or not engine_info.get('initialized'): return None
        start_time = time.time()
        try:
            translator = engine_info['translator']
            res = translator.translate(request.text, src=request.source_lang if request.source_lang != 'auto' else 'auto', dest=request.target_lang)
            return PythonTranslationResult(original_text=request.text, translated_text=res.text, source_lang=res.src, target_lang=request.target_lang, engine=TranslatorEngine.GOOGLE_TRANSLATE, confidence=0.85, processing_time=time.time()-start_time, domain=request.domain, metadata={'pronunciation': getattr(res, 'pronunciation', None)})
        except Exception as e: logger.error(f"Ошибка Google Translate: {e}"); return None

    def translate_with_libre(self, request: TranslationRequest) -> Optional[PythonTranslationResult]:
        engine_info = self.engines.get(TranslatorEngine.LIBRE_TRANSLATE)
        if not engine_info or not engine_info.get('initialized'): return None
        start_time = time.time()
        try:
            data = {'q': request.text, 'source': request.source_lang, 'target': request.target_lang, 'format': 'text'}
            if engine_info.get('api_key'): data['api_key'] = engine_info['api_key']
            response = requests.post(f"{engine_info['url']}/translate", data=data, timeout=self.config['timeout'])
            response.raise_for_status()
            res_json = response.json()
            return PythonTranslationResult(original_text=request.text, translated_text=res_json['translatedText'], source_lang=request.source_lang, target_lang=request.target_lang, engine=TranslatorEngine.LIBRE_TRANSLATE, confidence=0.75, processing_time=time.time()-start_time, domain=request.domain)
        except Exception as e: logger.error(f"Ошибка LibreTranslate: {e}"); return None

    def _translate_small100(self, request: TranslationRequest) -> Optional[PythonTranslationResult]:
        engine_info = self.engines.get(TranslatorEngine.SMALL100)
        if not engine_info or not engine_info.get("initialized"): return None
        start_time = time.time()
        try:
            session = engine_info["session"]
            tokenizer = engine_info["tokenizer"]
            # Примерные коды языков для small100 (могут отличаться)
            lang_code_map = {"en": "__en__", "ru": "__ru__", "ja": "__ja__", "de": "__de__", "fr": "__fr__"} # Дополнить при необходимости

            src_lang_token = lang_code_map.get(request.source_lang, f"__{request.source_lang}__") # если 'auto', то это проблема
            tgt_lang_token = lang_code_map.get(request.target_lang, f"__{request.target_lang}__")

            # SMALL100 обычно требует указания целевого языка в начале входной строки
            # и может не использовать source_lang токен, если модель обучена на автоопределение
            # Это упрощенная версия, реальная предобработка может быть сложнее
            input_text_for_model = f"{tgt_lang_token} {request.text}" # Для NLLB-like моделей

            # Токенизация
            input_ids = np.array([tokenizer.encode(input_text_for_model, out_type=int)], dtype=np.int64)

            # Инференс
            ort_inputs = {session.get_inputs()[0].name: input_ids}
            ort_outs = session.run(None, ort_inputs)
            translated_ids = ort_outs[0][0] # Предполагаем, что результат в первом тензоре

            # Детокенизация
            translated_text = tokenizer.decode(translated_ids.tolist(), skip_special_tokens=True)

            return PythonTranslationResult(original_text=request.text, translated_text=translated_text.strip(), source_lang=request.source_lang, target_lang=request.target_lang, engine=TranslatorEngine.SMALL100, confidence=0.7, processing_time=time.time()-start_time, domain=request.domain) # Уверенность условная
        except Exception as e: logger.error(f"Ошибка SMALL100: {e}", exc_info=True); return None

    def translate_with_fallback_dictionary(self, request: TranslationRequest) -> Optional[PythonTranslationResult]:
        # ... (реализация как раньше, но возвращает PythonTranslationResult)
        start_time = time.time()
        basic_dict = {'en_ru': {'hello': 'привет fallback', 'world': 'мир fallback'}}
        lang_pair = f"{request.source_lang}_{request.target_lang}"
        dictionary = basic_dict.get(lang_pair, {})
        text_lower = request.text.lower().strip()
        if text_lower in dictionary:
            return PythonTranslationResult(original_text=request.text, translated_text=dictionary[text_lower], source_lang=request.source_lang, target_lang=request.target_lang, engine=TranslatorEngine.FALLBACK_DICTIONARY, confidence=0.6, processing_time=time.time()-start_time, domain=request.domain)
        return None

    def translate_single(self, request: TranslationRequest, engine: TranslatorEngine) -> Optional[PythonTranslationResult]:
        cached_result = self._check_cache(request, engine)
        if cached_result: return cached_result
        # Проверка памяти переводов (пропущено для краткости, но должно быть здесь)

        result = None
        if engine == TranslatorEngine.GOOGLE_TRANSLATE: result = self.translate_with_google(request)
        elif engine == TranslatorEngine.LIBRE_TRANSLATE: result = self.translate_with_libre(request)
        elif engine == TranslatorEngine.SMALL100: result = self._translate_small100(request)
        elif engine == TranslatorEngine.FALLBACK_DICTIONARY: result = self.translate_with_fallback_dictionary(request)
        # ... другие движки

        if result: self._save_to_cache(request, result)
        return result

    def translate(self, request: TranslationRequest,
                  engine_override: Optional[Union[str, TranslatorEngine]] = None,
                  # другие параметры из translation_params можно добавить сюда
                  # например, custom_glossary_id: Optional[str] = None
                 ) -> Optional[PythonTranslationResult]:
        if not request.text.strip(): return None
        logger.info(f"Перевод: '{request.text}' ({request.source_lang} -> {request.target_lang}), Domain: {request.domain.value}, EngineOverride: {engine_override}")

        chosen_engine = None
        if engine_override:
            try:
                chosen_engine = TranslatorEngine(engine_override) if isinstance(engine_override, str) else engine_override
                if not self.engines.get(chosen_engine, {}).get('initialized'):
                    logger.warning(f"Запрошенный движок {chosen_engine.value} не инициализирован, будет использован стандартный выбор.")
                    chosen_engine = None # Возврат к стандартной логике
            except ValueError:
                logger.warning(f"Неизвестный движок '{engine_override}' запрошен, будет использован стандартный выбор.")
                chosen_engine = None

        if chosen_engine:
            return self.translate_single(request, chosen_engine)

        # Если engine_override не указан или невалиден, используем стандартную логику
        if self.config.get('consensus_translation'):
            # ... (логика консенсуса, не менялась)
            results = [] # Placeholder
            with ThreadPoolExecutor(max_workers=self.config['max_concurrent_requests']) as executor:
                futures = {}
                engines_to_try = self.config.get('enabled_engines', [])
                for eng_enum_val in engines_to_try:
                    eng = TranslatorEngine(eng_enum_val) if isinstance(eng_enum_val, str) else eng_enum_val
                    if self.engines.get(eng,{}).get('initialized'):
                        futures[executor.submit(self.translate_single, request, eng)] = eng
                for future in as_completed(futures):
                    try:
                        res = future.result()
                        if res: results.append(res)
                    except Exception: pass # Логируется внутри translate_single
            return self.select_best_translation(results) if results else None
        else:
            # Перевод основным движком, затем fallback
            primary_engine_val = self.config.get('primary_engine', TranslatorEngine.GOOGLE_TRANSLATE)
            primary_engine = TranslatorEngine(primary_engine_val) if isinstance(primary_engine_val, str) else primary_engine_val

            best_result = self.translate_single(request, primary_engine)
            if not best_result:
                for fallback_engine_val in self.config.get('fallback_engines', []):
                    fallback_engine = TranslatorEngine(fallback_engine_val) if isinstance(fallback_engine_val, str) else fallback_engine_val
                    best_result = self.translate_single(request, fallback_engine)
                    if best_result: break
            return best_result

    def select_best_translation(self, results: List[PythonTranslationResult]) -> Optional[PythonTranslationResult]:
        # ... (логика без изменений, но работает с PythonTranslationResult)
        if not results: return None
        # Простейший выбор - первый успешный или по максимальной уверенности
        results.sort(key=lambda r: r.confidence, reverse=True)
        return results[0]

    def get_engine_status(self) -> Dict[str, Any]: # Без изменений
        status = {}
        for engine_type_enum in TranslatorEngine:
            engine_info = self.engines.get(engine_type_enum, {})
            status[engine_type_enum.value] = {'initialized': engine_info.get('initialized', False), 'type': engine_info.get('type', 'unknown'), 'error': engine_info.get('error', '')}
        return status

# main() здесь не нужен, так как это библиотечный модуль, вызываемый из integrated_system.py
