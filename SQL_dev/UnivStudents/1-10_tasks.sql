# 1. Вывести данные о студентах в следующем порядке столбцов: Курс, Фамилия, Имя, Размер стипендии. Данные отсортировать по возрастанию курса.
SELECT kurs, surname, name, stipend
FROM student
ORDER BY kurs;

# 2. Вывести информацию о всех предметах, изучаемых в 4 семестре.
SELECT subj_name, hour
FROM subject
WHERE semester = 4;

# 3. Вывести ФИ студентов, обучающихся на третьем и более старших курсах.
SELECT surname, name
FROM student
WHERE kurs >= 3;

# 4. Вывести фамилию, имя и номер курса студентов, у которых размер стипендии превышает 140 (у.е.). Данные отсортировать по убыванию курса.
SELECT surname, name, kurs
FROM student
WHERE stipend > 140
ORDER BY kurs DESC;

# 5. Вывести название и количество часов тех предметов, на которые выделяется более 30 часов. Данные отсортировать по убыванию количества часов.
SELECT subj_name, hour
FROM subject
WHERE hour > 30 
ORDER BY hour DESC;

# 6. Получить список студентов старше 25 лет, обучающихся на 1 курсе.
SELECT surname, name, kurs, birthday, (strftime("%Y %m %d","now") - strftime("%Y %m %d", birthday)) as age 
FROM student
WHERE kurs = 1 AND (strftime("%Y %m %d","now") - strftime("%Y %m %d", birthday)) > 25;

# 7. Получить список университетов, расположенных в Москве и имеющих рейтинг, больший рейтинга ВГУ. Данные отсортировать по убыванию рейтинга.
SELECT *
FROM university
WHERE city = "Москва"
	AND rating > (
		SELECT rating
		FROM university
		WHERE univ_name = "ВГУ"
	)
ORDER BY rating DESC;

# 8. Вывести информацию о студентах, у которых имя начинается на букву "И" или "С". Данные отсортировать в алфавитном порядке ФИ студентов.
SELECT *
FROM student
WHERE name LIKE 'И%' OR name LIKE 'С%'
ORDER BY surname, name;

# 9. Получить список преподавателей, проживающих в городах, в названиях которых есть дефис.
SELECT *
FROM lecturer
WHERE city LIKE '%-%';

# 10. Найти предметы, в названиях которых состоят из более 1 слова. Данные отсортировать в алфавитном порядке названий предметов.
SELECT *
FROM subject
WHERE subj_name LIKE "% %"
ORDER BY subj_name;