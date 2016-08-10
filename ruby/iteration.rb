#Bahman S., Nestor A.
#DBC, Bobolinks 2016
#20160809

an_name = ["Jelly", "Pinky", "Dory"]
letters = {"a" => 10, "b" => 5, "c" => 200}

p an_name
p letters

an_name.each { |var|
    puts("#{var}")
}

letters.each {|key, val| puts("#{key} is #{val}")}
p letters

temp_arr = []
puts("temp_arr initialized: #{temp_arr}")
temp_arr = an_name.map {|var| var.next}
puts("temp_arr after .map call and assigned: #{temp_arr}")

puts("an_name without modification: #{an_name}")
an_name.map! {|var| var.next}
puts("Array after iteration with map! #{an_name}")

new_arr = []
new_arr = letters.map {|key, val| 
    val
}

puts("new_arr contains values: #{new_arr}")

puts("Deleting 'b' key with associated value.")
letters.delete_if {|var|
    var == "b"
}

p letters

#Dorz because we modified it earlier
puts("Deleting 'Dorz' from array")
an_name.delete_if{|var|
    var == "Dorz"
}

#Delete everything without a value of 200
letters.keep_if{|key, val|
    val == 200
}
puts("letters after keeping key, value pair with value == 200")
puts(letters)

#Delete an_name not "Jellz"
an_name.keep_if{|var|
    var == "Jellz"
}
puts("an_name after keeping 'Jellz' named animals")
puts(an_name)

puts("Repopulating array and hash to original values")
an_name = ["Jelly", "Pinky", "Dory"]
letters = {"a" => 10, "b" => 5, "c" => 200}

puts("Array #{an_name}")
puts("Hash #{letters}")

#Deleting array if condition is met

an_name.select! {|var| 
    var == "Jelly"
}

puts("Array after select! method: #{an_name}")

#Deleting hash pairs if condition is met

letters.select! {|key, val|
    val < 100
}

puts("Hash after select! method: #{letters}")

#Deleting array contents
drop_arr = []
drop_arr = an_name.drop_while {|val|
    val == "Jelly"
}

puts("Array after drop, everything is deleted: #{drop_arr}")

puts("Hash before reject! method: #{letters}")
letters.reject! { |key, val|
    val == 10
}
puts("Hash after reject! method: #{letters}")