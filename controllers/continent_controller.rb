require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/city.rb' )
require_relative( '../models/continent.rb' )
require_relative( '../models/country.rb' )
require_relative( '../db/seeds.rb')

also_reload( '../models/*' )



get '/Europe' do

  @cities = Continent.all_cities()
  erb ( :"continents/index" )
end
