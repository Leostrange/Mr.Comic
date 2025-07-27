#!/usr/bin/env python3
"""
Революционная система OCR для Mr.Comic
Интегрирует множественные OCR движки для максимальной точности распознавания
"""

import os
import cv2
import numpy as np
import pytesseract
from PIL import Image
import logging
from typing import List, Dict, Tuple, Any, Optional, Union
import json # Не используется напрямую, но может быть полезен для ocr_params
import re
from pathlib import Path
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from dataclasses import dataclass, field
from enum import Enum
import hashlib

# Настройка логирования
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger('RevolutionaryOCR')

class OCREngine(Enum):
    """Типы OCR движков"""
    TESSERACT = "tesseract"
    PADDLEOCR = "paddleocr"
    EASYOCR = "easyocr"
    TROCR = "trocr"
    CUSTOM_COMIC = "custom_comic"

@dataclass
class PythonOcrResult: # Переименовано из OCRResult для ясности, если OCRResult используется где-то еще глобально
    """Результат распознавания текста"""
    text: str
    confidence: float
    bbox: Tuple[int, int, int, int]  # x, y, width, height
    engine: OCREngine
    language: str
    processing_time: float
    metadata: Dict[str, Any] = field(default_factory=dict)
    words: List[Dict[str, Any]] = field(default_factory=list) # Для хранения слов и их bbox/confidence

@dataclass
class TextRegion: # Этот класс не используется в текущей логике RevolutionaryOCRSystem, но может быть полезен для AdvancedElementDetector
    """Область текста на изображении"""
    bbox: Tuple[int, int, int, int]
    region_type: str
    confidence: float
    character_id: Optional[str] = None
    emotion: Optional[str] = None

class RevolutionaryOCRSystem:
    def __init__(self, config: Optional[Dict[str, Any]] = None):
        self.config = config or {}
        self.engines: Dict[OCREngine, Dict[str, Any]] = {} # Явная типизация
        self.language_detector: Optional[Dict[str, Any]] = None
        self.spell_checker: Optional[Dict[str, Any]] = None

        self.default_config = {
            'enabled_engines': [OCREngine.TESSERACT], # По умолчанию только Tesseract для простоты
            'primary_engine': OCREngine.TESSERACT,
            'fallback_engines': [],
            'confidence_threshold': 0.6, # Снизил немного для тестов
            'consensus_threshold': 0.8,
            'max_workers': os.cpu_count() or 1,
            'cache_results': True,
            'spell_check': False, # Отключим по умолчанию, может быть медленным
            'language_detection': False, # Отключим по умолчанию
            'preprocessing_enabled': True,
            'postprocessing_enabled': True,
            'tesseract_default_lang': 'eng+rus', # Языки по умолчанию для Tesseract
            'tesseract_default_config': f'--oem 3 --psm 6 -c tessedit_char_whitelist=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,!?;:()[]{{}}"\' -',
        }
        self.config = {**self.default_config, **self.config}

        self._initialize_engines()
        self._initialize_language_detection()
        self._initialize_spell_checker()
        self._initialize_cache()
        logger.info("Революционная система OCR инициализирована")

    def _initialize_engines(self):
        for engine_enum_member in self.config['enabled_engines']:
            # Убедимся, что engine_enum_member это действительно член OCREngine
            engine = OCREngine(engine_enum_member) if isinstance(engine_enum_member, str) else engine_enum_member

            try:
                if engine == OCREngine.TESSERACT: self._init_tesseract()
                elif engine == OCREngine.PADDLEOCR: self._init_paddleocr()
                elif engine == OCREngine.EASYOCR: self._init_easyocr()
                elif engine == OCREngine.TROCR: self._init_trocr()
                elif engine == OCREngine.CUSTOM_COMIC: self._init_custom_comic()
                if self.engines.get(engine, {}).get('initialized'):
                    logger.info(f"Движок {engine.value} успешно инициализирован")
            except Exception as e:
                logger.warning(f"Не удалось инициализировать движок {engine.value}: {e}")

    def _init_tesseract(self):
        try:
            version = pytesseract.get_tesseract_version()
            tesseract_config_str = self.config.get('tesseract_default_config', '')
            lang_str = self.config.get('tesseract_default_lang', 'eng')

            self.engines[OCREngine.TESSERACT] = {
                'version': str(version), 'config_str': tesseract_config_str, 'lang': lang_str, 'initialized': True
            }
        except Exception as e:
            logger.error(f"Ошибка инициализации Tesseract: {e}")
            self.engines[OCREngine.TESSERACT] = {'initialized': False, 'error': str(e)}

    def _init_paddleocr(self):
        try:
            from paddleocr import PaddleOCR # type: ignore
            paddle_ocr = PaddleOCR(use_angle_cls=True, lang=self.config.get('paddle_default_lang', 'en'), use_gpu=False, show_log=False)
            self.engines[OCREngine.PADDLEOCR] = {'engine': paddle_ocr, 'initialized': True, 'languages': ['en', 'ch', 'ja', 'ko', 'ru']}
        except ImportError:
            logger.warning("PaddleOCR не установлен.")
            self.engines[OCREngine.PADDLEOCR] = {'initialized': False, 'error': 'PaddleOCR not installed'}
        except Exception as e:
            logger.warning(f"PaddleOCR недоступен: {e}")
            self.engines[OCREngine.PADDLEOCR] = {'initialized': False, 'error': str(e)}

    def _init_easyocr(self):
        try:
            import easyocr # type: ignore
            easy_reader = easyocr.Reader(self.config.get('easyocr_default_langs', ['en', 'ru']), gpu=False)
            self.engines[OCREngine.EASYOCR] = {'engine': easy_reader, 'initialized': True, 'languages': ['en', 'ru', 'ja', 'ko', 'zh']}
        except ImportError:
            logger.warning("EasyOCR не установлен.")
            self.engines[OCREngine.EASYOCR] = {'initialized': False, 'error': 'EasyOCR not installed'}
        except Exception as e:
            logger.warning(f"EasyOCR недоступен: {e}")
            self.engines[OCREngine.EASYOCR] = {'initialized': False, 'error': str(e)}

    def _init_trocr(self):
        try:
            from transformers import TrOCRProcessor, VisionEncoderDecoderModel # type: ignore
            model_name = self.config.get('trocr_model_name', "microsoft/trocr-base-printed")
            processor = TrOCRProcessor.from_pretrained(model_name)
            model = VisionEncoderDecoderModel.from_pretrained(model_name)
            self.engines[OCREngine.TROCR] = {'processor': processor, 'model': model, 'initialized': True, 'type': 'transformer'}
        except ImportError:
            logger.warning("Transformers не установлен, TrOCR недоступен")
            self.engines[OCREngine.TROCR] = {'initialized': False, 'error': 'Transformers not installed'}
        except Exception as e:
            logger.warning(f"TrOCR недоступен: {e}")
            self.engines[OCREngine.TROCR] = {'initialized': False, 'error': str(e)}

    def _init_custom_comic(self):
        self.engines[OCREngine.CUSTOM_COMIC] = {'initialized': False, 'note': 'Кастомная модель для комиксов будет реализована в будущем'}

    def _initialize_language_detection(self):
        if not self.config.get('language_detection'): return
        try:
            from langdetect import detect, detect_langs # type: ignore
            self.language_detector = {'detect': detect, 'detect_langs': detect_langs, 'available': True}
            logger.info("Детекция языка инициализирована")
        except ImportError:
            logger.warning("langdetect не установлен, детекция языка недоступна")
            self.language_detector = {'available': False}

    def _initialize_spell_checker(self):
        if not self.config.get('spell_check'): return
        try:
            from spellchecker import SpellChecker # type: ignore
            self.spell_checker = {'en': SpellChecker(language='en'), 'ru': SpellChecker(language='ru'), 'available': True}
            logger.info("Проверка орфографии инициализирована")
        except ImportError:
            logger.warning("spellchecker не установлен, проверка орфографии недоступна")
            self.spell_checker = {'available': False}

    def _initialize_cache(self):
        self.cache: Optional[Dict[str, Any]] = {} if self.config.get('cache_results') else None
        if self.cache is not None: logger.info("Кэш результатов инициализирован")

    def _get_cache_key(self, image_or_hash: Union[np.ndarray, str], engine: OCREngine, languages: Optional[List[str]]=None) -> Optional[str]:
        if self.cache is None: return None
        image_hash = image_or_hash if isinstance(image_or_hash, str) else hashlib.md5(cv2.imencode('.png', image_or_hash)[1].tobytes()).hexdigest()
        lang_key = "_".join(sorted(languages)) if languages else "defaultlang"
        return f"{engine.value}_{lang_key}_{image_hash}"

    def detect_language(self, text: str) -> str:
        # ... (реализация без изменений)
        if not self.language_detector or not self.language_detector['available']: return 'en'
        try:
            if len(text.strip()) < 3: return 'en'
            return self.language_detector['detect'](text)
        except Exception as e:
            logger.warning(f"Ошибка детекции языка: {e}"); return 'en'

    def spell_check_text(self, text: str, language: str = 'en') -> str:
        # ... (реализация без изменений)
        if not self.spell_checker or not self.spell_checker['available'] or language not in self.spell_checker: return text
        try:
            checker = self.spell_checker[language]
            words = re.findall(r"[\w']+", text) # Используем re.findall для лучшего разделения слов
            corrected_words = []
            original_case_map = {w.lower(): w for w in words}

            misspelled = checker.unknown([w.lower() for w in words if w])

            for word_orig in words:
                word_lower = word_orig.lower()
                if word_lower in misspelled:
                    correction = checker.correction(word_lower)
                    if correction and correction != word_lower:
                         # Пытаемся сохранить регистр как в оригинале
                        if word_orig.isupper(): corrected_words.append(correction.upper())
                        elif word_orig.istitle(): corrected_words.append(correction.title())
                        else: corrected_words.append(correction)
                    else: corrected_words.append(word_orig) # Если нет коррекции или она такая же
                else: corrected_words.append(word_orig)
            return " ".join(corrected_words) # TODO: more robust rejoining of text with punctuation
        except Exception as e:
            logger.warning(f"Ошибка проверки орфографии: {e}"); return text


    def preprocess_image(self, image: np.ndarray) -> np.ndarray:
        # ... (реализация без изменений)
        if not self.config.get('preprocessing_enabled'): return image
        try:
            gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY) if len(image.shape) == 3 else image.copy()
            denoised = cv2.fastNlMeansDenoising(gray)
            clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8,8))
            enhanced = clahe.apply(denoised)
            _, binary = cv2.threshold(enhanced, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
            return binary
        except Exception as e:
            logger.warning(f"Ошибка предобработки: {e}"); return image

    def _run_ocr_engine(self, engine: OCREngine, image_data: np.ndarray,
                        languages: Optional[List[str]] = None,
                        engine_specific_params: Optional[Dict[str, Any]] = None) -> List[PythonOcrResult]:
        # Общий метод для вызова конкретного OCR движка с параметрами
        engine_info = self.engines.get(engine)
        if not engine_info or not engine_info.get('initialized'): return []

        start_time = time.time()
        results: List[PythonOcrResult] = []
        # По умолчанию используем языки из конфига движка или общие
        current_languages = languages or (engine_info.get('lang') if engine == OCREngine.TESSERACT else engine_info.get('languages'))
        if isinstance(current_languages, list): current_languages = "+".join(current_languages) if engine == OCREngine.TESSERACT else current_languages[0] if current_languages else 'eng' # Упрощение для Paddle/Easy

        try:
            if engine == OCREngine.TESSERACT:
                # Применяем engine_specific_params если есть (например, psm)
                tess_config = engine_info.get('config_str', '')
                if engine_specific_params and 'psm' in engine_specific_params:
                    tess_config = re.sub(r'--psm\s+\d+', f"--psm {engine_specific_params['psm']}", tess_config)

                data = pytesseract.image_to_data(image_data, lang=current_languages, config=tess_config, output_type=pytesseract.Output.DICT)
                for i in range(len(data['text'])):
                    text, conf = data['text'][i].strip(), float(data['conf'][i])
                    if text and conf > -1: # Tesseract может возвращать -1 для блоков без текста
                        results.append(PythonOcrResult(text, conf/100.0, (data['left'][i],data['top'][i],data['width'][i],data['height'][i]), engine, self.detect_language(text), time.time()-start_time))

            elif engine == OCREngine.PADDLEOCR:
                paddle_ocr = engine_info['engine']
                ocr_output = paddle_ocr.ocr(image_data, cls=True) # languages передаются при инициализации Paddle
                if ocr_output and ocr_output[0]:
                    for line in ocr_output[0]:
                        if line:
                            bbox_points, (text, conf) = line[0], line[1]
                            x_coords, y_coords = [p[0] for p in bbox_points], [p[1] for p in bbox_points]
                            x, y, w, h = int(min(x_coords)), int(min(y_coords)), int(max(x_coords) - min(x_coords)), int(max(y_coords) - min(y_coords))
                            results.append(PythonOcrResult(text, conf, (x,y,w,h), engine, self.detect_language(text), time.time()-start_time, metadata={'raw_bbox_points': bbox_points}))

            elif engine == OCREngine.EASYOCR:
                easy_reader = engine_info['engine']
                # EasyOCR languages передаются при инициализации, но можно попробовать передать в readtext, если API позволяет
                # lang_list_for_easyocr = languages if languages else engine_info.get('languages', ['en'])
                ocr_output = easy_reader.readtext(image_data) #, languages=lang_list_for_easyocr)
                for (bbox_points, text, conf) in ocr_output:
                    x_coords, y_coords = [int(p[0]) for p in bbox_points], [int(p[1]) for p in bbox_points]
                    x,y,w,h = min(x_coords), min(y_coords), max(x_coords)-min(x_coords), max(y_coords)-min(y_coords)
                    results.append(PythonOcrResult(text, conf, (x,y,w,h), engine, self.detect_language(text), time.time()-start_time, metadata={"raw_bbox_points": bbox_points}))

            elif engine == OCREngine.TROCR:
                # TrOCR требует PIL Image
                pil_image = Image.fromarray(cv2.cvtColor(image_data, cv2.COLOR_BGR2RGB))
                processor = engine_info['processor']
                model = engine_info['model']
                pixel_values = processor(images=pil_image, return_tensors="pt").pixel_values
                generated_ids = model.generate(pixel_values)
                text = processor.batch_decode(generated_ids, skip_special_tokens=True)[0]
                # TrOCR не дает bbox или confidence легко, используем заглушки
                results.append(PythonOcrResult(text, 0.9, (0,0,image_data.shape[1],image_data.shape[0]), engine, self.detect_language(text), time.time()-start_time))

        except Exception as e:
            logger.error(f"Ошибка в движке {engine.value}: {e}", exc_info=True)
        return results

    def consensus_ocr(self, image_data: np.ndarray,
                      languages: Optional[List[str]] = None,
                      ocr_params: Optional[Dict[str, Any]] = None) -> List[PythonOcrResult]:

        processed_image = self.preprocess_image(image_data)
        # Используем хэш от обработанного изображения для ключа кэша
        image_hash = hashlib.md5(cv2.imencode('.png', processed_image)[1].tobytes()).hexdigest()

        all_engine_results: List[PythonOcrResult] = []

        # TODO: Реализовать более умный консенсус. Сейчас просто собираем все результаты.
        # Можно было бы фильтровать по confidence_threshold уже здесь или выбирать лучший результат для каждой области.

        # Для консенсуса, мы можем запустить несколько движков или один предпочитаемый.
        # Если ocr_params указывает конкретный движок, используем его.
        # Иначе, используем primary_engine или enabled_engines.

        engines_to_run = []
        if ocr_params and ocr_params.get('engine'):
            try: engines_to_run.append(OCREngine(ocr_params['engine']))
            except ValueError: logger.warning(f"Неизвестный OCR движок в ocr_params: {ocr_params['engine']}")

        if not engines_to_run: # Если не указан конкретный, используем primary или все включенные
            primary_engine_val = self.config.get('primary_engine', OCREngine.TESSERACT)
            primary_engine = OCREngine(primary_engine_val) if isinstance(primary_engine_val, str) else primary_engine_val

            if self.config.get('consensus_use_all_enabled_engines', False): # Новый параметр конфига
                 engines_to_run = [OCREngine(e_val) if isinstance(e_val, str) else e_val for e_val in self.config.get('enabled_engines', [])]
            elif primary_engine in self.engines and self.engines[primary_engine].get('initialized'):
                engines_to_run = [primary_engine]
            else: # Fallback если primary не инициализирован
                 engines_to_run = [OCREngine(e_val) if isinstance(e_val, str) else e_val for e_val in self.config.get('enabled_engines', [])]

        engines_to_run = [e for e in engines_to_run if self.engines.get(e, {}).get('initialized')] # Только инициализированные

        if not engines_to_run:
            logger.warning("Нет доступных или сконфигурированных OCR движков для консенсуса.")
            return []

        logger.info(f"Consensus OCR будет использовать движки: {[e.value for e in engines_to_run]}")

        for engine_type in engines_to_run:
            cache_key = self._get_cache_key(image_hash, engine_type, languages) # languages для ключа кэша
            if self.cache is not None and cache_key in self.cache:
                logger.info(f"Результат для {engine_type.value} получен из кэша")
                all_engine_results.extend(self.cache[cache_key])
                continue

            engine_specific_params = (ocr_params or {}).get(engine_type.value, {}) # Параметры для конкретного движка
            engine_res = self._run_ocr_engine(engine_type, processed_image, languages, engine_specific_params)
            all_engine_results.extend(engine_res)
            if self.cache is not None and cache_key:
                self.cache[cache_key] = engine_res # Кэшируем результат конкретного движка

        # Постобработка и фильтрация
        final_results = self._postprocess_results(all_engine_results, languages=languages) # Передаем языки для spell_check
        return final_results

    def _postprocess_results(self, results: List[PythonOcrResult], languages: Optional[List[str]] = None) -> List[PythonOcrResult]:
        if not self.config.get('postprocessing_enabled'): return results

        processed_results = []
        for result in results:
            cleaned_text = self._clean_text(result.text)
            # Используем первый язык из списка languages для проверки орфографии, если он есть, иначе язык из результата OCR
            spell_check_lang = (languages[0] if languages else result.language) if self.config.get('spell_check') else None
            if spell_check_lang:
                cleaned_text = self.spell_check_text(cleaned_text, spell_check_lang)

            if cleaned_text.strip() and result.confidence >= self.config.get('confidence_threshold', 0.0):
                processed_results.append(dataclasses.replace(result, text=cleaned_text)) # Используем dataclasses.replace
        return processed_results

    def _clean_text(self, text: str) -> str:
        # ... (реализация без изменений)
        cleaned = re.sub(r'\s+', ' ', text.strip())
        replacements = {'0': 'O', '1': 'I', '5': 'S'} # Простые замены
        for old, new_char in replacements.items():
            pattern = r'(?<=[A-Za-z])' + re.escape(old) + r'(?=[A-Za-z])' # Только если окружено буквами
            cleaned = re.sub(pattern, new_char, cleaned, flags=re.IGNORECASE) # IGNORECASE для большей гибкости
        return cleaned

    def update_runtime_config(self, updates: Optional[Dict[str, Any]] = None):
        """
        Обновляет конфигурацию OCR системы во время выполнения.
        """
        if not updates: return
        logger.info(f"Обновление runtime конфигурации OCR: {updates}")

        if 'languages' in updates:
            new_langs = updates['languages']
            if isinstance(new_langs, list) and OCREngine.TESSERACT in self.engines and self.engines[OCREngine.TESSERACT].get('initialized'):
                self.engines[OCREngine.TESSERACT]['lang'] = '+'.join(new_langs)
                logger.info(f"Tesseract runtime languages updated to: {self.engines[OCREngine.TESSERACT]['lang']}")
            # Для других движков обновление языков может быть сложнее или происходить при инициализации
            # Здесь мы можем обновить общую конфигурацию, если движки ее используют
            self.config['runtime_languages'] = new_langs # Сохраняем для использования в _run_ocr_engine

        if 'confidence_threshold' in updates:
            try:
                new_threshold = float(updates['confidence_threshold'])
                if 0.0 <= new_threshold <= 1.0:
                    self.config['confidence_threshold'] = new_threshold
                    logger.info(f"Runtime confidence threshold updated to: {new_threshold}")
            except ValueError: logger.warning(f"Не удалось преобразовать confidence_threshold: {updates['confidence_threshold']}")

        # Обновление специфичных параметров движков, если они есть в ocr_params
        # Например, ocr_params = {"tesseract": {"psm": "6"}, "paddleocr": {"use_angle_cls": "false"}}
        if 'ocr_engine_params' in updates and isinstance(updates['ocr_engine_params'], dict):
            for engine_name, params_to_update in updates['ocr_engine_params'].items():
                try:
                    engine_enum = OCREngine(engine_name)
                    if engine_enum in self.engines and self.engines[engine_enum].get('initialized'):
                        # Это очень упрощенно. Каждый движок может требовать своего способа обновления.
                        # Для Tesseract, например, нужно менять строку 'config_str'.
                        if engine_enum == OCREngine.TESSERACT and 'psm' in params_to_update:
                             current_config_str = self.engines[OCREngine.TESSERACT].get('config_str', self.default_config['tesseract_default_config'])
                             new_psm = params_to_update['psm']
                             # Обновляем или добавляем --psm
                             if '--psm' in current_config_str:
                                 self.engines[OCREngine.TESSERACT]['config_str'] = re.sub(r'--psm\s+\d+', f'--psm {new_psm}', current_config_str)
                             else:
                                 self.engines[OCREngine.TESSERACT]['config_str'] += f' --psm {new_psm}'
                             logger.info(f"Tesseract runtime psm updated to: {new_psm}")
                        # Другие движки могут требовать других подходов
                        logger.info(f"Runtime params for {engine_name} updated with: {params_to_update}")
                    else: logger.warning(f"Движок {engine_name} не инициализирован или не найден для обновления параметров.")
                except ValueError: logger.warning(f"Неизвестное имя движка в ocr_engine_params: {engine_name}")


    def recognize_text(self, image: Union[np.ndarray, str, Path],
                       languages: Optional[List[str]] = None,
                       ocr_params: Optional[Dict[str, Any]] = None) -> List[PythonOcrResult]:
        original_config_backup = {} # Для восстановления специфичных параметров движков

        try:
            if languages or ocr_params: # Если есть параметры для этого вызова
                logger.info(f"Applying per-call OCR config: languages={languages}, params={ocr_params}")
                # 1. Обновляем конфигурацию Tesseract языка, если он используется и языки переданы
                if languages and OCREngine.TESSERACT in self.engines and self.engines[OCREngine.TESSERACT].get('initialized'):
                    original_config_backup['tesseract_lang'] = self.engines[OCREngine.TESSERACT].get('lang')
                    self.engines[OCREngine.TESSERACT]['lang'] = '+'.join(languages)

                # 2. Обновляем общие параметры OCR из ocr_params (например, confidence_threshold)
                if ocr_params:
                    if 'confidence_threshold' in ocr_params:
                        original_config_backup['confidence_threshold'] = self.config.get('confidence_threshold')
                        try: self.config['confidence_threshold'] = float(ocr_params['confidence_threshold'])
                        except ValueError: logger.warning("Invalid confidence_threshold in ocr_params")

                    # 3. Обновляем специфичные для движков параметры из ocr_params
                    # Например, если ocr_params = {"tesseract": {"psm": "6"}}
                    engine_specific_updates = ocr_params.get("engine_specific", {})
                    for engine_str, specific_params in engine_specific_updates.items():
                        try:
                            engine_enum = OCREngine(engine_str)
                            if engine_enum == OCREngine.TESSERACT and 'psm' in specific_params and \
                               OCREngine.TESSERACT in self.engines and self.engines[OCREngine.TESSERACT].get('initialized'):
                                original_config_backup.setdefault('tesseract_config_str', self.engines[OCREngine.TESSERACT].get('config_str'))
                                current_tess_conf = self.engines[OCREngine.TESSERACT].get('config_str', self.default_config['tesseract_default_config'])
                                new_psm_val = specific_params['psm']
                                if '--psm' in current_tess_conf:
                                    self.engines[OCREngine.TESSERACT]['config_str'] = re.sub(r'--psm\s+\d+', f'--psm {new_psm_val}', current_tess_conf)
                                else:
                                    self.engines[OCREngine.TESSERACT]['config_str'] += f' --psm {new_psm_val}'
                                logger.info(f"Tesseract PSM set to {new_psm_val} for this call.")
                            # Добавить обработку для других движков и параметров если нужно
                        except ValueError:
                            logger.warning(f"Unknown engine '{engine_str}' in ocr_params.engine_specific")


            if isinstance(image, (str, Path)):
                img_data = cv2.imread(str(image))
                if img_data is None: raise ValueError(f"Не удалось загрузить изображение: {image}")
            elif isinstance(image, np.ndarray):
                img_data = image
            else:
                raise TypeError("Неподдерживаемый тип для image. Ожидается np.ndarray, str или Path.")

            if img_data.size == 0: raise ValueError("Изображение пустое или невалидное")
            logger.info(f"Начало распознавания изображения размером {img_data.shape}")

            # Передаем языки и ocr_params в consensus_ocr, который передаст их дальше в _run_ocr_engine
            results = self.consensus_ocr(img_data, languages=languages, ocr_params=ocr_params)
            logger.info(f"Распознавание завершено: найдено {len(results)} текстовых областей")
            return results
        finally:
            # Восстановление конфигурации
            if 'tesseract_lang' in original_config_backup and OCREngine.TESSERACT in self.engines and self.engines[OCREngine.TESSERACT].get('initialized'):
                self.engines[OCREngine.TESSERACT]['lang'] = original_config_backup['tesseract_lang']
            if 'confidence_threshold' in original_config_backup:
                self.config['confidence_threshold'] = original_config_backup['confidence_threshold']
            if 'tesseract_config_str' in original_config_backup and OCREngine.TESSERACT in self.engines and self.engines[OCREngine.TESSERACT].get('initialized'):
                 self.engines[OCREngine.TESSERACT]['config_str'] = original_config_backup['tesseract_config_str']
            if original_config_backup:
                logger.info("Original OCR config restored after per-call modifications.")

    def get_engine_status(self) -> Dict[str, Any]:
        # ... (реализация без изменений)
        status = {}
        for engine_type in OCREngine:
            engine_info = self.engines.get(engine_type, {})
            status[engine_type.value] = {
                'initialized': engine_info.get('initialized', False),
                'available': engine_type.value in [e.value for e in self.config.get('enabled_engines', [])],
                'error': engine_info.get('error', None)
            }
            if engine_type == OCREngine.TESSERACT and engine_info.get('initialized'):
                status[engine_type.value]['version'] = str(engine_info.get('version', 'unknown'))
                status[engine_type.value]['current_lang'] = engine_info.get('lang')
        return status

# Вспомогательные классы и main() остаются без изменений, если они не затрагивают новую логику.
# PythonOcrResult уже определен в начале файла.
# Класс TextRegion не используется напрямую в RevolutionaryOCRSystem, но может быть полезен для AdvancedElementDetector.
# Функция main() в этом файле больше не нужна, т.к. CLI будет в integrated_system.py.
# Поэтому я удалю старый main() из этого файла, если он был.

# Удаляем старый main, если он был:
# if __name__ == "__main__":
#    main()
# Это сделает файл чисто библиотечным.
# Однако, если мы хотим его тестировать отдельно, main можно оставить или сделать новый.
# Пока что, для задачи адаптации под CLI из integrated_system.py, main здесь не нужен.
