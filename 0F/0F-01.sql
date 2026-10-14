PRAGMA page_size=4096;
PRAGMA page_size;
PRAGMA encoding="UTF-8";
PRAGMA encoding;
PRAGMA secure_delete=0;
PRAGMA secure_delete;

CREATE TABLE free (
    'StudentID' INT UNSIGNED NOT NULL,
    'Name' TEXT NOT NULL,
    'Affiliation' TEXT NOT NULL,
    'Age' INT NOT NULL,
    'EnrollmentDate' TEXT NOT NULL,
    'LargeData' TEXT NOT NULL
);

CREATE TABLE Students (
    'StudentID' INT UNSIGNED NOT NULL,
    'Name' TEXT NOT NULL,
    'Affiliation' TEXT NOT NULL,
    'Age' INT NOT NULL,
    'EnrollmentDate' TEXT NOT NULL,
    'LargeData' TEXT NOT NULL
);

INSERT INTO Students (StudentID, Name, Affiliation, Age, EnrollmentDate, LargeData) VALUES
(1, 'Student1', 'Dankook University', 20, '2023-09-01', RANDOMBLOB(350)),
(2, 'Student2', 'Yonsei University', 21, '2022-03-15', RANDOMBLOB(350)),
(3, 'Student3', 'Seoul National University', 22, '2021-08-25', RANDOMBLOB(350)),
(4, 'Student4', 'Korea University', 23, '2020-09-10', RANDOMBLOB(350)),
(5, 'Student5', 'Dankook University', 24, '2019-03-01', RANDOMBLOB(350)),
(6, 'Student6', 'Yonsei University', 21, '2023-01-10', RANDOMBLOB(350)),
(7, 'Student7', 'Seoul National University', 22, '2022-06-30', RANDOMBLOB(350)),
(8, 'Student8', 'Korea University', 20, '2021-09-15', RANDOMBLOB(350)),
(9, 'Student9', 'Dankook University', 25, '2020-05-20', RANDOMBLOB(350)),
(10, 'Student10', 'Yonsei University', 23, '2019-11-01', RANDOMBLOB(350)),
(11, 'Student11', 'Dankook University', 21, '2021-01-01', RANDOMBLOB(350)),
(12, 'Student12', 'Yonsei University', 22, '2021-02-01', RANDOMBLOB(350)),
(13, 'Student13', 'Seoul National University', 23, '2021-03-01', RANDOMBLOB(350)),
(14, 'Student14', 'Korea University', 24, '2021-04-01', RANDOMBLOB(350)),
(15, 'Student15', 'Dankook University', 25, '2021-05-01', RANDOMBLOB(350)),
(16, 'Student16', 'Yonsei University', 21, '2021-06-01', RANDOMBLOB(350)),
(17, 'Student17', 'Seoul National University', 22, '2021-07-01', RANDOMBLOB(350)),
(18, 'Student18', 'Korea University', 23, '2021-08-01', RANDOMBLOB(350)),
(19, 'Student19', 'Dankook University', 24, '2021-09-01', RANDOMBLOB(350)),
(20, 'Student20', 'Yonsei University', 25, '2021-10-01', RANDOMBLOB(350));

PRAGMA page_count;
PRAGMA freelist_count;

DROP TABLE free;

DELETE FROM Students WHERE StudentID IN (1, 2, 3, 4, 5, 6, 7, 18, 19, 20);

PRAGMA freelist_count;

PRAGMA integrity_check;
