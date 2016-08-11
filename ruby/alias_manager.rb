#Nestor A.
#DBC, Bobolinks 2016
#5.6 Solo Challenge, 20160810
#alias_manager.rb - create aliases for agents

=begin
  -Use incremental development
  -Design and test helper methods:
    -vowel? - returns true if argument is a vowel
    -next_vowel && next_consonant - returns the next character of the appropriate type
    -prev_vowel && next_consonant - returns the previous character of the appropriate type
    -switch_names - simple method that switches variables
    -encrypt && decrypt - iterate through arguments and modify as needed using principle from 4.6

  -Add a user interface to prompt for values
  -Validate type using work from 5.3
  -Once simple data parsing is complete
    -Store original input and encrypted method as a data structure (hash)
=end

def encrypt(first, last)
  first = first.chars.map {|var|
    if !vowel?(var)
      if var == var.upcase
        next_consonant(var).upcase
      else
        next_consonant(var)
      end
    else
      next_vowel(var)
    end
  }

  last = last.chars.map {|var|
    if !vowel?(var)
      if var == var.upcase
        next_consonant(var).upcase
      else
        next_consonant(var)
      end
    else
      next_vowel(var)
    end
  }

  return first.join(""), last.join("")
end

def decrypt(first, last)
  first = first.chars.map {|var|
    if !vowel?(var)
      if var == var.upcase
        prev_consonant(var).upcase
      else
        prev_consonant(var)
      end
    else
      prev_vowel(var)
    end
  }

  last = last.chars.map {|var|
    if !vowel?(var)
      if var == var.upcase
        prev_consonant(var).upcase
      else
        prev_consonant(var)
      end
    else
      prev_vowel(var)
    end
  }

  return first.join(""), last.join("")
end

def switch_names(first, last)
  return last, first
end

def next_vowel(char)
  vowels_arr = ["a", "e", "i", "o", "u"]
  if char == "u"
    return "a"
  elsif char == "U"
    return "A"
  elsif char == char.downcase
    return vowels_arr[vowels_arr.index(char.downcase) + 1]
  else
    return vowels_arr[vowels_arr.index(char.downcase) + 1].upcase
  end
end

def prev_vowel(char)
  vowels_arr = ["a", "e", "i", "o", "u"]
  if char == "a"
    return "u"
  elsif char == "A"
    return "U"
  elsif char == char.downcase
    return vowels_arr[vowels_arr.index(char.downcase) - 1]
  else
    return vowels_arr[vowels_arr.index(char.downcase) - 1].upcase
  end
end

def next_consonant(char)
  if char == "z"
    return "b"
  elsif char == "Z"
    return "B"
  elsif vowel?(char.downcase.next)
    return char.next.next
  else
    return char.next
  end
end

def prev_consonant(char)
  if char == "a" || char == "b"
    return "z"
  elsif char == "A" || char == "B"
    return "Z"
  elsif vowel?((char.downcase.ord - 1).chr)
    return (char.downcase.ord - 2).chr
  else
    return (char.downcase.ord - 1).chr
  end
end

def vowel?(char)
  return true if ["a", "e", "i", "o", "u"].include?(char.downcase)
  false
end

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
  when "integer-no-zero"
    puts("Incorrect type. Try again.")
    input = gets.chomp
    while input.to_i == 0
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

first_name = ""
last_last = ""
cl_alias = {
  first_name: "",
  last_name: ""
}

first_name, last_name = switch_names(first_name, last_name)

#Ask the user for the first name of client
puts("Hello, let's get started...")
puts("Please enter the client's first name: ")
input = gets.chomp
if input.empty?
  input = valid_input(input)
else 
  input = input.split(" ")[0]
end
first_name = input

#Ask the user for the last name of client
puts("Please enter the client's last name: ")
input = gets.chomp
if input.empty?
  input = valid_input(input)
else 
  input = input.split(" ")[0]
end
last_name = input

first_name, last_name = switch_names(first_name, last_name)
cl_alias[:first_name], cl_alias[:last_name] = encrypt(first_name, last_name)

puts("Your client's alias is: #{cl_alias[:first_name]} #{cl_alias[:last_name]}")

# first_name, last_name = encrypt(first_name, last_name)
# p first_name
# p last_name

# first_name, last_name = decrypt(first_name, last_name)
# first_name, last_name = switch_names(first_name, last_name)
# p first_name
# p last_name

# vowels_arr = ["a", "e", "i", "o", "u"]
# vowels_upcase = ["A", "E", "I", "O", "U"]

# vowels_arr.each {|val|
#   puts(val)
#   puts(next_vowel(val) + "\n\n")
# }

# vowels_upcase.each {|val|
#   puts(val)
#   puts(next_vowel(val) + "\n\n")
# }

# vowels_arr.each {|val|
#   puts(val)
#   puts(prev_vowel(val) + "\n\n")
# }

# vowels_upcase.each {|val|
#   puts(val)
#   puts(next_vowel(val) + "\n\n")
# }

# for i in 97..122
#   p next_consonant(i.chr)
# end

# for i in 97..122
#   p prev_consonant(i.chr)
# end