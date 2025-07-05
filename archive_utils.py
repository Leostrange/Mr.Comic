import zipfile
import os

def process_large_zip_stream(zip_filepath, extract_dir):
    """
    Оптимизированная распаковка больших ZIP-архивов с использованием потоковой обработки.
    """
    if not os.path.exists(extract_dir):
        os.makedirs(extract_dir)

    with open(zip_filepath, 'rb') as zip_file_obj:
        with zipfile.ZipFile(zip_file_obj, 'r') as zf:
            for member in zf.infolist():
                # zipfile в Python 3 обычно корректно обрабатывает Unicode имена файлов
                # Нет необходимости в явном encode/decode, если filename уже в Unicode
                filename = member.filename

                target_path = os.path.join(extract_dir, filename)

                if member.is_dir():
                    os.makedirs(target_path, exist_ok=True)
                else:
                    # Создаем директории, если они не существуют
                    os.makedirs(os.path.dirname(target_path), exist_ok=True)
                    with zf.open(member, 'r') as source, open(target_path, 'wb') as target:
                        while True:
                            chunk = source.read(8192)  # Чтение по 8KB
                            if not chunk:
                                break
                            target.write(chunk)
    print(f"Архив {zip_filepath} успешно распакован в {extract_dir} с потоковой обработкой и поддержкой Unicode.")

# Пример использования (для демонстрации, в реальном приложении будет вызываться из других модулей)
if __name__ == '__main__':
    # Создаем фиктивный большой ZIP-файл для тестирования
    test_zip_path = 'test_large_archive.zip'
    test_extract_dir = 'extracted_content'

    # Создаем большой файл для архивации
    large_file_content = b'a' * (1024 * 1024 * 50) # 50MB
    with open('large_file.txt', 'wb') as f:
        f.write(large_file_content)

    # Создаем ZIP-архив с Unicode именем файла
    with zipfile.ZipFile(test_zip_path, 'w') as zf:
        zf.writestr('файл_с_юникодом.txt', 'Это файл с юникодным именем.')
        zf.write('large_file.txt')

    print(f"Создан тестовый архив: {test_zip_path}")

    # Вызываем функцию для распаковки
    process_large_zip_stream(test_zip_path, test_extract_dir)

    # Очистка тестовых файлов
    os.remove('large_file.txt')
    os.remove(test_zip_path)
    # Удаляем распакованные файлы и директорию
    os.remove(os.path.join(test_extract_dir, 'файл_с_юникодом.txt'))
    os.remove(os.path.join(test_extract_dir, 'large_file.txt'))
    os.rmdir(test_extract_dir)
    print("Тестовые файлы удалены.")


