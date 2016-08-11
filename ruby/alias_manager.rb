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
    -Store encrypted method return values as a data structure (hash)
    -Make deep copy of hash into Array indexes
  -Ask user to reveal client's IDs
    -Iterate through client "database"
    -Run decrypt method to reveal IDs
=end

#Similar to 4.6 task, changes vowels to next vowel
#Using helper methods (next_consonant)
#iterates through both parameters individually
#Returns a pair of values
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

#Similar to encrypt, but in reverse
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

#Switches variables, only used to meet requirements
def switch_names(first, last)
  return last, first
end

#Uses a dictionary of sorts as index values
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

#Uses a dictionary of sorts as index values
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

#If the next char is a vowel, skip to the next one
#Here, there are no back-to-back vowels, so we are OK
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

#Uses the relationship between .chr and .ord
#If the previous char is a vowel, go back back one more
#The letter 'b' is hard-coded as an edge case
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

#If the parameter.downcase is in dictionary, it's a vowel
def vowel?(char)
  return true if ["a", "e", "i", "o", "u"].include?(char.downcase)
  false
end

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

first_name = ""
last_last = ""
input = nil
iter_count = 0
clients = []
cl_alias = {
  first_name: "",
  last_name: ""
}

first_name, last_name = switch_names(first_name, last_name)

#Ask the user for the no. of clients to process
puts("Hello, let's get started...")
puts("How many clients would you like to process? ")
iter_count = gets.chomp
if iter_count.to_i <= 0
  iter_count = valid_input(iter_count, "integer-greater-zero")
else
  iter_count = iter_count.to_i
end

iter_count.times { |var|
  #Ask the user for the first name of client
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

  #As per challenge requirements.
  first_name, last_name = switch_names(first_name, last_name)
  cl_alias[:first_name], cl_alias[:last_name] = encrypt(first_name, last_name)

  #We cannot do clients[var] = cl_alias because
  #Ruby makes shallow copies, basically making the same references
  #If we did a class as above, last client would override ALL clients
  clients[var] = {
  first_name: cl_alias[:first_name],
  last_name: cl_alias[:last_name]
  }
}

puts("\n\n\n")

#Since we know how the decrypt method works, namely the return variables
#We can skip the call to switch_names
puts("Agen... err clients processed. Would you like to reveal their identities?")
if gets.chomp.downcase[0] == 'y'
  iter_count.times {|var|
    dump_var1, dump_var2 = decrypt(clients[var][:last_name], clients[var][:first_name])
    puts("Client no. #{var + 1}")
    puts("#{clients[var][:first_name]} #{clients[var][:last_name]} is really #{dump_var1} #{dump_var2}\n\n")
  }
end

puts("Goodbye!")

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