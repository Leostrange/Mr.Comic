import zipfile
import os

def stream_unzip(zip_file_path, extract_to_path, chunk_size=65536):
    """
    Распаковывает ZIP-архив с использованием потоковой обработки.

    Args:
        zip_file_path (str): Путь к ZIP-файлу.
        extract_to_path (str): Путь для извлечения файлов.
        chunk_size (int): Размер чанка для чтения/записи.
    """
    with zipfile.ZipFile(zip_file_path, 'r') as zf:
        for member in zf.infolist():
            # Создаем полный путь для извлечения, обеспечивая поддержку Unicode
            extracted_path = os.path.join(extract_to_path, member.filename)

            # Создаем директории, если они не существуют
            os.makedirs(os.path.dirname(extracted_path), exist_ok=True)

            if not member.is_dir():
                with zf.open(member, 'r') as source, open(extracted_path, 'wb') as target:
                    while True:
                        chunk = source.read(chunk_size)
                        if not chunk:
                            break
                        target.write(chunk)

def test_stream_unzip():
    # Создаем тестовый ZIP-файл с большим файлом и Unicode именем
    test_zip_path = "test_large_unicode.zip"
    test_extract_path = "extracted_test_data"
    large_file_name = "большой_файл_с_юникодом.txt"

    # Создаем большой тестовый файл
    with open(large_file_name, "wb") as f:
        f.seek((1024 * 1024 * 10) - 1) # 10 MB
        f.write(b"\0")

    with zipfile.ZipFile(test_zip_path, 'w', zipfile.ZIP_DEFLATED) as zf:
        zf.write(large_file_name)

    print(f"Создан тестовый ZIP-файл: {test_zip_path}")

    # Распаковываем его
    stream_unzip(test_zip_path, test_extract_path)
    print(f"Файлы распакованы в: {test_extract_path}")

    # Проверяем, что файл существует и имеет правильное имя
    if os.path.exists(os.path.join(test_extract_path, large_file_name)):
        print("Тест пройден: файл успешно распакован с поддержкой Unicode и потоковой обработкой.")
    else:
        print("Тест не пройден: файл не найден или имя файла некорректно.")

    # Очистка
    os.remove(large_file_name)
    os.remove(test_zip_path)
    os.remove(os.path.join(test_extract_path, large_file_name))
    os.rmdir(test_extract_path)

if __name__ == "__main__":
    test_stream_unzip()


