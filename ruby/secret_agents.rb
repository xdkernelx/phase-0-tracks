#Bradley I., Nestor A.
#DBC 4.6
#secret_agents.rb - testing simple encryption/decryption methods

=begin
  -Encrypt method accepts a string argument
  -downcase accepted argument
  -Create a for loop for the number of characters in the string
    -go to first index of string
    -change it string[idx].next unless it's a space character
    -go to the next one

  -Decrypt method accept a string argument
  -Does reverse of what encrypt does using .ord and .chr methods

  -Ask user if they would like to encrypt or decrypt
  -Ask them for the password
  -Perform requested operation
  -Print result
=end

def encrypt(str)
  for i in 0...str.length
    if str[i] == "z"
      str[i] = "a"
    elsif str[i] != " "
      str[i] = str[i].next
    end
  end
  return str
end

def decrypt(str)
  for i in 0...str.length
    if str[i] == "a"
      str[i] = "z"
    elsif str[i] != " "
      str[i] = (str[i].ord - 1).chr
    end   
  end
  return str
end

puts("Hello, agent! How may I help you today? ")
puts("Would you like to decrypt or encrypt today? ")
input = gets.chomp
password = ""
if input.downcase[0] == "d"
  puts("Please enter your password")
  password = gets.chomp
  print("\nYour decrypted password is: #{decrypt(password)}")
elsif input.downcase[0] == "e"
  puts("Please enter your password")
  password = gets.chomp
  print("\nYour encrypted password is: #{encrypt(password)}")
else
  puts("Invalid input. Retry again.")
end

=begin
  puts(encrypt("test tester"))
  puts(decrypt("uftu uftufs"))
  puts(encrypt("abc"))
  puts(encrypt("zed"))
  puts(decrypt("bcd"))
  puts(decrypt("afe"))

  This works because we have explicit returns for each method
  That is also an acceptable input for the other method

  puts(decrypt(encrypt("swordfish")))
=end