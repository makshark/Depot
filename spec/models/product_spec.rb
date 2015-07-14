require 'rails_helper'

describe Product do

  # it 'validates the title and sure is not nil' do
  #   product = Product.new(title: '')
  #   product.valid?
  #   expect(product.errors[:title]).to eq ["can't be blank"]
  # end


  it 'should check latest product record update' do
    product1 = create(:product)
    create(:product)
    product1.update(description: 'New description for compare')
    latest = Product.latest
    expect(latest.description).to eq (product1.description)
  end

end