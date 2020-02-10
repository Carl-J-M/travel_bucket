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
  "population" => 66440000,
  "visited" => true,
  "capital_city" => "London",
  "continent_id" => europe.id
})
italy = Country.new({
  "name" => "Italy",
  "population" => 60048000,
  "visited" => true,
  "capital_city" => "Rome",
  "continent_id" => europe.id
})
china = Country.new({
  "name" => "China",
  "population" => 1386000000,
  "visited" => false,
  "capital_city" => "Beijing",
  "continent_id" => asia.id
})
united_kingdom.save()
italy.save()
china.save()

edinburgh = City.new({
  "name" => "Edinburgh",
  "country_id" => united_kingdom.id,
  "population" => 482005,
  "visited" => true,
  "capital_city" => true
})
london = City.new({
  "name" => "London",
  "country_id" => united_kingdom.id,
  "population" => 8900000,
  "visited" => true,
  "capital_city" => true
  })
shenzen = City.new({
  "name" => "Shenzen",
  "country_id" => china.id,
  "population" => 12530000,
  "visited" => false,
  "capital_city" => false
  })
edinburgh.save()
london.save()
shenzen.save()

# binding.pry
# nil
