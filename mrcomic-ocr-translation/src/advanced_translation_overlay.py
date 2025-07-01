#!/usr/bin/env python3
"""
Продвинутая система наложения переводов для Mr.Comic
Автоматически размещает переводы в облачках речи с сохранением стиля
"""

import cv2
import numpy as np
from PIL import Image, ImageDraw, ImageFont, ImageFilter
import logging
from typing import List, Dict, Tuple, Any, Optional, Union
from dataclasses import dataclass
from enum import Enum
import json
import math
from pathlib import Path
import time
import colorsys

# Настройка логирования
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger('TranslationOverlay')

class TextAlignment(Enum):
    """Выравнивание текста"""
    LEFT = "left"
    CENTER = "center"
    RIGHT = "right"
    JUSTIFY = "justify"

class FontStyle(Enum):
    """Стили шрифта"""
    NORMAL = "normal"
    BOLD = "bold"
    ITALIC = "italic"
    BOLD_ITALIC = "bold_italic"

@dataclass
class TextStyle:
    """Стиль текста"""
    font_family: str = "Arial"
    font_size: int = 12
    font_style: FontStyle = FontStyle.NORMAL
    color: Tuple[int, int, int] = (0, 0, 0)
    outline_color: Optional[Tuple[int, int, int]] = None
    outline_width: int = 0
    shadow_color: Optional[Tuple[int, int, int]] = None
    shadow_offset: Tuple[int, int] = (2, 2)
    shadow_blur: int = 0
    alignment: TextAlignment = TextAlignment.CENTER
    line_spacing: float = 1.2
    letter_spacing: int = 0

@dataclass
class BubbleRegion:
    """Область облачка для размещения текста"""
    bbox: Tuple[int, int, int, int]  # x, y, width, height
    contour: np.ndarray
    center: Tuple[int, int]
    area: float
    shape_type: str  # 'ellipse', 'rectangle', 'irregular'
    rotation_angle: float = 0.0
    margin: int = 5

@dataclass
class TranslationPlacement:
    """Размещение перевода"""
    text: str
    region: BubbleRegion
    style: TextStyle
    lines: List[str]
    line_positions: List[Tuple[int, int]]
    confidence: float
    metadata: Dict[str, Any]

class AdvancedTranslationOverlay:
    """
    Продвинутая система наложения переводов
    """
    
    def __init__(self, config: Optional[Dict[str, Any]] = None):
        """
        Инициализация системы наложения переводов
        
        Args:
            config: Конфигурация системы
        """
        self.config = config or {}
        
        # Настройки по умолчанию
        self.default_config = {
            'default_font_family': 'Arial',
            'min_font_size': 8,
            'max_font_size': 48,
            'font_size_step': 1,
            'text_margin': 5,
            'line_spacing': 1.2,
            'max_lines': 10,
            'text_fit_tolerance': 0.95,
            'background_removal_enabled': True,
            'inpainting_enabled': True,
            'style_preservation_enabled': True,
            'auto_font_selection': True,
            'color_analysis_enabled': True,
            'shadow_detection_enabled': True,
            'outline_detection_enabled': True
        }
        
        # Объединение конфигураций
        self.config = {**self.default_config, **self.config}
        
        # Инициализация компонентов
        self.available_fonts = self._load_available_fonts()
        self.font_cache = {}
        
        logger.info("Продвинутая система наложения переводов инициализирована")
    
    def _load_available_fonts(self) -> List[str]:
        """Загрузка доступных шрифтов"""
        # Базовые шрифты, которые обычно доступны
        fonts = [
            'Arial',
            'Arial Bold',
            'Arial Italic',
            'Arial Black',
            'Times New Roman',
            'Times New Roman Bold',
            'Courier New',
            'Helvetica',
            'Comic Sans MS',
            'Impact',
            'Verdana'
        ]
        
        # Попытка найти дополнительные шрифты в системе
        try:
            import matplotlib.font_manager as fm
            system_fonts = [f.name for f in fm.fontManager.ttflist]
            fonts.extend(system_fonts[:20])  # Добавляем первые 20 системных шрифтов
        except ImportError:
            logger.warning("matplotlib недоступен, используются только базовые шрифты")
        
        # Удаление дубликатов
        fonts = list(dict.fromkeys(fonts))
        
        logger.info(f"Загружено {len(fonts)} шрифтов")
        return fonts
    
    def _get_font(self, font_family: str, font_size: int, font_style: FontStyle) -> ImageFont.ImageFont:
        """
        Получение шрифта с кэшированием
        
        Args:
            font_family: Семейство шрифта
            font_size: Размер шрифта
            font_style: Стиль шрифта
            
        Returns:
            Объект шрифта PIL
        """
        cache_key = f"{font_family}_{font_size}_{font_style.value}"
        
        if cache_key in self.font_cache:
            return self.font_cache[cache_key]
        
        try:
            # Попытка загрузить системный шрифт
            if font_style == FontStyle.BOLD:
                font_path = f"{font_family} Bold"
            elif font_style == FontStyle.ITALIC:
                font_path = f"{font_family} Italic"
            elif font_style == FontStyle.BOLD_ITALIC:
                font_path = f"{font_family} Bold Italic"
            else:
                font_path = font_family
            
            font = ImageFont.truetype(font_path, font_size)
            
        except (OSError, IOError):
            # Fallback на стандартный шрифт
            try:
                font = ImageFont.load_default()
            except:
                # Последний fallback
                font = ImageFont.load_default()
        
        self.font_cache[cache_key] = font
        return font
    
    def analyze_original_text_style(self, image: np.ndarray, region: BubbleRegion) -> TextStyle:
        """
        Анализ стиля оригинального текста
        
        Args:
            image: Исходное изображение
            region: Область с текстом
            
        Returns:
            Определенный стиль текста
        """
        x, y, w, h = region.bbox
        roi = image[y:y+h, x:x+w]
        
        # Анализ цвета текста
        text_color = self._analyze_text_color(roi)
        
        # Анализ размера шрифта
        font_size = self._estimate_font_size(roi)
        
        # Анализ наличия обводки
        outline_color, outline_width = self._detect_outline(roi)
        
        # Анализ тени
        shadow_color, shadow_offset = self._detect_shadow(roi)
        
        # Определение выравнивания
        alignment = self._detect_text_alignment(roi)
        
        style = TextStyle(
            font_family=self.config['default_font_family'],
            font_size=font_size,
            font_style=FontStyle.NORMAL,
            color=text_color,
            outline_color=outline_color,
            outline_width=outline_width,
            shadow_color=shadow_color,
            shadow_offset=shadow_offset,
            alignment=alignment,
            line_spacing=self.config['line_spacing']
        )
        
        return style
    
    def _analyze_text_color(self, roi: np.ndarray) -> Tuple[int, int, int]:
        """Анализ цвета текста"""
        # Конвертация в оттенки серого
        if len(roi.shape) == 3:
            gray = cv2.cvtColor(roi, cv2.COLOR_BGR2GRAY)
        else:
            gray = roi
        
        # Бинаризация для выделения текста
        _, binary = cv2.threshold(gray, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
        
        # Определение, что является текстом (темные или светлые области)
        dark_pixels = np.sum(binary == 0)
        light_pixels = np.sum(binary == 255)
        
        if dark_pixels < light_pixels:
            # Текст темный на светлом фоне
            return (0, 0, 0)
        else:
            # Текст светлый на темном фоне
            return (255, 255, 255)
    
    def _estimate_font_size(self, roi: np.ndarray) -> int:
        """Оценка размера шрифта"""
        height = roi.shape[0]
        
        # Простая эвристика: размер шрифта примерно равен высоте области / количество строк
        # Предполагаем 1-3 строки текста
        estimated_lines = max(1, height // 20)
        font_size = max(self.config['min_font_size'], 
                       min(self.config['max_font_size'], 
                           height // estimated_lines))
        
        return font_size
    
    def _detect_outline(self, roi: np.ndarray) -> Tuple[Optional[Tuple[int, int, int]], int]:
        """Детекция обводки текста"""
        if not self.config['outline_detection_enabled']:
            return None, 0
        
        # Простая детекция обводки через анализ градиентов
        if len(roi.shape) == 3:
            gray = cv2.cvtColor(roi, cv2.COLOR_BGR2GRAY)
        else:
            gray = roi
        
        # Детекция границ
        edges = cv2.Canny(gray, 50, 150)
        edge_density = np.sum(edges > 0) / edges.size
        
        if edge_density > 0.1:  # Высокая плотность границ может указывать на обводку
            return (255, 255, 255), 1  # Белая обводка по умолчанию
        
        return None, 0
    
    def _detect_shadow(self, roi: np.ndarray) -> Tuple[Optional[Tuple[int, int, int]], Tuple[int, int]]:
        """Детекция тени текста"""
        if not self.config['shadow_detection_enabled']:
            return None, (0, 0)
        
        # Простая детекция тени (заглушка)
        # В реальной реализации здесь был бы более сложный анализ
        return (128, 128, 128), (2, 2)
    
    def _detect_text_alignment(self, roi: np.ndarray) -> TextAlignment:
        """Определение выравнивания текста"""
        # Простая эвристика на основе распределения пикселей
        if len(roi.shape) == 3:
            gray = cv2.cvtColor(roi, cv2.COLOR_BGR2GRAY)
        else:
            gray = roi
        
        # Анализ распределения текста по горизонтали
        horizontal_projection = np.sum(gray < 128, axis=0)
        
        # Поиск центра масс
        if np.sum(horizontal_projection) > 0:
            center_of_mass = np.average(range(len(horizontal_projection)), 
                                      weights=horizontal_projection)
            image_center = len(horizontal_projection) / 2
            
            if abs(center_of_mass - image_center) < len(horizontal_projection) * 0.1:
                return TextAlignment.CENTER
            elif center_of_mass < image_center:
                return TextAlignment.LEFT
            else:
                return TextAlignment.RIGHT
        
        return TextAlignment.CENTER
    
    def remove_original_text(self, image: np.ndarray, region: BubbleRegion) -> np.ndarray:
        """
        Удаление оригинального текста с восстановлением фона
        
        Args:
            image: Исходное изображение
            region: Область с текстом
            
        Returns:
            Изображение с удаленным текстом
        """
        if not self.config['background_removal_enabled']:
            return image
        
        result = image.copy()
        x, y, w, h = region.bbox
        
        # Создание маски для текстовой области
        mask = np.zeros((h, w), dtype=np.uint8)
        
        # Заполнение маски на основе контура
        contour_local = region.contour.copy()
        contour_local[:, :, 0] -= x
        contour_local[:, :, 1] -= y
        cv2.fillPoly(mask, [contour_local], 255)
        
        # Извлечение области изображения
        roi = result[y:y+h, x:x+w]
        
        if self.config['inpainting_enabled']:
            # Использование inpainting для восстановления фона
            try:
                inpainted = cv2.inpaint(roi, mask, 3, cv2.INPAINT_TELEA)
                result[y:y+h, x:x+w] = inpainted
            except Exception as e:
                logger.warning(f"Ошибка inpainting: {e}, используется простое размытие")
                self._simple_background_fill(result, region)
        else:
            self._simple_background_fill(result, region)
        
        return result
    
    def _simple_background_fill(self, image: np.ndarray, region: BubbleRegion):
        """Простое заполнение фона"""
        x, y, w, h = region.bbox
        
        # Анализ цвета фона по краям области
        roi = image[y:y+h, x:x+w]
        
        # Получение цвета фона из углов
        corners = [
            roi[0, 0],
            roi[0, -1],
            roi[-1, 0],
            roi[-1, -1]
        ]
        
        # Средний цвет углов как цвет фона
        bg_color = np.mean(corners, axis=0).astype(np.uint8)
        
        # Создание маски и заполнение
        mask = np.zeros((h, w), dtype=np.uint8)
        contour_local = region.contour.copy()
        contour_local[:, :, 0] -= x
        contour_local[:, :, 1] -= y
        cv2.fillPoly(mask, [contour_local], 255)
        
        # Заполнение области фоновым цветом
        roi[mask > 0] = bg_color
    
    def calculate_optimal_font_size(self, text: str, region: BubbleRegion, style: TextStyle) -> int:
        """
        Вычисление оптимального размера шрифта
        
        Args:
            text: Текст для размещения
            region: Область размещения
            style: Стиль текста
            
        Returns:
            Оптимальный размер шрифта
        """
        available_width = region.bbox[2] - 2 * self.config['text_margin']
        available_height = region.bbox[3] - 2 * self.config['text_margin']
        
        # Бинарный поиск оптимального размера
        min_size = self.config['min_font_size']
        max_size = self.config['max_font_size']
        optimal_size = min_size
        
        while min_size <= max_size:
            test_size = (min_size + max_size) // 2
            test_style = TextStyle(
                font_family=style.font_family,
                font_size=test_size,
                font_style=style.font_style,
                line_spacing=style.line_spacing
            )
            
            lines, total_width, total_height = self._calculate_text_layout(text, test_style)
            
            if (total_width <= available_width * self.config['text_fit_tolerance'] and 
                total_height <= available_height * self.config['text_fit_tolerance'] and
                len(lines) <= self.config['max_lines']):
                optimal_size = test_size
                min_size = test_size + 1
            else:
                max_size = test_size - 1
        
        return optimal_size
    
    def _calculate_text_layout(self, text: str, style: TextStyle) -> Tuple[List[str], int, int]:
        """
        Вычисление разметки текста
        
        Args:
            text: Текст
            style: Стиль текста
            
        Returns:
            Кортеж (строки, общая ширина, общая высота)
        """
        font = self._get_font(style.font_family, style.font_size, style.font_style)
        
        # Разбивка текста на слова
        words = text.split()
        lines = []
        current_line = ""
        
        max_width = 0
        
        for word in words:
            test_line = current_line + (" " if current_line else "") + word
            
            # Измерение ширины строки
            bbox = font.getbbox(test_line)
            line_width = bbox[2] - bbox[0]
            
            # Если строка помещается, добавляем слово
            if not current_line or line_width <= 200:  # Примерная максимальная ширина
                current_line = test_line
                max_width = max(max_width, line_width)
            else:
                # Начинаем новую строку
                if current_line:
                    lines.append(current_line)
                current_line = word
                bbox = font.getbbox(word)
                max_width = max(max_width, bbox[2] - bbox[0])
        
        if current_line:
            lines.append(current_line)
        
        # Вычисление общей высоты
        if lines:
            bbox = font.getbbox("Ay")  # Тестовая строка для измерения высоты
            line_height = bbox[3] - bbox[1]
            total_height = len(lines) * line_height * style.line_spacing
        else:
            total_height = 0
        
        return lines, max_width, int(total_height)
    
    def calculate_text_positions(self, lines: List[str], region: BubbleRegion, style: TextStyle) -> List[Tuple[int, int]]:
        """
        Вычисление позиций строк текста
        
        Args:
            lines: Строки текста
            region: Область размещения
            style: Стиль текста
            
        Returns:
            Список позиций для каждой строки
        """
        font = self._get_font(style.font_family, style.font_size, style.font_style)
        positions = []
        
        # Базовые параметры
        bbox = font.getbbox("Ay")
        line_height = bbox[3] - bbox[1]
        total_height = len(lines) * line_height * style.line_spacing
        
        # Начальная позиция Y (центрирование по вертикали)
        start_y = region.center[1] - total_height // 2
        
        for i, line in enumerate(lines):
            # Позиция Y для текущей строки
            y = start_y + i * line_height * style.line_spacing
            
            # Позиция X в зависимости от выравнивания
            line_bbox = font.getbbox(line)
            line_width = line_bbox[2] - line_bbox[0]
            
            if style.alignment == TextAlignment.CENTER:
                x = region.center[0] - line_width // 2
            elif style.alignment == TextAlignment.LEFT:
                x = region.bbox[0] + self.config['text_margin']
            elif style.alignment == TextAlignment.RIGHT:
                x = region.bbox[0] + region.bbox[2] - line_width - self.config['text_margin']
            else:  # JUSTIFY
                x = region.center[0] - line_width // 2
            
            positions.append((int(x), int(y)))
        
        return positions
    
    def draw_text_with_effects(self, image: np.ndarray, text: str, position: Tuple[int, int], style: TextStyle) -> np.ndarray:
        """
        Отрисовка текста с эффектами
        
        Args:
            image: Изображение
            text: Текст
            position: Позиция текста
            style: Стиль текста
            
        Returns:
            Изображение с нарисованным текстом
        """
        # Конвертация в PIL для работы с текстом
        pil_image = Image.fromarray(cv2.cvtColor(image, cv2.COLOR_BGR2RGB))
        draw = ImageDraw.Draw(pil_image)
        
        font = self._get_font(style.font_family, style.font_size, style.font_style)
        x, y = position
        
        # Отрисовка тени
        if style.shadow_color:
            shadow_x = x + style.shadow_offset[0]
            shadow_y = y + style.shadow_offset[1]
            
            if style.shadow_blur > 0:
                # Создание размытой тени (упрощенная версия)
                shadow_img = Image.new('RGBA', pil_image.size, (0, 0, 0, 0))
                shadow_draw = ImageDraw.Draw(shadow_img)
                shadow_draw.text((shadow_x, shadow_y), text, font=font, fill=style.shadow_color)
                shadow_img = shadow_img.filter(ImageFilter.GaussianBlur(style.shadow_blur))
                pil_image = Image.alpha_composite(pil_image.convert('RGBA'), shadow_img).convert('RGB')
            else:
                draw.text((shadow_x, shadow_y), text, font=font, fill=style.shadow_color)
        
        # Отрисовка обводки
        if style.outline_color and style.outline_width > 0:
            for dx in range(-style.outline_width, style.outline_width + 1):
                for dy in range(-style.outline_width, style.outline_width + 1):
                    if dx != 0 or dy != 0:
                        draw.text((x + dx, y + dy), text, font=font, fill=style.outline_color)
        
        # Отрисовка основного текста
        draw.text((x, y), text, font=font, fill=style.color)
        
        # Конвертация обратно в OpenCV
        result = cv2.cvtColor(np.array(pil_image), cv2.COLOR_RGB2BGR)
        return result
    
    def create_translation_placement(self, text: str, region: BubbleRegion, original_image: np.ndarray) -> TranslationPlacement:
        """
        Создание размещения перевода
        
        Args:
            text: Текст перевода
            region: Область размещения
            original_image: Оригинальное изображение
            
        Returns:
            Объект размещения перевода
        """
        # Анализ стиля оригинального текста
        style = self.analyze_original_text_style(original_image, region)
        
        # Вычисление оптимального размера шрифта
        optimal_font_size = self.calculate_optimal_font_size(text, region, style)
        style.font_size = optimal_font_size
        
        # Разбивка текста на строки
        lines, total_width, total_height = self._calculate_text_layout(text, style)
        
        # Вычисление позиций строк
        line_positions = self.calculate_text_positions(lines, region, style)
        
        # Оценка качества размещения
        confidence = self._evaluate_placement_quality(text, region, style, lines)
        
        placement = TranslationPlacement(
            text=text,
            region=region,
            style=style,
            lines=lines,
            line_positions=line_positions,
            confidence=confidence,
            metadata={
                'total_width': total_width,
                'total_height': total_height,
                'font_size': optimal_font_size,
                'line_count': len(lines)
            }
        )
        
        return placement
    
    def _evaluate_placement_quality(self, text: str, region: BubbleRegion, style: TextStyle, lines: List[str]) -> float:
        """Оценка качества размещения"""
        score = 1.0
        
        # Штраф за слишком много строк
        if len(lines) > 3:
            score -= 0.1 * (len(lines) - 3)
        
        # Штраф за слишком маленький шрифт
        if style.font_size < 10:
            score -= 0.2
        
        # Штраф за слишком большой шрифт
        if style.font_size > 24:
            score -= 0.1
        
        # Бонус за хорошее соотношение текста и области
        text_area = len(text) * style.font_size * style.font_size * 0.5
        region_area = region.area
        if region_area > 0:
            ratio = text_area / region_area
            if 0.1 <= ratio <= 0.5:
                score += 0.1
        
        return max(0.0, min(1.0, score))
    
    def apply_translation_overlay(self, image: np.ndarray, placements: List[TranslationPlacement]) -> np.ndarray:
        """
        Применение наложения переводов
        
        Args:
            image: Исходное изображение
            placements: Список размещений переводов
            
        Returns:
            Изображение с наложенными переводами
        """
        result = image.copy()
        
        # Сортировка размещений по уверенности (лучшие первыми)
        sorted_placements = sorted(placements, key=lambda p: p.confidence, reverse=True)
        
        for placement in sorted_placements:
            # Удаление оригинального текста
            result = self.remove_original_text(result, placement.region)
            
            # Отрисовка перевода
            for line, position in zip(placement.lines, placement.line_positions):
                result = self.draw_text_with_effects(result, line, position, placement.style)
        
        return result
    
    def process_comic_page(self, image: np.ndarray, translations: List[Dict[str, Any]]) -> np.ndarray:
        """
        Обработка страницы комикса с переводами
        
        Args:
            image: Изображение страницы
            translations: Список переводов с информацией о регионах
            
        Returns:
            Обработанное изображение
        """
        placements = []
        
        for translation_data in translations:
            # Создание региона из данных
            bbox = translation_data.get('bbox', (0, 0, 100, 100))
            contour = translation_data.get('contour', np.array([[[bbox[0], bbox[1]], 
                                                               [bbox[0] + bbox[2], bbox[1]], 
                                                               [bbox[0] + bbox[2], bbox[1] + bbox[3]], 
                                                               [bbox[0], bbox[1] + bbox[3]]]]))
            
            region = BubbleRegion(
                bbox=bbox,
                contour=contour,
                center=(bbox[0] + bbox[2] // 2, bbox[1] + bbox[3] // 2),
                area=bbox[2] * bbox[3],
                shape_type='rectangle'
            )
            
            # Создание размещения
            text = translation_data.get('translated_text', '')
            if text:
                placement = self.create_translation_placement(text, region, image)
                placements.append(placement)
        
        # Применение всех размещений
        result = self.apply_translation_overlay(image, placements)
        
        logger.info(f"Обработана страница с {len(placements)} переводами")
        return result


def main():
    """Тестирование системы наложения переводов"""
    try:
        # Инициализация системы
        overlay_system = AdvancedTranslationOverlay()
        
        print("Продвинутая система наложения переводов готова к работе!")
        print("Возможности:")
        print("  - Автоматическое удаление оригинального текста")
        print("  - Восстановление фона (inpainting)")
        print("  - Анализ стиля оригинального текста")
        print("  - Автоматический подбор размера шрифта")
        print("  - Сохранение эффектов (тени, обводка)")
        print("  - Адаптивное размещение в облачках")
        print("  - Поддержка различных выравниваний")
        
        # Информация о доступных шрифтах
        print(f"\nДоступно шрифтов: {len(overlay_system.available_fonts)}")
        print("Первые 5 шрифтов:", overlay_system.available_fonts[:5])
        
    except Exception as e:
        logger.error(f"Ошибка инициализации: {e}")
        raise


if __name__ == "__main__":
    main()

