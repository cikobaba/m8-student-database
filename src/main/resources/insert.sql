PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE FROM students;
DELETE FROM courses;

-- TODO 1:
INSERT INTO courses (course_id, course_name, credits)
VALUES
    (1, 'Java Programming', 6),
    (2, 'Database Fundamentals', 4),
    (3, 'Web Development', 5);



-- TODO 2:
INSERT INTO students (id, name, email, age, course_id)
VALUES
    (1, 'Alice', 'alice@example.com', 22, 1),
    (2, 'Bob', 'bob@example.com', 19, 2),
    (3, 'Charlie', 'charlie@example.com', 24, 1),
    (4, 'Diana', 'diana@example.com', 21, 3),
    (5, 'Ethan', 'ethan@example.com', 20, 2);



-- TODO 3:
INSERT INTO students (id, name, email, age, course_id)
VALUES (6, 'Invalid Course Student', 'invalid@example.com', 20, 999);
