import sys
import json

def process_ocr_request(image_path):
    # Здесь будет логика обработки OCR
    # Для примера возвращаем фиктивные данные
    return {
        "text": "Пример распознанного текста из Python",
        "language": "en",
        "confidence": 0.98
    }

def process_translation_request(text, target_language):
    # Здесь будет логика перевода
    # Для примера возвращаем фиктивные данные
    return {
        "translatedText": f"Translated: {text} to {target_language} from Python",
        "sourceLanguage": "en"
    }

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(json.dumps({"error": "No command provided"}))
        sys.exit(1)

    command = sys.argv[1]

    if command == "ocr":
        if len(sys.argv) < 3:
            print(json.dumps({"error": "No image path provided for OCR"}))
            sys.exit(1)
        image_path = sys.argv[2]
        result = process_ocr_request(image_path)
        print(json.dumps(result))
    elif command == "translate":
        if len(sys.argv) < 4:
            print(json.dumps({"error": "Text or target language missing for translation"}))
            sys.exit(1)
        text_to_translate = sys.argv[2]
        target_lang = sys.argv[3]
        result = process_translation_request(text_to_translate, target_lang)
        print(json.dumps(result))
    else:
        print(json.dumps({"error": "Unknown command"}))
        sys.exit(1)


