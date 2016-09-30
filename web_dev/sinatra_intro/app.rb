# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write GET route that displays
# an address
get '/contact' do
  "48 Wall St, New York, NY 10005"
end

# write a GET route that displays
# an address

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}"
  else
    "Good job!"
  end
end

# write a GET route adder with route parameters

get '/:x/plus/:y' do
  num1 = params[:x].to_i
  num2 = params[:y].to_i
  sum = num1 + num2
  "#{num1} + #{num2} = #{sum}"
end
