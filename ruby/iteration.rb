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