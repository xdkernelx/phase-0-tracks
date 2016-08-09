#Nestor Alvarez
#DBC, Bobolinks
#5.3, 20160808, 17:17 PDT

class Client

  # Initializes Client object with keyword arguments
  # Params:
  # +args+:: arguments match parameters, have default values
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
  
  # Initializes Client object with keyword arguments
  # Params:
  # +args+:: arguments match parameters, have default values
  # Using self contained methods prevents resetting object values
  def update(first_name: "", last_name: "", age: 0, children: 0,\
                  decor_theme: "", vip_member: false, budget: 0)
    change_first_name(first_name)
    change_last_name(last_name)
    change_age(age)
    change_children(children)
    change_decor(decor_theme)
    change_vip if @vip != vip_member
    change_budget(budget)
  end

  #Mutator Methods
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
    @age = age if age > 0
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

  #Accessor Methods
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

  # Returns a hash using the object's instance variables (coverted to symbols)
  # instance_variables returns an Arrays, .each iterates through the array values
  def get_hash
    hash = {}
    instance_variables.each {|var| hash[var.to_s.delete("@").to_sym] = instance_variable_get(var) }
    hash
  end

  # Prints readable output
  def print_client
    puts("\n*****VIP Member*****") if @vip_member
    puts("Your client's name is: #{@first_name} #{@last_name if !@last_name.empty?}")
    puts("Your client's age is: #{@age}")
    puts("Your client has #{@children} children.")
    puts("Your client's decoration theme: #{@decor_theme}")
    puts("Your client's budget is: #{@budget}")
  end

end