require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/city_controller')
require_relative('controllers/continent_controller')
require_relative('controllers/country_controller')
require_relative('models/continent')
require_relative('models/city')
require_relative('models/country')

get '/' do
  redirect to("/continents")
end

get '/continents' do
  @continents = Continent.all()
  erb( :"continents/index")
end

get '/countries' do
  @countries = Country.all()
  erb( :"countries/index")
end
get '/cities' do
  @cities = City.all()
  erb( :"cities/index")
end

get '/countries/new' do
  @continents = Continent.all()
  erb ( :"countries/new" )
end
get '/cities/new' do
  @countries = Country.all()
  erb ( :"cities/new" )
end
#new country
post '/countries/new' do # create
  country = Country.new( params )
  country.save()
  redirect to '/countries'
  # redirect or confirmation page
end
post '/cities/new' do # create
  city = City.new( params )
  city.save()
  redirect to '/cities'
  # redirect or confirmation page
end
get '/continents/:id' do
  @continent = Continent.find(params['id'].to_i)
  @countries = Country.countries_by_continent_id(params['id'].to_i)
  erb ( :"continents/show" )
end
#wildcard continent_id
get '/countries/:id' do
  @country = Country.find(params['id'].to_i)
  @cities = City.cities_by_country_id(params['id'].to_i)
  erb ( :"cities/index" )
end
#wildcard country_id
