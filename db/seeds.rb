require_relative( "../models/city.rb" )
require_relative( "../models/continent.rb" )
require_relative( "../models/country.rb" )
require("pry-byebug")

City.delete_all()
Country.delete_all()
Continent.delete_all()



europe = Continent.new({
  "name" => "Europe"
})
north_america = Continent.new({
  "name" => "North America"
})
asia = Continent.new({
  "name" => "Asia"
})
south_america = Continent.new({
  "name" => "South America"
})
oceania = Continent.new({
  "name" => "Oceania"
})
antarctica = Continent.new({
  "name" => "Antarctica"
})
europe.save()
north_america.save()
asia.save()
south_america.save()
oceania.save()
antarctica.save()

united_kingdom = Country.new({
  "name" => "United Kingdom",
  "population" => 6644000,
  "visited" => true,
  "capital_city" => "London",
  "continent_id" => europe.id
})
 united_kingdom.save()

edinburgh = City.new({
  "name" => "Edinburgh",
  "country_id" => united_kingdom.id,
  "population" => 482005,
  "visited" => true,
  "capital_city" => true
})
  edinburgh.save()

binding.pry
nil
