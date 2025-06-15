"""
Revolutionary OCR System for Mr.Comic
Advanced OCR with multiple engine support and comic-specific optimizations
"""

import cv2
import numpy as np
from typing import List, Dict, Tuple, Optional, Any
from dataclasses import dataclass
from enum import Enum
import json
import base64
from PIL import Image, ImageEnhance
import requests

class OCREngine(Enum):
    TESSERACT = "tesseract"
    PADDLEOCR = "paddleocr"
    EASYOCR = "easyocr"
    TROCR = "trocr"

@dataclass
class TextRegion:
    x: int
    y: int
    width: int
    height: int
    text: str
    confidence: float
    language: str = "en"

@dataclass
class OCRConfig:
    engine: OCREngine
    language: str = "en"
    confidence_threshold: float = 0.5
    preprocessing: bool = True
    comic_mode: bool = True

class RevolutionaryOCRSystem:
    def __init__(self, config: OCRConfig):
        self.config = config
        self.engines = {}
        self._init_engines()
    
    def _init_engines(self):
        """Initialize OCR engines based on configuration"""
        try:
            if self.config.engine == OCREngine.TESSERACT:
                import pytesseract
                self.engines[OCREngine.TESSERACT] = pytesseract
            elif self.config.engine == OCREngine.PADDLEOCR:
                from paddleocr import PaddleOCR
                self.engines[OCREngine.PADDLEOCR] = PaddleOCR(use_angle_cls=True, lang=self.config.language)
            elif self.config.engine == OCREngine.EASYOCR:
                import easyocr
                self.engines[OCREngine.EASYOCR] = easyocr.Reader([self.config.language])
            elif self.config.engine == OCREngine.TROCR:
                # TrOCR via Hugging Face API
                self.engines[OCREngine.TROCR] = "huggingface_api"
        except ImportError as e:
            print(f"Failed to initialize {self.config.engine}: {e}")
    
    def preprocess_image(self, image: np.ndarray) -> np.ndarray:
        """Preprocess image for better OCR results"""
        if not self.config.preprocessing:
            return image
        
        # Convert to grayscale if needed
        if len(image.shape) == 3:
            gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        else:
            gray = image.copy()
        
        # Apply comic-specific preprocessing
        if self.config.comic_mode:
            # Enhance contrast for comic text
            clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8,8))
            gray = clahe.apply(gray)
            
            # Denoise
            gray = cv2.medianBlur(gray, 3)
            
            # Sharpen text
            kernel = np.array([[-1,-1,-1], [-1,9,-1], [-1,-1,-1]])
            gray = cv2.filter2D(gray, -1, kernel)
        
        # Adaptive thresholding
        binary = cv2.adaptiveThreshold(
            gray, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY, 11, 2
        )
        
        return binary
    
    def detect_text_bubbles(self, image: np.ndarray) -> List[Tuple[int, int, int, int]]:
        """Detect speech bubbles and text regions in comic images"""
        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY) if len(image.shape) == 3 else image
        
        # Find contours for speech bubbles
        edges = cv2.Canny(gray, 50, 150)
        contours, _ = cv2.findContours(edges, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        
        text_regions = []
        
        for contour in contours:
            # Filter contours by area and aspect ratio
            area = cv2.contourArea(contour)
            if area < 100:  # Too small
                continue
            
            x, y, w, h = cv2.boundingRect(contour)
            aspect_ratio = w / h
            
            # Typical speech bubble characteristics
            if 0.2 < aspect_ratio < 5.0 and area > 500:
                text_regions.append((x, y, w, h))
        
        # Also detect rectangular text regions using MSER
        mser = cv2.MSER_create()
        regions, _ = mser.detectRegions(gray)
        
        for region in regions:
            x, y, w, h = cv2.boundingRect(region)
            if w * h > 200 and 0.1 < w/h < 10:
                text_regions.append((x, y, w, h))
        
        # Remove overlapping regions
        text_regions = self._remove_overlapping_regions(text_regions)
        
        return text_regions
    
    def _remove_overlapping_regions(self, regions: List[Tuple[int, int, int, int]]) -> List[Tuple[int, int, int, int]]:
        """Remove overlapping text regions"""
        if not regions:
            return regions
        
        # Sort by area (largest first)
        regions = sorted(regions, key=lambda r: r[2] * r[3], reverse=True)
        
        filtered_regions = []
        
        for region in regions:
            x1, y1, w1, h1 = region
            
            # Check if this region overlaps significantly with any existing region
            overlaps = False
            for existing in filtered_regions:
                x2, y2, w2, h2 = existing
                
                # Calculate intersection
                ix1 = max(x1, x2)
                iy1 = max(y1, y2)
                ix2 = min(x1 + w1, x2 + w2)
                iy2 = min(y1 + h1, y2 + h2)
                
                if ix1 < ix2 and iy1 < iy2:
                    intersection_area = (ix2 - ix1) * (iy2 - iy1)
                    region_area = w1 * h1
                    
                    if intersection_area / region_area > 0.5:  # 50% overlap threshold
                        overlaps = True
                        break
            
            if not overlaps:
                filtered_regions.append(region)
        
        return filtered_regions
    
    def extract_text_tesseract(self, image: np.ndarray) -> List[TextRegion]:
        """Extract text using Tesseract OCR"""
        import pytesseract
        
        processed_image = self.preprocess_image(image)
        
        # Get detailed OCR data
        data = pytesseract.image_to_data(
            processed_image, 
            lang=self.config.language,
            config=\'--psm 6\',
            output_type=pytesseract.Output.DICT
        )
        
        text_regions = []
        
        for i in range(len(data[\'text\'])):
            confidence = float(data[\'conf\'][i])
            text = data[\'text\'][i].strip()
            
            if confidence > self.config.confidence_threshold and text:
                x = data[\'left\'][i]
                y = data[\'top\'][i]
                w = data[\'width\'][i]
                h = data[\'height\'][i]
                
                text_regions.append(TextRegion(
                    x=x, y=y, width=w, height=h,
                    text=text, confidence=confidence/100.0,
                    language=self.config.language
                ))
        
        return text_regions
    
    def extract_text_paddleocr(self, image: np.ndarray) -> List[TextRegion]:
        """Extract text using PaddleOCR"""
        ocr = self.engines[OCREngine.PADDLEOCR]
        
        # PaddleOCR expects RGB format
        if len(image.shape) == 3:
            rgb_image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
        else:
            rgb_image = cv2.cvtColor(image, cv2.COLOR_GRAY2RGB)
        
        results = ocr.ocr(rgb_image, cls=True)
        
        text_regions = []
        
        if results and results[0]:
            for result in results[0]:
                points = result[0]
                text_info = result[1]
                text = text_info[0]
                confidence = text_info[1]
                
                if confidence > self.config.confidence_threshold:
                    # Calculate bounding box from points
                    x_coords = [p[0] for p in points]
                    y_coords = [p[1] for p in points]
                    
                    x = int(min(x_coords))
                    y = int(min(y_coords))
                    w = int(max(x_coords) - x)
                    h = int(max(y_coords) - y)
                    
                    text_regions.append(TextRegion(
                        x=x, y=y, width=w, height=h,
                        text=text, confidence=confidence,
                        language=self.config.language
                    ))
        
        return text_regions
    
    def extract_text_easyocr(self, image: np.ndarray) -> List[TextRegion]:
        """Extract text using EasyOCR"""
        reader = self.engines[OCREngine.EASYOCR]
        
        results = reader.readtext(image)
        
        text_regions = []
        
        for result in results:
            points = result[0]
            text = result[1]
            confidence = result[2]
            
            if confidence > self.config.confidence_threshold:
                # Calculate bounding box from points
                x_coords = [p[0] for p in points]
                y_coords = [p[1] for p in points]
                
                x = int(min(x_coords))
                y = int(min(y_coords))
                w = int(max(x_coords) - x)
                h = int(max(y_coords) - y)
                
                text_regions.append(TextRegion(
                    x=x, y=y, width=w, height=h,
                    text=text, confidence=confidence,
                    language=self.config.language
                ))
        
        return text_regions
    
    def extract_text_trocr(self, image: np.ndarray, api_key: str) -> List[TextRegion]:
        """Extract text using TrOCR via Hugging Face API"""
        # Convert image to base64
        _, buffer = cv2.imencode(\".jpg\", image)
        image_base64 = base64.b64encode(buffer).decode(\'utf-8\')
        
        # TrOCR API call
        headers = {\"Authorization\": f\"Bearer {api_key}\"}
        
        # Use Microsoft\'s TrOCR model
        url = \"https://api-inference.huggingface.co/models/microsoft/trocr-base-printed\"
        
        response = requests.post(
            url,
            headers=headers,
            json={\"inputs\": image_base64}
        )
        
        text_regions = []
        
        if response.status_code == 200:
            result = response.json()
            if isinstance(result, list) and result:
                text = result[0].get(\'generated_text\', \'\')
                
                if text.strip():
                    # Since TrOCR doesn\'t provide coordinates, use full image
                    h, w = image.shape[:2]
                    text_regions.append(TextRegion(
                        x=0, y=0, width=w, height=h,
                        text=text, confidence=0.8,  # Default confidence
                        language=self.config.language
                    ))
        
        return text_regions
    
    def extract_text(self, image: np.ndarray, api_key: Optional[str] = None) -> List[TextRegion]:
        """Extract text using configured OCR engine"""
        if self.config.engine == OCREngine.TESSERACT:
            return self.extract_text_tesseract(image)
        elif self.config.engine == OCREngine.PADDLEOCR:
            return self.extract_text_paddleocr(image)
        elif self.config.engine == OCREngine.EASYOCR:
            return self.extract_text_easyocr(image)
        elif self.config.engine == OCREngine.TROCR:
            if not api_key:
                raise ValueError("API key required for TrOCR")
            return self.extract_text_trocr(image, api_key)
        else:
            raise ValueError(f"Unsupported OCR engine: {self.config.engine}")
    
    def process_comic_page(self, image: np.ndarray, api_key: Optional[str] = None) -> List[TextRegion]:
        """Process a complete comic page with bubble detection and OCR"""
        # First detect text bubbles
        bubble_regions = self.detect_text_bubbles(image)
        
        all_text_regions = []
        
        if bubble_regions:
            # Process each detected bubble
            for x, y, w, h in bubble_regions:
                # Extract bubble region
                bubble_image = image[y:y+h, x:x+w]
                
                # Run OCR on bubble
                text_regions = self.extract_text(bubble_image, api_key)
                
                # Adjust coordinates to full image
                for region in text_regions:
                    region.x += x
                    region.y += y
                    all_text_regions.append(region)
        else:
            # No bubbles detected, process entire image
            all_text_regions = self.extract_text(image, api_key)
        
        return all_text_regions
    
    def get_engine_info(self) -> Dict[str, Any]:
        """Get information about available OCR engines"""
        info = {
            "current_engine": self.config.engine.value,
            "available_engines": [],
            "supported_languages": []
        }
        
        # Check which engines are available
        engines_to_check = [
            (OCREngine.TESSERACT, "pytesseract"),
            (OCREngine.PADDLEOCR, "paddleocr"),
            (OCREngine.EASYOCR, "easyocr"),
            (OCREngine.TROCR, "requests")  # TrOCR only needs requests
        ]
        
        for engine, module_name in engines_to_check:
            try:
                __import__(module_name)
                info["available_engines"].append(engine.value)
            except ImportError:
                pass
        
        # Add supported languages (simplified list)
        info["supported_languages"] = [
            "en", "es", "fr", "de", "it", "pt", "ru", "ja", "ko", "zh"
        ]
        
        return info

