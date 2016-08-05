#Bradley I., Nestor A.
#DBC 4.6
#secret_agents.rb - testing simple encryption/decryption methods

=begin
  -Encrypt method accepts a string argument
  -downcase accepted argument
  -Create a for loop for the number of characters in the string
    -go to first index of string
    -change it string[idx].next
    -go to the next one
=end

def encrypt(string)
  for i in 0...string.length
    puts i
  end
end

def decrypt(string)

end

print(encrypt("test"))