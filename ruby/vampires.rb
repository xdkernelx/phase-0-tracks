#Nestor Alvarez
#devBootcamp, 4.4 Solo Challenge
#20160804
#vampires.rb - vampire detection technology

# class Employee(name, age, insurance)

# end

name = ""
age = nil
year_ob = nil
likes_garlic = nil
insurance = false


print("What is your name? ")
name = gets.chomp
print("Your name is: ", name, "\n")

print("What is your age? What is your year of birth? ")
age, year_ob = gets.chomp.split(" ")

print("Your age is: ", age)
print("Your year of birth is: ", year_ob)