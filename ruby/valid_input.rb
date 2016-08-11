#Nestor A.
#DBC, Bobolinks 2016
#valid_input.rb - helps type validation process
#20160810, 20:05 PDT

#Takes 2 arguments, 2nd is optional
#Returns valid input based on second argument
#Defaults to string types
def valid_input(str, type = "string")
  type.downcase!

  case type
  when "string"
    puts("Nothing inputted. Try again.")
    input = gets.chomp
    while input.empty?
      puts("Nothing entered. Please try again.")
      input = gets.chomp
    end
    return input
  when "string-one-word"
    puts("Invalid entry. Please try again")
    input = gets.chomp
    while input.empty? || input.include?(" ")
      if input.empty?
        puts("Nothing inputted. Try again.")
        input = gets.chomp
      else
        puts("Entered more than one entry. Try again")
        input = gets.chomp
      end
    end
    return input
  when "integer-no-zero"
    puts("Incorrect type. Try again.")
    input = gets.chomp
    while input.to_i == 0
      puts("Please enter an integer greater than 0.")
      input = gets.chomp
    end
    input = input.to_i
  when "integer-greater-zero"
    puts("Incorrect type. Try again.")
    input = gets.chomp
    while input.to_i <= 0
      puts("Please enter an integer greater than 0.")
      input = gets.chomp
    end
    input = input.to_i
  when "integer"
    puts("Incorrect type. Try again.")
    input = gets.chomp
    while input.to_i == 0 && input != "0"
      puts("Please enter an integer.")
      input = gets.chomp
    end
    input = input.to_i
  else
    false
  end

end