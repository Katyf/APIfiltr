FactoryGirl.define do
  factory :post do
    message Faker::Lorem.sentence
  end
end
