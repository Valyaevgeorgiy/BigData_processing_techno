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
album_url = ''  # ...
album_id = album_url.split('/')[-1]

# Получение количества фотографий в альбоме с доп парсингом
photoset_info = flickr.photosets.getInfo(photoset_id=album_id)
xml_string = etree.tostring(photoset_info)
root = ET.fromstring(xml_string)
photoset_total = int(root.find('.//photoset').get('count_photos'))
name_album = root.find('.//title').text

# Создание пустой папки в той же директории, что и скрипт, с проверкой
if os.path.exists(name_album):
    print(f"Папка {name_album} уже существует!")
else:
    os.makedirs(name_album)
    print(f"Папка {name_album} успешно создана!")
print()

# Расчет количества пачек
batch_size = 500
num_batches = (photoset_total + batch_size - 1) // batch_size

# Скачивание фотографий пачками
print(
    f'--------------------------- Загрузка альбома «{name_album}» начинается! ---------------------------')
counter = 0
for batch in range(num_batches):
    print()
    print('--------------------------------------------------------------------------------------')
    print(f"Загрузка партии № {batch + 1} из 500 фотографий...")
    print()
    # Получение списка фотографий пачки
    batch_start = batch * batch_size
    batch_end = min((batch + 1) * batch_size, photoset_total)
    photos = flickr.photosets.getPhotos(
        photoset_id=album_id, per_page=batch_size, page=batch + 1)
    xml_string = etree.tostring(photos)

    # Преобразование XML-строки в объект Element
    root = ET.fromstring(xml_string)

    # Получение списка элементов фотографий
    photo_elements = root.findall('.//photo')

    # Скачивание фотографий пачки
    for photo in photo_elements:

        # обработка ситуации, когда инет станет в моменте плохой, и нужно перезапускать код заново
        # if counter >= 1160:  # (номер фото, перед которым случилась ошибка)

        # Получение id фото
        photo_id = photo.get('id')

        # Получение всех размеров фото по качеству
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
        # else:
        #     counter += 1
        #     print(f'{(2 + counter % 2) * "–"} Фото № {counter} уже скачано, гоу! {(2 + counter % 2) * "–"}')

print('--------------------------------------------------------------------------------------')
print()
print('Скачивание завершено!')
