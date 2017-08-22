# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add route that will respond to test.erb

get '/test' do
  @campuses = db.execute("SELECT * FROM campuses")
  erb :test
end

# create and delete cities via a form
post '/test' do
  db.execute("INSERT INTO campuses (cities) VALUES (?)", [params['cities']])
  redirect '/test'
end

post '/test/delete' do
  db.execute("DELETE FROM campuses WHERE cities = ?", [params['cities']])
  redirect '/test'
end

# add static resources

