# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Faker::Config.locale = 'en-US'

100.times do |i|
  PitchEvent.create(
      event_name: Faker::Lorem.word,
      org_name: Faker::Company.name,
      address_1: Faker::Address.street_address,
      address_2: Faker::Address.building_number,
      city: Faker::Address.city,
      state: Faker::Address.state,
      zip: Faker::Address.zip,
      event_start: Faker::Time.between(5.days.from_now, 7.days.from_now, :all),
      event_end: Faker::Time.between(7.days.from_now, 8.days.from_now, :all),
      registration_deadline: Faker::Time.between(Time.now, 5.days.from_now, :all),
      detail_link: Faker::Internet.url,
      contact_name: Faker::Name.name,
      contact_number: Faker::PhoneNumber.cell_phone,
      contact_email: Faker::Internet.email,
      local: [true, false].sample,
      national: [true, false].sample,
      woman_founder: [true, false].sample,
      ethnic_founder: [true, false].sample,
      industry: ["technology", "education", "medical", "entertainment", "automotive"].sample,
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude
  )
end