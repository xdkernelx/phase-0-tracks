#Nestor A.
#DBC, Bobolinks 2016
#5.6 Solo Challenge, 20160810

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

def vowel?(char)
  return true if ["a", "e", "i", "o", "u"].include?(char.downcase)
  false
end

first = "Nestor"
last = "Alvarez"
vowels_arr = ["a", "e", "i", "o", "u"]
vowels_upcase = ["A", "E", "I", "O", "U"]

first, last = switch_names(first, last)

puts("First name: #{first}")
puts("Last name: #{last}")

puts("Is 'b' a vowel? #{vowel?("b")}")

# vowels_arr.each {|val|
#   puts(val)
#   puts(next_vowel(val) + "\n\n")
# }

# vowels_upcase.each {|val|
#   puts(val)
#   puts(next_vowel(val) + "\n\n")
# }

# for i in 97..122
#   p next_consonant(i.chr)
# end

first = first.chars.map {|var|
  if !vowel?(var)
    if var == var.upcase
      p next_consonant(var).upcase
    else
      p next_consonant(var)
    end
  else
    p next_vowel(var)
  end
}

puts("\n")

last = last.chars.map {|var|
  if !vowel?(var)
    if var == var.upcase
      p next_consonant(var).upcase
    else
      p next_consonant(var)
    end
  else
    p next_vowel(var)
  end
}

puts("\n\n")
p first.join("")
p last.join("")