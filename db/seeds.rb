require 'faker'

10.times do
  Cart.create(first_name: Faker::Name.first_name,
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

User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: 'test@test.com',
  password: 'password',
  password_confirmation: 'password',
  gender: %w(male female other).sample,
  phone: '1234567890'
)
