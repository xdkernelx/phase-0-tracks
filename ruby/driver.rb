require_relative 'santa'

test = Santa.new

test.speak

# a = Puppy.new(:breed => "Husky", \
#               :name => "Sparky", \
#               :owner => {last: "Alvarez", first: "Nestor", id: 201}, \
#               :vaccinations => {:flu => true, :smallpox => true}, \
#               :an_attr => {
#                   :fur_color => "brown", :eye_color => "blue", \
#                   :id_marks => ["lower-left scar", "left-eye spot"],
#                   :rfid => 2304
#                 }
#               )


#Incremental development printing statements
#They help ensure that class methods work as intended
#Accessor testing
#Type-validation left to driver program

# #Testing accessor methods

# #1/5 accessor method
# p a.get_breed

# #2/5 accessor method
# p a.get_name


# temp1 = a.get_owner

# #3/5 accessor method
# p temp1[:last]
# p temp1[:first]
# p temp1[:id]


# dump1 = a.get_vaccinations

# #4/5 accessor method
# p dump1

# #5/5 accessor method
# temp2 = a.get_attr
# p temp2[:fur_color]
# p temp2[:eye_color]
# p temp2[:id_marks]
# p temp2[:rfid]

# a.change_breed("Chihuaha")


# a.change_name("Jolteon")
# #1/5 mutator method
# p a.get_breed

# #2/5 mutator method
# p a.get_name

# a.change_owner({
#   :last => "Barbosa",
#   :first => "Alfonso", 
#   :id => 337
#   })

# temp1 = a.get_owner

# #3/5 mutator method
# p temp1[:last]
# p temp1[:first]
# p temp1[:id]

# vaccinations = {:flu => false, :smallpox => ""}

# #p vaccinations

# #4/5 mutator method
# a.change_vaccinations(vaccinations)
# p a.get_vaccinations

# attributes = {fur_color: "black",
#   eye_color: "hazel",
#   id_marks:  ["rear-left-leg scratch"],
#   rfid: -1
#   }

# #5/5 Mutator method
# a.change_attr(attributes)
# p a.get_attr