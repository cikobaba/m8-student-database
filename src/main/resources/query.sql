PRAGMA foreign_keys = ON;

-- TODO 1:
SELECT * FROM courses;



-- TODO 2:
SELECT * FROM students;



-- TODO 3:
SELECT *
FROM students
WHERE age > 20;


-- TODO 4:
SELECT
    students.name,
    students.email,
    students.age,
    courses.course_name
FROM students
         JOIN courses
              ON students.course_id = courses.course_id;



-- TODO 5:
SELECT
    courses.course_name,
    COUNT(students.id) AS student_count
FROM courses
         LEFT JOIN students
                   ON courses.course_id = students.course_id
GROUP BY courses.course_id, courses.course_name;



-- TODO 6:
UPDATE students
SET age = 23
WHERE id = 1;

SELECT *
FROM students
WHERE id = 1;



-- TODO 7:
UPDATE students
SET course_id = 3
WHERE id = 2;

SELECT
    students.name,
    courses.course_name
FROM students
         JOIN courses
              ON students.course_id = courses.course_id
WHERE students.id = 2;



-- TODO 8:
DELETE FROM students
WHERE id = 5;



-- TODO 9:
SELECT
    students.id,
    students.name,
    students.email,
    students.age,
    courses.course_name
FROM students
         JOIN courses
              ON students.course_id = courses.course_id
ORDER BY students.id;