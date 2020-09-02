class Country

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        return @@all
    end

    def dishes
        CountryDish.all.select do |countrydish|
            countrydish.country == self
        end.map do |countrydish|
            countrydish.dish.name
        end
        # binding.pry
    end

    def country_average
        x = CountryDish.all.select do |countrydish|
            countrydish.country == self
        end.map do |dish|
            dish.dish.rating
        end
        y = x.inject{ |sum, el| sum + el}.to_f / x.size
    end
    


    def self.best_average
       y=  CountryDish.all.map do |countrydish|
            countrydish.country.country_average
       end 
       y.max

       i = 0
       while i <= y.count do
        max = 0
        if y[i] > max
            max = y[i]
           # x = CountryDish.all[i].country
        end
        i += 1
    end

    #solution #1 to return country with highest rating, flawed if more than
    #one country has the same rating
    # i = 0
    # while i <= y.count do
    #  if y[i] == y.max
    #      x = CountryDish.all[i].country
    #  end
    # i += 1
 #end 

       
            binding.pry
    end
  
      



end