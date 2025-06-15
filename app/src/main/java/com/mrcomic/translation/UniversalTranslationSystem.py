"""
Universal Translation System for Mr.Comic
Manages multiple translation providers and provides unified interface
"""

import asyncio
from typing import Dict, List, Optional, Any
from dataclasses import dataclass, field
from enum import Enum
import json
import sqlite3
from datetime import datetime, timedelta

from AdvancedTranslationOverlay import AdvancedTranslationOverlay, TranslationProvider, TranslationConfig

@dataclass
class TranslationRequest:
    text: str
    source_lang: str
    target_lang: str
    priority: int = 1
    timestamp: datetime = field(default_factory=datetime.now)

@dataclass
class TranslationResult:
    original_text: str
    translated_text: str
    source_lang: str
    target_lang: str
    provider: TranslationProvider
    confidence: float
    timestamp: datetime = field(default_factory=datetime.now)

class UniversalTranslationSystem:
    def __init__(self, db_path: str = "translations.db"):
        self.providers: Dict[TranslationProvider, AdvancedTranslationOverlay] = {}
        self.db_path = db_path
        self.request_queue = asyncio.Queue()
        self.active_provider = None
        self.fallback_providers = []
        self._init_database()
        
    def _init_database(self):
        """Initialize SQLite database for caching translations"""
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        
        cursor.execute("""
            CREATE TABLE IF NOT EXISTS translations (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                original_text TEXT NOT NULL,
                translated_text TEXT NOT NULL,
                source_lang TEXT NOT NULL,
                target_lang TEXT NOT NULL,
                provider TEXT NOT NULL,
                confidence REAL NOT NULL,
                timestamp DATETIME NOT NULL,
                UNIQUE(original_text, source_lang, target_lang, provider)
            )
        """)
        
        cursor.execute("""
            CREATE INDEX IF NOT EXISTS idx_translation_lookup 
            ON translations(original_text, source_lang, target_lang)
        """)
        
        conn.commit()
        conn.close()
    
    def add_provider(self, provider: TranslationProvider, config: TranslationConfig):
        """Add a translation provider"""
        overlay = AdvancedTranslationOverlay(config)
        self.providers[provider] = overlay
        
        if self.active_provider is None:
            self.active_provider = provider
    
    def set_active_provider(self, provider: TranslationProvider):
        """Set the active translation provider"""
        if provider in self.providers:
            self.active_provider = provider
        else:
            raise ValueError(f"Provider {provider} not configured")
    
    def set_fallback_providers(self, providers: List[TranslationProvider]):
        """Set fallback providers in order of preference"""
        self.fallback_providers = [p for p in providers if p in self.providers]
    
    def get_cached_translation(self, text: str, source_lang: str, target_lang: str) -> Optional[TranslationResult]:
        """Get cached translation from database"""
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        
        cursor.execute("""
            SELECT translated_text, provider, confidence, timestamp
            FROM translations
            WHERE original_text = ? AND source_lang = ? AND target_lang = ?
            ORDER BY timestamp DESC
            LIMIT 1
        """, (text, source_lang, target_lang))
        
        result = cursor.fetchone()
        conn.close()
        
        if result:
            translated_text, provider_str, confidence, timestamp_str = result
            provider = TranslationProvider(provider_str)
            timestamp = datetime.fromisoformat(timestamp_str)
            
            return TranslationResult(
                original_text=text,
                translated_text=translated_text,
                source_lang=source_lang,
                target_lang=target_lang,
                provider=provider,
                confidence=confidence,
                timestamp=timestamp
            )
        
        return None
    
    def cache_translation(self, result: TranslationResult):
        """Cache translation result in database"""
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        
        cursor.execute("""
            INSERT OR REPLACE INTO translations
            (original_text, translated_text, source_lang, target_lang, provider, confidence, timestamp)
            VALUES (?, ?, ?, ?, ?, ?, ?)
        """, (
            result.original_text,
            result.translated_text,
            result.source_lang,
            result.target_lang,
            result.provider.value,
            result.confidence,
            result.timestamp.isoformat()
        ))
        
        conn.commit()
        conn.close()
    
    async def translate_async(self, text: str, source_lang: str = "auto", target_lang: str = "en") -> TranslationResult:
        """Asynchronously translate text with fallback support"""
        # Check cache first
        cached = self.get_cached_translation(text, source_lang, target_lang)
        if cached and (datetime.now() - cached.timestamp) < timedelta(days=7):
            return cached
        
        # Try active provider first
        providers_to_try = [self.active_provider] + self.fallback_providers
        
        for provider in providers_to_try:
            if provider not in self.providers:
                continue
                
            try:
                overlay = self.providers[provider]
                translated_text = overlay.translate_text(text, target_lang)
                
                result = TranslationResult(
                    original_text=text,
                    translated_text=translated_text,
                    source_lang=source_lang,
                    target_lang=target_lang,
                    provider=provider,
                    confidence=0.9,  # Default confidence
                )
                
                # Cache the result
                self.cache_translation(result)
                
                return result
                
            except Exception as e:
                print(f"Translation failed with {provider}: {e}")
                continue
        
        # If all providers fail, return original text
        return TranslationResult(
            original_text=text,
            translated_text=text,
            source_lang=source_lang,
            target_lang=target_lang,
            provider=self.active_provider,
            confidence=0.0
        )
    
    def translate(self, text: str, source_lang: str = "auto", target_lang: str = "en") -> TranslationResult:
        """Synchronous translation wrapper"""
        return asyncio.run(self.translate_async(text, source_lang, target_lang))
    
    async def translate_batch(self, texts: List[str], source_lang: str = "auto", target_lang: str = "en") -> List[TranslationResult]:
        """Translate multiple texts concurrently"""
        tasks = [self.translate_async(text, source_lang, target_lang) for text in texts]
        return await asyncio.gather(*tasks)
    
    def get_provider_status(self) -> Dict[str, Any]:
        """Get status of all configured providers"""
        status = {}
        
        for provider, overlay in self.providers.items():
            try:
                # Test with a simple phrase
                test_result = overlay.translate_text("Hello", "en")
                status[provider.value] = {
                    "available": True,
                    "test_result": test_result,
                    "supported_languages": overlay.get_supported_languages()
                }
            except Exception as e:
                status[provider.value] = {
                    "available": False,
                    "error": str(e),
                    "supported_languages": []
                }
        
        return status
    
    def clear_cache(self, older_than_days: int = 30):
        """Clear old cached translations"""
        cutoff_date = datetime.now() - timedelta(days=older_than_days)
        
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        
        cursor.execute("""
            DELETE FROM translations
            WHERE timestamp < ?
        """, (cutoff_date.isoformat(),))
        
        deleted_count = cursor.rowcount
        conn.commit()
        conn.close()
        
        return deleted_count
    
    def get_translation_stats(self) -> Dict[str, Any]:
        """Get translation usage statistics"""
        conn = sqlite3.connect(self.db_path)
        cursor = conn.cursor()
        
        # Total translations
        cursor.execute("SELECT COUNT(*) FROM translations")
        total_translations = cursor.fetchone()[0]
        
        # Translations by provider
        cursor.execute("""
            SELECT provider, COUNT(*) 
            FROM translations 
            GROUP BY provider
        """)
        by_provider = dict(cursor.fetchall())
        
        # Translations by language pair
        cursor.execute("""
            SELECT source_lang, target_lang, COUNT(*) 
            FROM translations 
            GROUP BY source_lang, target_lang
            ORDER BY COUNT(*) DESC
            LIMIT 10
        """)
        top_language_pairs = cursor.fetchall()
        
        conn.close()
        
        return {
            "total_translations": total_translations,
            "by_provider": by_provider,
            "top_language_pairs": top_language_pairs
        }

