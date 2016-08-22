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