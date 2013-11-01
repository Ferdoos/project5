require 'dish'

describe Dish do 
  let(:dish) {Dish.new('Veggie Pizza',11.95)}

  it 'has a name' do
    expect(dish.name).to eq 'Veggie Pizza'
  end

   it 'has a price' do
    expect(dish.price).to eq 11.95
  end
end