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
from dataclasses import dataclass, asdict, field
from pathlib import Path
# import asyncio # Не используется
import concurrent.futures
# from PIL import Image # Не используется напрямую здесь

# Импорт наших модулей
try:
    from revolutionary_ocr import RevolutionaryOCRSystem, PythonOcrResult, OCREngine as PythonOcrEngine
    from advanced_element_detector import AdvancedElementDetector
    from universal_translator import UniversalTranslationSystem, TranslationRequest, TranslationDomain, PythonTranslationResult, TranslatorEngine as PythonTranslatorEngine
    from advanced_translation_overlay import AdvancedTranslationOverlay
    from quality_validation_system import QualityValidationSystem, ValidationResult, ValidationStatus
except ImportError as e:
    logging.warning(f"Не удалось импортировать модуль: {e} - используются заглушки.")
    # Заглушки (оставим их как есть, они были обновлены ранее)
    PythonOcrEngine = type('Engine',(),{'value':'dummy_ocr_engine'})
    PythonTranslatorEngine = type('Engine',(),{'value':'dummy_trans_engine'})
    @dataclass
    class PythonOcrResult:
        text: str = "test region"; confidence: float = 0.9; bbox: Tuple[int,int,int,int] = (0,0,10,10)
        language: str = "en"; engine: Any = PythonOcrEngine(); processing_time: float = 0.1
        words: List[Any] = field(default_factory=list)
    class RevolutionaryOCRSystem:
        def __init__(self, config=None): self.config = config or {}
        def recognize_text(self, image_roi, languages=None, ocr_params=None): return [PythonOcrResult()]
        def update_runtime_config(self, updates): logger.info(f"RevolutionaryOCRSystem (stub) config updated with: {updates}")
    class AdvancedElementDetector:
        def __init__(self, config=None): self.config = config or {}
        def detect_comic_elements(self, image): return [{'type': 'speech_bubble', 'bbox': (10, 10, 100, 50), 'id': 'elem1'}]
    @dataclass
    class PythonTranslationResult:
        original_text: str; translated_text: str; source_lang: str; target_lang: str
        engine: Any = PythonTranslatorEngine(); confidence: float = 0.8; processing_time: float = 0.1
        domain: Any = None; metadata: Dict = field(default_factory=dict)
    class UniversalTranslationSystem:
        def __init__(self, config=None): self.config = config or {}
        def translate(self, request: Any, engine_override: Optional[str]=None) -> PythonTranslationResult: # Any для request в заглушке
            return PythonTranslationResult(original_text=request.text, translated_text=f"Перевод: {request.text}", source_lang=request.source_lang, target_lang=request.target_lang, domain=request.domain)
    class TranslationRequest:
        def __init__(self, text, source_lang, target_lang, domain): self.text=text; self.source_lang=source_lang; self.target_lang=target_lang; self.domain=domain
    class TranslationDomain: GENERAL = "general"
    class AdvancedTranslationOverlay:
        def __init__(self, config=None): self.config = config or {}
        def process_comic_page(self, image, translations): return image
    class QualityValidationSystem:
        def __init__(self, config=None): self.config = config or {}
        def validate_results(self, ocr, trans): return ValidationResult(ValidationStatus.PASSED,0.9,[],[],[],[],{})
    if 'ValidationResult' not in globals():
        @dataclass
        class ValidationResult: status: Any; overall_score: float; metric_scores: List=field(default_factory=list); issues: List=field(default_factory=list); suggestions: List=field(default_factory=list); alternatives: List=field(default_factory=list); metadata: Dict=field(default_factory=dict)
    if 'ValidationStatus' not in globals():
        class ValidationStatus: PASSED = "passed"

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logger = logging.getLogger('MrComicIntegrated')

@dataclass
class CliProcessingResult:
    success: bool
    original_image_path: Optional[str] = None
    processed_image_path: Optional[str] = None
    detected_elements: Optional[List[Dict[str, Any]]] = None
    ocr_results: Optional[List[Dict[str, Any]]] = None
    translation_results: Optional[List[Dict[str, Any]]] = None
    validation_result: Optional[Dict[str, Any]] = None
    processingTimeMs: int = 0
    errors_list_ref: List[str] = field(default_factory=list) # Для сбора ошибок по ходу

class MrComicIntegratedSystem:
    def __init__(self, config: Optional[Dict[str, Any]] = None):
        self.config = config or {}
        self.default_config = {
            'enable_ocr': True, 'enable_translation': True, 'enable_overlay': True,
            'enable_validation': True, 'parallel_processing': False, 'max_workers': 4,
            'output_format': 'png', 'save_intermediate_results': False,
            'target_language': 'ru', 'source_language': 'auto', 'quality_threshold': 0.7,
            'ocr_config': {}, 'translator_config': {}, 'element_detector_config': {},
            'overlay_config': {}, 'validation_config': {}
        }
        self.config = {**self.default_config, **self.config}
        # ... (инициализация компонентов как раньше) ...
        self.ocr_system = None; self.element_detector = None; self.translator = None; self.overlay_system = None; self.validator = None
        self._initialize_components()
        logger.info("Интегрированная система Mr.Comic инициализирована (обновлено)")

    def _initialize_components(self): # Без изменений
        if self.config['enable_ocr']:
            try: self.ocr_system = RevolutionaryOCRSystem(config=self.config.get('ocr_config'))
            except Exception as e: logger.error(f"Failed to init OCR: {e}")
        if self.config.get('enable_element_detector', True) :
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
        current_errors: List[str] = []

        try:
            image = cv2.imread(image_path)
            if image is None: raise ValueError(f"Не удалось загрузить изображение: {image_path}")

            logger.info(f"Обработка OCR для: {image_path}")
            if regions: logger.info(f"Используются регионы из запроса: {regions}")
            if ocr_languages: logger.info(f"Языки OCR из запроса: {ocr_languages}")
            if ocr_params: logger.info(f"Параметры OCR из запроса: {ocr_params}")

            detected_elements_data = []
            rois_to_process = []

            if regions:
                for i, r_data in enumerate(regions):
                    if not all(k in r_data for k in ('x', 'y', 'width', 'height')):
                        logger.warning(f"Пропущен неполный регион: {r_data}")
                        current_errors.append(f"Неполный регион: {r_data}")
                        continue
                    rois_to_process.append({
                        'id': r_data.get('id', f'custom_region_{i}'),
                        'type': 'custom_region',
                        'bbox': (r_data['x'], r_data['y'], r_data['width'], r_data['height'])
                    })
                logger.info(f"Будут обработаны {len(rois_to_process)} регионов, переданных извне.")
                detected_elements_data = rois_to_process
            elif self.element_detector:
                try:
                    detected_elements_data = self.element_detector.detect_comic_elements(image)
                    rois_to_process = detected_elements_data
                    logger.info(f"Обнаружено элементов детектором: {len(detected_elements_data)}")
                except Exception as e:
                    current_errors.append(f"Ошибка детекции элементов: {str(e)}")
                    logger.error(f"Ошибка детекции элементов: {e}", exc_info=True)
            else:
                ih, iw = image.shape[:2]
                rois_to_process.append({'id': 'full_image', 'type': 'full_image', 'bbox': (0,0,iw,ih)})
                logger.info("Регионы не предоставлены, детектор отсутствует. OCR всего изображения.")

            ocr_results_api_dto = []
            if self.ocr_system and rois_to_process:
                logger.info(f"Передача в RevolutionaryOCRSystem: languages={ocr_languages}, ocr_params={ocr_params}")
                for element in rois_to_process:
                    bbox = element.get('bbox')
                    if not bbox: continue
                    x, y, w, h = map(int, bbox)
                    ih, iw = image.shape[:2]
                    x_roi, y_roi, w_roi, h_roi = max(0, x), max(0, y), min(w, iw - x), min(h, ih - y)
                    if w_roi <=0 or h_roi <= 0: continue
                    roi_image = image[y_roi:y_roi+h_roi, x_roi:x_roi+w_roi]

                    # Вызываем ocr_system.recognize_text с новыми параметрами
                    python_ocr_results_for_roi = self.ocr_system.recognize_text(
                        roi_image,
                        languages=ocr_languages,
                        ocr_params=ocr_params
                    )

                    for ocr_item in python_ocr_results_for_roi:
                        corrected_bbox_dict = {
                            "x": x_roi + ocr_item.bbox[0], "y": y_roi + ocr_item.bbox[1],
                            "width": ocr_item.bbox[2], "height": ocr_item.bbox[3]
                        }
                        ocr_results_api_dto.append({
                            "regionId": element.get('id'), "text": ocr_item.text,
                            "confidence": ocr_item.confidence, "language": ocr_item.language,
                            "bbox": corrected_bbox_dict,
                            "words": [asdict(word) for word in ocr_item.words] if hasattr(ocr_item, 'words') and ocr_item.words else []
                        })
                logger.info(f"OCR завершен для {len(ocr_results_api_dto)} текстовых блоков.")

            processing_time_val = int((time.time() - start_time) * 1000)
            success_status = not current_errors and bool(ocr_results_api_dto)

            return CliProcessingResult(
                success=success_status, original_image_path=image_path,
                ocr_results=ocr_results_api_dto,
                detected_elements=detected_elements_data,
                processingTimeMs=processing_time_val,
                errors_list_ref=current_errors
            )
        except Exception as e:
            processing_time_val = int((time.time() - start_time) * 1000)
            current_errors.append(f"Критическая ошибка OCR: {str(e)}")
            logger.error(f"Критическая ошибка OCR: {e}", exc_info=True)
            return CliProcessingResult(success=False, original_image_path=image_path, processingTimeMs=processing_time_val, errors_list_ref=current_errors)

    def process_translation_request(self,
                                   texts_to_translate: List[Dict],
                                   source_language: str,
                                   target_language: str,
                                   translation_params: Optional[Dict] = None) -> CliProcessingResult:
        start_time = time.time()
        current_errors: List[str] = []
        api_translation_results = []

        if not self.translator:
            current_errors.append("Translator component не инициализирован.")
            logger.error("Translator component не инициализирован для process_translation_request.")
            return CliProcessingResult(success=False, translation_results=[], processingTimeMs=int((time.time()-start_time)*1000), errors_list_ref=current_errors)

        try:
            logger.info(f"Обработка перевода для {len(texts_to_translate)} текстов. Target: {target_language}, Source: {source_language}")
            if translation_params: logger.info(f"Параметры перевода: {translation_params}")

            engine_override_from_params = (translation_params or {}).get("engine")

            for item in texts_to_translate:
                item_text = item.get("text", "")
                item_id = item.get("id")

                if not item_text.strip():
                    api_translation_results.append({"id": item_id, "originalText": item_text, "translatedText": "", "error": "Empty text provided"})
                    continue

                domain_str = (translation_params or {}).get("domain", "general")
                try: domain_enum = TranslationDomain(domain_str.lower())
                except ValueError: domain_enum = TranslationDomain.GENERAL

                source_lang_for_item = item.get("source_language", source_language)

                translation_req = TranslationRequest(
                    text=item_text,
                    source_lang=source_lang_for_item,
                    target_lang=target_language,
                    domain=domain_enum
                )

                item_start_time = time.time()
                # Передаем engine_override в метод translate
                python_translated_item = self.translator.translate(
                    translation_req,
                    engine_override=engine_override_from_params
                    # TODO: передать другие специфичные параметры из translation_params, если API UniversalTranslator их поддерживает
                )
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
                errors_list_ref=current_errors
            )
        except Exception as e:
            current_errors.append(f"Критическая ошибка перевода: {str(e)}")
            logger.error(f"Критическая ошибка перевода: {e}", exc_info=True)
            return CliProcessingResult(success=False, translation_results=api_translation_results, processingTimeMs=int((time.time()-start_time)*1000), errors_list_ref=current_errors)

    # ... (generate_processing_report и другие вспомогательные методы остаются как есть, но должны быть адаптированы к CliProcessingResult)
    def generate_processing_report(self, results: List[CliProcessingResult]) -> Dict[str, Any]: # Адаптируем тип
        if not results: return {'error': 'Нет результатов для анализа'}
        logger.warning("generate_processing_report needs to be adapted for CliProcessingResult type")
        return {"status": "report generation pending adaptation for CliProcessingResult"}

    def _generate_recommendations(self, results: List[CliProcessingResult]) -> List[str]:
        logger.warning("_generate_recommendations needs to be adapted for CliProcessingResult type")
        return ["Recommendations pending adaptation for CliProcessingResult"]

    def save_results(self, results: List[CliProcessingResult], output_path: str):
        logger.warning("save_results needs to be adapted for CliProcessingResult type")

    def get_system_status(self) -> Dict[str, Any]: # Без изменений
        status = {'system_initialized': True,'components': {'ocr_system':self.ocr_system is not None,'element_detector':self.element_detector is not None,'translator':self.translator is not None,'overlay_system':self.overlay_system is not None,'validator':self.validator is not None},'configuration':self.config,'capabilities': {'can_process_ocr':self.ocr_system is not None,'can_translate':self.translator is not None,'can_overlay':self.overlay_system is not None,'can_validate':self.validator is not None,'parallel_processing':self.config['parallel_processing']}}
        return status

if __name__ == "__main__":
    import argparse
    import sys

    parser = argparse.ArgumentParser(description="Mr.Comic Integrated OCR and Translation System CLI")
    # ... (аргументы парсера без изменений) ...
    parser.add_argument('--mode', type=str, required=True, choices=['ocr', 'translate'], help="Operating mode: 'ocr' or 'translate'")
    parser.add_argument('--image_path', type=str, help="Path to the image for OCR")
    parser.add_argument('--regions', type=str, help="JSON string of regions to OCR e.g. '[{\"x\":0,\"y\":0,\"w\":100,\"h\":50,\"id\":\"r1\"}]'")
    parser.add_argument('--ocr_languages', type=str, help="JSON string of languages for OCR e.g. '[\"eng\",\"rus\"]'")
    parser.add_argument('--ocr_params', type=str, help="JSON string of additional OCR parameters e.g. '{\"engine_specific\":{\"tesseract\":{\"psm\":6}}}'")
    parser.add_argument('--texts', type=str, help="JSON string of texts to translate e.g. '[{\"id\":\"t1\",\"text\":\"Hello\"}]'")
    parser.add_argument('--source_language', type=str, default='auto', help="Source language for translation (e.g., 'eng', 'auto')")
    parser.add_argument('--target_language', type=str, help="Target language for translation (e.g., 'rus')")
    parser.add_argument('--translation_params', type=str, help="JSON string of additional translation parameters e.g. '{\"domain\":\"comic\",\"engine\":\"google_translate\"}'")
    parser.add_argument('--config_file', type=str, help="Path to a JSON config file for the system")
    args = parser.parse_args()

    config_from_file = {}
    if args.config_file:
        try:
            with open(args.config_file, 'r', encoding='utf-8') as f: config_from_file = json.load(f)
        except Exception as e:
            json.dump({"success": False, "errors": [{"code": "config_error", "message": f"Config file error: {str(e)}"}]}, sys.stderr)
            sys.exit(1)

    system_config = {**config_from_file}
    system = MrComicIntegratedSystem(config=system_config)
    cli_output = {"success": False, "data": None, "errors": []}

    try:
        if args.mode == 'ocr':
            if not args.image_path: raise ValueError("--image_path is required for OCR mode")
            parsed_regions = json.loads(args.regions) if args.regions else None
            parsed_ocr_languages = json.loads(args.ocr_languages) if args.ocr_languages else None
            parsed_ocr_params = json.loads(args.ocr_params) if args.ocr_params else None

            ocr_cli_result = system.process_ocr_request(
                args.image_path, regions=parsed_regions, ocr_languages=parsed_ocr_languages, ocr_params=parsed_ocr_params
            )
            cli_output["success"] = ocr_cli_result.success
            cli_output["data"] = {
                "processingTimeMs": ocr_cli_result.processingTimeMs,
                "results": ocr_cli_result.ocr_results,
                "detected_elements": ocr_cli_result.detected_elements, # Добавим это в ответ
                "original_image_path": ocr_cli_result.original_image_path
            }
            if ocr_cli_result.errors_list_ref: cli_output["errors"].extend([{"code":"ocr_processing_error", "message":e} for e in ocr_cli_result.errors_list_ref])

        elif args.mode == 'translate':
            if not args.texts: raise ValueError("--texts is required for translation mode")
            if not args.target_language: raise ValueError("--target_language is required for translation mode")

            texts_to_translate = json.loads(args.texts)
            parsed_translation_params = json.loads(args.translation_params) if args.translation_params else {}

            translate_cli_result = system.process_translation_request(
                texts_to_translate, args.source_language, args.target_language, parsed_translation_params
            )
            cli_output["success"] = translate_cli_result.success
            cli_output["data"] = {
                "processingTimeMs": translate_cli_result.processingTimeMs,
                "results": translate_cli_result.translation_results
            }
            if translate_cli_result.errors_list_ref: cli_output["errors"].extend([{"code":"translation_processing_error", "message":e} for e in translate_cli_result.errors_list_ref])

        if cli_output["errors"]: cli_output["success"] = False
        json.dump(cli_output, sys.stdout, ensure_ascii=False, indent=2)

    except ValueError as ve:
        json.dump({"success": False, "errors": [{"code": "invalid_argument", "message": str(ve)}]}, sys.stderr)
        sys.exit(1)
    except json.JSONDecodeError as je:
        json.dump({"success": False, "errors": [{"code": "json_decode_error", "message": f"Invalid JSON argument: {str(je)}"}]}, sys.stderr)
        sys.exit(1)
    except Exception as e:
        logger.error(f"Unhandled exception in CLI: {e}", exc_info=True)
        json.dump({"success": False, "errors": [{"code": "internal_error", "message": f"Internal server error: {str(e)}"}]}, sys.stderr)
        sys.exit(1)
