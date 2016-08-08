#Zach R., Nestor A.
#DBC
#arrays_drill.rb - 5.2 pairing session
#20160808

def build_array(var1, var2, var3)
  [var1, var2, var3]
end

def add_to_array(arr, var)
  arr << var
end

p arr = []

p arr += ["dog", "rhino", "cat", "mouse", "fish"]

arr.delete_at(2)
p arr

arr.insert(2, "dinosaur")
p arr

arr.shift
p arr

p "This array has 'dinosaur': #{arr.include?("dinosaur")}"

new_arr = ["monkey", "turtle", "giraffe"]

combine_arr = new_arr + arr
p combine_arr

p build_array("test", "tester", "idk")

p add_to_array(["dog", "rhino", "cat", "mouse", "fish"], "snake")

p add_to_array(["a", "b", "c", 1, 2], 3)

p add_to_array(add_to_array(["a", "b", "c", 1, 2], 3), "d")