require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("semester.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS professors (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )

  CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )

  CREATE TABLE IF NOT EXISTS classes (
    id INTEGER PRIMARY KEY,
    subject VARCHAR(255),
    course_num INT
  )

  CREATE TABLE IF NOT EXISTS enrollment (
    id INTEGER PRIMARY KEY,
    class_id INT,
    student_id INT,
    prof_id INT,
    FOREIGN KEY(class_id) REFERENCES (classes.id),
    FOREIGN KEY(student_id) REFERENCES (students.id),
    FOREIGN KEY(prof_id) REFERENCES (professors.id)
  )
SQL
