require 'faker'

15.times do
  cart = Cart.create(first_name: Faker::Name.first_name,
                     last_name: Faker::Name.last_name,
                     position: Faker::Company.profession,
                     phone: Faker::PhoneNumber.cell_phone,
                     city: Faker::Address.city,
                     streat: Faker::Address.street_name,
                     building: Faker::Address.building_number,
                     email: Faker::Internet.email,
                     company_name: Faker::Company.name,
                     visible: true)
end
