#Nestor Alvarez
#DBC, Bobolinks 2016
#5.2 Pairing Session, 20160813

require_relative 'puppy'
require_relative 'client'

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

a = Puppy.new(:breed => "Husky", \
              :name => "Sparky", \
              :owner => {last: "Alvarez", first: "Nestor", id: 201}, \
              :vaccinations => {:flu => true, :smallpox => true}, \
              :an_attr => {
                  :fur_color => "brown", :eye_color => "blue", \
                  :id_marks => ["lower-left scar", "left-eye spot"],
                  :rfid => 2304
                }
              )

#Print out all the available instance variables
 a.instance_variables.each {|var|
  p a.instance_variable_get(var)
}

#Testing method in overriden class
p a.fetch("chewie")