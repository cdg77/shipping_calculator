require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')

get('/') do
  erb(:index)
end

get('/shipping_costs') do
    @new_parcel = Parcel.new(params.fetch('length'), params.fetch('width'), params.fetch('height'))
    @shipping_costs = @new_parcel.cost_to_ship(params.fetch('distance'), params.fetch('weight'), params.fetch('speed'))
    erb(:parcels)
end
