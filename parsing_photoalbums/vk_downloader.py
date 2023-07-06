import vk_api
import urllib.request
import traceback
import time
import os

vk_u = vk_api.VkApi(
    token="")

# URL-адрес на альбом группы
url_album = "https://vk.com/album-164323476_294286505"

# Извлечение id группы и её альбома из URL-адреса
url_info = url_album.split('-')[-1].split('_')
group_id, album_id = int(url_info[0]), int(url_info[1])

# Получение количества фото и самих фото альбома
info_album = vk_u.method(
    "photos.get", {"owner_id": -group_id, "album_id": album_id})
num_photos = info_album['count']
photos = info_album['items']

# Получение названия альбома и создание локальной папки для фото
title_album = vk_u.method("photos.getAlbums", {
                          "owner_id": -group_id, "album_ids": album_id})['items'][0]['title']

# Создание пустой папки в той же директории, что и скрипт, с проверкой
if os.path.exists(title_album):
    print(f"Папка {title_album} уже существует!")
else:
    os.makedirs(title_album)
    print(f"Папка {title_album} успешно создана!")

print()
print(
    f'--------------------------- Загрузка альбома «{title_album}» начинается! ---------------------------')
print()
for index in range(num_photos):
    try:
        img = urllib.request.urlopen(photos[index]['sizes'][5]['url']).read()
        start = time.time()
        f = open(f'{title_album}/{index}.png', 'wb')
        f.write(img)
        f.close()
        end = time.time()

        delta = end - start
        print(f"{(1 + (index + 1) % 2) * '–'} Фото № {index + 1} из {num_photos} альбома «{title_album}» скачалось за {delta:.5f} секунд(-ы), ураааа {(1 + (index + 1) % 2) * '–'}")
        print()
    except Exception as e:
        print("Ошибка при скачивании фото из альбома:\n")
        print(traceback.format_exc())
        break

print('--------------------------------------------------------------------------------------')
print()
print('Скачивание завершено!')
