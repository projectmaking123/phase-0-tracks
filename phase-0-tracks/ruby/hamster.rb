puts "Hamster's name:"
ham_name = gets.chomp

valid_input = false 
  until valid_input
    puts "Volume level, 1-10:"
    vol_level = gets.to_i
      if vol_level.to_i >=6 && vol_level.to_i <= 10
        puts "A squeaker!"
        valid_input = true
      elsif vol_level.to_i <= 5 && vol_level.to_i >= 1
        puts "Aw, a quiet one!"
        valid_input = true 
      else 
        puts "Invalid input, please answer 1-10"
      end
  end

puts "Fur Color:"
p fur_color = gets.chomp 

puts "Estimated Age:"
est_age = gets.to_i 

  if est_age != 0
    puts "#{est_age}, got it." 
  elsif est_age = 0 
    est_age = nil 
    puts "We'll just put N/A"
  end

good_input = false
  until good_input 
    puts "Is hamster good candidate for adoption? y or n:"
    good_yn = gets.chomp
      if good_yn == "y"
        puts "To summarize: #{ham_name}, noise level: #{vol_level}, with #{fur_color} fur, estimated age is #{est_age}. Overall, hampster is a good candidate."
        good_input = true
      elsif good_yn == "n"
         puts "To summarize: #{ham_name}, noise level: #{vol_level}, with #{fur_color} fur, estimated age is #{est_age}. Unfortunately, hampster is not a good candidate."
        good_input = true
      else 
        puts "I need a 'y' or 'n' response"
      end 
  end 
 