import zipfile
import os

def extract_with_unicode_support(zip_file_path, extract_to_dir):
    """
    Распаковывает ZIP-архив, обеспечивая корректную обработку Unicode имен файлов.
    """
    with zipfile.ZipFile(zip_file_path, 'r') as zip_ref:
        for member in zip_ref.infolist():
            # Декодируем имя файла с использованием UTF-8, если это возможно
            try:
                extracted_path = os.path.join(extract_to_dir, member.filename.encode('cp437').decode('utf-8'))
            except UnicodeDecodeError:
                extracted_path = os.path.join(extract_to_dir, member.filename)

            # Создаем директории, если они не существуют
            os.makedirs(os.path.dirname(extracted_path), exist_ok=True)

            # Извлекаем файл
            if not member.is_dir():
                with open(extracted_path, 'wb') as output_file:
                    with zip_ref.open(member) as input_file:
                        output_file.write(input_file.read())

    print(f"Архив '{zip_file_path}' успешно распакован в '{extract_to_dir}' с поддержкой Unicode.")

# Пример использования (для демонстрации)
if __name__ == "__main__":
    # Создаем тестовый ZIP-файл с Unicode именем файла
    test_zip_path = "test_unicode.zip"
    test_extract_dir = "extracted_unicode"
    test_file_name = "файл_с_юникодом_🚀.txt"

    if not os.path.exists(test_extract_dir):
        os.makedirs(test_extract_dir)

    with zipfile.ZipFile(test_zip_path, 'w', zipfile.ZIP_DEFLATED) as zf:
        zf.writestr(test_file_name, "Это тестовый файл с Unicode именем.")

    print(f"Создан тестовый архив: {test_zip_path} с файлом: {test_file_name}")

    # Распаковываем архив с поддержкой Unicode
    extract_with_unicode_support(test_zip_path, test_extract_dir)

    # Очистка
    os.remove(test_zip_path)
    os.remove(os.path.join(test_extract_dir, test_file_name))
    os.rmdir(test_extract_dir)
    print("Очистка завершена.")


