#!/usr/bin/env python3
"""
Интегрированная система Mr.Comic OCR и переводов
Объединяет все компоненты 4 фазы в единую систему
"""

import cv2
import numpy as np
import logging
import json
import time
from typing import List, Dict, Tuple, Any, Optional, Union
from dataclasses import dataclass, asdict, field # Добавил field для default_factory
from pathlib import Path
import asyncio # Не используется, можно убрать если нет планов
import concurrent.futures
from PIL import Image # Не используется напрямую здесь, но может быть в зависимостях

# Импорт наших модулей
try:
    from revolutionary_ocr import RevolutionaryOCRSystem, OCRResult as PythonOcrResult, OCREngine as PythonOcrEngine
    from advanced_element_detector import AdvancedElementDetector
    from universal_translator import UniversalTranslationSystem, TranslationRequest, TranslationDomain, TranslationResult as PythonTranslationResult, TranslatorEngine as PythonTranslatorEngine
    from advanced_translation_overlay import AdvancedTranslationOverlay
    from quality_validation_system import QualityValidationSystem, ValidationResult, ValidationStatus
except ImportError as e:
    logging.warning(f"Не удалось импортировать модуль: {e} - используются заглушки.")
    # Заглушки для отсутствующих классов
    PythonOcrEngine = type('Engine',(),{'value':'dummy_ocr_engine'})
    PythonTranslatorEngine = type('Engine',(),{'value':'dummy_trans_engine'})

    @dataclass
    class PythonOcrResult: # Простая заглушка для OCRResult из revolutionary_ocr
        text: str = "test region"
        confidence: float = 0.9
        bbox: Tuple[int,int,int,int] = (0,0,10,10)
        language: str = "en"
        engine: Any = PythonOcrEngine()
        processing_time: float = 0.1
        words: List[Any] = field(default_factory=list)


    class RevolutionaryOCRSystem:
        def __init__(self, config=None): self.config = config or {}
        def recognize_text(self, image_roi, languages=None, ocr_params=None):
             return [PythonOcrResult()]
        def update_runtime_config(self, updates): # Добавим заглушку метода
            logger.info(f"RevolutionaryOCRSystem (stub) config updated with: {updates}")


    class AdvancedElementDetector:
        def __init__(self, config=None): self.config = config or {}
        def detect_comic_elements(self, image): return [{'type': 'speech_bubble', 'bbox': (10, 10, 100, 50), 'id': 'elem1'}]

    @dataclass
    class PythonTranslationResult: # Простая заглушка для TranslationResult из universal_translator
        original_text: str
        translated_text: str
        source_lang: str
        target_lang: str
        engine: Any = PythonTranslatorEngine()
        confidence: float = 0.8
        processing_time: float = 0.1
        domain: Any = None # TranslationDomain.GENERAL
        metadata: Dict = field(default_factory=dict)


    class UniversalTranslationSystem:
        def __init__(self, config=None): self.config = config or {}
        def translate(self, request: TranslationRequest) -> PythonTranslationResult:
            return PythonTranslationResult(
                original_text=request.text,
                translated_text=f"Перевод: {request.text}",
                source_lang=request.source_lang,
                target_lang=request.target_lang,
                domain=request.domain
            )

    class TranslationRequest: # Заглушка, если universal_translator не импортирован
        def __init__(self, text, source_lang, target_lang, domain):
            self.text = text
            self.source_lang = source_lang
            self.target_lang = target_lang
            self.domain = domain

    class TranslationDomain: # Заглушка
        GENERAL = "general"
        COMIC = "comic"
        MANGA = "manga"

    class AdvancedTranslationOverlay:
        def __init__(self, config=None): self.config = config or {}
        def process_comic_page(self, image, translations): return image # type: ignore

    class QualityValidationSystem:
        def __init__(self, config=None): self.config = config or {}
        def validate_results(self, ocr, trans):
            return ValidationResult(ValidationStatus.PASSED, 0.9, [], [], [], [], {})

    if 'ValidationResult' not in globals():
        @dataclass
        class ValidationResult:
            status: Any
            overall_score: float
            metric_scores: List = field(default_factory=list)
            issues: List = field(default_factory=list)
            suggestions: List = field(default_factory=list)
            alternatives: List = field(default_factory=list)
            metadata: Dict = field(default_factory=dict)

    if 'ValidationStatus' not in globals():
        class ValidationStatus:
            PASSED = "passed"

# Настройка логирования (остается без изменений)
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logger = logging.getLogger('MrComicIntegrated')

@dataclass
class CliProcessingResult: # Переименовано, чтобы не конфликтовать с ProcessingResult из MrComicIntegratedSystem
    """Результат обработки страницы комикса для CLI"""
    success: bool
    original_image_path: Optional[str] = None # Опционально для режима перевода
    processed_image_path: Optional[str] = None
    # Для OCR
    detected_elements: Optional[List[Dict[str, Any]]] = None
    ocr_results: Optional[List[Dict[str, Any]]] = None # Это будет поле 'results' для OCR ответа
    # Для Перевода
    translation_results: Optional[List[Dict[str, Any]]] = None # Это будет поле 'results' для Translate ответа

    validation_result: Optional[Dict[str, Any]] = None # Сериализованный ValidationResult
    processingTimeMs: int = 0
    metadata: Optional[Dict[str, Any]] = None
    # errors поле будет на верхнем уровне JSON ответа, не здесь

class MrComicIntegratedSystem:
    def __init__(self, config: Optional[Dict[str, Any]] = None):
        self.config = config or {}
        self.default_config = {
            'enable_ocr': True, 'enable_translation': True, 'enable_overlay': True,
            'enable_validation': True, 'parallel_processing': False, 'max_workers': 4, # Отключил параллелизм по умолчанию для CLI
            'output_format': 'png', 'save_intermediate_results': False, # Отключил сохранение по умолчанию
            'target_language': 'ru', 'source_language': 'auto', 'quality_threshold': 0.7,
            'ocr_config': {}, 'translator_config': {}, 'element_detector_config': {},
            'overlay_config': {}, 'validation_config': {}
        }
        self.config = {**self.default_config, **self.config}
        self.ocr_system = None
        self.element_detector = None
        self.translator = None
        self.overlay_system = None
        self.validator = None
        self._initialize_components()
        logger.info("Интегрированная система Mr.Comic инициализирована")

    def _initialize_components(self):
        if self.config['enable_ocr']:
            try: self.ocr_system = RevolutionaryOCRSystem(config=self.config.get('ocr_config'))
            except Exception as e: logger.error(f"Failed to init OCR: {e}")
        if self.config.get('enable_element_detector', True):
            try: self.element_detector = AdvancedElementDetector(config=self.config.get('element_detector_config'))
            except Exception as e: logger.error(f"Failed to init ElementDetector: {e}")
        if self.config['enable_translation']:
            try: self.translator = UniversalTranslationSystem(config=self.config.get('translator_config'))
            except Exception as e: logger.error(f"Failed to init Translator: {e}")
        if self.config['enable_overlay']:
            try: self.overlay_system = AdvancedTranslationOverlay(config=self.config.get('overlay_config'))
            except Exception as e: logger.error(f"Failed to init Overlay: {e}")
        if self.config['enable_validation']:
            try: self.validator = QualityValidationSystem(config=self.config.get('validation_config'))
            except Exception as e: logger.error(f"Failed to init Validator: {e}")

    def process_ocr_request(self, image_path: str,
                           regions: Optional[List[Dict]] = None,
                           ocr_languages: Optional[List[str]] = None,
                           ocr_params: Optional[Dict] = None) -> CliProcessingResult:
        start_time = time.time()
        current_errors = []

        try:
            image = cv2.imread(image_path)
            if image is None: raise ValueError(f"Не удалось загрузить изображение: {image_path}")

            logger.info(f"Обработка OCR для: {image_path}")
            # Логирование полученных параметров
            if regions: logger.info(f"Используются регионы из запроса: {regions}")
            if ocr_languages: logger.info(f"Языки OCR из запроса: {ocr_languages}")
            if ocr_params: logger.info(f"Параметры OCR из запроса: {ocr_params}")

            detected_elements_data = []
            rois_to_process = []

            if regions: # Если регионы переданы, используем их
                for i, r_data in enumerate(regions):
                    # Проверка наличия обязательных ключей
                    if not all(k in r_data for k in ('x', 'y', 'width', 'height')):
                        logger.warning(f"Пропущен неполный регион: {r_data}")
                        continue
                    rois_to_process.append({
                        'id': r_data.get('id', f'custom_region_{i}'),
                        'type': 'custom_region',
                        'bbox': (r_data['x'], r_data['y'], r_data['width'], r_data['height'])
                    })
                logger.info(f"Будут обработаны {len(rois_to_process)} регионов, переданных извне.")
                detected_elements_data = rois_to_process # Эти же регионы и есть "обнаруженные элементы"
            elif self.element_detector: # Иначе, если есть детектор, используем его
                try:
                    detected_elements_data = self.element_detector.detect_comic_elements(image)
                    rois_to_process = detected_elements_data
                    logger.info(f"Обнаружено элементов детектором: {len(detected_elements_data)}")
                except Exception as e:
                    current_errors.append(f"Ошибка детекции элементов: {str(e)}")
                    logger.error(f"Ошибка детекции элементов: {e}", exc_info=True)
            else: # Если нет ни регионов, ни детектора, обрабатываем все изображение как один ROI
                ih, iw = image.shape[:2]
                rois_to_process.append({'id': 'full_image', 'type': 'full_image', 'bbox': (0,0,iw,ih)})
                logger.info("Регионы не предоставлены, детектор отсутствует. OCR всего изображения.")


            ocr_results_api_dto = []
            if self.ocr_system and rois_to_process:
                # TODO: Адаптировать RevolutionaryOCRSystem для приема ocr_languages, ocr_params
                # Например, через метод update_runtime_config или передачу в recognize_text
                # self.ocr_system.update_runtime_config({'languages': ocr_languages, **(ocr_params or {})})

                for element in rois_to_process:
                    bbox = element.get('bbox')
                    if not bbox: continue
                    x, y, w, h = map(int, bbox) # Убедимся что это int
                    ih, iw = image.shape[:2]
                    x, y, w, h = max(0, x), max(0, y), min(w, iw - x), min(h, ih - y)
                    if w <=0 or h <= 0: continue
                    roi_image = image[y:y+h, x:x+w]

                    # Передаем языки и параметры в recognize_text, если метод их поддерживает
                    # (предполагаем, что RevolutionaryOCRSystem.recognize_text был адаптирован)
                    python_ocr_results_for_roi = self.ocr_system.recognize_text(roi_image, languages=ocr_languages, ocr_params=ocr_params)

                    for ocr_item in python_ocr_results_for_roi:
                        # Корректируем bbox результата OCR относительно оригинального изображения
                        corrected_bbox_dict = {
                            "x": bbox[0] + ocr_item.bbox[0], "y": bbox[1] + ocr_item.bbox[1],
                            "width": ocr_item.bbox[2], "height": ocr_item.bbox[3]
                        }
                        ocr_results_api_dto.append({
                            "regionId": element.get('id'), "text": ocr_item.text,
                            "confidence": ocr_item.confidence, "language": ocr_item.language,
                            "bbox": corrected_bbox_dict,
                            "words": [asdict(word) for word in ocr_item.words] if ocr_item.words else [] # Для OcrResultDto.words
                        })
                logger.info(f"OCR завершен для {len(ocr_results_api_dto)} текстовых блоков.")

            processing_time_val = int((time.time() - start_time) * 1000)
            success_status = not current_errors and bool(ocr_results_api_dto)

            # Здесь не вызываем перевод, так как это чисто OCR эндпоинт
            # Валидация и оверлей тоже могут быть специфичны для полного пайплайна process_comic_page

            return CliProcessingResult(
                success=success_status, original_image_path=image_path,
                ocr_results=ocr_results_api_dto,
                detected_elements=detected_elements_data, # Возвращаем детектированные/переданные элементы
                processingTimeMs=processing_time_val,
                # errors поле будет заполнено на верхнем уровне CLI
            )

        except Exception as e:
            processing_time_val = int((time.time() - start_time) * 1000)
            current_errors.append(f"Критическая ошибка OCR: {str(e)}")
            logger.error(f"Критическая ошибка OCR: {e}", exc_info=True)
            return CliProcessingResult(success=False, original_image_path=image_path, processingTimeMs=processing_time_val, errors_list_ref=current_errors) # type: ignore

    def process_translation_request(self,
                                   texts_to_translate: List[Dict],
                                   source_language: str,
                                   target_language: str,
                                   translation_params: Optional[Dict] = None) -> CliProcessingResult:
        start_time = time.time()
        current_errors = []
        api_translation_results = []

        if not self.translator:
            current_errors.append("Translator component не инициализирован.")
            logger.error("Translator component не инициализирован для process_translation_request.")
            return CliProcessingResult(success=False, translation_results=[], processingTimeMs=int((time.time()-start_time)*1000), errors_list_ref=current_errors) # type: ignore

        try:
            logger.info(f"Обработка перевода для {len(texts_to_translate)} текстов. Target: {target_language}, Source: {source_language}")
            if translation_params: logger.info(f"Параметры перевода: {translation_params}")

            for item in texts_to_translate:
                item_text = item.get("text", "")
                item_id = item.get("id")

                if not item_text.strip():
                    api_translation_results.append({"id": item_id, "originalText": item_text, "translatedText": "", "error": "Empty text provided"})
                    continue

                domain_str = (translation_params or {}).get("domain", "general")
                try: domain_enum = TranslationDomain(domain_str.lower())
                except ValueError: domain_enum = TranslationDomain.GENERAL

                # Приоритет source_language: из item, потом из args, потом из конфига, потом 'auto'
                # source_language уже передан в метод как аргумент

                # TODO: Передать engine_override и другие параметры из translation_params в UniversalTranslator,
                # если его метод translate или конфигурация это поддерживают.
                # engine_override = (translation_params or {}).get("engine")

                translation_req = TranslationRequest(
                    text=item_text,
                    source_lang=item.get("source_language", source_language), # Язык из конкретного текста или общий
                    target_lang=target_language,
                    domain=domain_enum
                )

                item_start_time = time.time()
                # python_translated_item = self.translator.translate(translation_req, engine_override=engine_override)
                python_translated_item = self.translator.translate(translation_req) # Пока без engine_override
                item_processing_time_ms = int((time.time() - item_start_time) * 1000)

                if python_translated_item:
                    api_translation_results.append({
                        "id": item_id, "originalText": python_translated_item.original_text,
                        "translatedText": python_translated_item.translated_text,
                        "detectedSourceLanguage": python_translated_item.source_lang,
                        "engineUsed": str(python_translated_item.engine.value),
                        "confidence": python_translated_item.confidence,
                        "processingTimeMs": item_processing_time_ms
                    })
                else:
                    api_translation_results.append({"id": item_id, "originalText": item_text, "translatedText": None, "error": "Translation failed for this item"})
                    current_errors.append(f"Translation failed for item id: {item_id or 'unknown'}")

            success_status = not any(res.get("error") for res in api_translation_results)

            return CliProcessingResult(
                success=success_status,
                translation_results=api_translation_results,
                processingTimeMs=int((time.time() - start_time) * 1000),
                errors_list_ref=current_errors # type: ignore
            )

        except Exception as e:
            current_errors.append(f"Критическая ошибка перевода: {str(e)}")
            logger.error(f"Критическая ошибка перевода: {e}", exc_info=True)
            return CliProcessingResult(success=False, translation_results=api_translation_results, processingTimeMs=int((time.time()-start_time)*1000), errors_list_ref=current_errors) # type: ignore


    # Методы process_comic_page, process_multiple_pages, generate_processing_report и др. остаются,
    # но они не будут напрямую вызываться из CLI в этой новой структуре.
    # CLI будет вызывать process_ocr_request или process_translation_request.
    # Старый process_comic_page может быть использован внутри process_ocr_request, если это нужно,
    # или его логика частично перенесена/адаптирована.
    # Для чистоты, я удалю старый main() и оставлю только новый CLI-интерфейс.
    # Старый process_comic_page остается как внутренний метод, который может быть вызван, если --mode ocr без регионов
    # или нужно будет его доработать для обработки регионов.
    # В новой версии process_ocr_request он уже не вызывается напрямую.

    # ... (generate_processing_report, _generate_recommendations, save_results, get_system_status) ...
    # Эти методы остаются как есть, но их вызов из CLI не предусмотрен в текущем плане.
    # Они могут использоваться, если система запускается как библиотека.
    def generate_processing_report(self, results: List[CliProcessingResult]) -> Dict[str, Any]: # Адаптируем тип
        # ... (логика остается похожей, но нужно будет аккуратно работать с полями CliProcessingResult)
        if not results: return {'error': 'Нет результатов для анализа'}
        # ... (дальнейшая реализация отчета на основе CliProcessingResult)
        # Это заглушка, так как полный рефакторинг отчета выходит за рамки текущей задачи
        logger.warning("generate_processing_report needs to be adapted for CliProcessingResult type")
        return {"status": "report generation pending adaptation"}

    def _generate_recommendations(self, results: List[CliProcessingResult]) -> List[str]:
        logger.warning("_generate_recommendations needs to be adapted for CliProcessingResult type")
        return ["Recommendations pending adaptation"]

    def save_results(self, results: List[CliProcessingResult], output_path: str):
        logger.warning("save_results needs to be adapted for CliProcessingResult type")
        # ... (реализация сохранения CliProcessingResult)

    def get_system_status(self) -> Dict[str, Any]: # Без изменений
        status = {'system_initialized': True,'components': {'ocr_system':self.ocr_system is not None,'element_detector':self.element_detector is not None,'translator':self.translator is not None,'overlay_system':self.overlay_system is not None,'validator':self.validator is not None},'configuration':self.config,'capabilities': {'can_process_ocr':self.ocr_system is not None,'can_translate':self.translator is not None,'can_overlay':self.overlay_system is not None,'can_validate':self.validator is not None,'parallel_processing':self.config['parallel_processing']}}
        return status

if __name__ == "__main__":
    import argparse
    import sys

    parser = argparse.ArgumentParser(description="Mr.Comic Integrated OCR and Translation System CLI")
    parser.add_argument('--mode', type=str, required=True, choices=['ocr', 'translate'], help="Operating mode: 'ocr' or 'translate'")

    parser.add_argument('--image_path', type=str, help="Path to the image for OCR")
    parser.add_argument('--regions', type=str, help="JSON string of regions to OCR e.g. '[{\"x\":0,\"y\":0,\"w\":100,\"h\":50,\"id\":\"r1\"}]'")
    parser.add_argument('--ocr_languages', type=str, help="JSON string of languages for OCR e.g. '[\"eng\",\"rus\"]'")
    parser.add_argument('--ocr_params', type=str, help="JSON string of additional OCR parameters e.g. '{\"engine\":\"tesseract\",\"psm\":6}'")

    parser.add_argument('--texts', type=str, help="JSON string of texts to translate e.g. '[{\"id\":\"t1\",\"text\":\"Hello\"}]'")
    parser.add_argument('--source_language', type=str, default='auto', help="Source language for translation (e.g., 'eng', 'auto')")
    parser.add_argument('--target_language', type=str, help="Target language for translation (e.g., 'rus')") # Становится обязательным только для translate
    parser.add_argument('--translation_params', type=str, help="JSON string of additional translation parameters e.g. '{\"domain\":\"comic\",\"engine\":\"google\"}'")

    parser.add_argument('--config_file', type=str, help="Path to a JSON config file for the system")

    args = parser.parse_args()
    config_from_file = {}
    if args.config_file:
        try:
            with open(args.config_file, 'r', encoding='utf-8') as f: config_from_file = json.load(f)
        except Exception as e:
            logger.error(f"Could not load config file {args.config_file}: {e}")
            json.dump({"success": False, "errors": [{"code": "config_error", "message": f"Config file error: {e}"}]}, sys.stderr)
            sys.exit(1)

    # CLI args могут переопределять config_file, а config_file переопределяет default_config в MrComicIntegratedSystem
    system_config = {**config_from_file} # Начинаем с конфига из файла
    # Можно добавить логику для слияния параметров OCR/Translate из CLI в system_config если нужно
    # Например:
    # if args.ocr_languages: system_config.setdefault('ocr_config', {})['languages'] = json.loads(args.ocr_languages)
    # if args.target_language: system_config.setdefault('translator_config', {})['target_language'] = args.target_language


    system = MrComicIntegratedSystem(config=system_config)
    cli_output = {"success": False, "data": None, "errors": []} # errors теперь список словарей

    try:
        if args.mode == 'ocr':
            if not args.image_path: raise ValueError("--image_path is required for OCR mode")

            parsed_regions = json.loads(args.regions) if args.regions else None
            parsed_ocr_languages = json.loads(args.ocr_languages) if args.ocr_languages else None
            parsed_ocr_params = json.loads(args.ocr_params) if args.ocr_params else None

            if parsed_regions: logger.info(f"CLI: Parsed OCR regions: {parsed_regions}")
            if parsed_ocr_languages: logger.info(f"CLI: Parsed OCR languages: {parsed_ocr_languages}")
            if parsed_ocr_params: logger.info(f"CLI: Parsed OCR params: {parsed_ocr_params}")

            # Вызов нового метода для OCR
            ocr_cli_result = system.process_ocr_request(
                args.image_path,
                regions=parsed_regions,
                ocr_languages=parsed_ocr_languages,
                ocr_params=parsed_ocr_params
            )
            cli_output["success"] = ocr_cli_result.success
            cli_output["data"] = { # Формируем data в соответствии с OcrResponseDto
                "processingTimeMs": ocr_cli_result.processingTimeMs,
                "results": ocr_cli_result.ocr_results
                # Можно добавить другие поля из ocr_cli_result при необходимости
            }
            if hasattr(ocr_cli_result, 'errors_list_ref') and ocr_cli_result.errors_list_ref: # type: ignore
                 cli_output["errors"].extend([{"message": str(e)} for e in ocr_cli_result.errors_list_ref]) # type: ignore

        elif args.mode == 'translate':
            if not args.texts: raise ValueError("--texts is required for translation mode")
            if not args.target_language: raise ValueError("--target_language is required for translation mode")

            texts_to_translate = json.loads(args.texts)
            parsed_translation_params = json.loads(args.translation_params) if args.translation_params else {}
            logger.info(f"CLI: Parsed translation params: {parsed_translation_params}")

            # Вызов нового метода для перевода
            translate_cli_result = system.process_translation_request(
                texts_to_translate,
                source_language=args.source_language,
                target_language=args.target_language,
                translation_params=parsed_translation_params
            )
            cli_output["success"] = translate_cli_result.success
            cli_output["data"] = { # Формируем data в соответствии с TranslationResponseDto
                "processingTimeMs": translate_cli_result.processingTimeMs,
                "results": translate_cli_result.translation_results
            }
            if hasattr(translate_cli_result, 'errors_list_ref') and translate_cli_result.errors_list_ref: # type: ignore
                 cli_output["errors"].extend([{"message": str(e)} for e in translate_cli_result.errors_list_ref]) # type: ignore

        if cli_output["errors"]: cli_output["success"] = False
        json.dump(cli_output, sys.stdout, ensure_ascii=False, indent=2)

    except ValueError as ve:
        logger.error(f"ValueError in CLI: {ve}")
        json.dump({"success": False, "errors": [{"code": "invalid_argument", "message": str(ve)}]}, sys.stderr)
        sys.exit(1)
    except json.JSONDecodeError as je:
        logger.error(f"JSONDecodeError in CLI: {je}")
        json.dump({"success": False, "errors": [{"code": "json_decode_error", "message": f"Invalid JSON argument: {je}"}]}, sys.stderr)
        sys.exit(1)
    except Exception as e:
        logger.error(f"Unhandled exception in CLI: {e}", exc_info=True)
        json.dump({"success": False, "errors": [{"code": "internal_error", "message": f"Internal server error: {e}"}]}, sys.stderr)
        sys.exit(1)
