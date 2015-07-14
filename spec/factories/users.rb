FactoryGirl.define do
  factory :user do
    sequence(:login) { |i| "login#{i}" }

  end

end
