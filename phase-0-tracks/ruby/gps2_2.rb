# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the items on the " "
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def making_list(items, x) #items= item list, x=default quantity
  
  shopping_list={} #set hash as shopping_list
  i_items=items.split(" ") #i_items is array
  
  i_items.each {|item| shopping_list[item]=x}
  #my_hash[:date]="6/6/66"
  
  shopping_list
  
end 

grocery_list=making_list("carrots apples cereal pizza", 3)
p grocery_list
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# output:

def adding_item(item, quantity, list) #list is the hash
  list [item]=quantity
  list
end

p adding_item("peas", 6, grocery_list)
# input:
# steps:
# output:

def removing_item(item, list)
  list.delete(item)
  list

end

p removing_item("cereal", grocery_list )

# Method to update the quantity of an item
# input:
# steps:
# output:

def update_quantity(item, quantity, list)
  list[item]=quantity  
  list
end 

p update_quantity("carrots", 2, grocery_list)

def print_list(list)
  list.each{|item, quantity| puts "#{item}: #{quantity}"}

end

print_list(grocery_list)
