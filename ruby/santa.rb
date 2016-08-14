class Santa

  def initialize(gender: "none", ethnicity: "none")
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

end