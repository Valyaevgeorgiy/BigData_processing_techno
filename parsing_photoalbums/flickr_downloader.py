import flickrapi
import requests
import os
import time
from lxml import etree
import xml.etree.ElementTree as ET

# Ключи доступа к API Flickr
api_key = ''
api_secret = ''

# Инициализация объекта flickrapi
flickr = flickrapi.FlickrAPI(api_key, api_secret, format='etree')

# URL-адрес альбома Flickr с получением его id
album_url = ''
album_id = album_url.split('/')[-1]

# Получение списка фотографий из альбома с доп парсингом
photos = flickr.photosets.getPhotos(photoset_id=album_id)
xml_string = etree.tostring(photos)

# Получение количества фотографий, сами фото альбома и его названия из объекта Element
root = ET.fromstring(xml_string)
photo_elements = root.findall('.//photo')
name_album = root.find('.//photoset').get('title')
photoset_total = int(root.find('.//photoset').get('total'))

# Создание пустой папки в той же директории, что и скрипт, с проверкой
if os.path.exists(name_album):
    print(f"Папка {name_album} уже существует!")
else:
    os.makedirs(name_album)
    print(f"Папка {name_album} успешно создана!")
print()

# Скачивание фотографий
print(
    f'--------------------------- Загрузка альбома «{name_album}» начинается! ---------------------------')
print()
counter = 0
for photo in photo_elements:

    # Получение id фото и всех размеров по качеству
    photo_id = photo.get('id')
    sizes = flickr.photos.getSizes(photo_id=photo_id)

    # Преобразование элемента в строку и парсинг XML-ответа
    element_str = etree.tostring(sizes, encoding='unicode')
    root = ET.fromstring(element_str)

    # Получение элемента 'size' с атрибутом label="Original"
    original_size = root.find(".//size[@label='Original']")

    # Извлечение информации из атрибутов
    original_source = original_size.get('source')

    photo_filename = f"{photo_id}.jpg"
    photo_path = os.path.join(name_album, photo_filename)

    # Скачивание фото на компьютер
    start = time.time()
    response = requests.get(original_source)
    with open(photo_path, 'wb') as file:
        file.write(response.content)
    end = time.time()

    counter += 1
    delta = end - start
    print(f'{(1 + counter % 2) * "–"} Фото № {counter} (id = {photo_id}) из {photoset_total} скачалось за {delta:.2f} секунд(-ы), ураааа {(1 + counter % 2) * "–"}')

print()
print('--------------------------------------------------------------------------------------')
print()
print('Скачивание завершено!')
