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
 list_hash = {}
 item_arry = items.split(" ")
 item_arry.each { |item| p list_hash[item] = 1 }
 print_list(list_hash)
 return list_hash
end

create_list({apples: 2})