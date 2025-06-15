"""
Quality Validation System for Mr.Comic
Ensures the quality and consistency of comic content and translations.
"""

import cv2
import numpy as np
from typing import List, Dict, Tuple
from dataclasses import dataclass
import json

@dataclass
class ValidationResult:
    check_name: str
    status: str  # "PASS", "FAIL", "WARNING"
    message: str
    details: Dict = None

class QualityValidationSystem:
    def __init__(self):
        pass

    def validate_image_quality(self, image_path: str) -> ValidationResult:
        """Checks image resolution, clarity, and potential artifacts."""
        try:
            img = cv2.imread(image_path)
            if img is None:
                return ValidationResult("Image Quality", "FAIL", "Could not load image.")

            height, width, _ = img.shape
            if width < 800 or height < 1200: # Example minimum resolution
                return ValidationResult("Image Quality", "WARNING", f"Low resolution: {width}x{height}")

            # Simple blur detection
            gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
            fm = cv2.Laplacian(gray, cv2.CV_64F).var()
            if fm < 100: # Example blur threshold
                return ValidationResult("Image Quality", "WARNING", f"Potentially blurry image (Laplacian variance: {fm:.2f})")

            return ValidationResult("Image Quality", "PASS", "Image quality is acceptable.")
        except Exception as e:
            return ValidationResult("Image Quality", "FAIL", f"Error processing image: {e}")

    def calculate_bleu_score(self, reference_text: str, hypothesis_text: str) -> float:
        """Calculates the BLEU score between a reference and hypothesis text.
        This is a simplified implementation for demonstration purposes.
        A full BLEU implementation would require more sophisticated tokenization and n-gram matching.
        """
        if not reference_text or not hypothesis_text:
            return 0.0

        ref_tokens = reference_text.lower().split()
        hyp_tokens = hypothesis_text.lower().split()

        # Simple precision calculation (unigram)
        match_count = 0
        for token in hyp_tokens:
            if token in ref_tokens:
                match_count += 1
                ref_tokens.remove(token) # Remove to avoid double counting
        
        precision = match_count / len(hyp_tokens) if len(hyp_tokens) > 0 else 0
        
        # For a true BLEU score, you'd also need brevity penalty and n-grams (up to 4 or more)
        # This is a very basic approximation.
        return precision

    def validate_translation_accuracy(self, original_text: str, translated_text: str, source_lang: str, target_lang: str) -> ValidationResult:
        """Compares original and translated text for accuracy (placeholder for actual NLP)."""
        # In a real system, this would involve NLP models, back-translation, etc.
        if not original_text or not translated_text:
            return ValidationResult("Translation Accuracy", "FAIL", "Original or translated text is empty.")

        # Dummy check: if translated text is too short compared to original
        if len(translated_text) < len(original_text) * 0.5:
            return ValidationResult("Translation Accuracy", "WARNING", "Translated text is significantly shorter than original.")

        return ValidationResult("Translation Accuracy", "PASS", "Translation accuracy check passed (dummy).")

    def validate_ocr_accuracy(self, image_path: str, ocr_text: str) -> ValidationResult:
        """Compares OCR output with expected text (if available) or performs sanity checks."""
        if not ocr_text:
            return ValidationResult("OCR Accuracy", "FAIL", "OCR output is empty.")

        # Dummy check: if OCR text contains too many non-alphanumeric characters
        alphanumeric_ratio = sum(c.isalnum() for c in ocr_text) / len(ocr_text) if len(ocr_text) > 0 else 0
        if alphanumeric_ratio < 0.7: # Example threshold
            return ValidationResult("OCR Accuracy", "WARNING", "OCR output contains many non-alphanumeric characters.")

        return ValidationResult("OCR Accuracy", "PASS", "OCR accuracy check passed (dummy).")

    def validate_comic_panel_flow(self, panel_order: List[Tuple[int, int, int, int]]) -> ValidationResult:
        """Checks if comic panels are ordered logically (e.g., left-to-right, top-to-bottom)."""
        if len(panel_order) < 2:
            return ValidationResult("Panel Flow", "PASS", "Not enough panels to check flow.")

        # Simple check: mostly increasing X and Y coordinates
        issues = []
        for i in range(1, len(panel_order)):
            prev_x, prev_y, _, _ = panel_order[i-1]
            curr_x, curr_y, _, _ = panel_order[i]

            if curr_y < prev_y and abs(curr_x - prev_x) < 50: # If Y decreases significantly without large X change
                issues.append(f"Panel {i} seems out of order (Y decreased).")

        if issues:
            return ValidationResult("Panel Flow", "WARNING", "Potential panel flow issues.", {"issues": issues})
        else:
            return ValidationResult("Panel Flow", "PASS", "Panel flow seems logical.")

    def run_all_validations(self, data: Dict) -> List[ValidationResult]:
        """Runs all available validation checks on provided data."""
        results = []
        metrics = {}

        if "image_path" in data:
            results.append(self.validate_image_quality(data["image_path"]))
        
        if "original_text" in data and "translated_text" in data:
            results.append(self.validate_translation_accuracy(
                data["original_text"], data["translated_text"], data.get("source_lang", "en"), data.get("target_lang", "en")
            ))
            # Day 35: BLEU score calculation
            bleu_score = self.calculate_bleu_score(data["original_text"], data["translated_text"])
            metrics["bleu_score"] = bleu_score
            results.append(ValidationResult("BLEU Score", "INFO", f"Calculated BLEU score: {bleu_score:.4f}", {"score": bleu_score}))

        if "ocr_text" in data:
            # Assuming OCR confidence is passed in data for logging
            if "ocr_confidence" in data:
                metrics["ocr_confidence"] = data["ocr_confidence"]
                results.append(ValidationResult("OCR Confidence", "INFO", f"OCR Confidence: {data["ocr_confidence"]:.2f}", {"confidence": data["ocr_confidence"]}))
            results.append(self.validate_ocr_accuracy(data.get("image_path", ""), data["ocr_text"]))

        if "panel_order" in data:
            results.append(self.validate_comic_panel_flow(data["panel_order"]))

        # Day 35: Log metrics to JSON file
        if metrics:
            try:
                with open("metrics_log.json", "a") as f:
                    json.dump(metrics, f)
                    f.write("\n")
            except Exception as e:
                results.append(ValidationResult("Metrics Logging", "FAIL", f"Error logging metrics to JSON: {e}"))

        return results



