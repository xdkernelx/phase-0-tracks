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

name = ""
age = nil
year_ob = nil
age_valid = nil
likes_garlic = nil
insurance = false


print("What is your name? ")
name = gets.chomp
print("Your name is: #{name}\n")

print("What is your age? What is your year of birth? ")
age, year_ob = gets.chomp.split(" ")
age = age.to_i
year_ob = year_ob.to_i

print("Your age is: #{age}\n")
print("Your year of birth is: #{year_ob}\n")

age_valid = verify_age(age, year_ob)

print("Age validity: #{age_valid}\n")

print("Would you like garlic bread at our next event? (Yes/No)")
if gets.chomp.downcase[0] = "y"
  likes_garlic = true
else
  likes_garlic = false
end

print("Likes garlic: #{likes_garlic}")

print("Would you like to enroll in our group health insurance plant? \n")
if gets.chomp.downcase[0] = "y"
  insurance = true
else
  insurance = false
end