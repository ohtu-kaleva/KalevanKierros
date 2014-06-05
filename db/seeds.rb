# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.new(first_name: 'admin', last_name: 'admin', username: 'admin',
         email: 'admin@test.com', phone_number: 12345, address: 'AdminAdress',
         birth_date: Date.today, gender: 'male', admin: true, password: ENV['KK_ADMIN_PASSWD'],
         password_confirmation: ENV['KK_ADMIN_PASSWD']).save
