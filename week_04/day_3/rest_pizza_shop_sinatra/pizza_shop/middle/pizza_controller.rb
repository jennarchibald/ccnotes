require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/pizza_order')
also_reload('./models/*')

get '/pizza-orders' do #INDEX
  @orders =  PizzaOrder.all()
  erb( :index )
end

get '/pizza-orders/new' do #NEW
  erb( :new )
end

get '/pizza-orders/:id' do #SHOW
  @order = PizzaOrder.find( params[:id] )
  erb( :show )
end

post '/pizza-orders' do #CREATE
   @order = PizzaOrder.new(params)
   @order.save
   erb ( :create )
end
