require 'sinatra'

require_relative './lib/takeaway'
require_relative './lib/dish'
require_relative './lib/customer'
require_relative './lib/order'
require_relative './lib/order_line'

get ('/') do
  erb :index
end

# jen = Takeaway.new('Jen\'s Pizzeria')
# jodie = Customer.new('Jodie', 'Parker','07741231234','25 High Street, London SW19 4EQ')
# margherita = Dish.new("margherita", 10.95)
# veggie = Dish.new('veggie', 11.95)
# order1 = Order.new(jodie,[[margherita,2],[hawaiian,1]])
# puts order1.total