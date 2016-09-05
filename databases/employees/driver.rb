  #Nestor Alvarez
#Sept. 5, 2016
#DBC Bobolinks

require 'sqlite3'
require 'faker'
require_relative 'employees'

#Create SQLite3 Database
db = SQLite3::Database.new("employees.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_employees = <<-SQL
    CREATE TABLE employees (
      id INTEGER PRIMARY KEY, 
      name VARCHAR(255), 
      emp_id INT, 
      position VARCHAR(255), 
      FOREIGN KEY (emp_id) REFERENCES employers(id)
    )
SQL

create_table_employers = <<-SQL
    CREATE TABLE employers (
      id INTEGER PRIMARY KEY, 
      name VARCHAR(255), 
      emp_no INT, 
      aca_compliance BOOLEAN
    )
SQL

#Execute table creation
db.execute("DROP TABLE employees")
db.execute("DROP TABLE employers")
db.execute(create_table_employees)
db.execute(create_table_employers)

#Populate the employees table
50.times do
  create_employee(db, Faker::Name.name, rand(1..20), Faker::Company.profession)
end

20.times do
  create_employer(db, Faker::Company.name, rand(1..10000000), rand(0..1))
end

#Playing around with queries
selection = db.execute("SELECT * FROM employers WHERE emp_no >= 500")

selection.each do |employer| 
  puts("#{employer['name']} has #{employer['emp_no']} employees.")
end

puts("---------------------------------------------------------")

selection = db.execute("SELECT * FROM employees WHERE position = 'doctor'")

selection.each do |employee| 
  puts("#{employee['name']} is a #{employee['position']}.")
end

puts("---------------------------------------------------------")

selection = db.execute("SELECT * FROM employees WHERE position = 'programmer'")

selection.each do |employee| 
  puts("#{employee['name']} is a #{employee['position']}.")
end

puts("---------------------------------------------------------")

selection = db.execute("SELECT * FROM employees WHERE position = 'accountant'")

selection.each do |employee| 
  puts("#{employee['name']} is a #{employee['position']}.")
end

puts("---------------------------------------------------------")

#Hash isn't always preferred in the case when both tables have variables for the same name
db.results_as_hash = false

selection = db.execute("SELECT employees.name, employers.name FROM employees JOIN employers ON emp_id = employers.id WHERE emp_id < 10")

selection.each do |employee| 
  puts("#{employee[0]} works for #{employee[1]}")
end