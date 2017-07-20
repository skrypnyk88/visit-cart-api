FactoryGirl.define do
  factory :cart do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    position { Faker::Company.profession }
    phone '0673377891'
    city { Faker::Address.city }
    streat { Faker::Address.street_name }
    building { Faker::Address.building_number }
    email { Faker::Internet.email }
    company_name { Faker::Company.name }
    visible { %w(true false).sample }
  end
end
