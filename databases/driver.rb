#Nestor Alvarez
#Sept. 5, 2016
#DBC Bobolinks

require 'sqlite3'
require 'faker'

#Create SQLite3 Database
db = SQLite3::Database.new("employees.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_employees = <<-SQL
    CREATE TABLE IF NOT EXISTS employees (
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
db.execute(create_table_employees)
db.execute(create_table_employers)