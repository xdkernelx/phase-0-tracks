#Nestor Alvarez

=begin

  In this assignment, I believe a Hash is better suited to contain a quantity for the groceries

  @Create
  Create a new hash

  @Add
  If the grocery exists, add quantity

  @Delete
  IF the grocery after modification is less than 0, switch to 0
  If it's not even in there, don't do anything

  @Quanity
  Change (add or subtract) whenever there is grocery existing

  @Print
  Make the output readable.

=end

def create_list(items)
 hash = {}
 item_arr = items.split(" ")
 item_arr.each { |item| hash[item] = 1 }
 print(hash)
 return hash
end

#optional qty value set to 1 if no user input
def add_item(hash, new_item, qty = 1)
 hash[new_item] = qty
 return hash
end

#Doesn't modify or return error if it doesn't already exist
def remove_item(hash, item)
  hash.delete(item)
  return hash
end

#Updates it only if it exists
def update_qty(hash, item, new_qty)
 if hash.has_key?(item)
   hash[item] = new_qty
 else
   puts "#{item.capitalize} does not exist"
 end
 return hash
end

def print(grocery_list_hash)
 puts "Behold the wonderful grocery list!"
 puts "----------------------------------"
 grocery_list_hash.each { |item, qty|
   puts "#{item} : #{qty}"
 }
end

test = create_list("apples")
p create_list("apples")
p test = add_item(test, "test", 2)
p remove_item(test, "tet")
p test = update_qty(test, "tet", 2)