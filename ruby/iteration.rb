an_name = ["Jelly", "Pinky", "Dory"]
letters = {"a" => 10, "b" => 5, "c" => 200}

p an_name
p letters

an_name.each { |var|
    puts("#{var}")
}

letters.each {|key, val| puts("#{key} is #{val}")}
p letters

an_name = an_name.map {|var| p var.next}
p an_name