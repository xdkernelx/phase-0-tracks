class Santa

  attr_accessor :age, :ethnicity, :gender

  def initialize(gender = "none", ethnicity = "none")
    puts("Initializing Santa instance ...")
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts("Ho, ho, ho! Haaaappy holidays!")
  end

  def eat_milk_and_cookies(cookie)
    puts("That was a good #{cookie}!")
  end

  def celebrate_birthday
    @age = @age + 1
  end

  #Removes the reindeer from any position if it exists, drops it down to the end
  def get_mad_at(name)
    if @reindeer_ranking.include?(name.downcase.capitalize)
      @reindeer_ranking.delete(name)
      @reindeer_ranking << name.downcase.capitalize
      return true
    else
      puts("#{name.capitalize} does not exist")
      return false
    end
  end

  def get_ranking
    new_arr = []
    @reindeer_ranking.each {|val| new_arr << val}
    return new_arr
  end

end

#Driver Code
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