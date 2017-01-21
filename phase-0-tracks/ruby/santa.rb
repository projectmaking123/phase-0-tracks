class Santa
  attr_accessor :gender, :ethnicity, :reindeer_ranking, :age
    
    def initialize(gender, ethnicity)
     "Initializing Santa instance ..."
     @gender = gender
     @ethnicity = ethnicity
    end
      
    def speak
      puts "Ho, ho, ho! Haaaappy holidays!"
    end

    def eat_milk_and_cookies(cookie)
      puts "That was a good #{cookie}!" 
    end
    
    def about
      puts "gender: #{gender}"
      puts "ethnicity: #{ethnicity}"
    end
    
    def celebrate_birthday
      a = []
      @age = 0
        while @age < 141
          a << @age
        @age += 1
        end
      @age = a.sample
      puts "Santa was #{@age}"
      @age += 1
      puts "Now Santa is #{age}"
    end
    
    def get_mad_at(reindeer)
      @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"] 
      
      i = 0
      
      while i < @reindeer_ranking.length
        if @reindeer_ranking[i] == reindeer.to_s
          @reindeer_ranking.delete(@reindeer_ranking[i])
          @reindeer_ranking << reindeer.to_s
        end
      i += 1
      end
      @reindeer_ranking
    end
  end

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do
  santas << Santa.new(genders.sample, ethnicities.sample)
end
 
p santas[53].celebrate_birthday

