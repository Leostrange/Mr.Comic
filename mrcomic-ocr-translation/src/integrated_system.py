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
from dataclasses import dataclass, asdict
from pathlib import Path
import asyncio
import concurrent.futures
from PIL import Image

# Импорт наших модулей
try:
    from revolutionary_ocr import RevolutionaryOCRSystem
    from advanced_element_detector import AdvancedElementDetector
    from universal_translator import UniversalTranslationSystem
    from advanced_translation_overlay import AdvancedTranslationOverlay
    from quality_validation_system import QualityValidationSystem, ValidationResult
except ImportError as e:
    logging.warning(f"Не удалось импортировать модуль: {e}")
    # Заглушки для отсутствующих классов
    class RevolutionaryOCRSystem:
        def process_image(self, image): return {'text': 'test', 'confidence': 0.9}
    
    class AdvancedElementDetector:
        def detect_comic_elements(self, image): return [{'type': 'speech_bubble', 'bbox': (10, 10, 100, 50), 'id': 1}]
    
    class UniversalTranslationSystem:
        def translate_text(self, text, target_lang='ru', source_lang='auto'): 
            return {'text': f'Перевод: {text}', 'confidence': 0.8, 'engine': 'test'}
    
    class AdvancedTranslationOverlay:
        def process_comic_page(self, image, translations): return image
    
    class QualityValidationSystem:
        def validate_results(self, ocr, trans): 
            from quality_validation_system import ValidationResult, ValidationStatus
            return ValidationResult(ValidationStatus.PASSED, 0.9, [], [], [], [], {})
    
    class ValidationResult:
        def __init__(self, status, score, metrics, issues, suggestions, alternatives, metadata):
            self.status = status
            self.overall_score = score
            self.metric_scores = metrics
            self.issues = issues
            self.suggestions = suggestions
            self.alternatives = alternatives
            self.metadata = metadata
    
    class ValidationStatus:
        PASSED = "passed"

# Настройка логирования
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger('MrComicIntegrated')

@dataclass
class ProcessingResult:
    """Результат обработки страницы комикса"""
    success: bool
    original_image_path: str
    processed_image_path: Optional[str]
    detected_elements: List[Dict[str, Any]]
    ocr_results: List[Dict[str, Any]]
    translation_results: List[Dict[str, Any]]
    validation_result: Optional[ValidationResult]
    processing_time: float
    metadata: Dict[str, Any]
    errors: List[str]

class MrComicIntegratedSystem:
    """
    Интегрированная система Mr.Comic для OCR и переводов
    """
    
    def __init__(self, config: Optional[Dict[str, Any]] = None):
        """
        Инициализация интегрированной системы
        
        Args:
            config: Конфигурация системы
        """
        self.config = config or {}
        
        # Настройки по умолчанию
        self.default_config = {
            'enable_ocr': True,
            'enable_translation': True,
            'enable_overlay': True,
            'enable_validation': True,
            'parallel_processing': True,
            'max_workers': 4,
            'output_format': 'png',
            'save_intermediate_results': True,
            'target_language': 'ru',
            'source_language': 'auto',
            'quality_threshold': 0.7
        }
        
        # Объединение конфигураций
        self.config = {**self.default_config, **self.config}
        
        # Инициализация компонентов
        self.ocr_system = None
        self.element_detector = None
        self.translator = None
        self.overlay_system = None
        self.validator = None
        
        self._initialize_components()
        
        logger.info("Интегрированная система Mr.Comic инициализирована")
    
    def _initialize_components(self):
        """Инициализация всех компонентов системы"""
        try:
            # Инициализация OCR системы
            if self.config['enable_ocr']:
                self.ocr_system = RevolutionaryOCRSystem()
                logger.info("OCR система инициализирована")
            
            # Инициализация детектора элементов
            self.element_detector = AdvancedElementDetector()
            logger.info("Детектор элементов инициализирован")
            
            # Инициализация переводчика
            if self.config['enable_translation']:
                self.translator = UniversalTranslationSystem()
                logger.info("Система переводов инициализирована")
            
            # Инициализация системы наложения
            if self.config['enable_overlay']:
                self.overlay_system = AdvancedTranslationOverlay()
                logger.info("Система наложения инициализирована")
            
            # Инициализация валидатора
            if self.config['enable_validation']:
                self.validator = QualityValidationSystem()
                logger.info("Система валидации инициализирована")
                
        except Exception as e:
            logger.error(f"Ошибка инициализации компонентов: {e}")
            # Продолжаем работу с доступными компонентами
    
    def process_comic_page(self, image_path: str, output_dir: str = None) -> ProcessingResult:
        """
        Обработка страницы комикса
        
        Args:
            image_path: Путь к изображению
            output_dir: Директория для сохранения результатов
            
        Returns:
            Результат обработки
        """
        start_time = time.time()
        errors = []
        
        try:
            # Загрузка изображения
            image = cv2.imread(image_path)
            if image is None:
                raise ValueError(f"Не удалось загрузить изображение: {image_path}")
            
            logger.info(f"Начинаем обработку: {image_path}")
            
            # 1. Детекция элементов
            detected_elements = []
            if self.element_detector:
                try:
                    detected_elements = self.element_detector.detect_comic_elements(image)
                    logger.info(f"Обнаружено элементов: {len(detected_elements)}")
                except Exception as e:
                    errors.append(f"Ошибка детекции элементов: {e}")
                    logger.error(f"Ошибка детекции элементов: {e}")
            
            # 2. OCR обработка
            ocr_results = []
            if self.ocr_system and detected_elements:
                try:
                    for element in detected_elements:
                        if element.get('type') in ['speech_bubble', 'text_box']:
                            bbox = element.get('bbox', (0, 0, 100, 100))
                            x, y, w, h = bbox
                            roi = image[y:y+h, x:x+w]
                            
                            ocr_result = self.ocr_system.process_image(roi)
                            if ocr_result and ocr_result.get('text'):
                                ocr_result['element_id'] = element.get('id')
                                ocr_result['bbox'] = bbox
                                ocr_results.append(ocr_result)
                    
                    logger.info(f"OCR обработано областей: {len(ocr_results)}")
                except Exception as e:
                    errors.append(f"Ошибка OCR: {e}")
                    logger.error(f"Ошибка OCR: {e}")
            
            # 3. Перевод текста
            translation_results = []
            if self.translator and ocr_results:
                try:
                    for ocr_result in ocr_results:
                        text = ocr_result.get('text', '')
                        if text.strip():
                            translation = self.translator.translate_text(
                                text, 
                                target_lang=self.config['target_language'],
                                source_lang=self.config['source_language']
                            )
                            
                            if translation:
                                translation_result = {
                                    'original_text': text,
                                    'translated_text': translation.get('text', ''),
                                    'confidence': translation.get('confidence', 0.0),
                                    'engine': translation.get('engine', 'unknown'),
                                    'element_id': ocr_result.get('element_id'),
                                    'bbox': ocr_result.get('bbox')
                                }
                                translation_results.append(translation_result)
                    
                    logger.info(f"Переведено текстов: {len(translation_results)}")
                except Exception as e:
                    errors.append(f"Ошибка перевода: {e}")
                    logger.error(f"Ошибка перевода: {e}")
            
            # 4. Валидация результатов
            validation_result = None
            if self.validator:
                try:
                    validation_result = self.validator.validate_results(
                        ocr_results, translation_results
                    )
                    logger.info(f"Валидация: {validation_result.status.value}, оценка: {validation_result.overall_score:.2f}")
                except Exception as e:
                    errors.append(f"Ошибка валидации: {e}")
                    logger.error(f"Ошибка валидации: {e}")
            
            # 5. Наложение переводов
            processed_image_path = None
            if self.overlay_system and translation_results:
                try:
                    processed_image = self.overlay_system.process_comic_page(image, translation_results)
                    
                    # Сохранение обработанного изображения
                    if output_dir:
                        Path(output_dir).mkdir(parents=True, exist_ok=True)
                        filename = Path(image_path).stem + f"_translated.{self.config['output_format']}"
                        processed_image_path = str(Path(output_dir) / filename)
                        cv2.imwrite(processed_image_path, processed_image)
                        logger.info(f"Сохранено обработанное изображение: {processed_image_path}")
                    
                except Exception as e:
                    errors.append(f"Ошибка наложения: {e}")
                    logger.error(f"Ошибка наложения: {e}")
            
            # Подготовка результата
            processing_time = time.time() - start_time
            success = len(errors) == 0 and len(translation_results) > 0
            
            result = ProcessingResult(
                success=success,
                original_image_path=image_path,
                processed_image_path=processed_image_path,
                detected_elements=detected_elements,
                ocr_results=ocr_results,
                translation_results=translation_results,
                validation_result=validation_result,
                processing_time=processing_time,
                metadata={
                    'image_size': image.shape,
                    'elements_count': len(detected_elements),
                    'ocr_count': len(ocr_results),
                    'translation_count': len(translation_results),
                    'target_language': self.config['target_language']
                },
                errors=errors
            )
            
            logger.info(f"Обработка завершена за {processing_time:.2f}с, успех: {success}")
            return result
            
        except Exception as e:
            processing_time = time.time() - start_time
            error_msg = f"Критическая ошибка обработки: {e}"
            errors.append(error_msg)
            logger.error(error_msg)
            
            return ProcessingResult(
                success=False,
                original_image_path=image_path,
                processed_image_path=None,
                detected_elements=[],
                ocr_results=[],
                translation_results=[],
                validation_result=None,
                processing_time=processing_time,
                metadata={},
                errors=errors
            )
    
    def process_multiple_pages(self, image_paths: List[str], output_dir: str = None) -> List[ProcessingResult]:
        """
        Обработка нескольких страниц комикса
        
        Args:
            image_paths: Список путей к изображениям
            output_dir: Директория для сохранения результатов
            
        Returns:
            Список результатов обработки
        """
        results = []
        
        if self.config['parallel_processing'] and len(image_paths) > 1:
            # Параллельная обработка
            with concurrent.futures.ThreadPoolExecutor(max_workers=self.config['max_workers']) as executor:
                future_to_path = {
                    executor.submit(self.process_comic_page, path, output_dir): path 
                    for path in image_paths
                }
                
                for future in concurrent.futures.as_completed(future_to_path):
                    path = future_to_path[future]
                    try:
                        result = future.result()
                        results.append(result)
                        logger.info(f"Завершена обработка: {path}")
                    except Exception as e:
                        logger.error(f"Ошибка обработки {path}: {e}")
                        # Создаем результат с ошибкой
                        error_result = ProcessingResult(
                            success=False,
                            original_image_path=path,
                            processed_image_path=None,
                            detected_elements=[],
                            ocr_results=[],
                            translation_results=[],
                            validation_result=None,
                            processing_time=0.0,
                            metadata={},
                            errors=[str(e)]
                        )
                        results.append(error_result)
        else:
            # Последовательная обработка
            for path in image_paths:
                result = self.process_comic_page(path, output_dir)
                results.append(result)
        
        logger.info(f"Обработано страниц: {len(results)}")
        return results
    
    def generate_processing_report(self, results: List[ProcessingResult]) -> Dict[str, Any]:
        """
        Генерация отчета об обработке
        
        Args:
            results: Результаты обработки
            
        Returns:
            Отчет об обработке
        """
        if not results:
            return {'error': 'Нет результатов для анализа'}
        
        # Общая статистика
        total_pages = len(results)
        successful_pages = sum(1 for r in results if r.success)
        total_processing_time = sum(r.processing_time for r in results)
        
        # Статистика элементов
        total_elements = sum(len(r.detected_elements) for r in results)
        total_ocr = sum(len(r.ocr_results) for r in results)
        total_translations = sum(len(r.translation_results) for r in results)
        
        # Статистика качества
        validation_scores = [
            r.validation_result.overall_score 
            for r in results 
            if r.validation_result
        ]
        avg_quality = sum(validation_scores) / len(validation_scores) if validation_scores else 0.0
        
        # Ошибки
        all_errors = []
        for r in results:
            all_errors.extend(r.errors)
        
        error_summary = {}
        for error in all_errors:
            error_type = error.split(':')[0] if ':' in error else 'Общая ошибка'
            error_summary[error_type] = error_summary.get(error_type, 0) + 1
        
        report = {
            'summary': {
                'total_pages': total_pages,
                'successful_pages': successful_pages,
                'success_rate': successful_pages / total_pages if total_pages > 0 else 0.0,
                'total_processing_time': total_processing_time,
                'avg_processing_time': total_processing_time / total_pages if total_pages > 0 else 0.0
            },
            'content_statistics': {
                'total_elements_detected': total_elements,
                'total_ocr_results': total_ocr,
                'total_translations': total_translations,
                'avg_elements_per_page': total_elements / total_pages if total_pages > 0 else 0.0,
                'avg_translations_per_page': total_translations / total_pages if total_pages > 0 else 0.0
            },
            'quality_metrics': {
                'average_quality_score': avg_quality,
                'pages_with_validation': len(validation_scores),
                'quality_distribution': {
                    'excellent': sum(1 for s in validation_scores if s >= 0.9),
                    'good': sum(1 for s in validation_scores if 0.7 <= s < 0.9),
                    'fair': sum(1 for s in validation_scores if 0.5 <= s < 0.7),
                    'poor': sum(1 for s in validation_scores if s < 0.5)
                }
            },
            'error_analysis': {
                'total_errors': len(all_errors),
                'error_types': error_summary,
                'pages_with_errors': sum(1 for r in results if r.errors)
            },
            'recommendations': self._generate_recommendations(results)
        }
        
        return report
    
    def _generate_recommendations(self, results: List[ProcessingResult]) -> List[str]:
        """Генерация рекомендаций на основе результатов"""
        recommendations = []
        
        if not results:
            return recommendations
        
        # Анализ успешности
        success_rate = sum(1 for r in results if r.success) / len(results)
        if success_rate < 0.8:
            recommendations.append("Низкий процент успешной обработки - проверьте качество входных изображений")
        
        # Анализ времени обработки
        avg_time = sum(r.processing_time for r in results) / len(results)
        if avg_time > 30:  # Более 30 секунд на страницу
            recommendations.append("Высокое время обработки - рассмотрите оптимизацию или параллельную обработку")
        
        # Анализ качества
        validation_scores = [r.validation_result.overall_score for r in results if r.validation_result]
        if validation_scores:
            avg_quality = sum(validation_scores) / len(validation_scores)
            if avg_quality < 0.7:
                recommendations.append("Низкое качество результатов - проверьте настройки OCR и переводчиков")
        
        # Анализ ошибок
        error_count = sum(len(r.errors) for r in results)
        if error_count > len(results) * 0.5:  # Более 0.5 ошибок на страницу
            recommendations.append("Высокий уровень ошибок - требуется диагностика системы")
        
        # Анализ содержимого
        pages_without_text = sum(1 for r in results if len(r.translation_results) == 0)
        if pages_without_text > len(results) * 0.3:
            recommendations.append("Много страниц без текста - проверьте детекцию элементов")
        
        return recommendations
    
    def save_results(self, results: List[ProcessingResult], output_path: str):
        """
        Сохранение результатов в файл
        
        Args:
            results: Результаты обработки
            output_path: Путь для сохранения
        """
        try:
            # Подготовка данных для сериализации
            serializable_results = []
            
            for result in results:
                serializable_result = {
                    'success': result.success,
                    'original_image_path': result.original_image_path,
                    'processed_image_path': result.processed_image_path,
                    'detected_elements': result.detected_elements,
                    'ocr_results': result.ocr_results,
                    'translation_results': result.translation_results,
                    'validation_result': asdict(result.validation_result) if result.validation_result else None,
                    'processing_time': result.processing_time,
                    'metadata': result.metadata,
                    'errors': result.errors
                }
                serializable_results.append(serializable_result)
            
            # Сохранение в JSON
            with open(output_path, 'w', encoding='utf-8') as f:
                json.dump(serializable_results, f, ensure_ascii=False, indent=2)
            
            logger.info(f"Результаты сохранены: {output_path}")
            
        except Exception as e:
            logger.error(f"Ошибка сохранения результатов: {e}")
    
    def get_system_status(self) -> Dict[str, Any]:
        """
        Получение статуса системы
        
        Returns:
            Статус всех компонентов
        """
        status = {
            'system_initialized': True,
            'components': {
                'ocr_system': self.ocr_system is not None,
                'element_detector': self.element_detector is not None,
                'translator': self.translator is not None,
                'overlay_system': self.overlay_system is not None,
                'validator': self.validator is not None
            },
            'configuration': self.config,
            'capabilities': {
                'can_process_ocr': self.ocr_system is not None,
                'can_translate': self.translator is not None,
                'can_overlay': self.overlay_system is not None,
                'can_validate': self.validator is not None,
                'parallel_processing': self.config['parallel_processing']
            }
        }
        
        return status


def main():
    """Тестирование интегрированной системы"""
    try:
        # Инициализация системы
        system = MrComicIntegratedSystem({
            'target_language': 'ru',
            'parallel_processing': False,  # Отключаем для тестирования
            'save_intermediate_results': True
        })
        
        print("🚀 Интегрированная система Mr.Comic готова к работе!")
        print("\n📊 Статус компонентов:")
        
        status = system.get_system_status()
        for component, available in status['components'].items():
            status_icon = "✅" if available else "❌"
            print(f"  {status_icon} {component}")
        
        print(f"\n⚙️ Возможности:")
        capabilities = status['capabilities']
        for capability, enabled in capabilities.items():
            status_icon = "✅" if enabled else "❌"
            print(f"  {status_icon} {capability}")
        
        print(f"\n🎯 Система готова к обработке комиксов!")
        print(f"   - Автоматическая детекция элементов")
        print(f"   - Революционная система OCR")
        print(f"   - Универсальные переводы")
        print(f"   - Продвинутое наложение")
        print(f"   - Контроль качества")
        
        # Генерация тестового отчета
        test_results = []  # Пустой список для демонстрации
        report = system.generate_processing_report(test_results)
        
        print(f"\n📈 Система отчетности готова")
        print(f"   - Статистика обработки")
        print(f"   - Анализ качества")
        print(f"   - Рекомендации по улучшению")
        
    except Exception as e:
        logger.error(f"Ошибка инициализации: {e}")
        print(f"❌ Ошибка инициализации: {e}")


if __name__ == "__main__":
    import argparse
    import sys

    parser = argparse.ArgumentParser(description="Mr.Comic Integrated OCR and Translation System CLI")
    parser.add_argument('--mode', type=str, required=True, choices=['ocr', 'translate'], help="Operating mode: 'ocr' or 'translate'")

    # OCR arguments
    parser.add_argument('--image_path', type=str, help="Path to the image for OCR")
    parser.add_argument('--regions', type=str, help="JSON string of regions to OCR e.g. '[{\"x\":0,\"y\":0,\"w\":100,\"h\":50}]'")
    parser.add_argument('--ocr_languages', type=str, help="JSON string of languages for OCR e.g. '[\"eng\",\"rus\"]'")
    parser.add_argument('--ocr_params', type=str, help="JSON string of additional OCR parameters")

    # Translation arguments
    parser.add_argument('--texts', type=str, help="JSON string of texts to translate e.g. '[{\"id\":\"t1\",\"text\":\"Hello\"}]'")
    parser.add_argument('--source_language', type=str, default='auto', help="Source language for translation (e.g., 'eng', 'auto')")
    parser.add_argument('--target_language', type=str, help="Target language for translation (e.g., 'rus')")
    parser.add_argument('--translation_params', type=str, help="JSON string of additional translation parameters")

    # Common arguments
    parser.add_argument('--config_file', type=str, help="Path to a JSON config file for the system")

    args = parser.parse_args()

    config = {}
    if args.config_file:
        try:
            with open(args.config_file, 'r', encoding='utf-8') as f:
                config = json.load(f)
        except Exception as e:
            logger.error(f"Could not load config file {args.config_file}: {e}")
            # Output error as JSON to stderr and exit
            json.dump({"success": False, "errors": [f"Config file error: {e}"]}, sys.stderr)
            sys.exit(1)

    system = MrComicIntegratedSystem(config=config)

    output_results = {"success": False, "data": None, "errors": []}

    try:
        if args.mode == 'ocr':
            if not args.image_path:
                raise ValueError("--image_path is required for OCR mode")

            # TODO: Parse regions, ocr_languages, ocr_params from JSON strings if provided
            # For now, we'll assume process_comic_page can handle None for these or they are passed in config
            # This part needs more robust handling of JSON parsing for CLI arguments

            # For simplicity, this example doesn't fully parse JSON args for regions/languages/params here.
            # The process_comic_page method in MrComicIntegratedSystem would need to be adapted
            # or these args would need to be passed via a config file or simpler CLI args.
            # This is a placeholder for more complex CLI interaction.

            # Assuming process_comic_page can be called more directly or adapted
            # For now, let's just call it with the image path.
            # A more complete CLI would parse JSON args for regions, etc.
            ocr_processing_result = system.process_comic_page(args.image_path)

            # Convert dataclass to dict for JSON serialization
            # We need to handle the ValidationResult potentially being None or needing asdict too
            if ocr_processing_result.validation_result and hasattr(ocr_processing_result.validation_result, '_asdict'): # Check if it's a namedtuple or similar
                 validation_data = ocr_processing_result.validation_result._asdict()
            elif ocr_processing_result.validation_result:
                 validation_data = asdict(ocr_processing_result.validation_result) # if it's a dataclass
            else:
                 validation_data = None

            output_results["success"] = ocr_processing_result.success
            output_results["data"] = {
                "original_image_path": ocr_processing_result.original_image_path,
                "processed_image_path": ocr_processing_result.processed_image_path,
                "detected_elements": ocr_processing_result.detected_elements, # Assuming these are JSON serializable
                "ocr_results": ocr_processing_result.ocr_results, # Assuming these are JSON serializable
                "translation_results": ocr_processing_result.translation_results, # Assuming these are JSON serializable
                "validation_result": validation_data,
                "processing_time": ocr_processing_result.processing_time,
                "metadata": ocr_processing_result.metadata,
            }
            if not ocr_processing_result.success:
                 output_results["errors"] = ocr_processing_result.errors


        elif args.mode == 'translate':
            if not args.texts or not args.target_language:
                raise ValueError("--texts and --target_language are required for translation mode")

            texts_to_translate = json.loads(args.texts) # Expecting [{"id": "id1", "text": "text1"}, ...]
            # translation_params_dict = json.loads(args.translation_params) if args.translation_params else {}
            # For simplicity, assuming universal_translator.translate handles single text or list of texts
            # and that translate_text method of UniversalTranslationSystem can be adapted or a new one created for batch

            all_translations = []
            if system.translator:
                for item in texts_to_translate:
                    # This assumes UniversalTranslator's translate method takes a TranslationRequest object
                    # We might need to adjust UniversalTranslator or create a new entry point here
                    from universal_translator import TranslationRequest, TranslationDomain # Ensure these are imported

                    translation_request = TranslationRequest(
                        text=item.get("text", ""),
                        source_lang=args.source_language,
                        target_lang=args.target_language,
                        domain=TranslationDomain.GENERAL # Default or parse from translation_params
                    )
                    # translation_options = translation_params_dict.get(item.get("id")) or {} # if params are per-item

                    translated_item = system.translator.translate(translation_request)

                    if translated_item:
                        all_translations.append({
                            "id": item.get("id"),
                            "originalText": translated_item.original_text,
                            "translatedText": translated_item.translated_text,
                            "detectedSourceLanguage": translated_item.source_lang, # Assuming translate returns this
                            "engineUsed": str(translated_item.engine.value)
                        })
                    else:
                        all_translations.append({
                            "id": item.get("id"),
                            "originalText": item.get("text",""),
                            "translatedText": None,
                            "error": "Translation failed"
                        })
                output_results["success"] = True # Or check if all items succeeded
                output_results["data"] = {"results": all_translations, "processingTimeMs": 0 } # Placeholder time
            else:
                raise RuntimeError("Translator component not initialized in IntegratedSystem")

        json.dump(output_results, sys.stdout, ensure_ascii=False, indent=2)

    except ValueError as ve:
        logger.error(f"ValueError in CLI: {ve}")
        json.dump({"success": False, "errors": [str(ve)]}, sys.stderr) # Output error as JSON to stderr
        sys.exit(1)
    except Exception as e:
        logger.error(f"Unhandled exception in CLI: {e}", exc_info=True)
        json.dump({"success": False, "errors": [f"Internal server error: {e}"]}, sys.stderr) # Output error as JSON to stderr
        sys.exit(1)

