-- Exo 5
-- Requêtes avec jointure « many to many »

-- Exo 5.1
-- Listez tous les students avec leurs tags
SELECT student.id, student.lastname, student.firstname, tag.id, tag.name
FROM student_tag
JOIN student ON student.id = student_tag.student_id
JOIN tag ON tag.id = student_tag.tag_id

-- Exo 5.2
-- Listez tous les tags avec leurs students
SELECT tag.id, tag.name, student.id, student.lastname, student.firstname
FROM student_tag
JOIN tag ON tag.id = student_tag.tag_id
JOIN student ON student.id = student_tag.student_id

-- Exo 5.3
-- Listez le student dont l'id est `2` avec ses tags
SELECT student.id, student.lastname, student.firstname, tag.id, tag.name
FROM student_tag
JOIN student ON student.id = student_tag.student_id
JOIN tag ON tag.id = student_tag.tag_id
WHERE student_tag.student_id = 2

-- Exo 5.4
-- Listez le tag dont l'id est `2` avec ses students
SELECT tag.id, tag.name, student.id, student.lastname, student.firstname
FROM student_tag
JOIN tag ON tag.id = student_tag.tag_id
JOIN student ON student.id = student_tag.student_id
WHERE student_tag.tag_id = 2
