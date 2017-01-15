interior_design = {}

puts "What is your name?"

c_name = gets.chomp

interior_design[:name] = c_name

age_input = FALSE
until age_input
puts "What is your age?"
  c_age = gets.to_i
   if c_age > 0 && c_age < 120
    interior_design[:age] = c_age 
    age_input = TRUE
  else 
    puts "Please enter a valid age"
    age_input = FALSE
  end
end

child_input = FALSE
until child_input
puts "How many children do you have?"
  child_count = gets.to_i
  if child_count > 0 && child_count < 20
    interior_design[:child_count] = child_count 
    child_input = TRUE
  elsif child_count > 20
    puts "You should be spending your money on children care, get your priorities in order."
    interior_design[:child_count] = child_count
    child_input = TRUE
  else 
    puts "Please enter a valid count"
    child_input = FALSE
  end
end

color_input = FALSE
until color_input
puts "Choose a color for the theme from the following: red, blue, green, black, pink, rainbow"
  color = gets.chomp
  if color == ("red" || "blue" || "green" || "black" || "pink" || "rainbow")
    color_input = TRUE
    interior_design[:color] = color
  else
    puts "Please enter a color from the list"
    color_input = FALSE
  end
end

art_input = FALSE
  until art_input
  puts "Do you enjoy postmodern art?(y/n)"
    true_input = gets.chomp
    if true_input == "y"
      interior_design[:PoMo_Fan?] = true_input
      art_input = TRUE
    elsif true_input == "n"
      interior_design[:PoMo_Fan?] = true_input
      art_input = TRUE
    else
      puts "Please enter y or n"
      art_input = FALSE
    end
  end

puts interior_design

final_input = FALSE
until final_input
puts "Please correct inputs, or type none if all is correct"
answer = gets.chomp
  if answer == "name"
    puts "What is the correct name?"
    correct_name = gets.chomp
    interior_design[:name] = correct_name
    final_input = FALSE
    puts "What else do you want to change?"
  elsif answer == "age"
    puts "What is your correct age?"
    correct_age = gets.to_i
    interior_design[:age] = correct_age
    final_input = FALSE
    puts "What else do you want to change?"
  elsif answer == "child_count"
    puts "What is the correct child count?"
    correct_count = gets.to_i
    interior_design[:child_count] = correct_count
    final_input = FALSE
    puts "What else do you want to change?"  
  elsif answer == "color"
    color_input2 = FALSE
    until color_input2
      puts "What is the correct color?"
      correct_color == gets.chomp
        if color == ("red" || "blue" || "green" || "black" || "pink" || "rainbow")
        color_input2 = TRUE
        interior_design[:color] = correct_color
        else
        puts "Please enter a color from the list"
        color_input2 = FALSE
        end
    final_input = FALSE
    puts "What else do you want to change?"  
    end
  elsif answer == "PoMo_Fan?"
    art_input2 = FALSE
    until art_input2
      puts "Do you enjoy postmodern art?(y/n)"
      correct_input = gets.chomp
      if correct_input == "y"
        interior_design[:PoMo_Fan?] = correct_input
        art_input2 = TRUE
      elsif true_input == "n"
        interior_design[:PoMo_Fan?] = correct_input
        art_input2 = TRUE
      else
        puts "Please enter y or n"
        art_input2 = FALSE
      end
    final_input = FALSE
    puts "What else do you want to change?"
  end
  elsif answer == "none"
    puts interior_design
    final_input = TRUE
  else
    puts "Please enter what you want to change"
  end
end
  
# The first thing I did here was create an empty hash. My plan was to 
# fill the hash as the user went along, instead of initalizing keys with 
# empty values which would be a waste of time and space.
# I then proceeded to ask for the user's name and then set the hash's name
# to be equal to the user's inputted name. The rest were done with similar
# code, but with certain conditions, so that the information is valid.
# In the end I asked the user to review the filled hash and correct if needed.
# The correction code is similar to the code above, but the data entered 
# during the correction would be the final updated data set. Once the user 
# finished the corrections or has no corrections, then the user would type 
# none. Once none was typed, it would set the until loop to true and break the 
# loop, thereby ending the program.

    
    