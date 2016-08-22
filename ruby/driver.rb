require_relative 'santa'

test = Santa.new

test.speak
test.eat_milk_and_cookies("Snickerdoodle")

p test.age
p test.ethnicity
p test.gender

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#Testing accessor methods
p santas[6].gender
p santas[6].ethnicity
p santas[6].age
p santas[6].celebrate_birthday

santas[6].get_mad_at("Vixen")
p santas[6].get_ranking
santas[6].get_mad_at("Vixene")

santas = []

100.times { |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  santas[i].age = rand(0..140)
  p santas[i].gender
  p santas[i].ethnicity
  p santas[i].age
}


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