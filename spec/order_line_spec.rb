require 'order_line'

describe OrderLine do

  let(:item) { double :dish,:name => 'veggie', :price => 11.95 }
  let(:order_line) { OrderLine.new(item,2) }

  it 'has a quantity' do
    expect(order_line.quantity).to eq 2
  end

  it 'looks up the price for the item' do
    expect(item.price).to eq 11.95
  end

  it 'computes the line total' do
    expect(order_line.total).to eq 23.90
  end
end