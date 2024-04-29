# 11. Вывести информацию о месте жительства и дате рождения студентов, чья фамилия заканчивается на "ова",
# одним столбцом в следующем формате: {имя}. {фамилия}; место жительства - {город}; день рождения {дата рождения}.
# Данные отсортировать в алфавитном порядке ФИ студентов.
SELECT SUBSTR(name, 1, 1) || '. ' || surname || '; место жительства - ' ||
	city || '; день рождения ' || SUBSTR(birthday, 1, 10) || '.' AS stud_info
FROM student
WHERE surname LIKE '%ова'
ORDER BY name, surname;

# 12. Вывести общее количество изучаемых предметов.
SELECT 'Предметов: ' || count(DISTINCT subj_id)
FROM subject;

# 13. Провести количественную аналитику явки студентов на экзамены по дням.
SELECT SUBSTR(exam_date, 1, 10) || ' на экзамене было ' || count(student_id) || ' студента(-ов)'
FROM exam_marks
GROUP BY exam_date;

# 14. Для каждого университета вывести суммарную стипендию студентов с последующей сортировкой этого значения.
SELECT 'Все студенты «' || u.univ_name || '» получили стипендию в ' || SUM(s.stipend)
FROM student s JOIN university u ON s.univ_id = u.univ_id
GROUP BY s.univ_id
ORDER BY SUM(s.stipend) DESC;

# 15. Для каждого студента вывести среднее значение оценок, полученных им на всех экзаменах.
SELECT s.surname || ' ' || s.name || ' имеет среднее значение оценок экзаменов, равное ' || AVG(em.mark)
FROM exam_marks em JOIN student s ON em.student_id = s.student_id
GROUP BY em.student_id;

# 16. Вывести список студентов, получающих максимальную стипендию, отсортировав его в алфавитном порядке по фамилиям.
SELECT *
FROM student
WHERE stipend = (SELECT MAX(stipend) FROM student)
ORDER BY surname;

# 17. Вывести информацию о тех студентах, место проживания которых не совпадает с городом, где находится их университет.
SELECT surname, name, stipend, kurs, city, (SELECT univ_name FROM university WHERE university.univ_id = student.univ_id) AS univ_name
FROM student
WHERE city != (SELECT city FROM university WHERE university.univ_id = student.univ_id);

# 18. Подсчитать количество обучающихся студентов в каждом университете. Данные отсортировать по убыванию полученного количества.
SELECT univ_name, city, (
    	SELECT count(student.student_id)
    	FROM student
    	WHERE university.univ_id = student.univ_id
	) AS studentscount
FROM university
ORDER BY studentscount DESC;

# 19. Вывести список неуспевающих студентов (получивших хотя бы 1 неудовлетворительную оценку)
SELECT *
FROM student
WHERE EXISTS (
    SELECT exam_id
    FROM exam_mark
    WHERE mark < 3 AND exam_mark.student_id = student.student_id
);

# 20. Вывести список университетов с ФИ его студентов, получивших за период обучения хотя бы 1 отличную оценку. Данные отсортировать по названию университета в алфавитном порядке.
SELECT university.univ_name, student.surname, student.name
FROM university JOIN student ON university.univ_id = student.univ_id
WHERE student.student_id IN (
    SELECT student.student_id
    FROM student JOIN exam_mark ON exam_mark.student_id = student.student_id
    WHERE exam_mark.mark = 5
)
ORDER BY university.univ_name;