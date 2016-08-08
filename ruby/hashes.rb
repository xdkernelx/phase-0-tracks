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
cl_attr

test = Client.new(cl_attr[0] => "Nestor" , cl_attr[1] => "Alvarez", cl_attr[2] => 22, cl_attr[3] => 0,\
                  cl_attr[4] => "baroque", cl_attr[5] => true, cl_attr[6] => 1500)

test.print_client

test.change_name("David", "Martel")
test.change_first_name("")
test.change_last_name("")
test.print_client

test.change_last_name("Alvarez")
test.change_first_name("Nestor")
test.change_budget(1700)
test.change_vip()
test.change_age(23)
test.change_decor("")
test.change_children(-1)

=begin
  puts test.get_first_name
  puts test.get_last_name
  puts test.get_age
  puts test.get_children
  puts test.get_decor
  puts test.vip?
  puts test.get_budget
=end