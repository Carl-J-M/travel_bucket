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

get '/continents/:id' do
  @continent = Continent.find(params['id'].to_i)
  @countries = Country.countries_by_continent_id(params['id'].to_i)
  erb ( :"continents/show" )
end

get '/continents/:continent_id/:id' do
  @cities = City.find(params['id'].to_i)
  @countries = Country.find(params['continent_id'].to_i)
end
