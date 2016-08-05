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
=end

def encrypt(str)
  for i in 0...str.length
    if str[i] != " "
      str[i] = str[i].next
    end
  end
  return str
end

def decrypt(str)

end

print(encrypt("test tester"))