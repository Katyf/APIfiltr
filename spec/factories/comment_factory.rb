FactoryGirl.define do
  factory :comment do
    body Faker::Lorem.sentence
    user Faker::Name.name
    post
  end
end
