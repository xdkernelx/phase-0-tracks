#Nestor A.
#DBC, Bobolinks 2016
#5.6 Solo Challenge, 20160810

def switch_names(first, last)
  return last, first
end

def next_vowel(char)

end

def vowel?(char)
  return true if ["a", "e", "i", "o", "u"].include?(char.downcase)
  false
end

first = "Nestor"
last = "Alvarez"
vowels_arr = ["a", "e", "i", "o", "u"]

first, last = switch_names(first, last)

puts("First name: #{first}")
puts("Last name: #{last}")

puts("Is 'a' a vowel? #{vowel?("b")}")

vowels_arr.each {|val|
  puts(val)
}