#Nestor Alvarez
#DBC, Bobolinks 2016
#20160808, 13:47 PDT
#hashes.rb - input client data as a hash

=begin
  -Create client class, under Client.rb in same folder
  -override initialize method
  -create readable output for prettiness && debugging

  -Ask user for input
  -Validate input
  -Convert input into appropriate class

  -Print complete hash
  -Ask user if data is correct, or if update is required
  -If update is required
    -Ask user for what key to update
    -Validate existence of key
    -Update key
    -Reprint hash
  -Exit Program
=end

require_relative 'client'

cl_attr = [:first_name, :last_name, :age, :children,\
                    :decor_theme, :vip_member, :budget]

test = Client.new

input = ""

puts("Hello, let's get started...")
puts("Please enter the client's first name: ")
input = gets.chomp
test.update(cl_attr[0] => input)
puts("Please enter the client's last name: ")
input = gets.chomp
test.update(cl_attr[1] => input)
puts("Please enter the client's age: ")
input = gets.chomp.to_i
test.update(cl_attr[2] => input)
puts("Please enter the client's no. of children: ")
input = gets.chomp.to_i
test.update(cl_attr[3] => input)
puts("Please enter the client's decoration theme: ")
input = gets.chomp
test.update(cl_attr[4] => input)
puts("Is the client a VIP member? ")
if gets.chomp.downcase[0] == 'y'
  test.update(cl_attr[5] => true)
else
  test.update(cl_attr[5] => false)
end
puts("What is your client's budget? ")
input = gets.chomp.to_i
test.update(cl_attr[6] => input)
hash = test.get_hash
p hash
p hash[:last_name]
#test.print_client



=begin
  #Testing readable output method for debugging purposes
  test.print_client
  
  #Testing name mutator methods
  test.change_name("David", "Martel")
  test.change_first_name("")
  test.change_last_name("")
  test.print_client

  #Testing the rest of mutator methods
  test.change_last_name("Alvarez")
  test.change_first_name("Nestor")
  test.change_budget(1700)
  test.change_vip()
  test.change_age(23)
  test.change_decor("")
  test.change_children(-1)

  #Decor_theme and children should not be updated
  test.print_client
  
  #Testing accessor methods
  puts test.get_first_name
  puts test.get_last_name
  puts test.get_age
  puts test.get_children
  puts test.get_decor
  puts test.vip?
  puts test.get_budget
=end