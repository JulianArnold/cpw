# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

raise 'Cannot run this file for anything except development mode' unless Rails.env.development?

Admin.where(email: 'julian.arnold123@gmail.com').first_or_create!(
  first_name: 'Julian',
  last_name: 'Arnold',
  password: '123123123',
  password_confirmation: '123123123',
  active: true
)

Manager.where(email: 'manager@example.com').first_or_create!(
  first_name: 'Waylin',
  last_name: 'Smithers',
  password: '123123123',
  password_confirmation: '123123123',
  active: true
)

Customer.where(email: 'happy.dude@example.com').first_or_create!(
  first_name: 'homer',
  last_name: 'simpson',
  password: '123123123',
  password_confirmation: '123123123',
  active: true
)
