#!/usr/bin/env python3
"""
Улучшенный модуль OCR для Mr.Comic
Обеспечивает оптимизированное распознавание текста на изображениях комиксов
с улучшенной предобработкой и поддержкой словарей
"""

import os
import cv2
import numpy as np
import pytesseract
from PIL import Image
import matplotlib.pyplot as plt
from typing import List, Dict, Tuple, Any, Optional
import json
import re
import logging
from pathlib import Path

# Настройка логирования
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger('ComicOCR')

class ComicOCREnhanced:
    """
    Улучшенный класс для распознавания текста на изображениях комиксов
    с оптимизированной предобработкой и поддержкой словарей
    """
    
    def __init__(self, lang: str = 'rus+eng', config: Optional[Dict[str, Any]] = None):
        """
        Инициализация улучшенного OCR-движка
        
        Args:
            lang: Языки для распознавания (по умолчанию русский + английский)
            config: Дополнительные параметры конфигурации
        """
        self.lang = lang
        self.config = config or {}
        
        # Настройки предобработки по умолчанию
        self.preprocessing_config = {
            'denoise_strength': self.config.get('denoise_strength', 10),
            'adaptive_threshold_block_size': self.config.get('adaptive_threshold_block_size', 11),
            'adaptive_threshold_c': self.config.get('adaptive_threshold_c', 2),
            'min_text_area': self.config.get('min_text_area', 100),
            'text_region_padding': self.config.get('text_region_padding', 5),
            'apply_contrast_enhancement': self.config.get('apply_contrast_enhancement', True),
            'apply_sharpening': self.config.get('apply_sharpening', True),
            'apply_deskewing': self.config.get('apply_deskewing', True),
            'bubble_detection': self.config.get('bubble_detection', True)
        }
        
        # Загрузка словарей специфических терминов комиксов
        self.dictionaries = {}
        self._load_dictionaries()
        
        # Проверка доступности Tesseract
        try:
            pytesseract.get_tesseract_version()
            logger.info(f"Tesseract версии {pytesseract.get_tesseract_version()} успешно инициализирован")
        except Exception as e:
            logger.error(f"Tesseract не установлен или не доступен: {e}")
            raise RuntimeError(f"Tesseract не установлен или не доступен: {e}")
    
    def _load_dictionaries(self):
        """
        Загрузка словарей специфических терминов комиксов
        """
        # Определяем пути к словарям
        dict_path = self.config.get('dictionary_path', os.path.join(
            os.path.dirname(os.path.abspath(__file__)), 
            'dictionaries'
        ))
        
        # Создаем директорию для словарей, если она не существует
        os.makedirs(dict_path, exist_ok=True)
        
        # Пытаемся загрузить существующие словари
        for dict_file in ['comic_terms.json', 'manga_terms.json', 'sound_effects.json']:
            dict_file_path = os.path.join(dict_path, dict_file)
            
            # Если словарь не существует, создаем базовый шаблон
            if not os.path.exists(dict_file_path):
                dict_name = os.path.splitext(dict_file)[0]
                self._create_default_dictionary(dict_file_path, dict_name)
            
            # Загружаем словарь
            try:
                with open(dict_file_path, 'r', encoding='utf-8') as f:
                    self.dictionaries[dict_file] = json.load(f)
                logger.info(f"Загружен словарь: {dict_file}")
            except Exception as e:
                logger.warning(f"Не удалось загрузить словарь {dict_file}: {e}")
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
                "POW": "удар",
                "BOOM": "бум",
                "CRASH": "крушение",
                "WHAM": "бам",
                "ZAP": "зап",
                "KAPOW": "капоу",
                "SPLAT": "шлеп",
                "THUD": "бух",
                "WHACK": "хрясь",
                "SLAM": "хлоп"
            }
        elif dict_name == 'manga_terms':
            default_dict = {
                "SENSEI": "учитель",
                "SENPAI": "старший",
                "KOHAI": "младший",
                "NAKAMA": "товарищ",
                "BAKA": "дурак",
                "NANI": "что",
                "SUGOI": "круто",
                "KAWAII": "милый",
                "KATANA": "катана",
                "SHINOBI": "ниндзя"
            }
        elif dict_name == 'sound_effects':
            default_dict = {
                "WHOOSH": "вжух",
                "BANG": "бах",
                "CLICK": "клик",
                "CRUNCH": "хрусть",
                "DRIP": "кап",
                "FIZZ": "шшш",
                "HISS": "шшш",
                "KNOCK": "тук",
                "RING": "дзынь",
                "SPLASH": "плюх"
            }
        
        # Сохраняем словарь
        try:
            with open(file_path, 'w', encoding='utf-8') as f:
                json.dump(default_dict, f, ensure_ascii=False, indent=4)
            logger.info(f"Создан базовый словарь: {dict_name}")
        except Exception as e:
            logger.error(f"Не удалось создать словарь {dict_name}: {e}")
    
    def enhance_contrast(self, image: np.ndarray) -> np.ndarray:
        """
        Улучшение контраста изображения
        
        Args:
            image: Исходное изображение
            
        Returns:
            Изображение с улучшенным контрастом
        """
        # Преобразование в LAB цветовое пространство
        lab = cv2.cvtColor(image, cv2.COLOR_BGR2LAB)
        
        # Разделение на каналы
        l, a, b = cv2.split(lab)
        
        # Применение CLAHE к L-каналу
        clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8, 8))
        cl = clahe.apply(l)
        
        # Объединение каналов
        limg = cv2.merge((cl, a, b))
        
        # Преобразование обратно в BGR
        enhanced = cv2.cvtColor(limg, cv2.COLOR_LAB2BGR)
        
        return enhanced
    
    def sharpen_image(self, image: np.ndarray) -> np.ndarray:
        """
        Повышение резкости изображения
        
        Args:
            image: Исходное изображение
            
        Returns:
            Изображение с повышенной резкостью
        """
        # Создание ядра для повышения резкости
        kernel = np.array([[-1, -1, -1],
                           [-1,  9, -1],
                           [-1, -1, -1]])
        
        # Применение фильтра
        sharpened = cv2.filter2D(image, -1, kernel)
        
        return sharpened
    
    def deskew_image(self, image: np.ndarray) -> np.ndarray:
        """
        Исправление наклона текста
        
        Args:
            image: Исходное изображение
            
        Returns:
            Изображение с исправленным наклоном
        """
        # Преобразование в оттенки серого
        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        
        # Бинаризация
        thresh = cv2.threshold(gray, 0, 255, cv2.THRESH_BINARY_INV + cv2.THRESH_OTSU)[1]
        
        # Определение угла наклона
        coords = np.column_stack(np.where(thresh > 0))
        angle = cv2.minAreaRect(coords)[-1]
        
        # Корректировка угла
        if angle < -45:
            angle = -(90 + angle)
        else:
            angle = -angle
        
        # Если угол слишком мал, не выполняем поворот
        if abs(angle) < 0.5:
            return image
        
        # Получение размеров изображения
        (h, w) = image.shape[:2]
        center = (w // 2, h // 2)
        
        # Матрица поворота
        M = cv2.getRotationMatrix2D(center, angle, 1.0)
        
        # Поворот изображения
        rotated = cv2.warpAffine(image, M, (w, h), flags=cv2.INTER_CUBIC, borderMode=cv2.BORDER_REPLICATE)
        
        return rotated
    
    def detect_speech_bubbles(self, image: np.ndarray) -> List[Dict[str, Any]]:
        """
        Обнаружение пузырей диалогов на изображении
        
        Args:
            image: Исходное изображение
            
        Returns:
            Список областей с пузырями диалогов
        """
        # Преобразование в оттенки серого
        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        
        # Размытие для уменьшения шума
        blurred = cv2.GaussianBlur(gray, (5, 5), 0)
        
        # Бинаризация
        thresh = cv2.threshold(blurred, 230, 255, cv2.THRESH_BINARY)[1]
        
        # Морфологические операции для улучшения контуров
        kernel = np.ones((5, 5), np.uint8)
        closing = cv2.morphologyEx(thresh, cv2.MORPH_CLOSE, kernel, iterations=2)
        
        # Поиск контуров
        contours, _ = cv2.findContours(closing, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        
        # Фильтрация контуров
        bubbles = []
        for contour in contours:
            # Вычисление площади контура
            area = cv2.contourArea(contour)
            
            # Фильтрация по площади
            if area > 1000:
                # Получение ограничивающего прямоугольника
                x, y, w, h = cv2.boundingRect(contour)
                
                # Вычисление соотношения сторон
                aspect_ratio = w / float(h)
                
                # Фильтрация по соотношению сторон
                if 0.5 <= aspect_ratio <= 2.5:
                    # Вычисление округлости
                    perimeter = cv2.arcLength(contour, True)
                    circularity = 4 * np.pi * area / (perimeter * perimeter)
                    
                    # Фильтрация по округлости
                    if circularity > 0.6:
                        bubbles.append({
                            'x': x,
                            'y': y,
                            'width': w,
                            'height': h,
                            'area': area,
                            'circularity': circularity,
                            'contour': contour
                        })
        
        return bubbles
    
    def preprocess_image(self, image: np.ndarray) -> np.ndarray:
        """
        Улучшенная предобработка изображения для повышения точности распознавания
        
        Args:
            image: Исходное изображение в формате numpy array
            
        Returns:
            Обработанное изображение
        """
        # Копия изображения для обработки
        processed = image.copy()
        
        # Улучшение контраста
        if self.preprocessing_config['apply_contrast_enhancement']:
            processed = self.enhance_contrast(processed)
        
        # Повышение резкости
        if self.preprocessing_config['apply_sharpening']:
            processed = self.sharpen_image(processed)
        
        # Исправление наклона
        if self.preprocessing_config['apply_deskewing']:
            processed = self.deskew_image(processed)
        
        # Конвертация в оттенки серого
        gray = cv2.cvtColor(processed, cv2.COLOR_BGR2GRAY)
        
        # Удаление шума
        denoised = cv2.fastNlMeansDenoising(
            gray, 
            None, 
            h=self.preprocessing_config['denoise_strength'], 
            templateWindowSize=7, 
            searchWindowSize=21
        )
        
        # Бинаризация с адаптивным порогом
        binary = cv2.adaptiveThreshold(
            denoised, 
            255, 
            cv2.ADAPTIVE_THRESH_GAUSSIAN_C, 
            cv2.THRESH_BINARY_INV, 
            self.preprocessing_config['adaptive_threshold_block_size'], 
            self.preprocessing_config['adaptive_threshold_c']
        )
        
        # Морфологические операции для улучшения текста
        kernel = np.ones((1, 1), np.uint8)
        opening = cv2.morphologyEx(binary, cv2.MORPH_OPEN, kernel)
        
        # Дилатация для соединения близких компонентов
        kernel = np.ones((2, 2), np.uint8)
        dilated = cv2.dilate(opening, kernel, iterations=1)
        
        return dilated
    
    def detect_text_regions(self, image: np.ndarray) -> List[Dict[str, Any]]:
        """
        Улучшенное обнаружение областей с текстом на изображении
        
        Args:
            image: Исходное изображение
            
        Returns:
            Список областей с текстом (координаты и размеры)
        """
        # Предобработка изображения
        processed = self.preprocess_image(image)
        
        # Обнаружение пузырей диалогов, если включено
        bubbles = []
        if self.preprocessing_config['bubble_detection']:
            bubbles = self.detect_speech_bubbles(image)
        
        # Поиск контуров текста
        contours, _ = cv2.findContours(
            processed, 
            cv2.RETR_EXTERNAL, 
            cv2.CHAIN_APPROX_SIMPLE
        )
        
        # Фильтрация контуров по размеру
        min_area = self.preprocessing_config['min_text_area']
        text_regions = []
        
        for contour in contours:
            x, y, w, h = cv2.boundingRect(contour)
            area = w * h
            
            if area > min_area:
                # Добавляем отступ вокруг области
                padding = self.preprocessing_config['text_region_padding']
                x = max(0, x - padding)
                y = max(0, y - padding)
                w = min(image.shape[1] - x, w + 2 * padding)
                h = min(image.shape[0] - y, h + 2 * padding)
                
                # Проверяем, находится ли область внутри пузыря диалога
                in_bubble = False
                bubble_id = None
                
                for i, bubble in enumerate(bubbles):
                    bx, by, bw, bh = bubble['x'], bubble['y'], bubble['width'], bubble['height']
                    
                    # Если центр текстовой области находится внутри пузыря
                    text_center_x = x + w // 2
                    text_center_y = y + h // 2
                    
                    if (bx <= text_center_x <= bx + bw) and (by <= text_center_y <= by + bh):
                        in_bubble = True
                        bubble_id = i
                        break
                
                text_regions.append({
                    'x': x,
                    'y': y,
                    'width': w,
                    'height': h,
                    'area': area,
                    'in_bubble': in_bubble,
                    'bubble_id': bubble_id
                })
        
        # Объединение перекрывающихся областей
        text_regions = self._merge_overlapping_regions(text_regions)
        
        # Сортировка областей сверху вниз и слева направо
        text_regions.sort(key=lambda r: (r['y'], r['x']))
        
        return text_regions
    
    def _merge_overlapping_regions(self, regions: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
        """
        Объединение перекрывающихся областей текста
        
        Args:
            regions: Список областей с текстом
            
        Returns:
            Список объединенных областей
        """
        if not regions:
            return []
        
        # Сортировка по координате y
        sorted_regions = sorted(regions, key=lambda r: r['y'])
        
        merged_regions = []
        current_region = sorted_regions[0]
        
        for region in sorted_regions[1:]:
            # Проверка перекрытия
            current_bottom = current_region['y'] + current_region['height']
            current_right = current_region['x'] + current_region['width']
            
            # Если области перекрываются по вертикали и горизонтали
            if (region['y'] <= current_bottom and 
                current_region['y'] <= region['y'] + region['height'] and
                region['x'] <= current_right and
                current_region['x'] <= region['x'] + region['width']):
                
                # Объединение областей
                x1 = min(current_region['x'], region['x'])
                y1 = min(current_region['y'], region['y'])
                x2 = max(current_region['x'] + current_region['width'], region['x'] + region['width'])
                y2 = max(current_region['y'] + current_region['height'], region['y'] + region['height'])
                
                current_region = {
                    'x': x1,
                    'y': y1,
                    'width': x2 - x1,
                    'height': y2 - y1,
                    'area': (x2 - x1) * (y2 - y1),
                    'in_bubble': current_region['in_bubble'] or region['in_bubble'],
                    'bubble_id': current_region['bubble_id'] if current_region['in_bubble'] else region['bubble_id']
                }
            else:
                merged_regions.append(current_region)
                current_region = region
        
        # Добавление последней области
        merged_regions.append(current_region)
        
        return merged_regions
    
    def recognize_text(self, image: np.ndarray, region: Optional[Dict[str, Any]] = None) -> str:
        """
        Улучшенное распознавание текста в указанной области изображения
        
        Args:
            image: Исходное изображение
            region: Область для распознавания (если None, используется всё изображение)
            
        Returns:
            Распознанный текст
        """
        if region:
            x, y, w, h = region['x'], region['y'], region['width'], region['height']
            roi = image[y:y+h, x:x+w]
        else:
            roi = image
        
        # Применение предобработки к области
        processed_roi = roi.copy()
        
        # Улучшение контраста
        if self.preprocessing_config['apply_contrast_enhancement']:
            processed_roi = self.enhance_contrast(processed_roi)
        
        # Повышение резкости
        if self.preprocessing_config['apply_sharpening']:
            processed_roi = self.sharpen_image(processed_roi)
        
        # Конвертация в формат PIL для pytesseract
        pil_img = Image.fromarray(cv2.cvtColor(processed_roi, cv2.COLOR_BGR2RGB))
        
        # Настройка параметров распознавания в зависимости от типа области
        config = r'--oem 3'  # Использование LSTM OCR Engine
        
        if region and region.get('in_bubble'):
            # Для текста в пузырях диалогов
            config += ' --psm 6'  # Предполагаем, что это единый блок текста
        else:
            # Для остального текста
            config += ' --psm 7'  # Предполагаем, что это одна строка текста
        
        # Распознавание текста
        text = pytesseract.image_to_string(pil_img, lang=self.lang, config=config)
        
        # Постобработка текста
        text = self._postprocess_text(text, region)
        
        return text.strip()
    
    def _postprocess_text(self, text: str, region: Optional[Dict[str, Any]] = None) -> str:
        """
        Постобработка распознанного текста
        
        Args:
            text: Распознанный текст
            region: Область, из которой был распознан текст
            
        Returns:
            Обработанный текст
        """
        if not text:
            return text
        
        # Удаление лишних пробелов
        text = re.sub(r'\s+', ' ', text)
        
        # Удаление лишних переносов строк
        text = re.sub(r'\n+', '\n', text)
        
        # Замена специфических терминов комиксов
        for dict_file, terms in self.dictionaries.items():
            for term, replacement in terms.items():
                # Поиск термина с учетом регистра
                pattern = re.compile(re.escape(term), re.IGNORECASE)
                text = pattern.sub(replacement, text)
        
        # Исправление типичных ошибок OCR
        text = text.replace('|', 'I')
        text = text.replace('1', 'I')
        text = text.replace('0', 'O')
        text = text.replace('5', 'S')
        
        return text
    
    def process_comic_page(self, image_path: str, output_dir: Optional[str] = None) -> Dict[str, Any]:
        """
        Улучшенная обработка страницы комикса: обнаружение и распознавание текста
        
        Args:
            image_path: Путь к изображению
            output_dir: Директория для сохранения результатов (если указана)
            
        Returns:
            Словарь с результатами распознавания
        """
        # Загрузка изображения
        image = cv2.imread(image_path)
        if image is None:
            logger.error(f"Не удалось загрузить изображение: {image_path}")
            raise ValueError(f"Не удалось загрузить изображение: {image_path}")
        
        # Обнаружение областей с текстом
        text_regions = self.detect_text_regions(image)
        
        # Обнаружение пузырей диалогов, если включено
        bubbles = []
        if self.preprocessing_config['bubble_detection']:
            bubbles = self.detect_speech_bubbles(image)
        
        # Распознавание текста в каждой области
        results = []
        for i, region in enumerate(text_regions):
            text = self.recognize_text(image, region)
            if text:  # Пропускаем пустые результаты
                results.append({
                    'region': region,
                    'text': text,
                    'region_id': i + 1
                })
        
        # Сохранение результатов визуализации, если указана директория
        if output_dir:
            os.makedirs(output_dir, exist_ok=True)
            
            # Копия изображения для визуализации
            vis_image = image.copy()
            
            # Отрисовка пузырей диалогов
            for i, bubble in enumerate(bubbles):
                x, y, w, h = bubble['x'], bubble['y'], bubble['width'], bubble['height']
                cv2.rectangle(vis_image, (x, y), (x + w, y + h), (0, 0, 255), 2)
                cv2.putText(vis_image, f"B{i+1}", (x, y - 5),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 2)
            
            # Отрисовка областей с текстом
            for result in results:
                region = result['region']
                x, y, w, h = region['x'], region['y'], region['width'], region['height']
                
                # Разные цвета для областей в пузырях и вне их
                color = (0, 255, 0) if not region['in_bubble'] else (255, 0, 255)
                
                cv2.rectangle(vis_image, (x, y), (x + w, y + h), color, 2)
                cv2.putText(vis_image, f"#{result['region_id']}", (x, y - 5),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 2)
            
            # Сохранение визуализации
            base_name = os.path.splitext(os.path.basename(image_path))[0]
            vis_path = os.path.join(output_dir, f"{base_name}_ocr_vis.jpg")
            cv2.imwrite(vis_path, vis_image)
            
            # Сохранение текстовых результатов
            text_path = os.path.join(output_dir, f"{base_name}_ocr_text.txt")
            with open(text_path, 'w', encoding='utf-8') as f:
                for result in results:
                    region_type = "в пузыре" if result['region']['in_bubble'] else "вне пузыря"
                    f.write(f"Область #{result['region_id']} ({region_type}):\n")
                    f.write(f"{result['text']}\n\n")
        
        return {
            'image_path': image_path,
            'text_regions': len(text_regions),
            'recognized_regions': len(results),
            'bubbles': len(bubbles),
            'results': results
        }


if __name__ == "__main__":
    # Пример использования
    import sys
    import time
    
    if len(sys.argv) < 2:
        print("Использование: python ocr_enhanced.py <путь_к_изображению> [выходная_директория]")
        sys.exit(1)
    
    image_path = sys.argv[1]
    output_dir = sys.argv[2] if len(sys.argv) > 2 else None
    
    # Конфигурация для улучшенного OCR
    config = {
        'denoise_strength': 10,
        'adaptive_threshold_block_size': 11,
        'adaptive_threshold_c': 2,
        'min_text_area': 100,
        'text_region_padding': 5,
        'apply_contrast_enhancement': True,
        'apply_sharpening': True,
        'apply_deskewing': True,
        'bubble_detection': True
    }
    
    ocr = ComicOCREnhanced(config=config)
    
    try:
        # Замер времени выполнения
        start_time = time.time()
        
        results = ocr.process_comic_page(image_path, output_dir)
        
        end_time = time.time()
        processing_time = end_time - start_time
        
        print(f"Обнаружено областей с текстом: {results['text_regions']}")
        print(f"Обнаружено пузырей диалогов: {results['bubbles']}")
        print(f"Успешно распознано: {results['recognized_regions']}")
        print(f"Время обработки: {processing_time:.2f} секунд")
        
        if not output_dir:
            # Вывод результатов в консоль
            for result in results['results']:
                region_type = "в пузыре" if result['region']['in_bubble'] else "вне пузыря"
                print(f"\nОбласть #{result['region_id']} ({region_type}):")
                print(f"Координаты: x={result['region']['x']}, y={result['region']['y']}, "
                      f"ширина={result['region']['width']}, высота={result['region']['height']}")
                print(f"Текст: {result['text']}")
    except Exception as e:
        print(f"Ошибка при обработке изображения: {e}")
        sys.exit(1)
