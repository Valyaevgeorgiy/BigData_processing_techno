import sqlite3
import os

# Подключаемся к базе данных
conn = sqlite3.connect(
    rf"{os.path.dirname(os.path.abspath(__file__))}/chinook.db")
cursor = conn.cursor()

# Получаем данные из таблицы
cursor.execute('SELECT * FROM sales')
rows = cursor.fetchall()

lst = []

# Создаем команды INSERT INTO для каждой строки данных
for row in rows:
    row = [cell if cell != None else 'NULL' for cell in row]
    values = ", ".join([f'"{value}"' if isinstance(
        value, str) else str(value) for value in row])
    lst.append(f"INSERT INTO sales VALUES ({values});")
    print(f"INSERT INTO sales VALUES ({values});")

with open(f'{os.path.dirname(os.path.abspath(__file__))}/sqltext.sql', 'w', encoding='utf-8') as t:
    for row in lst:
        t.write(row+"\n")

# Закрываем соединение с базой данных
conn.close()
