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
User.new(first_name: 'erkki', last_name: 'jaakkola', username: 'testi1',
         email: 'erkki@ahti.com', phone_number: 12345, address: 'Osoite1',
         birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1',
         password_confirmation: 'Salasana1', kk_number: 1).save
User.new(first_name: 'jaska', last_name: 'virtanen', username: 'testi2',
         email: 'jaska@ahti.com', phone_number: 12345, address: 'Osoite2',
         birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1',
         password_confirmation: 'Salasana1', kk_number: 2).save
User.new(first_name: 'sami', last_name: 'lahtinen', username: 'testi3',
         email: 'sami@ahti.com', phone_number: 12345, address: 'Osoite3',
         birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1',
         password_confirmation: 'Salasana1', kk_number: 3).save
User.new(first_name: 'pekka', last_name: 'lehto', username: 'testi4',
         email: 'pekka@ahti.com', phone_number: 12345, address: 'Osoite4',
         birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1',
         password_confirmation: 'Salasana1', kk_number: 4).save
User.new(first_name: 'jukka', last_name: 'koskinen', username: 'testi5',
         email: 'jukka@ahti.com', phone_number: 12345, address: 'Osoite5',
         birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1',
         password_confirmation: 'Salasana1', kk_number: 5).save
@event1 = Event.new(name:'Avoin tapahtuma', start_date: 'Tue, 24 Jun 2014',
          end_date: 'Tue, 24 Jun 2015', description: 'Kaikille avoin tapahtuma', open: true)
@event1.save
@event2 = Event.new(name:'Suljettu tapahtuma', start_date: 'Tue, 24 Jun 2014',
          end_date: 'Tue, 24 Jun 2015', description: 'Kalevan kierros \
          -ilmoittautumisen vaatima tapahtuma', open: false)
@event2.save
EventAttribute.new(event_id: @event1.id, attribute_type: 'text_field',
                   attribute_value: '', name: 'etunimi', attribute_label: 'Etunimi').save
EventAttribute.new(event_id: @event1.id, attribute_type: 'text_field',
                   attribute_value: '', name: 'sukunimi', attribute_label: 'Sukunimi').save
EventAttribute.new(event_id: @event1.id, attribute_type: 'radio_button',
                   attribute_value: 'Ok;Ei', name: 'valinta', attribute_label: 'Ok?').save

EventAttribute.new(event_id: @event2.id, attribute_type: 'text_field',
                   attribute_value: '', name: 'email', attribute_label: 'Sähköposti').save
EventAttribute.new(event_id: @event2.id, attribute_type: 'check_box',
                   attribute_value: 'Osoitteeseen saa lähettää mainospostia',
                   name: 'kielto', attribute_label: 'Mainostus').save
