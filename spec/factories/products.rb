FactoryGirl.define do
  factory :product do
    sequence(:title) { |i| "Product name#{i}" }
    description 'Product description'
    price 5.05
    image_url 'superSSh.gif'
  end

end
