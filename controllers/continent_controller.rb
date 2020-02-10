require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/city.rb' )
require_relative( '../models/continent.rb' )
require_relative( '../models/country.rb' )
require_relative( '../db/seeds.rb')

also_reload( '../models/*' )


# 
# get '/continents' do
#
#   @continents = Continent.all()
#   erb ( :"continents/index" )
# end



# get '/zombies' do
#   @zombies = Zombie.all()
#   erb ( :"zombies/index" )
# end
