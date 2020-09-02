class Dish

    attr_reader :name, :rating
    @@all = []

    def initialize(name, rating)
        @name = name
        @rating = rating
        @@all << self
    end

    def self.all
        return @@all
    end

    def countries
        CountryDish.all.select do |countrydish|
            countrydish.dish == self
        end.map do |country|
            country.country.name
        end
    end
    
    def self.average_rating
        x = self.all.map do |dish|
            dish.rating
        end
        x.inject{ |sum, el| sum + el}.to_f / x.size
        # binding.pry
    end
end