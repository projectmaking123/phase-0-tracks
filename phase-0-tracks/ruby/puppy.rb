class Cat
  cat1 = Cat.new
  
  def initialize
    "Initializing new cat instance ..."
  end
  
  def purr(num)
    (num.to_i).times {
      puts "purr"
    }
  end
  
  def sleep(hours)
    puts "slept for #{hours} hours"
  end
  catarr = []
  
  50.times {
    catarr << Cat.new
  }
 
  catarr.each { |instances|
    instances.sleep("five")
    instances.purr(2)
  }
  
end

class Puppy
duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(num)
    (num.to_i).times do 
      puts "woof"  
    end
  end
  
  def rollover
    puts "rollover"
  end
  
  def dog_years(years)
      years.to_i * 7
  end
  
  def sit
    puts "sit"
  end
  
  def initialize
    puts "Initializing new puppy instance ..."
  end
  
Puppy.new
end

# SPECIES ------------------------
# Puppy

# CHARACTERISTICS ----------------
# Size: varies
# Friendly: yes
# Eye count: 2
# Name: varies
# Color: varies

# BEHAVIOR -----------------------
# Jump
# Fetch
# Bark