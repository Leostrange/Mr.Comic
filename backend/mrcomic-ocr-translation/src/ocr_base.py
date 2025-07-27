#!/usr/bin/env python3
"""
Базовый модуль OCR для Mr.Comic
Обеспечивает распознавание текста на изображениях комиксов
"""

import os
import cv2
import numpy as np
import pytesseract
from PIL import Image
import matplotlib.pyplot as plt
from typing import List, Dict, Tuple, Any, Optional

class ComicOCR:
    """
    Класс для распознавания текста на изображениях комиксов
    """
    
    def __init__(self, lang: str = 'rus+eng'):
        """
        Инициализация OCR-движка
        
        Args:
            lang: Языки для распознавания (по умолчанию русский + английский)
        """
        self.lang = lang
        # Проверка доступности Tesseract
        try:
            pytesseract.get_tesseract_version()
        except Exception as e:
            raise RuntimeError(f"Tesseract не установлен или не доступен: {e}")
    
    def preprocess_image(self, image: np.ndarray) -> np.ndarray:
        """
        Предобработка изображения для улучшения распознавания
        
        Args:
            image: Исходное изображение в формате numpy array
            
        Returns:
            Обработанное изображение
        """
        # Конвертация в оттенки серого
        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        
        # Бинаризация с адаптивным порогом
        binary = cv2.adaptiveThreshold(
            gray, 
            255, 
            cv2.ADAPTIVE_THRESH_GAUSSIAN_C, 
            cv2.THRESH_BINARY_INV, 
            11, 
            2
        )
        
        # Удаление шума
        kernel = np.ones((1, 1), np.uint8)
        opening = cv2.morphologyEx(binary, cv2.MORPH_OPEN, kernel)
        
        # Дилатация для соединения близких компонентов
        kernel = np.ones((2, 2), np.uint8)
        dilated = cv2.dilate(opening, kernel, iterations=1)
        
        return dilated
    
    def detect_text_regions(self, image: np.ndarray) -> List[Dict[str, Any]]:
        """
        Обнаружение областей с текстом на изображении
        
        Args:
            image: Исходное изображение
            
        Returns:
            Список областей с текстом (координаты и размеры)
        """
        # Предобработка изображения
        processed = self.preprocess_image(image)
        
        # Поиск контуров
        contours, _ = cv2.findContours(
            processed, 
            cv2.RETR_EXTERNAL, 
            cv2.CHAIN_APPROX_SIMPLE
        )
        
        # Фильтрация контуров по размеру
        min_area = 100  # Минимальная площадь области с текстом
        text_regions = []
        
        for contour in contours:
            x, y, w, h = cv2.boundingRect(contour)
            area = w * h
            
            if area > min_area:
                # Добавляем небольшой отступ вокруг области
                padding = 5
                x = max(0, x - padding)
                y = max(0, y - padding)
                w = min(image.shape[1] - x, w + 2 * padding)
                h = min(image.shape[0] - y, h + 2 * padding)
                
                text_regions.append({
                    'x': x,
                    'y': y,
                    'width': w,
                    'height': h,
                    'area': area
                })
        
        # Сортировка областей сверху вниз
        text_regions.sort(key=lambda r: r['y'])
        
        return text_regions
    
    def recognize_text(self, image: np.ndarray, region: Optional[Dict[str, Any]] = None) -> str:
        """
        Распознавание текста в указанной области изображения
        
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
        
        # Конвертация в формат PIL для pytesseract
        pil_img = Image.fromarray(cv2.cvtColor(roi, cv2.COLOR_BGR2RGB))
        
        # Распознавание текста
        config = r'--oem 3 --psm 6'  # Режим распознавания: построчный
        text = pytesseract.image_to_string(pil_img, lang=self.lang, config=config)
        
        return text.strip()
    
    def process_comic_page(self, image_path: str, output_dir: Optional[str] = None) -> Dict[str, Any]:
        """
        Обработка страницы комикса: обнаружение и распознавание текста
        
        Args:
            image_path: Путь к изображению
            output_dir: Директория для сохранения результатов (если указана)
            
        Returns:
            Словарь с результатами распознавания
        """
        # Загрузка изображения
        image = cv2.imread(image_path)
        if image is None:
            raise ValueError(f"Не удалось загрузить изображение: {image_path}")
        
        # Обнаружение областей с текстом
        text_regions = self.detect_text_regions(image)
        
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
            
            # Отрисовка областей с текстом
            for result in results:
                region = result['region']
                x, y, w, h = region['x'], region['y'], region['width'], region['height']
                cv2.rectangle(vis_image, (x, y), (x + w, y + h), (0, 255, 0), 2)
                cv2.putText(vis_image, f"#{result['region_id']}", (x, y - 5),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)
            
            # Сохранение визуализации
            base_name = os.path.splitext(os.path.basename(image_path))[0]
            vis_path = os.path.join(output_dir, f"{base_name}_ocr_vis.jpg")
            cv2.imwrite(vis_path, vis_image)
            
            # Сохранение текстовых результатов
            text_path = os.path.join(output_dir, f"{base_name}_ocr_text.txt")
            with open(text_path, 'w', encoding='utf-8') as f:
                for result in results:
                    f.write(f"Область #{result['region_id']}:\n")
                    f.write(f"{result['text']}\n\n")
        
        return {
            'image_path': image_path,
            'text_regions': len(text_regions),
            'recognized_regions': len(results),
            'results': results
        }


if __name__ == "__main__":
    # Пример использования
    import sys
    
    if len(sys.argv) < 2:
        print("Использование: python ocr_base.py <путь_к_изображению> [выходная_директория]")
        sys.exit(1)
    
    image_path = sys.argv[1]
    output_dir = sys.argv[2] if len(sys.argv) > 2 else None
    
    ocr = ComicOCR()
    try:
        results = ocr.process_comic_page(image_path, output_dir)
        print(f"Обнаружено областей с текстом: {results['text_regions']}")
        print(f"Успешно распознано: {results['recognized_regions']}")
        
        if not output_dir:
            # Вывод результатов в консоль
            for result in results['results']:
                print(f"\nОбласть #{result['region_id']}:")
                print(f"Координаты: x={result['region']['x']}, y={result['region']['y']}, "
                      f"ширина={result['region']['width']}, высота={result['region']['height']}")
                print(f"Текст: {result['text']}")
    except Exception as e:
        print(f"Ошибка при обработке изображения: {e}")
        sys.exit(1)
