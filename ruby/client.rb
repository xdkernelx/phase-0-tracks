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

  def get_hash

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