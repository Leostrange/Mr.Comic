#!/usr/bin/env python3
"""
Продвинутая система детекции элементов комиксов для Mr.Comic
Распознает и анализирует различные элементы страниц комиксов
"""

import cv2
import numpy as np
from PIL import Image
import logging
from typing import List, Dict, Tuple, Any, Optional, Union
from dataclasses import dataclass
from enum import Enum
import json
import math
from pathlib import Path
import time

# Настройка логирования
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger('ComicElementDetector')

class ElementType(Enum):
    """Типы элементов комиксов"""
    SPEECH_BUBBLE = "speech_bubble"
    THOUGHT_BUBBLE = "thought_bubble"
    SCREAM_BUBBLE = "scream_bubble"
    SOUND_EFFECT = "sound_effect"
    CAPTION = "caption"
    PANEL = "panel"
    CHARACTER = "character"
    BACKGROUND = "background"
    BORDER = "border"

class EmotionType(Enum):
    """Типы эмоций"""
    NEUTRAL = "neutral"
    HAPPY = "happy"
    ANGRY = "angry"
    SAD = "sad"
    SURPRISED = "surprised"
    FEAR = "fear"
    EXCITED = "excited"

@dataclass
class DetectedElement:
    """Обнаруженный элемент комикса"""
    element_type: ElementType
    bbox: Tuple[int, int, int, int]  # x, y, width, height
    confidence: float
    contour: np.ndarray
    area: float
    center: Tuple[int, int]
    metadata: Dict[str, Any]
    emotion: Optional[EmotionType] = None
    character_id: Optional[str] = None
    text_region: bool = False

@dataclass
class PanelInfo:
    """Информация о панели комикса"""
    bbox: Tuple[int, int, int, int]
    reading_order: int
    panel_type: str  # 'rectangular', 'circular', 'irregular'
    elements: List[DetectedElement]
    characters: List[str]
    dominant_emotion: Optional[EmotionType] = None

@dataclass
class PageLayout:
    """Макет страницы комикса"""
    panels: List[PanelInfo]
    reading_direction: str  # 'ltr', 'rtl', 'ttb'
    page_type: str  # 'manga', 'western', 'webtoon'
    composition_style: str
    dominant_colors: List[Tuple[int, int, int]]

class AdvancedElementDetector:
    """
    Продвинутая система детекции элементов комиксов
    """
    
    def __init__(self, config: Optional[Dict[str, Any]] = None):
        """
        Инициализация детектора элементов
        
        Args:
            config: Конфигурация детектора
        """
        self.config = config or {}
        
        # Настройки по умолчанию
        self.default_config = {
            'min_bubble_area': 500,
            'max_bubble_area': 50000,
            'min_panel_area': 5000,
            'bubble_circularity_threshold': 0.4,
            'panel_rectangularity_threshold': 0.7,
            'contour_approximation_epsilon': 0.02,
            'gaussian_blur_kernel': (5, 5),
            'morphology_kernel_size': (3, 3),
            'canny_low_threshold': 50,
            'canny_high_threshold': 150,
            'enable_emotion_detection': True,
            'enable_character_detection': True,
            'enable_sound_effect_detection': True
        }
        
        # Объединение конфигураций
        self.config = {**self.default_config, **self.config}
        
        # Инициализация классификаторов
        self._initialize_classifiers()
        
        logger.info("Продвинутый детектор элементов инициализирован")
    
    def _initialize_classifiers(self):
        """Инициализация классификаторов для различных элементов"""
        # Заглушки для будущих ML моделей
        self.bubble_classifier = None
        self.emotion_classifier = None
        self.character_detector = None
        self.sound_effect_detector = None
        
        logger.info("Классификаторы инициализированы (базовые алгоритмы)")
    
    def preprocess_image(self, image: np.ndarray) -> Dict[str, np.ndarray]:
        """
        Предобработка изображения для детекции элементов
        
        Args:
            image: Исходное изображение
            
        Returns:
            Словарь с обработанными версиями изображения
        """
        # Конвертация в оттенки серого
        if len(image.shape) == 3:
            gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        else:
            gray = image.copy()
        
        # Размытие для уменьшения шума
        blurred = cv2.GaussianBlur(gray, self.config['gaussian_blur_kernel'], 0)
        
        # Бинаризация с адаптивным порогом
        binary = cv2.adaptiveThreshold(
            blurred, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, 
            cv2.THRESH_BINARY, 11, 2
        )
        
        # Инверсия для работы с контурами
        binary_inv = cv2.bitwise_not(binary)
        
        # Детекция границ
        edges = cv2.Canny(
            blurred, 
            self.config['canny_low_threshold'], 
            self.config['canny_high_threshold']
        )
        
        # Морфологические операции
        kernel = np.ones(self.config['morphology_kernel_size'], np.uint8)
        morphed = cv2.morphologyEx(binary_inv, cv2.MORPH_CLOSE, kernel)
        
        return {
            'original': image,
            'gray': gray,
            'blurred': blurred,
            'binary': binary,
            'binary_inv': binary_inv,
            'edges': edges,
            'morphed': morphed
        }
    
    def detect_speech_bubbles(self, processed_images: Dict[str, np.ndarray]) -> List[DetectedElement]:
        """
        Детекция речевых облачков
        
        Args:
            processed_images: Предобработанные изображения
            
        Returns:
            Список обнаруженных речевых облачков
        """
        bubbles = []
        
        # Поиск контуров на бинарном изображении
        contours, _ = cv2.findContours(
            processed_images['morphed'], 
            cv2.RETR_EXTERNAL, 
            cv2.CHAIN_APPROX_SIMPLE
        )
        
        for contour in contours:
            area = cv2.contourArea(contour)
            
            # Фильтрация по размеру
            if (self.config['min_bubble_area'] <= area <= self.config['max_bubble_area']):
                # Вычисление характеристик контура
                perimeter = cv2.arcLength(contour, True)
                if perimeter == 0:
                    continue
                    
                circularity = 4 * np.pi * area / (perimeter * perimeter)
                
                # Проверка на округлость (характерно для речевых облачков)
                if circularity >= self.config['bubble_circularity_threshold']:
                    # Получение ограничивающего прямоугольника
                    x, y, w, h = cv2.boundingRect(contour)
                    
                    # Вычисление центра
                    center = (x + w // 2, y + h // 2)
                    
                    # Определение типа облачка
                    bubble_type = self._classify_bubble_type(contour, processed_images)
                    
                    bubble = DetectedElement(
                        element_type=bubble_type,
                        bbox=(x, y, w, h),
                        confidence=min(circularity * 2, 1.0),  # Нормализация уверенности
                        contour=contour,
                        area=area,
                        center=center,
                        text_region=True,
                        metadata={
                            'circularity': circularity,
                            'perimeter': perimeter,
                            'aspect_ratio': w / h if h > 0 else 0
                        }
                    )
                    
                    bubbles.append(bubble)
        
        logger.info(f"Обнаружено {len(bubbles)} речевых облачков")
        return bubbles
    
    def _classify_bubble_type(self, contour: np.ndarray, processed_images: Dict[str, np.ndarray]) -> ElementType:
        """
        Классификация типа облачка
        
        Args:
            contour: Контур облачка
            processed_images: Предобработанные изображения
            
        Returns:
            Тип элемента
        """
        # Анализ формы контура
        hull = cv2.convexHull(contour)
        hull_area = cv2.contourArea(hull)
        contour_area = cv2.contourArea(contour)
        
        if hull_area > 0:
            solidity = contour_area / hull_area
        else:
            solidity = 0
        
        # Аппроксимация контура
        epsilon = self.config['contour_approximation_epsilon'] * cv2.arcLength(contour, True)
        approx = cv2.approxPolyDP(contour, epsilon, True)
        
        # Классификация на основе характеристик
        if solidity > 0.95 and len(approx) > 8:
            return ElementType.SPEECH_BUBBLE
        elif solidity < 0.8:
            return ElementType.THOUGHT_BUBBLE
        elif len(approx) < 6:
            return ElementType.SCREAM_BUBBLE
        else:
            return ElementType.SPEECH_BUBBLE
    
    def detect_panels(self, processed_images: Dict[str, np.ndarray]) -> List[DetectedElement]:
        """
        Детекция панелей комикса
        
        Args:
            processed_images: Предобработанные изображения
            
        Returns:
            Список обнаруженных панелей
        """
        panels = []
        
        # Поиск контуров на изображении с границами
        contours, _ = cv2.findContours(
            processed_images['edges'], 
            cv2.RETR_EXTERNAL, 
            cv2.CHAIN_APPROX_SIMPLE
        )
        
        for contour in contours:
            area = cv2.contourArea(contour)
            
            # Фильтрация по размеру (панели обычно большие)
            if area >= self.config['min_panel_area']:
                # Аппроксимация контура
                epsilon = 0.02 * cv2.arcLength(contour, True)
                approx = cv2.approxPolyDP(contour, epsilon, True)
                
                # Получение ограничивающего прямоугольника
                x, y, w, h = cv2.boundingRect(contour)
                rect_area = w * h
                
                # Проверка прямоугольности
                rectangularity = area / rect_area if rect_area > 0 else 0
                
                if rectangularity >= self.config['panel_rectangularity_threshold']:
                    center = (x + w // 2, y + h // 2)
                    
                    panel = DetectedElement(
                        element_type=ElementType.PANEL,
                        bbox=(x, y, w, h),
                        confidence=rectangularity,
                        contour=contour,
                        area=area,
                        center=center,
                        text_region=False,
                        metadata={
                            'rectangularity': rectangularity,
                            'vertices': len(approx),
                            'aspect_ratio': w / h if h > 0 else 0
                        }
                    )
                    
                    panels.append(panel)
        
        logger.info(f"Обнаружено {len(panels)} панелей")
        return panels
    
    def detect_sound_effects(self, processed_images: Dict[str, np.ndarray]) -> List[DetectedElement]:
        """
        Детекция звуковых эффектов
        
        Args:
            processed_images: Предобработанные изображения
            
        Returns:
            Список обнаруженных звуковых эффектов
        """
        if not self.config['enable_sound_effect_detection']:
            return []
        
        sound_effects = []
        
        # Поиск текстовых областей с необычными характеристиками
        contours, _ = cv2.findContours(
            processed_images['binary_inv'], 
            cv2.RETR_EXTERNAL, 
            cv2.CHAIN_APPROX_SIMPLE
        )
        
        for contour in contours:
            area = cv2.contourArea(contour)
            
            # Звуковые эффекты обычно имеют средний размер
            if 200 <= area <= 5000:
                x, y, w, h = cv2.boundingRect(contour)
                aspect_ratio = w / h if h > 0 else 0
                
                # Звуковые эффекты часто имеют вытянутую форму
                if 0.3 <= aspect_ratio <= 3.0:
                    center = (x + w // 2, y + h // 2)
                    
                    # Анализ плотности пикселей (звуковые эффекты часто жирные)
                    roi = processed_images['binary_inv'][y:y+h, x:x+w]
                    density = np.sum(roi > 0) / (w * h) if w * h > 0 else 0
                    
                    if density > 0.3:  # Высокая плотность текста
                        sound_effect = DetectedElement(
                            element_type=ElementType.SOUND_EFFECT,
                            bbox=(x, y, w, h),
                            confidence=density,
                            contour=contour,
                            area=area,
                            center=center,
                            text_region=True,
                            metadata={
                                'density': density,
                                'aspect_ratio': aspect_ratio
                            }
                        )
                        
                        sound_effects.append(sound_effect)
        
        logger.info(f"Обнаружено {len(sound_effects)} звуковых эффектов")
        return sound_effects
    
    def detect_characters(self, processed_images: Dict[str, np.ndarray]) -> List[DetectedElement]:
        """
        Детекция персонажей (базовая реализация)
        
        Args:
            processed_images: Предобработанные изображения
            
        Returns:
            Список обнаруженных персонажей
        """
        if not self.config['enable_character_detection']:
            return []
        
        characters = []
        
        # Базовая детекция на основе больших связных компонентов
        # В будущем здесь будет ML модель для детекции персонажей
        
        # Инверсия изображения для поиска темных областей (персонажи)
        inverted = cv2.bitwise_not(processed_images['gray'])
        
        # Пороговая обработка
        _, thresh = cv2.threshold(inverted, 100, 255, cv2.THRESH_BINARY)
        
        # Поиск контуров
        contours, _ = cv2.findContours(thresh, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        
        for contour in contours:
            area = cv2.contourArea(contour)
            
            # Персонажи обычно занимают значительную площадь
            if area >= 10000:
                x, y, w, h = cv2.boundingRect(contour)
                aspect_ratio = w / h if h > 0 else 0
                
                # Персонажи обычно имеют вертикальную ориентацию
                if 0.3 <= aspect_ratio <= 2.0:
                    center = (x + w // 2, y + h // 2)
                    
                    character = DetectedElement(
                        element_type=ElementType.CHARACTER,
                        bbox=(x, y, w, h),
                        confidence=0.5,  # Базовая уверенность
                        contour=contour,
                        area=area,
                        center=center,
                        text_region=False,
                        metadata={
                            'aspect_ratio': aspect_ratio,
                            'estimated_height': h
                        }
                    )
                    
                    characters.append(character)
        
        logger.info(f"Обнаружено {len(characters)} персонажей (базовая детекция)")
        return characters
    
    def analyze_reading_order(self, panels: List[DetectedElement], page_type: str = 'western') -> List[DetectedElement]:
        """
        Анализ порядка чтения панелей
        
        Args:
            panels: Список панелей
            page_type: Тип страницы ('western', 'manga', 'webtoon')
            
        Returns:
            Панели, отсортированные по порядку чтения
        """
        if not panels:
            return panels
        
        # Сортировка в зависимости от типа страницы
        if page_type == 'manga':
            # Справа налево, сверху вниз
            sorted_panels = sorted(panels, key=lambda p: (p.bbox[1], -p.bbox[0]))
        elif page_type == 'webtoon':
            # Сверху вниз
            sorted_panels = sorted(panels, key=lambda p: p.bbox[1])
        else:  # western
            # Слева направо, сверху вниз
            sorted_panels = sorted(panels, key=lambda p: (p.bbox[1], p.bbox[0]))
        
        # Добавление номера порядка чтения в метаданные
        for i, panel in enumerate(sorted_panels):
            panel.metadata['reading_order'] = i + 1
        
        return sorted_panels
    
    def detect_emotions(self, elements: List[DetectedElement], processed_images: Dict[str, np.ndarray]) -> List[DetectedElement]:
        """
        Детекция эмоций в элементах (базовая реализация)
        
        Args:
            elements: Список элементов
            processed_images: Предобработанные изображения
            
        Returns:
            Элементы с добавленной информацией об эмоциях
        """
        if not self.config['enable_emotion_detection']:
            return elements
        
        # Базовая детекция эмоций на основе формы облачков
        for element in elements:
            if element.element_type in [ElementType.SPEECH_BUBBLE, ElementType.THOUGHT_BUBBLE, ElementType.SCREAM_BUBBLE]:
                # Анализ формы для определения эмоции
                if element.element_type == ElementType.SCREAM_BUBBLE:
                    element.emotion = EmotionType.ANGRY
                elif element.metadata.get('circularity', 0) > 0.8:
                    element.emotion = EmotionType.HAPPY
                else:
                    element.emotion = EmotionType.NEUTRAL
        
        return elements
    
    def group_elements_by_context(self, elements: List[DetectedElement]) -> Dict[str, List[DetectedElement]]:
        """
        Группировка элементов по контексту
        
        Args:
            elements: Список элементов
            
        Returns:
            Словарь с группами элементов
        """
        groups = {
            'dialogues': [],
            'narration': [],
            'sound_effects': [],
            'panels': [],
            'characters': []
        }
        
        for element in elements:
            if element.element_type in [ElementType.SPEECH_BUBBLE, ElementType.THOUGHT_BUBBLE]:
                groups['dialogues'].append(element)
            elif element.element_type == ElementType.CAPTION:
                groups['narration'].append(element)
            elif element.element_type == ElementType.SOUND_EFFECT:
                groups['sound_effects'].append(element)
            elif element.element_type == ElementType.PANEL:
                groups['panels'].append(element)
            elif element.element_type == ElementType.CHARACTER:
                groups['characters'].append(element)
        
        return groups
    
    def analyze_page_composition(self, elements: List[DetectedElement], image_shape: Tuple[int, int]) -> Dict[str, Any]:
        """
        Анализ композиции страницы
        
        Args:
            elements: Список элементов
            image_shape: Размеры изображения (height, width)
            
        Returns:
            Информация о композиции страницы
        """
        height, width = image_shape[:2]
        
        # Группировка элементов
        groups = self.group_elements_by_context(elements)
        
        # Анализ распределения элементов
        panel_count = len(groups['panels'])
        dialogue_count = len(groups['dialogues'])
        
        # Определение типа страницы
        if panel_count == 1 and height > width * 2:
            page_type = 'webtoon'
        elif panel_count > 6:
            page_type = 'manga'
        else:
            page_type = 'western'
        
        # Анализ плотности элементов
        total_element_area = sum(element.area for element in elements)
        page_area = width * height
        density = total_element_area / page_area if page_area > 0 else 0
        
        composition = {
            'page_type': page_type,
            'panel_count': panel_count,
            'dialogue_count': dialogue_count,
            'sound_effect_count': len(groups['sound_effects']),
            'character_count': len(groups['characters']),
            'element_density': density,
            'dominant_layout': 'grid' if panel_count > 4 else 'free-form',
            'reading_complexity': 'simple' if panel_count <= 4 else 'complex'
        }
        
        return composition
    
    def detect_all_elements(self, image: Union[np.ndarray, str, Path]) -> Dict[str, Any]:
        """
        Комплексная детекция всех элементов страницы
        
        Args:
            image: Изображение (массив numpy, путь к файлу или Path объект)
            
        Returns:
            Словарь с результатами детекции
        """
        start_time = time.time()
        
        # Загрузка изображения если передан путь
        if isinstance(image, (str, Path)):
            image = cv2.imread(str(image))
            if image is None:
                raise ValueError(f"Не удалось загрузить изображение: {image}")
        
        logger.info(f"Начало детекции элементов для изображения {image.shape}")
        
        # Предобработка изображения
        processed_images = self.preprocess_image(image)
        
        # Детекция различных элементов
        speech_bubbles = self.detect_speech_bubbles(processed_images)
        panels = self.detect_panels(processed_images)
        sound_effects = self.detect_sound_effects(processed_images)
        characters = self.detect_characters(processed_images)
        
        # Объединение всех элементов
        all_elements = speech_bubbles + panels + sound_effects + characters
        
        # Анализ эмоций
        all_elements = self.detect_emotions(all_elements, processed_images)
        
        # Анализ порядка чтения панелей
        sorted_panels = self.analyze_reading_order(panels)
        
        # Анализ композиции страницы
        composition = self.analyze_page_composition(all_elements, image.shape)
        
        # Группировка элементов
        element_groups = self.group_elements_by_context(all_elements)
        
        processing_time = time.time() - start_time
        
        results = {
            'elements': all_elements,
            'element_groups': element_groups,
            'panels': sorted_panels,
            'composition': composition,
            'statistics': {
                'total_elements': len(all_elements),
                'speech_bubbles': len(speech_bubbles),
                'panels': len(panels),
                'sound_effects': len(sound_effects),
                'characters': len(characters),
                'processing_time': processing_time
            },
            'metadata': {
                'image_shape': image.shape,
                'detection_timestamp': time.time(),
                'detector_version': '1.0.0'
            }
        }
        
        logger.info(f"Детекция завершена за {processing_time:.2f}с: {len(all_elements)} элементов")
        
        return results


def main():
    """Тестирование системы детекции элементов"""
    try:
        # Инициализация детектора
        detector = AdvancedElementDetector()
        
        print("Продвинутая система детекции элементов готова к работе!")
        print("Поддерживаемые элементы:")
        print("  - Речевые облачки")
        print("  - Мыслительные пузыри")
        print("  - Звуковые эффекты")
        print("  - Панели комиксов")
        print("  - Персонажи (базовая детекция)")
        print("  - Анализ композиции страницы")
        print("  - Определение порядка чтения")
        
    except Exception as e:
        logger.error(f"Ошибка инициализации: {e}")
        raise


if __name__ == "__main__":
    main()

