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
import json
import re
from pathlib import Path
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from dataclasses import dataclass
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
class OCRResult:
    """Результат распознавания текста"""
    text: str
    confidence: float
    bbox: Tuple[int, int, int, int]  # x, y, width, height
    engine: OCREngine
    language: str
    processing_time: float
    metadata: Dict[str, Any]

@dataclass
class TextRegion:
    """Область текста на изображении"""
    bbox: Tuple[int, int, int, int]
    region_type: str  # 'speech_bubble', 'thought_bubble', 'caption', 'sound_effect'
    confidence: float
    character_id: Optional[str] = None
    emotion: Optional[str] = None

class RevolutionaryOCRSystem:
    """
    Революционная система OCR с поддержкой множественных движков
    и специализированных моделей для комиксов
    """
    
    def __init__(self, config: Optional[Dict[str, Any]] = None):
        """
        Инициализация революционной системы OCR
        
        Args:
            config: Конфигурация системы
        """
        self.config = config or {}
        self.engines = {}
        self.language_detector = None
        self.spell_checker = None
        
        # Настройки по умолчанию
        self.default_config = {
            'enabled_engines': [OCREngine.TESSERACT, OCREngine.PADDLEOCR, OCREngine.EASYOCR],
            'primary_engine': OCREngine.PADDLEOCR,
            'fallback_engines': [OCREngine.TESSERACT, OCREngine.EASYOCR],
            'confidence_threshold': 0.7,
            'consensus_threshold': 0.8,
            'max_workers': 4,
            'cache_results': True,
            'spell_check': True,
            'language_detection': True,
            'preprocessing_enabled': True,
            'postprocessing_enabled': True
        }
        
        # Объединение конфигураций
        self.config = {**self.default_config, **self.config}
        
        # Инициализация компонентов
        self._initialize_engines()
        self._initialize_language_detection()
        self._initialize_spell_checker()
        self._initialize_cache()
        
        logger.info("Революционная система OCR инициализирована")
    
    def _initialize_engines(self):
        """Инициализация OCR движков"""
        for engine in self.config['enabled_engines']:
            try:
                if engine == OCREngine.TESSERACT:
                    self._init_tesseract()
                elif engine == OCREngine.PADDLEOCR:
                    self._init_paddleocr()
                elif engine == OCREngine.EASYOCR:
                    self._init_easyocr()
                elif engine == OCREngine.TROCR:
                    self._init_trocr()
                elif engine == OCREngine.CUSTOM_COMIC:
                    self._init_custom_comic()
                    
                logger.info(f"Движок {engine.value} успешно инициализирован")
            except Exception as e:
                logger.warning(f"Не удалось инициализировать движок {engine.value}: {e}")
    
    def _init_tesseract(self):
        """Инициализация Tesseract OCR"""
        try:
            # Проверка доступности Tesseract
            version = pytesseract.get_tesseract_version()
            
            # Настройки Tesseract для комиксов
            tesseract_config = {
                'config': '--oem 3 --psm 6 -c tessedit_char_whitelist=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,!?;:()[]{}"\'-',
                'lang': 'eng+rus',
                'nice': 0
            }
            
            self.engines[OCREngine.TESSERACT] = {
                'version': version,
                'config': tesseract_config,
                'initialized': True
            }
            
        except Exception as e:
            logger.error(f"Ошибка инициализации Tesseract: {e}")
            raise
    
    def _init_paddleocr(self):
        """Инициализация PaddleOCR"""
        try:
            # Импорт с обработкой ошибок
            try:
                from paddleocr import PaddleOCR
            except ImportError:
                logger.warning("PaddleOCR не установлен, используется заглушка")
                self.engines[OCREngine.PADDLEOCR] = {'initialized': False}
                return
            
            # Инициализация PaddleOCR
            paddle_ocr = PaddleOCR(
                use_angle_cls=True,
                lang='en',  # Поддержка английского
                use_gpu=False,  # CPU режим для совместимости
                show_log=False
            )
            
            self.engines[OCREngine.PADDLEOCR] = {
                'engine': paddle_ocr,
                'initialized': True,
                'languages': ['en', 'ch', 'ja', 'ko', 'ru']
            }
            
        except Exception as e:
            logger.warning(f"PaddleOCR недоступен: {e}")
            self.engines[OCREngine.PADDLEOCR] = {'initialized': False}
    
    def _init_easyocr(self):
        """Инициализация EasyOCR"""
        try:
            # Импорт с обработкой ошибок
            try:
                import easyocr
            except ImportError:
                logger.warning("EasyOCR не установлен, используется заглушка")
                self.engines[OCREngine.EASYOCR] = {'initialized': False}
                return
            
            # Инициализация EasyOCR
            easy_reader = easyocr.Reader(['en', 'ru'], gpu=False)
            
            self.engines[OCREngine.EASYOCR] = {
                'engine': easy_reader,
                'initialized': True,
                'languages': ['en', 'ru', 'ja', 'ko', 'zh']
            }
            
        except Exception as e:
            logger.warning(f"EasyOCR недоступен: {e}")
            self.engines[OCREngine.EASYOCR] = {'initialized': False}
    
    def _init_trocr(self):
        """Инициализация TrOCR (Transformer-based OCR)"""
        try:
            # Импорт с обработкой ошибок
            try:
                from transformers import TrOCRProcessor, VisionEncoderDecoderModel
            except ImportError:
                logger.warning("Transformers не установлен, TrOCR недоступен")
                self.engines[OCREngine.TROCR] = {'initialized': False}
                return
            
            # Инициализация TrOCR модели
            processor = TrOCRProcessor.from_pretrained("microsoft/trocr-base-printed")
            model = VisionEncoderDecoderModel.from_pretrained("microsoft/trocr-base-printed")
            
            self.engines[OCREngine.TROCR] = {
                'processor': processor,
                'model': model,
                'initialized': True,
                'type': 'transformer'
            }
            
        except Exception as e:
            logger.warning(f"TrOCR недоступен: {e}")
            self.engines[OCREngine.TROCR] = {'initialized': False}
    
    def _init_custom_comic(self):
        """Инициализация кастомной модели для комиксов"""
        # Заглушка для будущей кастомной модели
        self.engines[OCREngine.CUSTOM_COMIC] = {
            'initialized': False,
            'note': 'Кастомная модель для комиксов будет реализована в будущем'
        }
    
    def _initialize_language_detection(self):
        """Инициализация детекции языка"""
        if not self.config['language_detection']:
            return
            
        try:
            from langdetect import detect, detect_langs
            self.language_detector = {
                'detect': detect,
                'detect_langs': detect_langs,
                'available': True
            }
            logger.info("Детекция языка инициализирована")
        except ImportError:
            logger.warning("langdetect не установлен, детекция языка недоступна")
            self.language_detector = {'available': False}
    
    def _initialize_spell_checker(self):
        """Инициализация проверки орфографии"""
        if not self.config['spell_check']:
            return
            
        try:
            from spellchecker import SpellChecker
            self.spell_checker = {
                'en': SpellChecker(language='en'),
                'ru': SpellChecker(language='ru'),
                'available': True
            }
            logger.info("Проверка орфографии инициализирована")
        except ImportError:
            logger.warning("spellchecker не установлен, проверка орфографии недоступна")
            self.spell_checker = {'available': False}
    
    def _initialize_cache(self):
        """Инициализация кэша результатов"""
        if not self.config['cache_results']:
            self.cache = None
            return
            
        self.cache = {}
        logger.info("Кэш результатов инициализирован")
    
    def _get_cache_key(self, image: np.ndarray, engine: OCREngine) -> str:
        """Генерация ключа кэша для изображения"""
        if self.cache is None:
            return None
            
        # Создание хэша изображения
        image_bytes = cv2.imencode('.png', image)[1].tobytes()
        image_hash = hashlib.md5(image_bytes).hexdigest()
        
        return f"{engine.value}_{image_hash}"
    
    def detect_language(self, text: str) -> str:
        """
        Определение языка текста
        
        Args:
            text: Текст для анализа
            
        Returns:
            Код языка
        """
        if not self.language_detector or not self.language_detector['available']:
            return 'en'  # По умолчанию английский
            
        try:
            if len(text.strip()) < 3:
                return 'en'
                
            detected = self.language_detector['detect'](text)
            return detected
        except Exception as e:
            logger.warning(f"Ошибка детекции языка: {e}")
            return 'en'
    
    def spell_check_text(self, text: str, language: str = 'en') -> str:
        """
        Проверка и исправление орфографии
        
        Args:
            text: Исходный текст
            language: Язык текста
            
        Returns:
            Исправленный текст
        """
        if not self.spell_checker or not self.spell_checker['available']:
            return text
            
        if language not in self.spell_checker:
            return text
            
        try:
            checker = self.spell_checker[language]
            words = text.split()
            corrected_words = []
            
            for word in words:
                # Очистка слова от пунктуации
                clean_word = re.sub(r'[^\w]', '', word.lower())
                
                if clean_word and clean_word not in checker:
                    # Поиск исправлений
                    corrections = checker.candidates(clean_word)
                    if corrections:
                        # Замена на наиболее вероятное исправление
                        corrected = list(corrections)[0]
                        word = word.replace(clean_word, corrected)
                
                corrected_words.append(word)
            
            return ' '.join(corrected_words)
            
        except Exception as e:
            logger.warning(f"Ошибка проверки орфографии: {e}")
            return text
    
    def preprocess_image(self, image: np.ndarray) -> np.ndarray:
        """
        Улучшенная предобработка изображения
        
        Args:
            image: Исходное изображение
            
        Returns:
            Обработанное изображение
        """
        if not self.config['preprocessing_enabled']:
            return image
            
        try:
            # Конвертация в оттенки серого если нужно
            if len(image.shape) == 3:
                gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
            else:
                gray = image.copy()
            
            # Удаление шума
            denoised = cv2.fastNlMeansDenoising(gray)
            
            # Улучшение контраста
            clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8, 8))
            enhanced = clahe.apply(denoised)
            
            # Бинаризация
            _, binary = cv2.threshold(enhanced, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
            
            return binary
            
        except Exception as e:
            logger.warning(f"Ошибка предобработки: {e}")
            return image
    
    def ocr_with_tesseract(self, image: np.ndarray) -> List[OCRResult]:
        """
        Распознавание текста с помощью Tesseract
        
        Args:
            image: Изображение для распознавания
            
        Returns:
            Список результатов распознавания
        """
        if OCREngine.TESSERACT not in self.engines or not self.engines[OCREngine.TESSERACT]['initialized']:
            return []
        
        start_time = time.time()
        results = []
        
        try:
            config = self.engines[OCREngine.TESSERACT]['config']
            
            # Получение данных с координатами
            data = pytesseract.image_to_data(
                image, 
                config=config['config'],
                lang=config['lang'],
                output_type=pytesseract.Output.DICT
            )
            
            # Обработка результатов
            for i in range(len(data['text'])):
                text = data['text'][i].strip()
                confidence = float(data['conf'][i])
                
                if text and confidence > 0:
                    bbox = (
                        data['left'][i],
                        data['top'][i],
                        data['width'][i],
                        data['height'][i]
                    )
                    
                    result = OCRResult(
                        text=text,
                        confidence=confidence / 100.0,  # Нормализация к 0-1
                        bbox=bbox,
                        engine=OCREngine.TESSERACT,
                        language=self.detect_language(text),
                        processing_time=time.time() - start_time,
                        metadata={'word_num': i}
                    )
                    
                    results.append(result)
            
        except Exception as e:
            logger.error(f"Ошибка Tesseract OCR: {e}")
        
        return results
    
    def ocr_with_paddleocr(self, image: np.ndarray) -> List[OCRResult]:
        """
        Распознавание текста с помощью PaddleOCR
        
        Args:
            image: Изображение для распознавания
            
        Returns:
            Список результатов распознавания
        """
        if OCREngine.PADDLEOCR not in self.engines or not self.engines[OCREngine.PADDLEOCR]['initialized']:
            return []
        
        start_time = time.time()
        results = []
        
        try:
            paddle_ocr = self.engines[OCREngine.PADDLEOCR]['engine']
            
            # Распознавание
            ocr_results = paddle_ocr.ocr(image, cls=True)
            
            if ocr_results and ocr_results[0]:
                for line in ocr_results[0]:
                    if line:
                        bbox_points = line[0]
                        text_info = line[1]
                        text = text_info[0]
                        confidence = float(text_info[1])
                        # Преобразование bbox_points в (x, y, width, height)
                        x_coords = [p[0] for p in bbox_points]
                        y_coords = [p[1] for p in bbox_points]
                        x = int(min(x_coords))
                        y = int(min(y_coords))
                        w = int(max(x_coords) - x)
                        h = int(max(y_coords) - y)
                        bbox = (x, y, w, h)

                        result = OCRResult(
                            text=text,
                            confidence=confidence / 1.0,  # PaddleOCR возвращает уверенность от 0 до 1
                            bbox=bbox,
                            engine=OCREngine.PADDLEOCR,
                            language=self.detect_language(text),
                            processing_time=time.time() - start_time,
                            metadata={
                                'raw_bbox_points': bbox_points,
                                'raw_text_info': text_info
                            }
                                        results.append(result)
            
        except Exception as e:
            logger.error(f"Ошибка PaddleOCR: {e}")
        
        return results
    
    def ocr_with_easyocr(self, image: np.ndarray) -> List[OCRResult]:
        """
        Распознавание текста с помощью EasyOCR
        
        Args:
            image: Изображение для распознавания
            
        Returns:
            Список результатов распознавания
        """
        if OCREngine.EASYOCR not in self.engines or not self.engines[OCREngine.EASYOCR]["initialized"]:
            return []
        
        start_time = time.time()
        results = []
        
        try:
            easy_reader = self.engines[OCREngine.EASYOCR]["engine"]
            
            # Распознавание
            ocr_results = easy_reader.readtext(image)
            
            for (bbox_points, text, confidence) in ocr_results:
                # EasyOCR возвращает bbox как список 4 точек, нужно преобразовать в (x, y, w, h)
                x_coords = [int(p[0]) for p in bbox_points]
                y_coords = [int(p[1]) for p in bbox_points]
                x = min(x_coords)
                y = min(y_coords)
                w = max(x_coords) - x
                h = max(y_coords) - y
                bbox = (x, y, w, h)
                
                result = OCRResult(
                    text=text,
                    confidence=float(confidence),  # EasyOCR возвращает уверенность от 0 до 1
                    bbox=bbox,
                    engine=OCREngine.EASYOCR,
                    language=self.detect_language(text),
                    processing_time=time.time() - start_time,
                    metadata={
                        "raw_bbox_points": bbox_points
                    }
                )
                results.append(result)
            
        except Exception as e:
            logger.error(f"Ошибка EasyOCR: {e}")
        
        return resultsнсенсусное распознавание с использованием нескольких движков
        
        Args:
            image: Изображение для распознавания
            
        Returns:
            Список лучших результатов распознавания
        """
        # Проверка кэша
        cache_key = self._get_cache_key(image, OCREngine.TESSERACT)  # Используем общий ключ
        if self.cache and cache_key in self.cache:
            logger.info("Результат получен из кэша")
            return self.cache[cache_key]
        
        # Предобработка изображения
        processed_image = self.preprocess_image(image)
        
        all_results = []
        
        # Параллельное выполнение OCR с разными движками
        with ThreadPoolExecutor(max_workers=self.config['max_workers']) as executor:
            futures = {}
            
            # Запуск задач для каждого движка
            for engine in self.config['enabled_engines']:
                if engine == OCREngine.TESSERACT:
                    future = executor.submit(self.ocr_with_tesseract, processed_image)
                elif engine == OCREngine.PADDLEOCR:
                    future = executor.submit(self.ocr_with_paddleocr, processed_image)
                elif engine == OCREngine.EASYOCR:
                    future = executor.submit(self.ocr_with_easyocr, processed_image)
                else:
                    continue
                    
                futures[future] = engine
            
            # Сбор результатов
            for future in as_completed(futures):
                engine = futures[future]
                try:
                    results = future.result()
                    all_results.extend(results)
                    logger.info(f"Движок {engine.value} обработал {len(results)} текстовых областей")
                except Exception as e:
                    logger.error(f"Ошибка в движке {engine.value}: {e}")
        
        # Постобработка результатов
        if self.config['postprocessing_enabled']:
            all_results = self._postprocess_results(all_results)
        
        # Фильтрация по порогу уверенности
        filtered_results = [
            result for result in all_results 
            if result.confidence >= self.config['confidence_threshold']
        ]
        
        # Сохранение в кэш
        if self.cache and cache_key:
            self.cache[cache_key] = filtered_results
        
        logger.info(f"Консенсусное OCR завершено: {len(filtered_results)} результатов")
        return filtered_results
    
    def _postprocess_results(self, results: List[OCRResult]) -> List[OCRResult]:
        """
        Постобработка результатов OCR
        
        Args:
            results: Список результатов OCR
            
        Returns:
            Обработанные результаты
        """
        processed_results = []
        
        for result in results:
            # Очистка текста
            cleaned_text = self._clean_text(result.text)
            
            # Проверка орфографии
            if self.config['spell_check']:
                cleaned_text = self.spell_check_text(cleaned_text, result.language)
            
            # Создание нового результата с обработанным текстом
            processed_result = OCRResult(
                text=cleaned_text,
                confidence=result.confidence,
                bbox=result.bbox,
                engine=result.engine,
                language=result.language,
                processing_time=result.processing_time,
                metadata=result.metadata
            )
            
            processed_results.append(processed_result)
        
        return processed_results
    
    def _clean_text(self, text: str) -> str:
        """
        Очистка и нормализация текста
        
        Args:
            text: Исходный текст
            
        Returns:
            Очищенный текст
        """
        # Удаление лишних пробелов
        cleaned = re.sub(r'\s+', ' ', text.strip())
        
        # Исправление распространенных ошибок OCR
        replacements = {
            '0': 'O',  # Ноль на букву O в контексте
            '1': 'I',  # Единица на букву I в контексте
            '5': 'S',  # Пятерка на букву S в контексте
        }
        
        # Применение замен только если это имеет смысл
        for old, new in replacements.items():
            # Замена только если символ окружен буквами
            pattern = r'(?<=[A-Za-z])' + re.escape(old) + r'(?=[A-Za-z])'
            cleaned = re.sub(pattern, new, cleaned)
        
        return cleaned
    
    def recognize_text(self, image: Union[np.ndarray, str, Path]) -> List[OCRResult]:
        """
        Основной метод распознавания текста
        
        Args:
            image: Изображение (массив numpy, путь к файлу или Path объект)
            
        Returns:
            Список результатов распознавания
        """
        # Загрузка изображения если передан путь
        if isinstance(image, (str, Path)):
            image = cv2.imread(str(image))
            if image is None:
                raise ValueError(f"Не удалось загрузить изображение: {image}")
        
        # Проверка валидности изображения
        if image is None or image.size == 0:
            raise ValueError("Изображение пустое или невалидное")
        
        logger.info(f"Начало распознавания изображения размером {image.shape}")
        
        # Выполнение консенсусного OCR
        results = self.consensus_ocr(image)
        
        logger.info(f"Распознавание завершено: найдено {len(results)} текстовых областей")
        
        return results
    
    def get_engine_status(self) -> Dict[str, Any]:
        """
        Получение статуса всех движков
        
        Returns:
            Словарь со статусом движков
        """
        status = {}
        
        for engine_type in OCREngine:
            if engine_type in self.engines:
                engine_info = self.engines[engine_type]
                status[engine_type.value] = {
                    'initialized': engine_info.get('initialized', False),
                    'available': engine_type in self.config['enabled_engines']
                }
                
                # Дополнительная информация для каждого движка
                if engine_type == OCREngine.TESSERACT and engine_info.get('initialized'):
                    status[engine_type.value]['version'] = str(engine_info.get('version', 'unknown'))
                elif engine_type == OCREngine.PADDLEOCR and engine_info.get('initialized'):
                    status[engine_type.value]['languages'] = engine_info.get('languages', [])
                elif engine_type == OCREngine.EASYOCR and engine_info.get('initialized'):
                    status[engine_type.value]['languages'] = engine_info.get('languages', [])
            else:
                status[engine_type.value] = {
                    'initialized': False,
                    'available': False
                }
        
        return status


def main():
    """Тестирование революционной системы OCR"""
    try:
        # Инициализация системы
        ocr_system = RevolutionaryOCRSystem()
        
        # Проверка статуса движков
        status = ocr_system.get_engine_status()
        print("Статус OCR движков:")
        for engine, info in status.items():
            print(f"  {engine}: {'✓' if info['initialized'] else '✗'} "
                  f"({'доступен' if info['available'] else 'недоступен'})")
        
        print("\nРеволюционная система OCR готова к работе!")
        
    except Exception as e:
        logger.error(f"Ошибка инициализации: {e}")
        raise


if __name__ == "__main__":
    main()



    def ocr_with_easyocr(self, image: np.ndarray) -> List[OCRResult]:
        """
        Распознавание текста с помощью EasyOCR
        
        Args:
            image: Изображение для распознавания
            
        Returns:
            Список результатов распознавания
        """
        if OCREngine.EASYOCR not in self.engines or not self.engines[OCREngine.EASYOCR]["initialized"]:
            return []
        
        start_time = time.time()
        results = []
        
        try:
            easy_reader = self.engines[OCREngine.EASYOCR]["engine"]
            
            # EasyOCR ожидает PIL Image или путь к файлу
            # Если изображение уже в формате np.ndarray, конвертируем его в PIL Image
            if isinstance(image, np.ndarray):
                image_pil = Image.fromarray(cv2.cvtColor(image, cv2.COLOR_BGR2RGB))
            else:
                image_pil = image

            # Распознавание
            ocr_results = easy_reader.readtext(np.array(image_pil))
            
            for (bbox_points, text, confidence) in ocr_results:
                # bbox_points - это список из 4 точек [x1,y1], [x2,y2], [x3,y3], [x4,y4]
                # Находим минимальные и максимальные x и y
                x_coords = [p[0] for p in bbox_points]
                y_coords = [p[1] for p in bbox_points]
                x_min, y_min = int(min(x_coords)), int(min(y_coords))
                x_max, y_max = int(max(x_coords)), int(max(y_coords))
                
                bbox = (x_min, y_min, x_max - x_min, y_max - y_min)
                
                result = OCRResult(
                    text=text,
                    confidence=float(confidence),
                    bbox=bbox,
                    engine=OCREngine.EASYOCR,
                    language=self.detect_language(text),
                    processing_time=time.time() - start_time,
                    metadata={}
                )
                
                results.append(result)
            
        except Exception as e:
            logger.error(f"Ошибка EasyOCR: {e}")
        
        return results

