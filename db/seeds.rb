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
france = Country.new({
  "name" => "France",
  "population" => 66990000,
  "visited" => true,
  "capital_city" => "Paris",
  "continent_id" => europe.id
})
germany = Country.new({
  "name" => "Germany",
  "population" => 82790000,
  "visited" => false,
  "capital_city" => "Berlin",
  "continent_id" => europe.id
  })
thailand = Country.new({
  "name" => "Thailand",
  "population" => 6837900,
  "visited" => false,
  "capital_city" => "Bangkok",
  "continent_id" => asia.id
  })
usa = Country.new({
  "name" => "USA",
  "population" => 327048860,
  "visited" => false,
  "capital_city" => "Washington DC",
  "continent_id" => north_america.id
  })
canada = Country.new({
  "name" => "Canada",
  "population" => 35048860,
  "visited" => false,
  "capital_city" => "Ottowa",
  "continent_id" => north_america.id
  })
sweden = Country.new({
  "name" => "Sweden",
  "population" => 13958600,
  "visited" => false,
  "capital_city" => "Stockholm",
  "continent_id" => europe.id
  })
afghanistan = Country.new({
  "name" => "Afghanistan",
  "population" => 43958200,
  "visited" => false,
  "capital_city" => "Kabul",
  "continent_id" => asia.id
  })
australia = Country.new({
  "name" => "Australia",
  "population" => 2981209,
  "visited" => false,
  "capital_city" => "Canberra",
  "continent_id" => oceania.id
  })
new_zealand = Country.new({
  "name" => "New Zealand",
  "population" => 2981209,
  "visited" => false,
  "capital_city" => "Canberra",
  "continent_id" => oceania.id
  })
fiji = Country.new({
  "name" => "Fiji",
  "population" => 12809,
  "visited" => false,
  "capital_city" => "Suva",
  "continent_id" => oceania.id
  })
polar_empire  = Country.new({
  "name" => "The Emperor Penguin Empire",
  "population" => 999999,
  "visited" => false,
  "capital_city" => "Unknown",
  "continent_id" => antarctica.id
  })





united_kingdom.save()
italy.save()
china.save()
france.save()
germany.save()
thailand.save()
usa.save()
canada.save()
sweden.save()
afghanistan.save()
australia.save()
new_zealand.save()
fiji.save()
polar_empire.save()

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
