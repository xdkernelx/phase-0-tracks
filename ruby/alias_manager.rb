#Nestor A.
#DBC, Bobolinks 2016
#5.6 Solo Challenge, 20160810

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

first, last = encrypt(first, last)
p first
p last

first, last = decrypt(first, last)
first, last = switch_names(first, last)
p first
p last