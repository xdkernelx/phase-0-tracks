#Nestor Alvarez
#Dev Bootcamp, Bobolinks 2016
#20160803, Release 1

an_name = ""
volume = nil
fur_color = ""
valid = nil
age = nil


print("Hello, may you please enter the hamster's name? ")

an_name = gets.chomp

print("Noise level? ")
volume = gets.chomp.to_i

print("Fur color? ")
fur_color = gets.chomp

print("Is it a good candidate? ")

if gets.chomp.downcase[0] == "n"
  valid = false
  puts "Well that sucks"
else
  valid = true
end

print("Age? ")
age = gets.chomp

if age.empty?
  puts "Nothing entered. Age value will be nil"
end

print(an_name, " ",  volume," ", age," ", fur_color," ", valid)