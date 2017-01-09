puts "How many employees will be processed?"

employees = gets.to_i

i = 0

until i > employees.to_i

puts "What is your Name?"

e_name = gets.chomp

valid_input = FALSE
until valid_input 

puts "How old are you? What year were you born?"

age = gets.to_i
year = gets.to_i

if age.to_i != (2017-year)
  valid_input = TRUE
  puts "MisMatch"
elsif 
  age.to_i = (2017-year)
  valid_input = TRUE
  puts "Match"
else
  puts "Please enter your age and number"
end
end

bread_input = FALSE
until bread_input

puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"

bread_yn = gets.chomp

if bread_yn == "y"
bread_input = TRUE
puts "yes"
elsif bread_yn == "n"
bread_input = TRUE
puts "no"
else
  puts "please reply y or n"
end
end

I_input = FALSE
until I_input 

puts "Would you like to enroll in the company’s health insurance?(y/n)"

i_yn = gets.chomp

if i_yn == "y"
I_input = TRUE
puts "yes"
elsif i_yn == "n"
I_input = TRUE
puts "no"
else
  puts "reply with y or n"
  
end
end

if e_name == ("Drake Cula") || ("Tu Fang") 
  puts "Definitely a vampire."

elsif age != (2017-year) && bread_yn == "n" && i_yn == "n"
  puts "Almost certainly a vampire."
  
elsif age != (2017-year) && bread_yn == "n" || i_yn == "n"
  puts "probably a vampire."

elsif age = (2017-year) && bread_yn == "y" ||
  i_yn == "y"
  puts "Probably not a vampire."

 else
   puts "Results Inconclusive"
end

 i += 1
 
 end
 
 allergy_input = FALSE
 
 until allergy_input
 
 puts "List your allergies"
 
 allergy = gets.chomp
 
 if allergy = "Done"
   allergy_input = TRUE
 elsif allergy = "sunshine"
    puts "Probably a vampire."
    allergy_input = TRUE
  else
    allergy_input = FALSE
 end
  end
  
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
 
