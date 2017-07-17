require 'faker'

10.times do
  cart = Cart.create(first_name: Faker::Name.first_name,
                     last_name: Faker::Name.last_name,
                     position: Faker::Company.profession,
                     phone: Faker::PhoneNumber.cell_phone,
                     city: Faker::Address.city,
                     streat: Faker::Address.street_name,
                     building: Faker::Address.building_number,
                     email: Faker::Internet.email,
                     company_name: Faker::Company.name,
                     visible: Faker::Boolean.boolean)
end

# n = 0
# 2.times do |i|
#   teacher = Teacher.create(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: "teacher#{i + 1}@test.com",
#     password: 'password',
#     password_confirmation: 'password',
#     gender: %w(male female other).sample,
#     phone: '1234567890',
#     locale: %w(en ua).sample
#   )

#   3.times do
#     group = Group.create(name: "Group #{n += 1}")
#     teacher.groups << group

#     10.times do
#       student = group.students.create(
#         first_name: Faker::Name.first_name,
#         last_name: Faker::Name.last_name,
#         birthdate: Faker::Date.birthday(2, 6),
#         gender: Faker::Demographic.sex.downcase
#       )

#       presence_report = group.presence_reports.create(
#         day: Date.today,
#         student_id: student.id
#       )

#       presence_report.report_times.create(
#         start_time: Date.today,
#         end_time: Date.today
#       )

#       group.my_day_reports.create(
#         day: Date.today,
#         note: Faker::Lorem.sentence,
#         student_id: student.id
#       )

#       bottle_report = group.bottle_reports.create(
#         group_id: group.id,
#         student_id: student.id,
#         day: Date.today
#       )

#       bottle_report.bottles.create(
#         bottle_report_id: bottle_report.id,
#         quantity: Faker::Number.between(30, 300),
#         time: DateTime.now,
#         uom: %w(ml oz).sample
#       )

#       group.health_reports.create(
#         day: Faker::Date.backward(100),
#         special_care: [true, false].sample,
#         health_note: Faker::Lorem.sentence,
#         student_id: student.id
#       )
#     end

#     group.our_days.create(
#       description: Faker::Lorem.paragraph,
#       day: Date.today
#     )
#   end
# end

# cart = Cart.create(first_name: Faker::Name.first_name,
#                    last_name: Faker::Name.last_name,
#                    position: Faker::Company.profession,
#                    phone: Faker::PhoneNumber.cell_phone,
#                    city: Faker::Address.city,
#                    streat: Faker::Address.street_name,
#                    building: Faker::Address.building_number,
#                    email: Faker::Internet.email
#                    company_name: Faker::Company.name,
#                    visible: Faker::Boolean.boolean)
