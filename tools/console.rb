require_relative '../config/environment.rb'

# create test data/variables here
#creating new dishes
pesto_pasta = Dish.new("Pesto", 10)
cuban_sandwhich = Dish.new("Cuban", 8)
pizza = Dish.new("Pizza", 9)
lasagna = Dish.new("Lasagna", 5)


#creating new countries
italy = Country.new("Italy")
cuba = Country.new("Cuba")

countrydish_1 = CountryDish.new(italy, pesto_pasta)
countrydish_2 = CountryDish.new(cuba, cuban_sandwhich)
countrydish_3 = CountryDish.new(italy, pizza)
countrydish_4 = CountryDish.new(italy, lasagna)

# binding.pry
puts "Does a dish know its name?"
puts pesto_pasta.name == "Pesto"

puts "Does a dish know its rating"
puts pesto_pasta.rating == 10

puts "does a country know its name?"
puts cuba.name == "Cuba"

puts "does countrydish table know its country"
puts countrydish_1.country.name == italy

puts "does countrydish table know its dish"
puts countrydish_2.dish == cuban_sandwhich

puts "does dish class keep track of all its dishes"
puts Dish.all.include?(pesto_pasta)
puts Dish.all.include?(cuban_sandwhich)

puts "does Country class keep track of its countries"
puts Country.all.include?(cuba)
puts Country.all.include?(italy)

puts "can a country keep track of its dishes"
puts italy.dishes == ["Pesto", "Pizza", "Lasagna"]

puts "can a dish keep track of its countries"
puts pizza.countries == ["Italy"]

Dish.average_rating
italy.country_average
Country.best_average
binding.pry

binding.pry