#Nestor Alvarez
#Sept. 5, 2016
#DBC Bobolinks

require 'sqlite3'

def create_employee(db, name, emp_id, position)
    db.execute("INSERT INTO employees (name, emp_id, position) VALUES (?, ?, ?)", [name, emp_id, position])
    return true
end

def create_employer(db, name, emp_no, aca_compliance)
    db.execute("INSERT INTO employers (name, emp_no, aca_compliance) VALUES (?, ?, ?)", [name, emp_no, aca_compliance])
    return true
end