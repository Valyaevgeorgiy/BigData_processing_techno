CREATE TABLE IF NOT EXISTS STUDENT (
    STUDENT_ID INTEGER PRIMARY KEY,
    SURNAME TEXT,
    NAME TEXT, 
    STIPEND INTEGER,
    KURS INTEGER,
    CITY TEXT,
    BIRTHDAY DATE,
    UNIV_ID INTEGER,
    FOREIGN KEY (UNIV_ID) REFERENCES UNIVERSITY (UNIV_ID)
);

CREATE TABLE IF NOT EXISTS LECTURER (
    LECTURER_ID INTEGER PRIMARY KEY,
    SURNAME TEXT,
    NAME TEXT,
    CITY TEXT,
    UNIV_ID INTEGER,
    FOREIGN KEY (UNIV_ID) REFERENCES UNIVERSITY (UNIV_ID)
);

CREATE TABLE IF NOT EXISTS SUBJECT (
    SUBJ_ID INTEGER PRIMARY KEY,
    SUBJ_NAME TEXT,
    HOUR INTEGER,
    SEMESTER INTEGER
);

CREATE TABLE IF NOT EXISTS UNIVERSITY (
    UNIV_ID INTEGER PRIMARY KEY,
    UNIV_NAME TEXT,
    RATING INTEGER,
    CITY TEXT
);

CREATE TABLE IF NOT EXISTS EXAM_MARKS (
    EXAM_ID INTEGER PRIMARY KEY,
    STUDENT_ID INTEGER,
    SUBJ_ID INTEGER,
    MARK INTEGER,
    EXAM_DATE DATE,
    FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT (STUDENT_ID),
    FOREIGN KEY (SUBJ_ID) REFERENCES SUBJECT (SUBJ_ID)
);

CREATE TABLE IF NOT EXISTS SUBJ_LECT (
    LECTURER_ID INTEGER,
    SUBJ_ID INTEGER,
    PRIMARY KEY (LECTURER_ID, SUBJ_ID)
    FOREIGN KEY (LECTURER_ID) REFERENCES LECTURER (LECTURER_ID),
    FOREIGN KEY (SUBJ_ID) REFERENCES SUBJECT (SUBJ_ID)
);