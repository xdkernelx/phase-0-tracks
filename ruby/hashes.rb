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

client = Client.new

input = ""
field = ""

puts("Hello, let's get started...")
puts("Please enter the client's first name: ")
input = gets.chomp
if input.empty?
  puts("Nothing inputted. Try again.")
  input = gets.chomp
  while input.empty?
    puts("Nothing entered. Please try again.")
    input = gets.chomp
  end
  input = input.split(" ")[0]
  client.update(cl_attr[1] => input)
else 
  input = input.split(" ")[0]
  client.update(cl_attr[1] => input)
end
puts("Please enter the client's last name: ")
input = gets.chomp
if input.empty?
  puts("Last name not entered. Update if necessary at the end.")
else 
  input = input.split(" ")[0]
  client.update(cl_attr[1] => input)
end
# puts("Please enter the client's age: ")
# input = gets.chomp.to_i
# client.update(cl_attr[2] => input)
# puts("Please enter the client's no. of children: ")
# input = gets.chomp.to_i
# client.update(cl_attr[3] => input)
# puts("Please enter the client's decoration theme: ")
# input = gets.chomp
# client.update(cl_attr[4] => input)
# puts("Is the client a VIP member? ")
# if gets.chomp.downcase[0] == 'y'
#   client.update(cl_attr[5] => true)
# else
#   client.update(cl_attr[5] => false)
# end
# puts("What is your client's budget? ")
# input = gets.chomp.to_i
# client.update(cl_attr[6] => input)
# hash = client.get_hash
# p hash

# puts("Would you like to update any data? ")
# if gets.chomp.downcase[0] == 'y'
#   puts("Please type the name of the field to update: ")
#   field = gets.chomp.to_sym
#   if cl_attr.include?(field)
#     puts("What would you like to update it to? ")
#     input = gets.chomp
#     client.update(field => input)
#   end
#   p client.get_hash
# end
# puts("Have a nice day. :)")
client.print_client



=begin
  #Testing readable output method for debugging purposes
  client.print_client
  
  #Testing name mutator methods
  client.change_name("David", "Martel")
  client.change_first_name("")
  client.change_last_name("")
  client.print_client

  #Testing the rest of mutator methods
  client.change_last_name("Alvarez")
  client.change_first_name("Nestor")
  client.change_budget(1700)
  client.change_vip()
  client.change_age(23)
  client.change_decor("")
  client.change_children(-1)

  #Decor_theme and children should not be updated
  client.print_client
  
  #Testing accessor methods
  puts client.get_first_name
  puts client.get_last_name
  puts client.get_age
  puts client.get_children
  puts client.get_decor
  puts client.vip?
  puts client.get_budget
=end