#Nestor Alvarez
#Sept. 5, 2016
#DBC Bobolinks

require 'sqlite3'

def create_employee(db, name, emp_id, position)
    db.execute("INSERT INTO employees (name, emp_id, position) VALUES (?, ?, ?)", [name, emp_id, position])
    return true
end