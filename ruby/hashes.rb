#Nestor Alvarez
#DBC, Bobolinks 2016
#20160808, 13:47 PDT
#hashes.rb - input client data as a hash

=begin
  -Create client class
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

class Client

  def initialize(first_name: "", last_name: "", age: 0, children: 0,\
                  decor_theme: "", vip_member: false, budget: 0)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @children = children
    @decor_theme = decor_theme
    @vip_member = vip_member
    @budget = budget
  end

  def change_name(first_name, last_name = "")
    @first_name = first_name
    @last_name = last_name if !last_name.empty?
    return nil
  end

  def change_last_name(last_name)
    @last_name = last_name if !last_name.empty?
    return nil
  end

  def change_first_name(first_name)
    @first_name = first_name if !first_name.empty?
    return nil
  end

  def change_age(age)
    @age = age
    return nil
  end

  def change_children(num)
    @children = num if num >= 0
  end

  def change_decor(str)
    @decor_theme = str if !str.empty?
    return nil
  end

  def change_vip
    @vip_member = !@vip_member
    return nil
  end

  def change_budget(num)
    @budget = num if num >= 0
    return nil
  end

  def get_last_name
    return @last_name
  end
  
  def get_first_name
    return @first_name
  end

  def get_age
    return @age
  end

  def get_children
    return @children
  end

  def get_decor
    return @decor_theme
  end

  def vip?
    return @vip_member
  end

  def get_budget
    return @budget
  end

  def print_client
    puts("\n*****VIP Member*****") if @vip_member
    puts("Your client's name is: #{@first_name} #{@last_name if !@last_name.empty?}")
    puts("Your client's age is: #{@age}")
    puts("Your client has #{@children} children.")
    puts("Your client's decoration theme: #{@decor_theme}")
    puts("Your client's budget is: #{@budget}")
  end

end

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

puts test.get_first_name
puts test.get_last_name
puts test.get_age
puts test.get_children
puts test.get_decor
puts test.vip?
puts test.get_budget