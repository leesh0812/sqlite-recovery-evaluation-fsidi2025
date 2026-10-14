PRAGMA page_size=4096;
PRAGMA page_size;
PRAGMA encoding="UTF-8";
PRAGMA encoding;
PRAGMA journal_mode=WAL;
PRAGMA journal_mode;
PRAGMA wal_autocheckpoint=0;
PRAGMA wal_autocheckpoint;
PRAGMA secure_delete=1;
PRAGMA secure_delete;

CREATE TABLE Students (
    'StudentID' INT UNSIGNED NOT NULL,
    'Name' TEXT NOT NULL,
    'Affiliation' TEXT NOT NULL,
    'Age' INT NOT NULL,
    'EnrollmentDate' TEXT NOT NULL
);

INSERT INTO Students (StudentID, Name, Affiliation, Age, EnrollmentDate) VALUES 
(1, 'Student1', 'Dankook University', 20, '2023-09-01'),
(2, 'Student2', 'Yonsei University', 21, '2022-03-15'),
(3, 'Student3', 'Seoul National University', 22, '2021-08-25'),
(4, 'Student4', 'Korea University', 23, '2020-09-10'),
(5, 'Student5', 'Dankook University', 24, '2019-03-01'),
(6, 'Student6', 'Yonsei University', 21, '2023-01-10'),
(7, 'Student7', 'Seoul National University', 22, '2022-06-30'),
(8, 'Student8', 'Korea University', 20, '2021-09-15'),
(9, 'Student9', 'Dankook University', 25, '2020-05-20'),
(10, 'Student10', 'Yonsei University', 23, '2019-11-01'),
(11, 'Student11', 'Dankook University', 21, '2021-01-01'),
(12, 'Student12', 'Yonsei University', 22, '2021-02-01'),
(13, 'Student13', 'Seoul National University', 23, '2021-03-01'),
(14, 'Student14', 'Korea University', 24, '2021-04-01'),
(15, 'Student15', 'Dankook University', 25, '2021-05-01'),
(16, 'Student16', 'Yonsei University', 21, '2021-06-01'),
(17, 'Student17', 'Seoul National University', 22, '2021-07-01'),
(18, 'Student18', 'Korea University', 23, '2021-08-01'),
(19, 'Student19', 'Dankook University', 24, '2021-09-01'),
(20, 'Student20', 'Yonsei University', 25, '2021-10-01');

DELETE FROM Students;
DROP TABLE Students;

CREATE TABLE Students_2 (
    'StudentID' INT UNSIGNED NOT NULL,
    'Name' TEXT NOT NULL,
    'Affiliation' TEXT NOT NULL,
    'Age' INT NOT NULL,
    'EnrollmentDate' TEXT NOT NULL
);

INSERT INTO Students_2 (StudentID, Name, Affiliation, Age, EnrollmentDate) VALUES
(21, 'Student31', 'Dankook University', 20, '2023-09-01'),
(22, 'Student32', 'Yonsei University', 21, '2022-03-15'),
(23, 'Student33', 'Seoul National University', 22, '2021-08-25'),
(24, 'Student34', 'Korea University', 23, '2020-09-10'),
(25, 'Student35', 'Dankook University', 24, '2019-03-01'),
(26, 'Student36', 'Yonsei University', 21, '2023-01-10'),
(27, 'Student37', 'Seoul National University', 22, '2022-06-30'),
(28, 'Student38', 'Korea University', 20, '2021-09-15'),
(29, 'Student39', 'Dankook University', 25, '2020-05-20'),
(30, 'Student40', 'Yonsei University', 23, '2019-11-01'),
(31, 'Student41', 'Dankook University', 21, '2021-01-01'),
(32, 'Student42', 'Yonsei University', 22, '2021-02-01'),
(33, 'Student43', 'Seoul National University', 23, '2021-03-01'),
(34, 'Student44', 'Korea University', 24, '2021-04-01'),
(35, 'Student45', 'Dankook University', 25, '2021-05-01'),
(36, 'Student46', 'Yonsei University', 21, '2021-06-01'),
(37, 'Student47', 'Seoul National University', 22, '2021-07-01'),
(38, 'Student48', 'Korea University', 23, '2021-08-01'),
(39, 'Student49', 'Dankook University', 24, '2021-09-01'),
(40, 'Student50', 'Yonsei University', 25, '2021-10-01');
