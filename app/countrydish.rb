class CountryDish

    attr_reader :country, :dish
    @@all = []
    def initialize(country, dish)
        @country = country
        @dish = dish
        @@all.push(self)
    end

    def self.all
        return @@all
    end

end