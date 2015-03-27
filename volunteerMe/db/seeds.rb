# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  Volunteer.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email
    )
end
commitment_type = ["one-time", "weekly", "monthly", "mentorship", "pro-bono", "workshop", "other"]
20.times do
  org = Organization.create!(
    name: Faker::Name.name,
    category: Faker::Lorem.word,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    website: Faker::Internet.url,
    bio: Faker::Lorem.sentence(3),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    country: Faker::Address.country,
    )
  3.times do
    Event.create!(
      name: Faker::Name.name,
      description: Faker::Lorem.sentence,
      requirements: Faker::Lorem.sentence,
      commitment_type: commitment_type.sample,
      date: Faker::Date.backward(2),
      time_start: Time.now,
      time_end: Time.now,
      address: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state_abbr,
      country: Faker::Address.country,
      spots: rand(1..50),
      organization_id: org.id,
      )
  end
end
