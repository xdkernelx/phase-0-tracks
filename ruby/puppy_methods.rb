#Nestor Alvarez
#DBC, Bobolinks 2016
#5.2 Pairing Session, 20160813

#Initialize method inside puppy.rb
require_relative 'puppy'
require_relative 'client'

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times {
      puts("Woof!")
    }
  end

  def roll_over
    puts("*rolls over*")
  end

  def dog_years(num)
    num.to_f / 9
  end

  def play_dead
    puts("*dead puppy*")
  end

end

class Rabbit
  def initialize(name = "", owner = "", color ="")
    @name = name
    @owner = owner
    @color = color
  end

  def om_nom_nom(food)
    puts("#{@name} is om nom nomming on a #{food}")
  end

  def print_info
    puts("Rabbit name: #{@name}")
    puts("Rabbit owner: #{@owner}")
    puts("Rabbit color: #{@color}")
  end
end


rabbit_arr = []
cuddles = Rabbit.new()

50.times{|idx|
  rabbit_arr[idx] = Rabbit.new(name = (idx + 1).to_s)
  rabbit_arr[idx].print_info
}

rabbit_arr.each {|bunny|
  bunny.om_nom_nom("hay")
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


# #Print out all the available instance variables
#  a.instance_variables.each {|var|
#   print("#{var} ", a.instance_variable_get(var), "\n")
# }

# #Testing method in overriden class
# #p a.fetch("chewie")

# a.speak(5)
# a.roll_over
# p a.dog_years(23)
# a.play_dead