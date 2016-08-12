require_relative 'puppy'

a = Puppy.new(:breed => "Husky", :owner => {last: "test", first: "tester", id: 201}, \
              :vaccinations => {:flu => true, :smallpox => true}, \
              :an_attr => {
              :fur_color => "brown", :eye_color => "blue", \
              :id_marks => ["lower-left scar", "left-eye spot"],
              :rfid => 2304
              })


#Incremental development printing statements
#They help ensure that class methods work as intended
#Accessor testing
#Type-validation left to driver program
temp1 = a.get_owner

p temp1[:last]
p temp1[:first]
p temp1[:id]

dump1 = a.get_vaccinations

p dump1

temp2 = a.get_attr
p temp2[:fur_color]
p temp2[:eye_color]
p temp2[:id_marks]
p temp2[:rfid]