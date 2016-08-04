#Nestor Alvarez
#devBootcamp, 4.4 Solo Challenge
#20160804
#vampires.rb - vampire detection technology

# class Employee(name, age, insurance)

# end

def verify_age(age, year_ob)
  #Example, if a person is born on July 2006, and the current date is Jan. 2016
  #the person is 9 years old, not 10. We need to account for this small error.
  if (Time.now.year - year_ob) - age > 1
    return false
  end

  return true
end

def verify_vampire(name, age_valid, likes_garlic, insurance)

  vampire_status = ""

  if (name.downcase == "drake cula") || (name.downcase == "tu fang")
    vampire_status = "definitive"
  elsif age_valid && likes_garlic && insurance
    vampire_status = "improbable"
  elsif !age_valid && !likes_garlic && !insurance
    vampire_status = "near-certain"
  elsif !age_valid && ( !likes_garlic || !insurance )
    vampire_status = "probable"
  end

  case vampire_status
    when "improbable"
      puts ("Probably not a vampire.")
      return 3
    when "probable"
      puts ("Probably a vampire.")
      return 5
    when "near-certain"
      puts ("Almost certainly a vampire.")
      return 7
    when "definitive"
      puts ("Definitely a vampire.")
      return 10
    else
      puts ("Results inconclusive.")
      return 5
  end

end

def process_employees(num, additional = false)

  name = ""
  age = nil
  year_ob = nil
  age_valid = nil
  likes_garlic = nil
  insurance = false
  allergies = []
  vampire_status = nil #vampire detection is a spectrum, 1-10

  num.times do |i|
    if additional
      print("\n", "x" * 38, "\nProcessing additional employee(s) #{i + 1}...\n", "x" * 38, "\n" * 2)
    else
      print("\n", "x" * 24, "\nProcessing employee #{i + 1}...\n", "x" * 24, "\n" * 2)
    end


    print("Name of Employee? ")
    name = gets.chomp

    print("What is your age? What is your year of birth? ")
    age, year_ob = gets.chomp.split(" ")
    age = age.to_i
    year_ob = year_ob.to_i

    age_valid = verify_age(age, year_ob)

    print("Would you like garlic bread at our next event? (Yes/No) ")
    if gets.chomp.downcase[0] == "y"
      likes_garlic = true
    else
      likes_garlic = false
    end

    print("Would you like to enroll in our group health insurance plant? ")
    if gets.chomp.downcase[0] == "y"
      insurance = true
    else
      insurance = false
    end

    print("Do you have any allergies by the way? ")
    reiterate = true
    i = 0
    if gets.chomp.downcase[0] == "y"
      print("\nEnter allergies one by one. Press enter after each\n")
      print("Type \"done\" when finished.")
      while reiterate do
        temp = gets.chomp.downcase
        if temp == "done"
          reiterate = false
        else
          allergies[i] = temp
          i += 1
        end
      end

      if allergies.include?("sunshine")
        vampire_status = 5
        puts ("Probably a vampire.")
      end
    end

    vampire_status = verify_vampire(name, age_valid, likes_garlic, insurance)

  end
end

print("How many employees will you be processing this time? ")
iter_count = gets.chomp.to_i
process_employees(iter_count)

print("Would you like to process additional employees? \n")
if (gets.chomp.downcase[0] == "y")
  print("How many employees? ")
  iter_count = gets.chomp.to_i
  process_employees(iter_count, true)
end

print("Actually, never mind! What do these questions have to do with anything? Let's all be friends")