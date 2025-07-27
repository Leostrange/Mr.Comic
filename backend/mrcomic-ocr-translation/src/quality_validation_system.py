#!/usr/bin/env python3
"""
Система качества и валидации для Mr.Comic
Оценивает и улучшает качество OCR и переводов
"""

import numpy as np
import cv2
import logging
import sqlite3
import json
import time
import re
from typing import List, Dict, Tuple, Any, Optional, Union
from dataclasses import dataclass, asdict
from enum import Enum
from pathlib import Path
import statistics
import difflib
from collections import defaultdict, Counter

# Настройка логирования
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger('QualityValidator')

class QualityMetric(Enum):
    """Метрики качества"""
    OCR_CONFIDENCE = "ocr_confidence"
    TRANSLATION_CONFIDENCE = "translation_confidence"
    TEXT_CLARITY = "text_clarity"
    LAYOUT_QUALITY = "layout_quality"
    CONSISTENCY = "consistency"
    READABILITY = "readability"
    ACCURACY = "accuracy"

class ValidationStatus(Enum):
    """Статусы валидации"""
    PASSED = "passed"
    WARNING = "warning"
    FAILED = "failed"
    NEEDS_REVIEW = "needs_review"

@dataclass
class QualityScore:
    """Оценка качества"""
    metric: QualityMetric
    score: float  # 0.0 - 1.0
    confidence: float
    details: Dict[str, Any]
    suggestions: List[str]

@dataclass
class ValidationResult:
    """Результат валидации"""
    status: ValidationStatus
    overall_score: float
    metric_scores: List[QualityScore]
    issues: List[str]
    suggestions: List[str]
    alternatives: List[str]
    metadata: Dict[str, Any]

@dataclass
class UserFeedback:
    """Обратная связь пользователя"""
    original_text: str
    corrected_text: str
    feedback_type: str  # 'ocr_correction', 'translation_correction', 'style_preference'
    quality_rating: int  # 1-5
    timestamp: float
    context: Dict[str, Any]

class QualityValidationSystem:
    """
    Система качества и валидации
    """
    
    def __init__(self, config: Optional[Dict[str, Any]] = None):
        """
        Инициализация системы валидации
        
        Args:
            config: Конфигурация системы
        """
        self.config = config or {}
        
        # Настройки по умолчанию
        self.default_config = {
            'min_ocr_confidence': 0.7,
            'min_translation_confidence': 0.6,
            'min_overall_score': 0.75,
            'max_alternatives': 5,
            'enable_spell_check': True,
            'enable_grammar_check': True,
            'enable_consistency_check': True,
            'enable_readability_check': True,
            'database_path': 'quality_validation.db',
            'learning_enabled': True,
            'auto_improvement_enabled': True
        }
        
        # Объединение конфигураций
        self.config = {**self.default_config, **self.config}
        
        # Инициализация компонентов
        self.db_connection = None
        self.user_feedback_history = []
        self.quality_patterns = {}
        self.improvement_suggestions = defaultdict(list)
        
        self._initialize_database()
        self._load_quality_patterns()
        self._load_user_feedback()
        
        logger.info("Система качества и валидации инициализирована")
    
    def _initialize_database(self):
        """Инициализация базы данных для валидации"""
        try:
            db_path = self.config['database_path']
            self.db_connection = sqlite3.connect(db_path, check_same_thread=False)
            
            cursor = self.db_connection.cursor()
            
            # Таблица результатов валидации
            cursor.execute('''
                CREATE TABLE IF NOT EXISTS validation_results (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    text_hash TEXT,
                    original_text TEXT,
                    processed_text TEXT,
                    validation_type TEXT,
                    overall_score REAL,
                    status TEXT,
                    issues TEXT,
                    suggestions TEXT,
                    created_at REAL
                )
            ''')
            
            # Таблица обратной связи пользователей
            cursor.execute('''
                CREATE TABLE IF NOT EXISTS user_feedback (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    original_text TEXT,
                    corrected_text TEXT,
                    feedback_type TEXT,
                    quality_rating INTEGER,
                    context TEXT,
                    timestamp REAL
                )
            ''')
            
            # Таблица метрик качества
            cursor.execute('''
                CREATE TABLE IF NOT EXISTS quality_metrics (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    text_hash TEXT,
                    metric_name TEXT,
                    score REAL,
                    confidence REAL,
                    details TEXT,
                    timestamp REAL
                )
            ''')
            
            # Таблица паттернов улучшения
            cursor.execute('''
                CREATE TABLE IF NOT EXISTS improvement_patterns (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    pattern_type TEXT,
                    pattern_data TEXT,
                    success_rate REAL,
                    usage_count INTEGER,
                    last_updated REAL
                )
            ''')
            
            self.db_connection.commit()
            logger.info("База данных валидации инициализирована")
            
        except Exception as e:
            logger.error(f"Ошибка инициализации базы данных: {e}")
            self.db_connection = None
    
    def _load_quality_patterns(self):
        """Загрузка паттернов качества"""
        # Паттерны для определения качества OCR
        self.quality_patterns['ocr'] = {
            'common_errors': {
                'rn': 'm',  # rn часто распознается как m
                'cl': 'd',  # cl как d
                '0': 'O',   # ноль как O
                '1': 'I',   # единица как I
                '5': 'S'    # пятерка как S
            },
            'suspicious_patterns': [
                r'[a-z][A-Z]',  # Смешение регистров
                r'\d[a-zA-Z]',  # Цифры с буквами
                r'[^\w\s\.,!?;:()"\'-]',  # Странные символы
            ]
        }
        
        # Паттерны для качества переводов
        self.quality_patterns['translation'] = {
            'untranslated_words': [
                'the', 'and', 'or', 'but', 'in', 'on', 'at', 'to', 'for'
            ],
            'quality_indicators': {
                'good': ['естественность', 'связность', 'контекст'],
                'bad': ['дословность', 'неестественность', 'ошибки']
            }
        }
        
        # Паттерны читаемости
        self.quality_patterns['readability'] = {
            'max_sentence_length': 20,  # слов
            'max_word_length': 15,      # символов
            'preferred_punctuation': ['.', '!', '?', ',', ';', ':']
        }
        
        logger.info("Паттерны качества загружены")
    
    def _load_user_feedback(self):
        """Загрузка истории обратной связи"""
        if not self.db_connection:
            return
        
        try:
            cursor = self.db_connection.cursor()
            cursor.execute('''
                SELECT original_text, corrected_text, feedback_type, 
                       quality_rating, context, timestamp
                FROM user_feedback
                ORDER BY timestamp DESC
                LIMIT 1000
            ''')
            
            rows = cursor.fetchall()
            
            for row in rows:
                feedback = UserFeedback(
                    original_text=row[0],
                    corrected_text=row[1],
                    feedback_type=row[2],
                    quality_rating=row[3],
                    timestamp=row[5],
                    context=json.loads(row[4]) if row[4] else {}
                )
                self.user_feedback_history.append(feedback)
            
            logger.info(f"Загружено {len(rows)} записей обратной связи")
            
        except Exception as e:
            logger.error(f"Ошибка загрузки обратной связи: {e}")
    
    def evaluate_ocr_quality(self, ocr_results: List[Dict[str, Any]]) -> QualityScore:
        """
        Оценка качества OCR
        
        Args:
            ocr_results: Результаты OCR
            
        Returns:
            Оценка качества OCR
        """
        if not ocr_results:
            return QualityScore(
                metric=QualityMetric.OCR_CONFIDENCE,
                score=0.0,
                confidence=1.0,
                details={'error': 'Нет результатов OCR'},
                suggestions=['Проверьте качество изображения']
            )
        
        # Анализ уверенности OCR
        confidences = [result.get('confidence', 0.0) for result in ocr_results]
        avg_confidence = statistics.mean(confidences) if confidences else 0.0
        
        # Анализ текста на подозрительные паттерны
        all_text = ' '.join([result.get('text', '') for result in ocr_results])
        suspicious_score = self._analyze_suspicious_patterns(all_text)
        
        # Анализ согласованности между движками
        consistency_score = self._analyze_ocr_consistency(ocr_results)
        
        # Общая оценка
        overall_score = (avg_confidence * 0.5 + 
                        (1 - suspicious_score) * 0.3 + 
                        consistency_score * 0.2)
        
        # Генерация предложений
        suggestions = []
        if avg_confidence < 0.7:
            suggestions.append("Низкая уверенность OCR - проверьте качество изображения")
        if suspicious_score > 0.3:
            suggestions.append("Обнаружены подозрительные символы - требуется ручная проверка")
        if consistency_score < 0.5:
            suggestions.append("Низкая согласованность между движками OCR")
        
        return QualityScore(
            metric=QualityMetric.OCR_CONFIDENCE,
            score=overall_score,
            confidence=0.8,
            details={
                'avg_confidence': avg_confidence,
                'suspicious_score': suspicious_score,
                'consistency_score': consistency_score,
                'text_length': len(all_text),
                'word_count': len(all_text.split())
            },
            suggestions=suggestions
        )
    
    def _analyze_suspicious_patterns(self, text: str) -> float:
        """Анализ подозрительных паттернов в тексте"""
        if not text:
            return 1.0
        
        suspicious_count = 0
        total_checks = 0
        
        patterns = self.quality_patterns['ocr']['suspicious_patterns']
        
        for pattern in patterns:
            matches = re.findall(pattern, text)
            suspicious_count += len(matches)
            total_checks += 1
        
        # Нормализация по длине текста
        text_length = len(text)
        if text_length > 0:
            suspicious_ratio = suspicious_count / text_length
        else:
            suspicious_ratio = 1.0
        
        return min(1.0, suspicious_ratio * 10)  # Масштабирование
    
    def _analyze_ocr_consistency(self, ocr_results: List[Dict[str, Any]]) -> float:
        """Анализ согласованности результатов OCR"""
        if len(ocr_results) < 2:
            return 1.0  # Нет данных для сравнения
        
        # Группировка результатов по областям
        text_groups = defaultdict(list)
        
        for result in ocr_results:
            bbox = result.get('bbox', (0, 0, 0, 0))
            # Простая группировка по позиции
            key = (bbox[0] // 50, bbox[1] // 50)  # Группы по 50 пикселей
            text_groups[key].append(result.get('text', ''))
        
        # Анализ согласованности в каждой группе
        consistency_scores = []
        
        for group_texts in text_groups.values():
            if len(group_texts) > 1:
                # Сравнение текстов в группе
                similarity_scores = []
                for i in range(len(group_texts)):
                    for j in range(i + 1, len(group_texts)):
                        similarity = difflib.SequenceMatcher(
                            None, group_texts[i], group_texts[j]
                        ).ratio()
                        similarity_scores.append(similarity)
                
                if similarity_scores:
                    group_consistency = statistics.mean(similarity_scores)
                    consistency_scores.append(group_consistency)
        
        if consistency_scores:
            return statistics.mean(consistency_scores)
        else:
            return 1.0
    
    def evaluate_translation_quality(self, translation_results: List[Dict[str, Any]]) -> QualityScore:
        """
        Оценка качества перевода
        
        Args:
            translation_results: Результаты перевода
            
        Returns:
            Оценка качества перевода
        """
        if not translation_results:
            return QualityScore(
                metric=QualityMetric.TRANSLATION_CONFIDENCE,
                score=0.0,
                confidence=1.0,
                details={'error': 'Нет результатов перевода'},
                suggestions=['Проверьте работу переводчиков']
            )
        
        # Анализ уверенности переводов
        confidences = [result.get('confidence', 0.0) for result in translation_results]
        avg_confidence = statistics.mean(confidences) if confidences else 0.0
        
        # Анализ качества переводов
        all_translations = [result.get('translated_text', '') for result in translation_results]
        quality_score = self._analyze_translation_quality(all_translations)
        
        # Анализ согласованности между переводчиками
        consistency_score = self._analyze_translation_consistency(translation_results)
        
        # Общая оценка
        overall_score = (avg_confidence * 0.4 + 
                        quality_score * 0.4 + 
                        consistency_score * 0.2)
        
        # Генерация предложений
        suggestions = []
        if avg_confidence < 0.6:
            suggestions.append("Низкая уверенность перевода - рассмотрите альтернативные варианты")
        if quality_score < 0.5:
            suggestions.append("Возможны проблемы с качеством перевода")
        if consistency_score < 0.4:
            suggestions.append("Большие расхождения между переводчиками")
        
        return QualityScore(
            metric=QualityMetric.TRANSLATION_CONFIDENCE,
            score=overall_score,
            confidence=0.7,
            details={
                'avg_confidence': avg_confidence,
                'quality_score': quality_score,
                'consistency_score': consistency_score,
                'translation_count': len(translation_results)
            },
            suggestions=suggestions
        )
    
    def _analyze_translation_quality(self, translations: List[str]) -> float:
        """Анализ качества переводов"""
        if not translations:
            return 0.0
        
        quality_scores = []
        
        for translation in translations:
            if not translation:
                quality_scores.append(0.0)
                continue
            
            score = 1.0
            
            # Проверка на непереведенные слова
            untranslated_words = self.quality_patterns['translation']['untranslated_words']
            words = translation.lower().split()
            untranslated_count = sum(1 for word in words if word in untranslated_words)
            
            if words:
                untranslated_ratio = untranslated_count / len(words)
                score -= untranslated_ratio * 0.5
            
            # Проверка длины (слишком короткие или длинные переводы подозрительны)
            if len(translation) < 3:
                score -= 0.3
            elif len(translation) > 200:
                score -= 0.2
            
            # Проверка на повторяющиеся символы (признак ошибки)
            repeated_chars = re.findall(r'(.)\1{3,}', translation)
            if repeated_chars:
                score -= 0.3
            
            quality_scores.append(max(0.0, score))
        
        return statistics.mean(quality_scores) if quality_scores else 0.0
    
    def _analyze_translation_consistency(self, translation_results: List[Dict[str, Any]]) -> float:
        """Анализ согласованности переводов"""
        if len(translation_results) < 2:
            return 1.0
        
        # Группировка переводов одного и того же текста
        source_groups = defaultdict(list)
        
        for result in translation_results:
            source_text = result.get('original_text', '')
            translated_text = result.get('translated_text', '')
            source_groups[source_text].append(translated_text)
        
        # Анализ согласованности в каждой группе
        consistency_scores = []
        
        for translations in source_groups.values():
            if len(translations) > 1:
                # Сравнение переводов
                similarity_scores = []
                for i in range(len(translations)):
                    for j in range(i + 1, len(translations)):
                        similarity = difflib.SequenceMatcher(
                            None, translations[i], translations[j]
                        ).ratio()
                        similarity_scores.append(similarity)
                
                if similarity_scores:
                    group_consistency = statistics.mean(similarity_scores)
                    consistency_scores.append(group_consistency)
        
        if consistency_scores:
            return statistics.mean(consistency_scores)
        else:
            return 1.0
    
    def evaluate_readability(self, text: str) -> QualityScore:
        """
        Оценка читаемости текста
        
        Args:
            text: Текст для анализа
            
        Returns:
            Оценка читаемости
        """
        if not text:
            return QualityScore(
                metric=QualityMetric.READABILITY,
                score=0.0,
                confidence=1.0,
                details={'error': 'Пустой текст'},
                suggestions=['Добавьте текст для анализа']
            )
        
        # Анализ длины предложений
        sentences = re.split(r'[.!?]+', text)
        sentence_lengths = [len(sentence.split()) for sentence in sentences if sentence.strip()]
        
        avg_sentence_length = statistics.mean(sentence_lengths) if sentence_lengths else 0
        max_sentence_length = max(sentence_lengths) if sentence_lengths else 0
        
        # Анализ длины слов
        words = text.split()
        word_lengths = [len(word) for word in words]
        avg_word_length = statistics.mean(word_lengths) if word_lengths else 0
        max_word_length = max(word_lengths) if word_lengths else 0
        
        # Оценка читаемости
        score = 1.0
        
        # Штраф за слишком длинные предложения
        if avg_sentence_length > self.quality_patterns['readability']['max_sentence_length']:
            score -= 0.2
        
        # Штраф за слишком длинные слова
        if avg_word_length > self.quality_patterns['readability']['max_word_length']:
            score -= 0.1
        
        # Бонус за хорошую пунктуацию
        punctuation_count = sum(1 for char in text if char in '.!?,:;')
        if len(text) > 0:
            punctuation_ratio = punctuation_count / len(text)
            if 0.05 <= punctuation_ratio <= 0.15:  # Оптимальное соотношение
                score += 0.1
        
        suggestions = []
        if avg_sentence_length > 15:
            suggestions.append("Рассмотрите разбивку длинных предложений")
        if max_word_length > 20:
            suggestions.append("Некоторые слова могут быть слишком длинными")
        if punctuation_count == 0:
            suggestions.append("Добавьте пунктуацию для улучшения читаемости")
        
        return QualityScore(
            metric=QualityMetric.READABILITY,
            score=max(0.0, min(1.0, score)),
            confidence=0.8,
            details={
                'avg_sentence_length': avg_sentence_length,
                'max_sentence_length': max_sentence_length,
                'avg_word_length': avg_word_length,
                'max_word_length': max_word_length,
                'sentence_count': len(sentence_lengths),
                'word_count': len(words)
            },
            suggestions=suggestions
        )
    
    def generate_alternatives(self, original_text: str, current_result: str, context: Dict[str, Any]) -> List[str]:
        """
        Генерация альтернативных вариантов
        
        Args:
            original_text: Оригинальный текст
            current_result: Текущий результат
            context: Контекст
            
        Returns:
            Список альтернативных вариантов
        """
        alternatives = []
        
        # Альтернативы на основе пользовательской обратной связи
        feedback_alternatives = self._get_feedback_alternatives(original_text)
        alternatives.extend(feedback_alternatives)
        
        # Альтернативы на основе исправления частых ошибок
        error_corrections = self._apply_common_corrections(current_result)
        if error_corrections != current_result:
            alternatives.append(error_corrections)
        
        # Альтернативы на основе вариаций перевода
        if context.get('type') == 'translation':
            translation_variants = self._generate_translation_variants(current_result)
            alternatives.extend(translation_variants)
        
        # Удаление дубликатов и ограничение количества
        unique_alternatives = list(dict.fromkeys(alternatives))
        return unique_alternatives[:self.config['max_alternatives']]
    
    def _get_feedback_alternatives(self, text: str) -> List[str]:
        """Получение альтернатив на основе обратной связи"""
        alternatives = []
        
        for feedback in self.user_feedback_history:
            if feedback.original_text == text and feedback.quality_rating >= 4:
                alternatives.append(feedback.corrected_text)
        
        return alternatives
    
    def _apply_common_corrections(self, text: str) -> str:
        """Применение частых исправлений"""
        corrected = text
        
        # Исправления OCR ошибок
        ocr_corrections = self.quality_patterns['ocr']['common_errors']
        for wrong, correct in ocr_corrections.items():
            corrected = corrected.replace(wrong, correct)
        
        # Исправление пунктуации
        corrected = re.sub(r'\s+([.!?,:;])', r'\1', corrected)  # Убираем пробелы перед пунктуацией
        corrected = re.sub(r'([.!?])\s*([a-zA-Z])', r'\1 \2', corrected)  # Добавляем пробелы после точек
        
        return corrected
    
    def _generate_translation_variants(self, translation: str) -> List[str]:
        """Генерация вариантов перевода"""
        variants = []
        
        # Простые вариации (в реальной системе здесь были бы более сложные алгоритмы)
        
        # Вариация с изменением порядка слов
        words = translation.split()
        if len(words) > 2:
            # Перестановка первых двух слов
            variant1 = ' '.join([words[1], words[0]] + words[2:])
            variants.append(variant1)
        
        # Вариация с синонимами (заглушка)
        synonyms = {
            'хорошо': 'отлично',
            'плохо': 'ужасно',
            'большой': 'огромный',
            'маленький': 'крошечный'
        }
        
        variant2 = translation
        for original, synonym in synonyms.items():
            if original in variant2:
                variant2 = variant2.replace(original, synonym)
                break
        
        if variant2 != translation:
            variants.append(variant2)
        
        return variants
    
    def validate_results(self, ocr_results: List[Dict[str, Any]], 
                        translation_results: List[Dict[str, Any]],
                        context: Dict[str, Any] = None) -> ValidationResult:
        """
        Комплексная валидация результатов
        
        Args:
            ocr_results: Результаты OCR
            translation_results: Результаты перевода
            context: Дополнительный контекст
            
        Returns:
            Результат валидации
        """
        context = context or {}
        metric_scores = []
        issues = []
        suggestions = []
        
        # Оценка качества OCR
        if ocr_results:
            ocr_score = self.evaluate_ocr_quality(ocr_results)
            metric_scores.append(ocr_score)
            
            if ocr_score.score < self.config['min_ocr_confidence']:
                issues.append(f"Низкое качество OCR: {ocr_score.score:.2f}")
            
            suggestions.extend(ocr_score.suggestions)
        
        # Оценка качества перевода
        if translation_results:
            translation_score = self.evaluate_translation_quality(translation_results)
            metric_scores.append(translation_score)
            
            if translation_score.score < self.config['min_translation_confidence']:
                issues.append(f"Низкое качество перевода: {translation_score.score:.2f}")
            
            suggestions.extend(translation_score.suggestions)
        
        # Оценка читаемости
        if translation_results:
            all_text = ' '.join([r.get('translated_text', '') for r in translation_results])
            readability_score = self.evaluate_readability(all_text)
            metric_scores.append(readability_score)
            suggestions.extend(readability_score.suggestions)
        
        # Общая оценка
        if metric_scores:
            overall_score = statistics.mean([score.score for score in metric_scores])
        else:
            overall_score = 0.0
        
        # Определение статуса
        if overall_score >= self.config['min_overall_score']:
            status = ValidationStatus.PASSED
        elif overall_score >= 0.5:
            status = ValidationStatus.WARNING
        elif issues:
            status = ValidationStatus.FAILED
        else:
            status = ValidationStatus.NEEDS_REVIEW
        
        # Генерация альтернатив
        alternatives = []
        if translation_results:
            for result in translation_results[:3]:  # Первые 3 результата
                original = result.get('original_text', '')
                current = result.get('translated_text', '')
                alts = self.generate_alternatives(original, current, context)
                alternatives.extend(alts)
        
        # Удаление дубликатов альтернатив
        alternatives = list(dict.fromkeys(alternatives))
        
        validation_result = ValidationResult(
            status=status,
            overall_score=overall_score,
            metric_scores=metric_scores,
            issues=issues,
            suggestions=list(dict.fromkeys(suggestions)),  # Удаление дубликатов
            alternatives=alternatives,
            metadata={
                'validation_timestamp': time.time(),
                'ocr_count': len(ocr_results) if ocr_results else 0,
                'translation_count': len(translation_results) if translation_results else 0,
                'context': context
            }
        )
        
        # Сохранение результата валидации
        self._save_validation_result(validation_result)
        
        return validation_result
    
    def _save_validation_result(self, result: ValidationResult):
        """Сохранение результата валидации"""
        if not self.db_connection:
            return
        
        try:
            cursor = self.db_connection.cursor()
            cursor.execute('''
                INSERT INTO validation_results
                (text_hash, original_text, processed_text, validation_type,
                 overall_score, status, issues, suggestions, created_at)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
            ''', (
                'hash_placeholder',  # В реальной системе здесь был бы хэш
                '',  # original_text
                '',  # processed_text
                'comprehensive',
                result.overall_score,
                result.status.value,
                json.dumps(result.issues),
                json.dumps(result.suggestions),
                time.time()
            ))
            
            self.db_connection.commit()
            
        except Exception as e:
            logger.error(f"Ошибка сохранения результата валидации: {e}")
    
    def add_user_feedback(self, feedback: UserFeedback):
        """
        Добавление обратной связи пользователя
        
        Args:
            feedback: Обратная связь пользователя
        """
        self.user_feedback_history.append(feedback)
        
        # Сохранение в базу данных
        if self.db_connection:
            try:
                cursor = self.db_connection.cursor()
                cursor.execute('''
                    INSERT INTO user_feedback
                    (original_text, corrected_text, feedback_type, 
                     quality_rating, context, timestamp)
                    VALUES (?, ?, ?, ?, ?, ?)
                ''', (
                    feedback.original_text,
                    feedback.corrected_text,
                    feedback.feedback_type,
                    feedback.quality_rating,
                    json.dumps(feedback.context),
                    feedback.timestamp
                ))
                
                self.db_connection.commit()
                logger.info("Обратная связь пользователя сохранена")
                
            except Exception as e:
                logger.error(f"Ошибка сохранения обратной связи: {e}")
        
        # Обучение на обратной связи
        if self.config['learning_enabled']:
            self._learn_from_feedback(feedback)
    
    def _learn_from_feedback(self, feedback: UserFeedback):
        """Обучение на основе обратной связи"""
        if feedback.quality_rating >= 4:  # Хорошая оценка
            # Добавление в паттерны улучшения
            if feedback.feedback_type == 'ocr_correction':
                self._update_ocr_patterns(feedback)
            elif feedback.feedback_type == 'translation_correction':
                self._update_translation_patterns(feedback)
    
    def _update_ocr_patterns(self, feedback: UserFeedback):
        """Обновление паттернов OCR на основе обратной связи"""
        original = feedback.original_text
        corrected = feedback.corrected_text
        
        # Поиск различий
        differ = difflib.SequenceMatcher(None, original, corrected)
        
        for tag, i1, i2, j1, j2 in differ.get_opcodes():
            if tag == 'replace':
                wrong_part = original[i1:i2]
                correct_part = corrected[j1:j2]
                
                # Добавление в паттерны исправлений
                if len(wrong_part) <= 3 and len(correct_part) <= 3:
                    self.quality_patterns['ocr']['common_errors'][wrong_part] = correct_part
    
    def _update_translation_patterns(self, feedback: UserFeedback):
        """Обновление паттернов перевода на основе обратной связи"""
        # Анализ улучшений в переводе
        original = feedback.original_text
        corrected = feedback.corrected_text
        
        # Простой анализ - добавление в предпочтительные варианты
        key = f"translation_{hash(original) % 10000}"
        if key not in self.improvement_suggestions:
            self.improvement_suggestions[key] = []
        
        self.improvement_suggestions[key].append(corrected)
    
    def get_quality_statistics(self) -> Dict[str, Any]:
        """
        Получение статистики качества
        
        Returns:
            Словарь со статистикой
        """
        if not self.db_connection:
            return {'error': 'База данных недоступна'}
        
        try:
            cursor = self.db_connection.cursor()
            
            # Статистика валидации
            cursor.execute('''
                SELECT status, COUNT(*), AVG(overall_score)
                FROM validation_results
                WHERE created_at > ?
                GROUP BY status
            ''', (time.time() - 86400 * 7,))  # За последнюю неделю
            
            validation_stats = {}
            for row in cursor.fetchall():
                validation_stats[row[0]] = {
                    'count': row[1],
                    'avg_score': row[2]
                }
            
            # Статистика обратной связи
            cursor.execute('''
                SELECT feedback_type, AVG(quality_rating), COUNT(*)
                FROM user_feedback
                WHERE timestamp > ?
                GROUP BY feedback_type
            ''', (time.time() - 86400 * 7,))
            
            feedback_stats = {}
            for row in cursor.fetchall():
                feedback_stats[row[0]] = {
                    'avg_rating': row[1],
                    'count': row[2]
                }
            
            return {
                'validation_statistics': validation_stats,
                'feedback_statistics': feedback_stats,
                'total_feedback_entries': len(self.user_feedback_history),
                'improvement_patterns': len(self.improvement_suggestions)
            }
            
        except Exception as e:
            logger.error(f"Ошибка получения статистики: {e}")
            return {'error': str(e)}


def main():
    """Тестирование системы качества и валидации"""
    try:
        # Инициализация системы
        validator = QualityValidationSystem()
        
        print("Система качества и валидации готова к работе!")
        print("Возможности:")
        print("  - Оценка качества OCR")
        print("  - Оценка качества переводов")
        print("  - Анализ читаемости")
        print("  - Генерация альтернативных вариантов")
        print("  - Обучение на пользовательской обратной связи")
        print("  - Автоматическое улучшение результатов")
        
        # Тестовая валидация
        test_ocr = [
            {'text': 'Hello world', 'confidence': 0.9, 'bbox': (10, 10, 100, 20)},
            {'text': 'Test text', 'confidence': 0.8, 'bbox': (10, 30, 100, 20)}
        ]
        
        test_translation = [
            {'original_text': 'Hello world', 'translated_text': 'Привет мир', 'confidence': 0.85},
            {'original_text': 'Test text', 'translated_text': 'Тестовый текст', 'confidence': 0.9}
        ]
        
        result = validator.validate_results(test_ocr, test_translation)
        
        print(f"\nТестовая валидация:")
        print(f"  Статус: {result.status.value}")
        print(f"  Общая оценка: {result.overall_score:.2f}")
        print(f"  Проблемы: {len(result.issues)}")
        print(f"  Предложения: {len(result.suggestions)}")
        print(f"  Альтернативы: {len(result.alternatives)}")
        
        # Статистика
        stats = validator.get_quality_statistics()
        print(f"\nСтатистика: {stats}")
        
    except Exception as e:
        logger.error(f"Ошибка инициализации: {e}")
        raise


if __name__ == "__main__":
    main()

