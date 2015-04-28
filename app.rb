require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places')

get('/') do
  @places = Place.all_places()
  erb(:index)
end

post('/places') do
  destination = params.fetch('place')
  vacation = Place.new(destination)
  vacation.save()
  erb(:success)
end
