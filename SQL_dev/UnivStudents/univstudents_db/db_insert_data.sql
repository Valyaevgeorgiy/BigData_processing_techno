INSERT INTO exam_marks (exam_id, student_id, subj_id, mark, exam_date) VALUES 
(1, 97, 10, 1, '2020-05-26 00:00:00.000000'),  
(2, 85, 73, 4, '2020-02-21 00:00:00.000000'),  
(3, 64, 73, 4, '2020-02-21 00:00:00.000000'),  
(4, 126, 56, 1, '2020-05-26 00:00:00.000000'), 
(5, 71, 10, 3, '2020-05-26 00:00:00.000000'),  
(6, 117, 56, 4, '2020-05-26 00:00:00.000000'), 
(7, 79, 12, 1, '2021-06-02 00:00:00.000000'),  
(8, 116, 12, 1, '2020-05-26 00:00:00.000000'), 
(9, 91, 22, 5, '2020-02-22 00:00:00.000000'),  
(10, 110, 22, 1, '2019-12-25 00:00:00.000000'),
(11, 76, 56, 2, '2020-05-27 00:00:00.000000'), 
(12, 88, 56, 5, '2019-09-02 00:00:00.000000'), 
(13, 76, 12, 2, '2020-02-10 00:00:00.000000'), 
(14, 85, 13, 1, '2019-05-29 00:00:00.000000'), 
(15, 62, 94, 4, '2021-06-02 00:00:00.000000'), 
(16, 92, 10, 5, '2019-05-29 00:00:00.000000'), 
(17, 99, 94, 5, '2020-05-26 00:00:00.000000'), 
(18, 101, 94, 2, '2019-05-26 00:00:00.000000'),
(19, 128, 73, 3, '2021-06-02 00:00:00.000000'),
(20, 203, 43, 3, '2019-12-31 00:00:00.000000'),
(21, 123, 56, 2, '2020-05-27 00:00:00.000000'),
(22, 105, 10, 3, '2020-05-26 00:00:00.000000'),
(23, 90, 22, 4, '2019-05-29 00:00:00.000000'),
(24, 101, 13, 2, '2021-06-02 00:00:00.000000'),
(25, 77, 12, 1, '2019-05-29 00:00:00.000000'),
(26, 83, 22, 1, '2020-08-18 00:00:00.000000'),
(27, 128, 13, 5, '2020-09-21 00:00:00.000000'),
(28, 10, 12, 5, '2019-05-29 00:00:00.000000'),
(29, 1, 43, 1, '2020-10-24 00:00:00.000000'),
(30, 82, 56, 5, '2019-05-29 00:00:00.000000'),
(31, 73, 11, 1, '2019-05-29 00:00:00.000000'),
(32, 65, 73, 1, '2020-02-21 00:00:00.000000'),
(33, 103, 22, 2, '2021-06-02 00:00:00.000000'),
(34, 32, 10, 4, '2000-01-23 00:00:00.000000'),
(43, 6, 22, 4, '2000-01-18 00:00:00.000000'),
(75, 55, 10, 5, '2000-01-23 00:00:00.000000'),
(95, 149, 13, 2, '2019-05-29 00:00:00.000000'),
(100, 15, 10, 2, '2020-12-03 00:00:00.000000'),
(101, 654, 11, 4, '2019-05-30 00:00:00.000000'),
(102, 63, 11, 5, '2021-06-03 00:00:00.000000'),
(103, 63, 94, 4, '2021-06-04 00:00:00.000000'),
(104, 63, 73, 3, '2021-06-05 00:00:00.000000'),
(105, 92, 14, 4, '2021-06-05 00:00:00.000000'),
(106, 92, 56, 3, '2021-06-07 00:00:00.000000'),
(145, 12, 10, 2, '2006-05-12 00:00:00.000000'),
(238, 12, 10, 5, '2006-06-17 00:00:00.000000'),
(639, 55, 10, NULL, '2019-05-29 00:00:00.000000');

INSERT INTO lecturer (lecturer_id, surname, name, city, univ_id) VALUES
(1, 'Сафонова', 'Лукия', 'Смоленск', 46),
(2, 'Зайцева', 'Юлия', 'Белгород', 10),
(3, 'Мамонтова', 'Акулина', 'Троицк (Моск.)', 11),
(4, 'Богданова', 'Оксана', 'Всеволожск', 18),
(5, 'Брагина', 'Нинель', 'Кижи', 48),
(6, 'Максимова', 'Иванна', 'Сковородино', 10),
(7, 'Дмитриева', 'Оксана', 'Шарья', 48),
(8, 'Ситникова', 'Светлана', 'Сорочинск', 18),
(9, 'Крюкова', 'Людмила', 'Анива', 18),
(10, 'Артемьева', 'Майя', 'Курск', 18),
(11, 'Куликова', 'Ираида', 'Городовиковск', 47),
(12, 'Кудрявцева', 'Анна', 'Петушки', 47),
(13, 'Зыкова', 'Оксана', 'Калач', 10),
(14, 'Стрелков', 'Руслан', 'Королев', 46),
(15, 'Дорофеев', 'Прокофий', 'Санкт-Петербург', 32),
(16, 'Волков', 'Михаил', 'Черусти', 45),
(17, 'Сафонов', 'Будимир', 'Киржач', 18),
(18, 'Зимин', 'Юлиан', 'Черский', 46),
(19, 'Алексеев', 'Елисей', 'Мценск', 10),
(20, 'Тихонов', 'Ладомир', 'Кропоткин (Краснод.)', 15),
(21, 'Елисеев', 'Виссарион', 'Курганинск', 48),
(22, 'Беспалов', 'Юлиан', 'Рыбинск', 15),
(23, 'Беляков', 'Мефодий', 'Рославль', 32),
(24, 'Колесников', 'Борис', 'Воронеж', 10),
(46, 'Никонов', 'Иван', 'Воронеж', 10),
(74, 'Лагутин', 'Павел', 'Москва', 22),
(108, 'Струков', 'Николай', 'Москва', 22),
(276, 'Николаев', 'Виктор', 'Воронеж', 10),
(328, 'Сорокин', 'Андрей', 'Орел', 10);

INSERT INTO student (student_id, surname, name, stipend, kurs, city, birthday, univ_id) VALUES
(1, 'Иванов', 'Иван', 150, 1, 'Орел', '2002-12-03 00:00:00.000000', 10),
(3, 'Петров', 'Петр', 200, 3, 'Курск', '2000-12-01 00:00:00.000000', 10),
(6, 'Сидоров', 'Вадим', 150, 4, 'Москва', '1999-06-07 00:00:00.000000', 22),
(10, 'Кузнецов', 'Борис', 0, 2, 'Брянск', '2001-12-08 00:00:00.000000', 10),
(12, 'Зайцева', 'Ольга', 250, 2, 'Липецк', '2001-05-01 00:00:00.000000', 10),
(15, 'Ордуханян', 'Рафаэль', 120, 1, 'Липецк', '2003-06-01 00:00:00.000000', 18),
(32, 'Котов', 'Павел', 150, 5, 'Белгород', '2001-02-28 00:00:00.000000', 14),
(55, 'Белкин', 'Вадим', 250, 5, 'Воронеж', '2000-01-07 00:00:00.000000', 10),
(56, 'Дуб', 'Елизавета', 150, 2, 'Усть-Кут', '2004-07-04 00:00:00.000000', 48),
(57, 'Кудряшова', 'Вера', 100, 5, 'Нижневартовск', '2002-02-18 00:00:00.000000', 14),
(58, 'Журавлева', 'Вера', 0, 4, 'Новосибирск', '2003-06-14 00:00:00.000000', 11),
(60, 'Рожкова', 'Пелагея', 0, 3, 'Рубцовск', '2001-09-15 00:00:00.000000', 48),
(61, 'Соколова', 'Ия', 100, 1, 'Колпашево', '2002-06-25 00:00:00.000000', 18),
(62, 'Семенова', 'Вероника', 0, 3, 'Вологда', '2003-10-04 00:00:00.000000', 10),
(63, 'Пак', 'Ирина', 100, 1, 'Магадан', '2000-08-22 00:00:00.000000', 15),
(64, 'Жук', 'Оксана', 250, 1, 'Воркута', '2000-11-16 00:00:00.000000', 47),
(65, 'Сергеева', 'Фёкла', 100, 5, None, '2000-02-19 00:00:00.000000', 10),
(66, 'Некрасова', 'Вероника', 250, 2, 'Иркутск', '2004-08-23 00:00:00.000000', 10),
(68, 'Казакова', 'Ольга', 250, 4, 'Кемерово', '2000-03-29 00:00:00.000000', 44),
(69, 'Шубина', 'Елена', 0, 2, 'Камень-на-Оби', '2002-08-24 00:00:00.000000', 45),
(70, 'Миронова', 'Анна', 200, 2, 'Владикавказ', '2000-10-08 00:00:00.000000', 46),
(71, 'Кондрат', 'Синицин', 200, 4, 'Ишим', '2001-02-23 00:00:00.000000', 18),
(72, 'Пономарева', 'Алина', 250, 2, 'Ангарск', '2002-10-07 00:00:00.000000', 48),
(73, 'Одинцова', 'Лидия', 100, 5, 'Верхний Баскунчак', '2002-03-07 00:00:00.000000', 44),
(74, 'Гуляева', 'Рукижат', 0, 3, 'Невельск (Сахалин)', '2002-07-23 00:00:00.000000', 22),
(75, 'Игнатова', 'Зинаида', 100, 5, 'Ростов', '2000-09-26 00:00:00.000000', 22),
(76, 'Мельникова', 'Дарья', 100, 5, 'Архангельск', '2002-08-01 00:00:00.000000', 10),
(77, 'Мишина', 'Светлана', 150, 2, 'Рыльск', '1997-05-22 00:00:00.000000', 18),
(78, 'Агафонов', 'Василий', 150, 1, 'Грозный', '1994-10-29 00:00:00.000000', 10),
(79, 'Афанасьева', 'Анжелика', 0, 2, 'Уфа', '1996-11-22 00:00:00.000000', 32),
(80, 'Фролова', 'Василиса', 100, 3, 'Кисловодск', '1999-06-02 00:00:00.000000', 44),
(82, 'Лапина', 'Элеонора', 150, 3, 'Джубга', '1997-11-23 00:00:00.000000', 45),
(83, 'Сорокина', 'Ирина', 200, 3, 'Усмань', '1993-09-28 00:00:00.000000', 48),
(85, 'Казакова', 'Мария', 150, 4, 'Нальчик', '1994-02-18 00:00:00.000000', 32),
(86, 'Жукова', 'Фекла', 150, 3, 'Магадан', '1998-10-06 00:00:00.000000', 46),
(88, 'Жданова', 'Ирина', 200, 3, 'Тверь', '2002-03-02 00:00:00.000000', 10),
(89, 'Валерия', 'Овчинникова', 200, 5, 'Улан-Удэ', '2000-06-15 00:00:00.000000', 18),
(90, 'Костина', 'Кира', 0, 4, 'Устюжна', '1995-07-15 00:00:00.000000', 14),
(91, 'Блохина', 'Ираида', 250, 3, 'Новый Уренгой', '1997-03-23 00:00:00.000000', 22),
(92, 'Мельникова', 'Светлана', 250, 4, 'Кропоткин (Краснод.)', '1998-03-24 00:00:00.000000', 15),
(94, 'Васильева', 'Оксана', 0, 1, 'Кизилюрт', '1994-05-14 00:00:00.000000', 32),
(95, 'Сорокина', 'Валерия', 150, 1, 'Енисейск', '1995-03-01 00:00:00.000000', 45),
(96, 'Тимофеева', 'Фаина', 150, 3, None, '1999-08-01 00:00:00.000000', 45),
(97, 'Вишнякова', 'Анжела', 200, 2, 'Иваново', '2002-02-10 00:00:00.000000', 46),
(99, 'Борисова', 'Марина', 150, 1, 'Рославль', '1995-08-07 00:00:00.000000', 10),
(101, 'Калашников', 'Евгений', 200, 2, 'Калининград', '1998-02-27 00:00:00.000000', 48),
(103, 'Трофимов', 'Владислав', 250, 5, 'Верхоянск', '1995-03-24 00:00:00.000000', 11),
(104, 'Бирюков', 'Герасим', 0, 4, 'Жуковский', '1999-10-16 00:00:00.000000', 44),
(105, 'Антонов', 'Анатолий', 100, 1, 'Сыктывкар', '1997-04-08 00:00:00.000000', 22),
(107, 'Морозов', 'Кирилл', 250, 2, 'Кропоткин (Краснод.)', '2000-09-29 00:00:00.000000', 44),
(108, 'Назаров', 'Икром', 150, 4, 'Саянск', '2001-12-15 00:00:00.000000', 47),
(110, 'Суханов', 'Константин', 250, 3, 'Курск', '1996-11-22 00:00:00.000000', 14),
(112, 'Захаров', 'Софон', 150, 3, 'Мурманск', '1994-03-19 00:00:00.000000', 46),
(113, 'Аксенов', 'Валерий', 150, 1, 'Мурманск', '1994-10-27 00:00:00.000000', 10),
(114, 'Панов', 'Арсений', 250, 1, 'Геленджик', '1996-12-23 00:00:00.000000', 32),
(116, 'Федоров', 'Гостомысл', 100, 4, 'Новый Уренгой', '2000-11-16 00:00:00.000000', 10),
(117, 'Лазарев', 'Константин', 100, 2, 'Славянск-на-Кубани', '1998-05-22 00:00:00.000000', 47),
(118, 'Кондратьев', 'Николай', 150, 3, 'Ханты-Мансийск', '1999-10-28 00:00:00.000000', 14),
(121, 'Воронова', 'Антонина', 0, 4, 'Усть-Джегута', '1999-02-04 00:00:00.000000', 46),
(123, 'Веселов', 'Тимур', 150, 1, 'Невинномысск', '1998-04-28 00:00:00.000000', 11),
(124, 'Юдин', 'Савва', 0, 2, 'Усинск', '2001-12-02 00:00:00.000000', 18),
(125, 'Пономарев', 'Варфоромей', 200, 4, 'Улан-Удэ', '2000-12-15 00:00:00.000000', 44),
(126, 'Жуков', 'Пров', 0, 3, 'Кыштым', '1998-09-11 00:00:00.000000', 11),
(128, 'Васильев', 'Матвей', 100, 1, 'Чебоксары', '2000-07-18 00:00:00.000000', 46),
(130, 'Кудряшов', 'Роман', 250, 4, 'Нижний Новгород', '1997-08-26 00:00:00.000000', 32),
(131, 'Ковалев', 'Ефим', 200, 2, 'Волгоград', '1995-11-28 00:00:00.000000', 47),
(133, 'Жуковский', 'Юрий', 150, 4, 'Сургут (Хант.)', '1996-05-30 00:00:00.000000', 22),
(135, 'Комаров', 'Ипат', 0, 1, 'Нерчинск', '2000-07-17 00:00:00.000000', 14),
(136, 'Ефимов', 'Яков', 200, 1, 'Тимашевск', '2000-09-23 00:00:00.000000', 32),
(137, 'Кулаков', 'Феофан', 150, 3, 'Волоколамск', '2001-03-14 00:00:00.000000', 46),
(139, 'Журавлев', 'Фома', 200, 2, 'Улан-Удэ', '1997-07-12 00:00:00.000000', 18),
(140, 'Ширяев', 'Андрей', 150, 2, 'Джубга', '1997-09-13 00:00:00.000000', 46),
(141, 'Ершов', 'Митрофан', 250, 5, 'Пятигорск', '2001-05-28 00:00:00.000000', 22),
(143, 'Бирюков', 'Мартин', 100, 4, 'Курганинск', '2000-11-14 00:00:00.000000', 47),
(144, 'Ситников', 'Викентий', 150, 5, 'Иркутск', '2003-10-05 00:00:00.000000', 46),
(146, 'Русаков', 'Давид', 250, 2, 'Байкальск', '1998-08-07 00:00:00.000000', 47),
(147, 'Симонов', 'Семен', 100, 5, 'Беломорск', '2000-03-17 00:00:00.000000', 22),
(148, 'Гуляев', 'Кузьма', 150, 5, 'Корсаков', '1999-10-13 00:00:00.000000', 44),
(149, 'Вячеслав', 'Пахомов', 250, 3, 'Игарка', '1997-05-14 00:00:00.000000', 14),
(200, 'Баранов', 'Александр', 220, 2, 'Москва', '2001-08-18 00:00:00.000000', 44),
(201, 'Архипов', 'Андрей', 180, 1, 'Орел', '2000-01-28 00:00:00.000000', 22),
(202, 'Владимиров', 'Анатолий', 200, 2, 'Курск', '2003-05-21 00:00:00.000000', 14),
(203, 'Петрова', 'Екатерина', 250, 4, 'Белгород', '2001-05-21 00:00:00.000000', 14),
(204, 'Петров', 'Вадим', 250, 2, 'Брянск', '2002-05-21 00:00:00.000000', 44),
(205, 'Иванова', 'Мария', 200, 1, 'Липецк', '2002-04-11 00:00:00.000000', 32),
(206, 'Киселев', 'Владимир', 210, 2, 'Орел', '2003-02-10 00:00:00.000000', 44),
(207, 'Миронова', 'Федор', 200, 3, 'Москва', '2002-04-15 00:00:00.000000', 45),
(265, 'Павлов', 'Андрей', 0, 3, 'Воронеж', '2000-11-05 00:00:00.000000', 10),
(276, 'Петров', 'Антон', 200, 4, 'Ульяновск', '2001-08-05 00:00:00.000000', 22),
(654, 'Лукин', 'Артем', 200, 3, 'Воронеж', '2001-12-01 00:00:00.000000', 10);

INSERT INTO subject (subj_id, subj_name, hour, semester) VALUES
(10, 'Информатика', 56, 1),
(11, 'Программирование на языках Python и SQL', 34, 2),
(12, 'Анализ данных', 42, 1),
(13, 'ОБЖ', 34, 2),
(14, 'Обработка данных и моделирование в Excel', 36, 3),
(22, 'Физика', 34, 1),
(23, 'Теория вероятностей и математическая статистика', 72, 4),
(43, 'Математика', 56, 2),
(56, 'История', 34, 4),
(72, 'Физкультура', 32, 4),
(73, 'Физкультура', 34, 5),
(94, 'Английский язык', 56, 3);

INSERT INTO subj_lect (lecturer_id, subj_id) VALUES
(46, 56),
(19, 13),
(74, 94),
(11, 43),
(18, 11),
(2, 56),
(108, 13),
(6, 12),
(6, 11),
(15, 11),
(3, 11),
(11, 56),
(1, 94),
(16, 94),
(22, 10),
(108, 10),
(12, 10),
(23, 10),
(16, 11),
(5, 13),
(22, 73),
(20, 10),
(24, 22),
(2, 23);

INSERT INTO university (univ_id, univ_name, rating, city) VALUES
(10, 'ВГУ', 296, 'Воронеж'),
(11, 'НГУ', 345, 'Новосибирск'),
(12, 'МФТИ', 500, 'Москва'),
(14, 'БГУ', 326, 'Белгород'),
(15, 'ТГУ', 368, 'Томск'),
(18, 'ВГМА', 327, 'Воронеж'),
(22, 'МГУ', 606, 'Москва'),
(32, 'РГУ', 416, 'Ростов'),
(44, 'ФинУ', 330, 'Москва'),
(45, 'МГТУ им. Баумана', 372, 'Москва'),
(46, 'ФГБОУ "Политех"', 304, 'Санкт-Петербург'),
(47, 'КФУ', None, 'Казань'),
(48, 'УЛГУ', 231, 'Ульяновск');