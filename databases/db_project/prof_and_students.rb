require 'sqlite3'

db = SQLite3::Database.new("semester.db")
db.results_as_hash = true

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
    FOREIGN KEY(class_id) REFERENCES classes(id),
    FOREIGN KEY(student_id) REFERENCES students(id)
  )
SQL

db.execute(create_class_table)
db.execute(create_student_table)
db.execute(create_enrollment_table)

subjects = ["psychology", "computer science", "mathematics", "anatomy",
  "biology", "chemsitry", "philosophy", "underwater basketweaving", "fencing",
  "street fighting", "professional gaming", "business"]

def enroll_student(db, class_id, student_id)
  db.execute("INSERT INTO enrollment (class_id, student_id) VALUES (?, ?)", [class_id, student_id])
end

def create_course(db, course_num, subject)
  db.execute("INSERT INTO classes (course_num, subject) VALUES (?, ?)", [course_num, subject])
end

def get_course_listing(db)
  db.execute("SELECT id FROM classes")
end

def register_student(db, name, age)
  db.execute("INSERT INTO students (name, age) VALUES (?, ?)", [name, age])
end

def get_student_id(db, name, age)
  db.execute("SELECT * FROM students WHERE name=? AND age=?", [name, age])
end

def show_enrollments(db, student_id)
  statement = <<-SQL
    SELECT *
    FROM   enrollment JOIN classes ON classes.id = enrollment.class_id
    WHERE  enrollment.student_id = ?
  SQL
  db.execute(statement, student_id)
end

def class_options(db, student_id)
  statement = <<-SQL
    SELECT DISTINCT
            classes.id,
            classes.subject,
            classes.course_num
    FROM    students,
            classes LEFT OUTER JOIN enrollment ON students.id = enrollment.student_id
    WHERE   students.id = ?
  SQL

  db.execute(statement, student_id)
end

# create course
# 10.times do
#   create_course(db, rand(100..999), subjects.sample)
# end

puts "Welcome to the Enroll-o-matic at Get-Smart University!"
puts "What is your name?"
name = gets.chomp
puts "Whats is your age?"
age = gets.chomp.to_i

register_student(db, name, age)
student = get_student_id(db, name, age).first

puts "Your student id is #{student["id"]}"
puts "\nSelect a class"

classes = class_options(db, student["id"])

classes.each_index do |i|
  c = classes[i]
  puts "#{i + 1}. #{c["subject"].upcase} #{c["course_num"]}"
end

puts "Please select a class by number to enroll, type 'quit' to exit"
enroll = gets.chomp
until enroll == "quit"
  enroll_student(db, enroll.to_i, student["id"])
  enroll = gets.chomp
end

puts "You are enrolled in"
enrollments = show_enrollments(db, student["id"])
enrollments.each do |enrollment|
  puts "#{enrollment["subject"].upcase} #{enrollment["course_num"]}"
end
