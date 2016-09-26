require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("semester.db")


create_prof_table = <<-SQL
  CREATE TABLE IF NOT EXISTS professors (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

create_student_table = <<-SQL
  CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

create_class_table = <<-SQL
  CREATE TABLE IF NOT EXISTS classes (
    id INTEGER PRIMARY KEY,
    subject VARCHAR(255),
    course_num INT
  )
SQL

create_enrollment_table = <<-SQL
  CREATE TABLE IF NOT EXISTS enrollment (
    id INTEGER PRIMARY KEY,
    class_id INT,
    student_id INT,
    prof_id INT,
    FOREIGN KEY(class_id) REFERENCES classes(id),
    FOREIGN KEY(student_id) REFERENCES students(id),
    FOREIGN KEY(prof_id) REFERENCES professors(id)
  )
SQL

db.execute(create_prof_table)
db.execute(create_class_table)
db.execute(create_student_table)
db.execute(create_enrollment_table)

subjects = ["psychology", "computer science", "mathematics", "anatomy",
  "biology", "chemsitry", "philosophy", "underwater basketweaving", "fencing",
  "street fighting", "professional gaming", "business"]

def create_course(db, course_num, subject)
  db.execute("INSERT INTO classes (course_num, subject) VALUES (?, ?)", [course_num, subject])
end

# 10.times do
#   n = rand(100..999)
#   create_course(db, n, subjects.sample)
# end

def create_prof(db, name)
  db.execute("INSERT INTO professors (name) VALUES (?)", [name])
end

# 5.times do
#   create_prof(db, Faker::Name.name)
# end

def register_student(db, name, age)
  db.execute("INSERT INTO students (name, age) VALUES (?, ?)", [name, age])
end

def get_student_id(db, name, age)
  db.execute("SELECT id FROM students WHERE name=? AND age=?", [name, age])
end

puts "Welcome to the Enroll-o-matic at Get-Smart University!"
puts "What is your name?"
name = gets.chomp
puts "Whats is your age?"
age = gets.chomp.to_i

# register_student(db, name, age)
student_id = get_student_id(db, name, age).first

puts "Your student id is #{student_id}"
