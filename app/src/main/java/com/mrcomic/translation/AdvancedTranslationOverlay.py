"""
Advanced Translation Overlay System for Mr.Comic
Provides translation overlay functionality with multiple provider support
"""

import requests
import json
from typing import Dict, List, Optional, Tuple
from dataclasses import dataclass
from enum import Enum

class TranslationProvider(Enum):
    GOOGLE = "google"
    LIBRE = "libre"
    HUGGINGFACE = "huggingface"

@dataclass
class TranslationConfig:
    provider: TranslationProvider
    api_key: Optional[str] = None
    api_url: Optional[str] = None
    source_lang: str = "auto"
    target_lang: str = "en"

@dataclass
class TextBubble:
    x: int
    y: int
    width: int
    height: int
    text: str
    confidence: float

class AdvancedTranslationOverlay:
    def __init__(self, config: TranslationConfig):
        self.config = config
        self.cache = {}
        
    def translate_text(self, text: str, target_lang: str = None) -> str:
        """Translate text using configured provider"""
        if not text.strip():
            return text
            
        target_lang = target_lang or self.config.target_lang
        cache_key = f"{text}_{target_lang}_{self.config.provider.value}"
        
        if cache_key in self.cache:
            return self.cache[cache_key]
            
        try:
            if self.config.provider == TranslationProvider.GOOGLE:
                result = self._google_translate(text, target_lang)
            elif self.config.provider == TranslationProvider.LIBRE:
                result = self._libre_translate(text, target_lang)
            elif self.config.provider == TranslationProvider.HUGGINGFACE:
                result = self._huggingface_translate(text, target_lang)
            else:
                raise ValueError(f"Unsupported provider: {self.config.provider}")
                
            self.cache[cache_key] = result
            return result
            
        except Exception as e:
            print(f"Translation error: {e}")
            return text
    
    def _google_translate(self, text: str, target_lang: str) -> str:
        """Google Translate API implementation"""
        if not self.config.api_key:
            raise ValueError("Google Translate API key required")
            
        url = f"https://translation.googleapis.com/language/translate/v2"
        params = {
            'key': self.config.api_key,
            'q': text,
            'target': target_lang,
            'source': self.config.source_lang
        }
        
        response = requests.post(url, data=params)
        response.raise_for_status()
        
        result = response.json()
        return result['data']['translations'][0]['translatedText']
    
    def _libre_translate(self, text: str, target_lang: str) -> str:
        """LibreTranslate API implementation"""
        url = self.config.api_url or "https://libretranslate.de/translate"
        
        data = {
            'q': text,
            'source': self.config.source_lang,
            'target': target_lang,
            'format': 'text'
        }
        
        if self.config.api_key:
            data['api_key'] = self.config.api_key
            
        response = requests.post(url, json=data)
        response.raise_for_status()
        
        result = response.json()
        return result['translatedText']
    
    def _huggingface_translate(self, text: str, target_lang: str) -> str:
        """Hugging Face translation implementation"""
        if not self.config.api_key:
            raise ValueError("Hugging Face API key required")
            
        # Using Helsinki-NLP models as example
        model_name = f"Helsinki-NLP/opus-mt-{self.config.source_lang}-{target_lang}"
        url = f"https://api-inference.huggingface.co/models/{model_name}"
        
        headers = {"Authorization": f"Bearer {self.config.api_key}"}
        data = {"inputs": text}
        
        response = requests.post(url, headers=headers, json=data)
        response.raise_for_status()
        
        result = response.json()
        return result[0]['translation_text']
    
    def translate_bubbles(self, bubbles: List[TextBubble], target_lang: str = None) -> List[TextBubble]:
        """Translate multiple text bubbles"""
        translated_bubbles = []
        
        for bubble in bubbles:
            translated_text = self.translate_text(bubble.text, target_lang)
            translated_bubble = TextBubble(
                x=bubble.x,
                y=bubble.y,
                width=bubble.width,
                height=bubble.height,
                text=translated_text,
                confidence=bubble.confidence
            )
            translated_bubbles.append(translated_bubble)
            
        return translated_bubbles
    
    def clear_cache(self):
        """Clear translation cache"""
        self.cache.clear()
    
    def get_supported_languages(self) -> List[str]:
        """Get list of supported languages for current provider"""
        if self.config.provider == TranslationProvider.GOOGLE:
            return ['en', 'es', 'fr', 'de', 'it', 'pt', 'ru', 'ja', 'ko', 'zh']
        elif self.config.provider == TranslationProvider.LIBRE:
            return ['en', 'es', 'fr', 'de', 'it', 'pt', 'ru', 'ja', 'ko', 'zh']
        elif self.config.provider == TranslationProvider.HUGGINGFACE:
            return ['en', 'es', 'fr', 'de', 'it', 'pt', 'ru', 'ja', 'ko', 'zh']
        return []

