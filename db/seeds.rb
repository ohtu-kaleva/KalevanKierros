@Event1 = Event.new(name: 'Luistelu', factor: 2800, penalty_factor: 1.0, sport_type: 'SkatingEvent', start_date: Date.today + 1.month, end_date: Date.today + 2.month, second_end_date: Date.today + 3.month, price: 2000, second_price: 3000, description: 'Pistelaskun testaukseen')
@Event1.save
EventAttribute.new(name: 'Kierroslaskija', attribute_value: 'Kyllä', attribute_label: 'Tarvitsetko kierroslaskijan järjestäjän puolesta?', attribute_type: 'check_box', event_id: @Event1.id, attribute_index: 1).save
@Event2 = Event.new(name: 'Hiihto', factor: 2000, penalty_factor: 1.06, sport_type: 'SkiingEvent', start_date: Date.today + 1.month, end_date: Date.today + 2.month, second_end_date: Date.today + 3.month, price: 2000, second_price: 3000, description: 'Pistelaskun testaukseen')
@Event2.save
EventAttribute.new(name: 'Tyyli', attribute_value: 'Vapaa;Perinteinen', attribute_label: 'Valitse vapaa tai perinteinen tyyli.', attribute_type: 'radio_button', event_id: @Event2.id, attribute_index: 1).save
@Event3 = Event.new(name: 'Juoksu', factor: 2000, penalty_factor: 2.3, sport_type: 'RunningEvent', start_date: Date.today + 1.month, end_date: Date.today + 2.month, second_end_date: Date.today + 3.month, price: 2000, second_price: 3000, description: 'Pistelaskun testaukseen')
@Event3.save
EventAttribute.new(name: 'Tyyppi', attribute_value: 'maraton;puolimaraton', attribute_label: 'Valitse maraton tai puolimaraton', attribute_type: 'radio_button', event_id: @Event3.id, attribute_index: 1).save
@Event4 = Event.new(name: 'Soutu', factor: 3500, penalty_factor: 1.0, sport_type: 'RowingEvent', start_date: Date.today + 1.month, end_date: Date.today + 2.month, second_end_date: Date.today + 3.month, price: 2000, second_price: 3000, description: 'Pistelaskun testaukseen')
@Event4.save
EventAttribute.new(name: 'Pari', attribute_value: 'Jos sinulla on pari, niin hänen täytyy olla rekisteröitynyt käyttäjä.', attribute_label: 'Pari-informaatio.', attribute_type: 'plain_text', event_id: @Event4.id, attribute_index: nil).save
EventAttribute.new(name: 'Melonta', attribute_value: 'Soutu;Melonta', attribute_label: 'Soutu/melonta', attribute_type: 'select', event_id: @Event4.id, attribute_index: 1).save
EventAttribute.new(name: 'Parin nimi', attribute_value: 'Vuorosoudussa parisi nimi.', attribute_label: 'Jos soudat parin kanssa, kirjoita hänen nimensä tekstikenttään.', attribute_type: 'text_field', event_id: @Event4.id, attribute_index: 2).save
@Event5 = Event.new(name: 'Pyöräily', factor: 2800, penalty_factor: 1.0, sport_type: 'CyclingEvent', start_date: Date.today + 1.month, end_date: Date.today + 2.month, second_end_date: Date.today + 3.month, price: 2000, second_price: 3000, description: 'Pistelaskun testaukseen')
@Event5.save
@Event6 = Event.new(name: 'Suunnistus', factor: 1300, penalty_factor: 1.0, sport_type: 'OrienteeringEvent', start_date: Date.today + 1.month, end_date: Date.today + 2.month, second_end_date: Date.today + 3.month, price: 2000, second_price: 3000, description: 'Pistelaskun testaukseen')
@Event6.save
EventAttribute.new(name: 'Emit', attribute_value: 'Kyllä', attribute_label: 'Tarvitsetko emit-lähettimen järjestäjän puolesta?', attribute_type: 'check_box', event_id: @Event6.id, attribute_index: 1).save
User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Admin', last_name: 'von Admin', username: 'admin', email: 'admin@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10000, birth_date: Date.today, gender: 'M', admin: true, password: 'Salasana1', password_confirmation: 'Salasana1', active: true).save
@User10001 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Prittinen', username: 'user10001', email: 'user10001@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10001, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10001.save
Result.new(name: 'Juha Prittinen', city: 'Helsinki', group: 'Hitaat 1', year: 2014, series: 'M45', kk_number: '10001').save
@Enrollment100011 = Enrollment.new(user_id: @User10001.id, event_id: @Event1.id, time:3076)
@Enrollment100011.save
@Enrollment100012 = Enrollment.new(user_id: @User10001.id, event_id: @Event2.id, time:9012)
@Enrollment100012.save
@Enrollment100013 = Enrollment.new(user_id: @User10001.id, event_id: @Event3.id, time:11691)
@Enrollment100013.save
@Enrollment100014 = Enrollment.new(user_id: @User10001.id, event_id: @Event4.id, time:9586)
@Enrollment100014.save
@Enrollment100015 = Enrollment.new(user_id: @User10001.id, event_id: @Event5.id, time:6294)
@Enrollment100015.save
@Enrollment100016 = Enrollment.new(user_id: @User10001.id, event_id: @Event6.id, time:6123)
@Enrollment100016.save
EnrollmentData.new(enrollment_id: @Enrollment100014.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100014.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100012.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100013.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100011.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100016.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10002 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Toni', last_name: 'Pikkarainen', username: 'user10002', email: 'user10002@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10002, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10002.save
Result.new(name: 'Toni Pikkarainen', city: 'Helsinki', group: 'Kuntokonnat 1.', year: 2014, series: 'M', kk_number: '10002').save
@Enrollment100021 = Enrollment.new(user_id: @User10002.id, event_id: @Event1.id, time:3215)
@Enrollment100021.save
@Enrollment100022 = Enrollment.new(user_id: @User10002.id, event_id: @Event2.id, time:8690)
@Enrollment100022.save
@Enrollment100023 = Enrollment.new(user_id: @User10002.id, event_id: @Event3.id, time:4893)
@Enrollment100023.save
@Enrollment100024 = Enrollment.new(user_id: @User10002.id, event_id: @Event4.id, time:10433)
@Enrollment100024.save
@Enrollment100025 = Enrollment.new(user_id: @User10002.id, event_id: @Event5.id, time:6562)
@Enrollment100025.save
@Enrollment100026 = Enrollment.new(user_id: @User10002.id, event_id: @Event6.id, time:5352)
@Enrollment100026.save
EnrollmentData.new(enrollment_id: @Enrollment100024.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100024.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100022.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100023.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100021.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100026.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10003 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markus', last_name: 'Välimäki', username: 'user10003', email: 'user10003@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10003, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10003.save
Result.new(name: 'Markus Välimäki', city: 'Helsinki', group: 'Viialan Viri', year: 2014, series: 'M', kk_number: '10003').save
@Enrollment100031 = Enrollment.new(user_id: @User10003.id, event_id: @Event1.id, time:3340)
@Enrollment100031.save
@Enrollment100032 = Enrollment.new(user_id: @User10003.id, event_id: @Event2.id, time:8093)
@Enrollment100032.save
@Enrollment100033 = Enrollment.new(user_id: @User10003.id, event_id: @Event3.id, time:4638)
@Enrollment100033.save
@Enrollment100034 = Enrollment.new(user_id: @User10003.id, event_id: @Event4.id, time:9816)
@Enrollment100034.save
@Enrollment100035 = Enrollment.new(user_id: @User10003.id, event_id: @Event5.id, time:6627)
@Enrollment100035.save
@Enrollment100036 = Enrollment.new(user_id: @User10003.id, event_id: @Event6.id, time:7957)
@Enrollment100036.save
EnrollmentData.new(enrollment_id: @Enrollment100034.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100034.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100032.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100033.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100031.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100036.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10004 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Lehtonen', username: 'user10004', email: 'user10004@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10004, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10004.save
Result.new(name: 'Juha Lehtonen', city: 'Helsinki', group: 'Tuusulan Tallaajat I', year: 2014, series: 'M40', kk_number: '10004').save
@Enrollment100041 = Enrollment.new(user_id: @User10004.id, event_id: @Event1.id, time:3176)
@Enrollment100041.save
@Enrollment100042 = Enrollment.new(user_id: @User10004.id, event_id: @Event2.id, time:9256)
@Enrollment100042.save
@Enrollment100043 = Enrollment.new(user_id: @User10004.id, event_id: @Event3.id, time:13070)
@Enrollment100043.save
@Enrollment100044 = Enrollment.new(user_id: @User10004.id, event_id: @Event4.id, time:10057)
@Enrollment100044.save
@Enrollment100045 = Enrollment.new(user_id: @User10004.id, event_id: @Event5.id, time:6437)
@Enrollment100045.save
@Enrollment100046 = Enrollment.new(user_id: @User10004.id, event_id: @Event6.id, time:6373)
@Enrollment100046.save
EnrollmentData.new(enrollment_id: @Enrollment100044.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100044.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100042.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100043.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100041.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100046.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10005 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Rauno', last_name: 'Hakala', username: 'user10005', email: 'user10005@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10005, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10005.save
Result.new(name: 'Rauno Hakala', city: 'Helsinki', group: 'Uskelan Urhot I', year: 2014, series: 'M45', kk_number: '10005').save
@Enrollment100051 = Enrollment.new(user_id: @User10005.id, event_id: @Event1.id, time:3196)
@Enrollment100051.save
@Enrollment100052 = Enrollment.new(user_id: @User10005.id, event_id: @Event2.id, time:9288)
@Enrollment100052.save
@Enrollment100053 = Enrollment.new(user_id: @User10005.id, event_id: @Event3.id, time:5203)
@Enrollment100053.save
@Enrollment100054 = Enrollment.new(user_id: @User10005.id, event_id: @Event4.id, time:9823)
@Enrollment100054.save
@Enrollment100055 = Enrollment.new(user_id: @User10005.id, event_id: @Event5.id, time:6712)
@Enrollment100055.save
@Enrollment100056 = Enrollment.new(user_id: @User10005.id, event_id: @Event6.id, time:5820)
@Enrollment100056.save
EnrollmentData.new(enrollment_id: @Enrollment100054.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100054.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100052.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100053.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100051.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100056.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10006 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Sami-Jukka', last_name: 'Hämäläinen', username: 'user10006', email: 'user10006@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10006, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10006.save
Result.new(name: 'Sami-Jukka Hämäläinen', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10006').save
@Enrollment100061 = Enrollment.new(user_id: @User10006.id, event_id: @Event1.id, time:3283)
@Enrollment100061.save
@Enrollment100062 = Enrollment.new(user_id: @User10006.id, event_id: @Event2.id, time:9085)
@Enrollment100062.save
@Enrollment100063 = Enrollment.new(user_id: @User10006.id, event_id: @Event3.id, time:5177)
@Enrollment100063.save
@Enrollment100064 = Enrollment.new(user_id: @User10006.id, event_id: @Event4.id, time:10470)
@Enrollment100064.save
@Enrollment100065 = Enrollment.new(user_id: @User10006.id, event_id: @Event5.id, time:6911)
@Enrollment100065.save
@Enrollment100066 = Enrollment.new(user_id: @User10006.id, event_id: @Event6.id, time:6408)
@Enrollment100066.save
EnrollmentData.new(enrollment_id: @Enrollment100064.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100064.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100062.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100063.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100061.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100066.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10007 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pentti', last_name: 'Vepsäläinen', username: 'user10007', email: 'user10007@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10007, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10007.save
Result.new(name: 'Pentti Vepsäläinen', city: 'Helsinki', group: 'Reilut Miehet Havumetsien', year: 2014, series: 'M55', kk_number: '10007').save
@Enrollment100071 = Enrollment.new(user_id: @User10007.id, event_id: @Event1.id, time:3241)
@Enrollment100071.save
@Enrollment100072 = Enrollment.new(user_id: @User10007.id, event_id: @Event2.id, time:9389)
@Enrollment100072.save
@Enrollment100073 = Enrollment.new(user_id: @User10007.id, event_id: @Event3.id, time:5133)
@Enrollment100073.save
@Enrollment100074 = Enrollment.new(user_id: @User10007.id, event_id: @Event4.id, time:10347)
@Enrollment100074.save
@Enrollment100075 = Enrollment.new(user_id: @User10007.id, event_id: @Event5.id, time:7128)
@Enrollment100075.save
@Enrollment100076 = Enrollment.new(user_id: @User10007.id, event_id: @Event6.id, time:6768)
@Enrollment100076.save
EnrollmentData.new(enrollment_id: @Enrollment100074.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100074.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100072.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100073.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100071.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100076.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10008 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jouni', last_name: 'Miettinen', username: 'user10008', email: 'user10008@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10008, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10008.save
Result.new(name: 'Jouni Miettinen', city: 'Helsinki', group: 'Kuntokonnat 1.', year: 2014, series: 'M40', kk_number: '10008').save
@Enrollment100081 = Enrollment.new(user_id: @User10008.id, event_id: @Event1.id, time:3223)
@Enrollment100081.save
@Enrollment100082 = Enrollment.new(user_id: @User10008.id, event_id: @Event2.id, time:9686)
@Enrollment100082.save
@Enrollment100083 = Enrollment.new(user_id: @User10008.id, event_id: @Event3.id, time:11457)
@Enrollment100083.save
@Enrollment100084 = Enrollment.new(user_id: @User10008.id, event_id: @Event4.id, time:10489)
@Enrollment100084.save
@Enrollment100085 = Enrollment.new(user_id: @User10008.id, event_id: @Event5.id, time:6828)
@Enrollment100085.save
@Enrollment100086 = Enrollment.new(user_id: @User10008.id, event_id: @Event6.id, time:7544)
@Enrollment100086.save
EnrollmentData.new(enrollment_id: @Enrollment100084.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100084.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100082.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100083.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100081.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100086.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10009 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Antti', last_name: 'Korkeakangas', username: 'user10009', email: 'user10009@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10009, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10009.save
Result.new(name: 'Antti Korkeakangas', city: 'Helsinki', group: 'Reilut Miehet Havumetsien', year: 2014, series: 'M', kk_number: '10009').save
@Enrollment100091 = Enrollment.new(user_id: @User10009.id, event_id: @Event1.id, time:3243)
@Enrollment100091.save
@Enrollment100092 = Enrollment.new(user_id: @User10009.id, event_id: @Event2.id, time:9226)
@Enrollment100092.save
@Enrollment100093 = Enrollment.new(user_id: @User10009.id, event_id: @Event3.id, time:5090)
@Enrollment100093.save
@Enrollment100094 = Enrollment.new(user_id: @User10009.id, event_id: @Event4.id, time:10950)
@Enrollment100094.save
@Enrollment100095 = Enrollment.new(user_id: @User10009.id, event_id: @Event5.id, time:7367)
@Enrollment100095.save
@Enrollment100096 = Enrollment.new(user_id: @User10009.id, event_id: @Event6.id, time:5977)
@Enrollment100096.save
EnrollmentData.new(enrollment_id: @Enrollment100094.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100094.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100092.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100093.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100091.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100096.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10010 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ossi', last_name: 'Sippu', username: 'user10010', email: 'user10010@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10010, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10010.save
Result.new(name: 'Ossi Sippu', city: 'Helsinki', group: 'Kuntokonnat 1.', year: 2014, series: 'M', kk_number: '10010').save
@Enrollment100101 = Enrollment.new(user_id: @User10010.id, event_id: @Event1.id, time:3156)
@Enrollment100101.save
@Enrollment100102 = Enrollment.new(user_id: @User10010.id, event_id: @Event2.id, time:9216)
@Enrollment100102.save
@Enrollment100103 = Enrollment.new(user_id: @User10010.id, event_id: @Event3.id, time:5824)
@Enrollment100103.save
@Enrollment100104 = Enrollment.new(user_id: @User10010.id, event_id: @Event4.id, time:10433)
@Enrollment100104.save
@Enrollment100105 = Enrollment.new(user_id: @User10010.id, event_id: @Event5.id, time:6745)
@Enrollment100105.save
@Enrollment100106 = Enrollment.new(user_id: @User10010.id, event_id: @Event6.id, time:6228)
@Enrollment100106.save
EnrollmentData.new(enrollment_id: @Enrollment100104.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100104.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100102.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100103.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100101.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100106.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10011 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Anders', last_name: 'Åkerman', username: 'user10011', email: 'user10011@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10011, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10011.save
Result.new(name: 'Anders Åkerman', city: 'Helsinki', group: 'Korvenpojat', year: 2014, series: 'M40', kk_number: '10011').save
@Enrollment100111 = Enrollment.new(user_id: @User10011.id, event_id: @Event1.id, time:3350)
@Enrollment100111.save
@Enrollment100112 = Enrollment.new(user_id: @User10011.id, event_id: @Event2.id, time:9224)
@Enrollment100112.save
@Enrollment100113 = Enrollment.new(user_id: @User10011.id, event_id: @Event3.id, time:5128)
@Enrollment100113.save
@Enrollment100114 = Enrollment.new(user_id: @User10011.id, event_id: @Event4.id, time:10648)
@Enrollment100114.save
@Enrollment100115 = Enrollment.new(user_id: @User10011.id, event_id: @Event5.id, time:7507)
@Enrollment100115.save
@Enrollment100116 = Enrollment.new(user_id: @User10011.id, event_id: @Event6.id, time:5167)
@Enrollment100116.save
EnrollmentData.new(enrollment_id: @Enrollment100114.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100114.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100112.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100113.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100111.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100116.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10012 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markus', last_name: 'Ilmarinen', username: 'user10012', email: 'user10012@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10012, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10012.save
Result.new(name: 'Markus Ilmarinen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10012').save
@Enrollment100121 = Enrollment.new(user_id: @User10012.id, event_id: @Event1.id, time:3823)
@Enrollment100121.save
@Enrollment100122 = Enrollment.new(user_id: @User10012.id, event_id: @Event2.id, time:9989)
@Enrollment100122.save
@Enrollment100123 = Enrollment.new(user_id: @User10012.id, event_id: @Event3.id, time:11686)
@Enrollment100123.save
@Enrollment100124 = Enrollment.new(user_id: @User10012.id, event_id: @Event4.id, time:10781)
@Enrollment100124.save
@Enrollment100125 = Enrollment.new(user_id: @User10012.id, event_id: @Event5.id, time:6622)
@Enrollment100125.save
@Enrollment100126 = Enrollment.new(user_id: @User10012.id, event_id: @Event6.id, time:6245)
@Enrollment100126.save
EnrollmentData.new(enrollment_id: @Enrollment100124.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100124.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100122.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100123.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100121.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100126.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10013 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jani', last_name: 'Hevonoja', username: 'user10013', email: 'user10013@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10013, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10013.save
Result.new(name: 'Jani Hevonoja', city: 'Helsinki', group: 'Viialan Viri', year: 2014, series: 'M', kk_number: '10013').save
@Enrollment100131 = Enrollment.new(user_id: @User10013.id, event_id: @Event1.id, time:3736)
@Enrollment100131.save
@Enrollment100132 = Enrollment.new(user_id: @User10013.id, event_id: @Event2.id, time:9392)
@Enrollment100132.save
@Enrollment100133 = Enrollment.new(user_id: @User10013.id, event_id: @Event3.id, time:5153)
@Enrollment100133.save
@Enrollment100134 = Enrollment.new(user_id: @User10013.id, event_id: @Event4.id, time:10111)
@Enrollment100134.save
@Enrollment100135 = Enrollment.new(user_id: @User10013.id, event_id: @Event5.id, time:6936)
@Enrollment100135.save
@Enrollment100136 = Enrollment.new(user_id: @User10013.id, event_id: @Event6.id, time:7224)
@Enrollment100136.save
EnrollmentData.new(enrollment_id: @Enrollment100134.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100134.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100132.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100133.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100131.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100136.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10014 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Vesa', last_name: 'Ruuska', username: 'user10014', email: 'user10014@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10014, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10014.save
Result.new(name: 'Vesa Ruuska', city: 'Helsinki', group: 'KENSU-KK', year: 2014, series: 'M', kk_number: '10014').save
@Enrollment100141 = Enrollment.new(user_id: @User10014.id, event_id: @Event1.id, time:3412)
@Enrollment100141.save
@Enrollment100142 = Enrollment.new(user_id: @User10014.id, event_id: @Event2.id, time:10047)
@Enrollment100142.save
@Enrollment100143 = Enrollment.new(user_id: @User10014.id, event_id: @Event3.id, time:5049)
@Enrollment100143.save
@Enrollment100144 = Enrollment.new(user_id: @User10014.id, event_id: @Event4.id, time:11272)
@Enrollment100144.save
@Enrollment100145 = Enrollment.new(user_id: @User10014.id, event_id: @Event5.id, time:7643)
@Enrollment100145.save
@Enrollment100146 = Enrollment.new(user_id: @User10014.id, event_id: @Event6.id, time:6067)
@Enrollment100146.save
EnrollmentData.new(enrollment_id: @Enrollment100144.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100144.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100142.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100143.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100141.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100146.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10015 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Antti', last_name: 'Pasanen', username: 'user10015', email: 'user10015@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10015, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10015.save
Result.new(name: 'Antti Pasanen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10015').save
@Enrollment100151 = Enrollment.new(user_id: @User10015.id, event_id: @Event1.id, time:3680)
@Enrollment100151.save
@Enrollment100152 = Enrollment.new(user_id: @User10015.id, event_id: @Event2.id, time:10869)
@Enrollment100152.save
@Enrollment100153 = Enrollment.new(user_id: @User10015.id, event_id: @Event3.id, time:5097)
@Enrollment100153.save
@Enrollment100154 = Enrollment.new(user_id: @User10015.id, event_id: @Event4.id, time:10553)
@Enrollment100154.save
@Enrollment100155 = Enrollment.new(user_id: @User10015.id, event_id: @Event5.id, time:6789)
@Enrollment100155.save
@Enrollment100156 = Enrollment.new(user_id: @User10015.id, event_id: @Event6.id, time:6113)
@Enrollment100156.save
EnrollmentData.new(enrollment_id: @Enrollment100154.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100154.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100152.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100153.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100151.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100156.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10016 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Olli-Pekka', last_name: 'Pohjola', username: 'user10016', email: 'user10016@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10016, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10016.save
Result.new(name: 'Olli-Pekka Pohjola', city: 'Helsinki', group: 'CCRT', year: 2014, series: 'M40', kk_number: '10016').save
@Enrollment100161 = Enrollment.new(user_id: @User10016.id, event_id: @Event1.id, time:3391)
@Enrollment100161.save
@Enrollment100162 = Enrollment.new(user_id: @User10016.id, event_id: @Event2.id, time:10777)
@Enrollment100162.save
@Enrollment100163 = Enrollment.new(user_id: @User10016.id, event_id: @Event3.id, time:5816)
@Enrollment100163.save
@Enrollment100164 = Enrollment.new(user_id: @User10016.id, event_id: @Event4.id, time:11000)
@Enrollment100164.save
@Enrollment100165 = Enrollment.new(user_id: @User10016.id, event_id: @Event5.id, time:6944)
@Enrollment100165.save
@Enrollment100166 = Enrollment.new(user_id: @User10016.id, event_id: @Event6.id, time:6804)
@Enrollment100166.save
EnrollmentData.new(enrollment_id: @Enrollment100164.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100164.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100162.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100163.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100161.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100166.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10017 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Karhima', username: 'user10017', email: 'user10017@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10017, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10017.save
Result.new(name: 'Juha Karhima', city: 'Helsinki', group: 'Sportia KT-SPORT', year: 2014, series: 'M45', kk_number: '10017').save
@Enrollment100171 = Enrollment.new(user_id: @User10017.id, event_id: @Event1.id, time:3757)
@Enrollment100171.save
@Enrollment100172 = Enrollment.new(user_id: @User10017.id, event_id: @Event2.id, time:22539)
@Enrollment100172.save
@Enrollment100173 = Enrollment.new(user_id: @User10017.id, event_id: @Event3.id, time:11181)
@Enrollment100173.save
@Enrollment100174 = Enrollment.new(user_id: @User10017.id, event_id: @Event4.id, time:10143)
@Enrollment100174.save
@Enrollment100175 = Enrollment.new(user_id: @User10017.id, event_id: @Event5.id, time:7159)
@Enrollment100175.save
@Enrollment100176 = Enrollment.new(user_id: @User10017.id, event_id: @Event6.id, time:8718)
@Enrollment100176.save
EnrollmentData.new(enrollment_id: @Enrollment100174.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100174.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100172.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100173.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100171.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100176.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10018 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kari', last_name: 'Huovila', username: 'user10018', email: 'user10018@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10018, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10018.save
Result.new(name: 'Kari Huovila', city: 'Helsinki', group: 'Otaniemen Jyllääjät I', year: 2014, series: 'M50', kk_number: '10018').save
@Enrollment100181 = Enrollment.new(user_id: @User10018.id, event_id: @Event1.id, time:3195)
@Enrollment100181.save
@Enrollment100182 = Enrollment.new(user_id: @User10018.id, event_id: @Event2.id, time:10098)
@Enrollment100182.save
@Enrollment100183 = Enrollment.new(user_id: @User10018.id, event_id: @Event3.id, time:12053)
@Enrollment100183.save
@Enrollment100184 = Enrollment.new(user_id: @User10018.id, event_id: @Event4.id, time:11237)
@Enrollment100184.save
@Enrollment100185 = Enrollment.new(user_id: @User10018.id, event_id: @Event5.id, time:7188)
@Enrollment100185.save
@Enrollment100186 = Enrollment.new(user_id: @User10018.id, event_id: @Event6.id, time:9247)
@Enrollment100186.save
EnrollmentData.new(enrollment_id: @Enrollment100184.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100184.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100182.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100183.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100181.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100186.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10019 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kari', last_name: 'Köninki', username: 'user10019', email: 'user10019@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10019, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10019.save
Result.new(name: 'Kari Köninki', city: 'Helsinki', group: 'KENSU-KK', year: 2014, series: 'M55', kk_number: '10019').save
@Enrollment100191 = Enrollment.new(user_id: @User10019.id, event_id: @Event1.id, time:3414)
@Enrollment100191.save
@Enrollment100192 = Enrollment.new(user_id: @User10019.id, event_id: @Event2.id, time:10605)
@Enrollment100192.save
@Enrollment100193 = Enrollment.new(user_id: @User10019.id, event_id: @Event3.id, time:5601)
@Enrollment100193.save
@Enrollment100194 = Enrollment.new(user_id: @User10019.id, event_id: @Event4.id, time:10814)
@Enrollment100194.save
@Enrollment100195 = Enrollment.new(user_id: @User10019.id, event_id: @Event5.id, time:7277)
@Enrollment100195.save
@Enrollment100196 = Enrollment.new(user_id: @User10019.id, event_id: @Event6.id, time:7715)
@Enrollment100196.save
EnrollmentData.new(enrollment_id: @Enrollment100194.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100194.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100192.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100193.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100191.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100196.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10020 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha-Pekka', last_name: 'Keränen', username: 'user10020', email: 'user10020@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10020, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10020.save
Result.new(name: 'Juha-Pekka Keränen', city: 'Helsinki', group: nil, year: 2014, series: 'M50', kk_number: '10020').save
@Enrollment100201 = Enrollment.new(user_id: @User10020.id, event_id: @Event1.id, time:3626)
@Enrollment100201.save
@Enrollment100202 = Enrollment.new(user_id: @User10020.id, event_id: @Event2.id, time:9758)
@Enrollment100202.save
@Enrollment100203 = Enrollment.new(user_id: @User10020.id, event_id: @Event3.id, time:5796)
@Enrollment100203.save
@Enrollment100204 = Enrollment.new(user_id: @User10020.id, event_id: @Event4.id, time:10214)
@Enrollment100204.save
@Enrollment100205 = Enrollment.new(user_id: @User10020.id, event_id: @Event5.id, time:7485)
@Enrollment100205.save
@Enrollment100206 = Enrollment.new(user_id: @User10020.id, event_id: @Event6.id, time:7210)
@Enrollment100206.save
EnrollmentData.new(enrollment_id: @Enrollment100204.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100204.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100202.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100203.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100201.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100206.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10021 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Topi', last_name: 'Salminen', username: 'user10021', email: 'user10021@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10021, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10021.save
Result.new(name: 'Topi Salminen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10021').save
@Enrollment100211 = Enrollment.new(user_id: @User10021.id, event_id: @Event1.id, time:3434)
@Enrollment100211.save
@Enrollment100212 = Enrollment.new(user_id: @User10021.id, event_id: @Event2.id, time:9272)
@Enrollment100212.save
@Enrollment100213 = Enrollment.new(user_id: @User10021.id, event_id: @Event3.id, time:5816)
@Enrollment100213.save
@Enrollment100214 = Enrollment.new(user_id: @User10021.id, event_id: @Event4.id, time:10590)
@Enrollment100214.save
@Enrollment100215 = Enrollment.new(user_id: @User10021.id, event_id: @Event5.id, time:7373)
@Enrollment100215.save
@Enrollment100216 = Enrollment.new(user_id: @User10021.id, event_id: @Event6.id, time:8670)
@Enrollment100216.save
EnrollmentData.new(enrollment_id: @Enrollment100214.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100214.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100212.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100213.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100211.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100216.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10022 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ville', last_name: 'Eskelinen', username: 'user10022', email: 'user10022@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10022, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10022.save
Result.new(name: 'Ville Eskelinen', city: 'Helsinki', group: 'Uskelan Urhot II', year: 2014, series: 'M', kk_number: '10022').save
@Enrollment100221 = Enrollment.new(user_id: @User10022.id, event_id: @Event1.id, time:3601)
@Enrollment100221.save
@Enrollment100222 = Enrollment.new(user_id: @User10022.id, event_id: @Event2.id, time:11205)
@Enrollment100222.save
@Enrollment100223 = Enrollment.new(user_id: @User10022.id, event_id: @Event3.id, time:5991)
@Enrollment100223.save
@Enrollment100224 = Enrollment.new(user_id: @User10022.id, event_id: @Event4.id, time:10440)
@Enrollment100224.save
@Enrollment100225 = Enrollment.new(user_id: @User10022.id, event_id: @Event5.id, time:7108)
@Enrollment100225.save
@Enrollment100226 = Enrollment.new(user_id: @User10022.id, event_id: @Event6.id, time:7600)
@Enrollment100226.save
EnrollmentData.new(enrollment_id: @Enrollment100224.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100224.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100222.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100223.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100221.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100226.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10023 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mika', last_name: 'Kortesmaa', username: 'user10023', email: 'user10023@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10023, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10023.save
Result.new(name: 'Mika Kortesmaa', city: 'Helsinki', group: 'Uskelan Urhot I', year: 2014, series: 'M40', kk_number: '10023').save
@Enrollment100231 = Enrollment.new(user_id: @User10023.id, event_id: @Event1.id, time:3376)
@Enrollment100231.save
@Enrollment100232 = Enrollment.new(user_id: @User10023.id, event_id: @Event2.id, time:10937)
@Enrollment100232.save
@Enrollment100233 = Enrollment.new(user_id: @User10023.id, event_id: @Event3.id, time:5605)
@Enrollment100233.save
@Enrollment100234 = Enrollment.new(user_id: @User10023.id, event_id: @Event4.id, time:11250)
@Enrollment100234.save
@Enrollment100235 = Enrollment.new(user_id: @User10023.id, event_id: @Event5.id, time:7382)
@Enrollment100235.save
@Enrollment100236 = Enrollment.new(user_id: @User10023.id, event_id: @Event6.id, time:7590)
@Enrollment100236.save
EnrollmentData.new(enrollment_id: @Enrollment100234.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100234.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100232.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100233.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100231.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100236.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10024 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Harri', last_name: 'Lehtimäki', username: 'user10024', email: 'user10024@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10024, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10024.save
Result.new(name: 'Harri Lehtimäki', city: 'Helsinki', group: 'Reilut Miehet Havumetsien', year: 2014, series: 'M40', kk_number: '10024').save
@Enrollment100241 = Enrollment.new(user_id: @User10024.id, event_id: @Event1.id, time:3401)
@Enrollment100241.save
@Enrollment100242 = Enrollment.new(user_id: @User10024.id, event_id: @Event2.id, time:22485)
@Enrollment100242.save
@Enrollment100243 = Enrollment.new(user_id: @User10024.id, event_id: @Event3.id, time:11213)
@Enrollment100243.save
@Enrollment100244 = Enrollment.new(user_id: @User10024.id, event_id: @Event4.id, time:10978)
@Enrollment100244.save
@Enrollment100245 = Enrollment.new(user_id: @User10024.id, event_id: @Event5.id, time:8444)
@Enrollment100245.save
@Enrollment100246 = Enrollment.new(user_id: @User10024.id, event_id: @Event6.id, time:6238)
@Enrollment100246.save
EnrollmentData.new(enrollment_id: @Enrollment100244.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100244.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100242.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100243.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100241.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100246.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10025 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Teuvo', last_name: 'Lehtinen', username: 'user10025', email: 'user10025@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10025, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10025.save
Result.new(name: 'Teuvo Lehtinen', city: 'Helsinki', group: 'Selän Sitkeät 1.', year: 2014, series: 'M65', kk_number: '10025').save
@Enrollment100251 = Enrollment.new(user_id: @User10025.id, event_id: @Event1.id, time:3415)
@Enrollment100251.save
@Enrollment100252 = Enrollment.new(user_id: @User10025.id, event_id: @Event2.id, time:10933)
@Enrollment100252.save
@Enrollment100253 = Enrollment.new(user_id: @User10025.id, event_id: @Event3.id, time:5936)
@Enrollment100253.save
@Enrollment100254 = Enrollment.new(user_id: @User10025.id, event_id: @Event4.id, time:10308)
@Enrollment100254.save
@Enrollment100255 = Enrollment.new(user_id: @User10025.id, event_id: @Event5.id, time:7303)
@Enrollment100255.save
@Enrollment100256 = Enrollment.new(user_id: @User10025.id, event_id: @Event6.id, time:7763)
@Enrollment100256.save
EnrollmentData.new(enrollment_id: @Enrollment100254.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100254.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100252.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100253.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100251.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100256.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10026 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ari', last_name: 'Ilola', username: 'user10026', email: 'user10026@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10026, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10026.save
Result.new(name: 'Ari Ilola', city: 'Helsinki', group: 'Tammelan Ryske', year: 2014, series: 'M45', kk_number: '10026').save
@Enrollment100261 = Enrollment.new(user_id: @User10026.id, event_id: @Event1.id, time:3808)
@Enrollment100261.save
@Enrollment100262 = Enrollment.new(user_id: @User10026.id, event_id: @Event2.id, time:10758)
@Enrollment100262.save
@Enrollment100263 = Enrollment.new(user_id: @User10026.id, event_id: @Event3.id, time:12555)
@Enrollment100263.save
@Enrollment100264 = Enrollment.new(user_id: @User10026.id, event_id: @Event4.id, time:10606)
@Enrollment100264.save
@Enrollment100265 = Enrollment.new(user_id: @User10026.id, event_id: @Event5.id, time:6858)
@Enrollment100265.save
@Enrollment100266 = Enrollment.new(user_id: @User10026.id, event_id: @Event6.id, time:7636)
@Enrollment100266.save
EnrollmentData.new(enrollment_id: @Enrollment100264.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100264.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100262.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100263.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100261.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100266.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10027 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juhana', last_name: 'Pakkasmaa', username: 'user10027', email: 'user10027@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10027, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10027.save
Result.new(name: 'Juhana Pakkasmaa', city: 'Helsinki', group: 'Otaniemen Jyllääjät I', year: 2014, series: 'M40', kk_number: '10027').save
@Enrollment100271 = Enrollment.new(user_id: @User10027.id, event_id: @Event1.id, time:3752)
@Enrollment100271.save
@Enrollment100272 = Enrollment.new(user_id: @User10027.id, event_id: @Event2.id, time:23729)
@Enrollment100272.save
@Enrollment100273 = Enrollment.new(user_id: @User10027.id, event_id: @Event3.id, time:11646)
@Enrollment100273.save
@Enrollment100274 = Enrollment.new(user_id: @User10027.id, event_id: @Event4.id, time:10633)
@Enrollment100274.save
@Enrollment100275 = Enrollment.new(user_id: @User10027.id, event_id: @Event5.id, time:7354)
@Enrollment100275.save
@Enrollment100276 = Enrollment.new(user_id: @User10027.id, event_id: @Event6.id, time:7252)
@Enrollment100276.save
EnrollmentData.new(enrollment_id: @Enrollment100274.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100274.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100272.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100273.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100271.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100276.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10028 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mikko', last_name: 'Ylönen', username: 'user10028', email: 'user10028@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10028, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10028.save
Result.new(name: 'Mikko Ylönen', city: 'Helsinki', group: 'Tuusulan Tallaajat I', year: 2014, series: 'M45', kk_number: '10028').save
@Enrollment100281 = Enrollment.new(user_id: @User10028.id, event_id: @Event1.id, time:3632)
@Enrollment100281.save
@Enrollment100282 = Enrollment.new(user_id: @User10028.id, event_id: @Event2.id, time:11729)
@Enrollment100282.save
@Enrollment100283 = Enrollment.new(user_id: @User10028.id, event_id: @Event3.id, time:5768)
@Enrollment100283.save
@Enrollment100284 = Enrollment.new(user_id: @User10028.id, event_id: @Event4.id, time:10048)
@Enrollment100284.save
@Enrollment100285 = Enrollment.new(user_id: @User10028.id, event_id: @Event5.id, time:7438)
@Enrollment100285.save
@Enrollment100286 = Enrollment.new(user_id: @User10028.id, event_id: @Event6.id, time:7501)
@Enrollment100286.save
EnrollmentData.new(enrollment_id: @Enrollment100284.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100284.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100282.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100283.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100281.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100286.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10029 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Lasse', last_name: 'Kääpä', username: 'user10029', email: 'user10029@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10029, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10029.save
Result.new(name: 'Lasse Kääpä', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10029').save
@Enrollment100291 = Enrollment.new(user_id: @User10029.id, event_id: @Event1.id, time:3340)
@Enrollment100291.save
@Enrollment100292 = Enrollment.new(user_id: @User10029.id, event_id: @Event2.id, time:10616)
@Enrollment100292.save
@Enrollment100293 = Enrollment.new(user_id: @User10029.id, event_id: @Event3.id, time:6372)
@Enrollment100293.save
@Enrollment100294 = Enrollment.new(user_id: @User10029.id, event_id: @Event4.id, time:9937)
@Enrollment100294.save
@Enrollment100295 = Enrollment.new(user_id: @User10029.id, event_id: @Event5.id, time:7504)
@Enrollment100295.save
@Enrollment100296 = Enrollment.new(user_id: @User10029.id, event_id: @Event6.id, time:8683)
@Enrollment100296.save
EnrollmentData.new(enrollment_id: @Enrollment100294.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100294.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100292.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100293.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100291.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100296.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10030 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Erkki', last_name: 'Tuovila', username: 'user10030', email: 'user10030@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10030, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10030.save
Result.new(name: 'Erkki Tuovila', city: 'Helsinki', group: 'Kankaanpään Kalevankiertäjät 1', year: 2014, series: 'M45', kk_number: '10030').save
@Enrollment100301 = Enrollment.new(user_id: @User10030.id, event_id: @Event1.id, time:3268)
@Enrollment100301.save
@Enrollment100302 = Enrollment.new(user_id: @User10030.id, event_id: @Event2.id, time:10363)
@Enrollment100302.save
@Enrollment100303 = Enrollment.new(user_id: @User10030.id, event_id: @Event3.id, time:5425)
@Enrollment100303.save
@Enrollment100304 = Enrollment.new(user_id: @User10030.id, event_id: @Event4.id, time:11721)
@Enrollment100304.save
@Enrollment100305 = Enrollment.new(user_id: @User10030.id, event_id: @Event5.id, time:7986)
@Enrollment100305.save
@Enrollment100306 = Enrollment.new(user_id: @User10030.id, event_id: @Event6.id, time:6981)
@Enrollment100306.save
EnrollmentData.new(enrollment_id: @Enrollment100304.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100304.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100302.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100303.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100301.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100306.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10031 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Osmo', last_name: 'Ojala', username: 'user10031', email: 'user10031@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10031, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10031.save
Result.new(name: 'Osmo Ojala', city: 'Helsinki', group: 'CCRT', year: 2014, series: 'M55', kk_number: '10031').save
@Enrollment100311 = Enrollment.new(user_id: @User10031.id, event_id: @Event1.id, time:3419)
@Enrollment100311.save
@Enrollment100312 = Enrollment.new(user_id: @User10031.id, event_id: @Event2.id, time:10935)
@Enrollment100312.save
@Enrollment100313 = Enrollment.new(user_id: @User10031.id, event_id: @Event3.id, time:14372)
@Enrollment100313.save
@Enrollment100314 = Enrollment.new(user_id: @User10031.id, event_id: @Event4.id, time:10852)
@Enrollment100314.save
@Enrollment100315 = Enrollment.new(user_id: @User10031.id, event_id: @Event5.id, time:7091)
@Enrollment100315.save
@Enrollment100316 = Enrollment.new(user_id: @User10031.id, event_id: @Event6.id, time:8165)
@Enrollment100316.save
EnrollmentData.new(enrollment_id: @Enrollment100314.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100314.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100312.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100313.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100311.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100316.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10032 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Klaus', last_name: 'Kuusi', username: 'user10032', email: 'user10032@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10032, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10032.save
Result.new(name: 'Klaus Kuusi', city: 'Helsinki', group: 'Espoon Etanat', year: 2014, series: 'M65', kk_number: '10032').save
@Enrollment100321 = Enrollment.new(user_id: @User10032.id, event_id: @Event1.id, time:3244)
@Enrollment100321.save
@Enrollment100322 = Enrollment.new(user_id: @User10032.id, event_id: @Event2.id, time:12042)
@Enrollment100322.save
@Enrollment100323 = Enrollment.new(user_id: @User10032.id, event_id: @Event3.id, time:13718)
@Enrollment100323.save
@Enrollment100324 = Enrollment.new(user_id: @User10032.id, event_id: @Event4.id, time:11140)
@Enrollment100324.save
@Enrollment100325 = Enrollment.new(user_id: @User10032.id, event_id: @Event5.id, time:7886)
@Enrollment100325.save
@Enrollment100326 = Enrollment.new(user_id: @User10032.id, event_id: @Event6.id, time:8205)
@Enrollment100326.save
EnrollmentData.new(enrollment_id: @Enrollment100324.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100324.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100322.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100323.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100321.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100326.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10033 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Eero', last_name: 'Mäkipelto', username: 'user10033', email: 'user10033@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10033, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10033.save
Result.new(name: 'Eero Mäkipelto', city: 'Helsinki', group: 'KENSU-KK', year: 2014, series: 'M55', kk_number: '10033').save
@Enrollment100331 = Enrollment.new(user_id: @User10033.id, event_id: @Event1.id, time:3426)
@Enrollment100331.save
@Enrollment100332 = Enrollment.new(user_id: @User10033.id, event_id: @Event2.id, time:9612)
@Enrollment100332.save
@Enrollment100333 = Enrollment.new(user_id: @User10033.id, event_id: @Event3.id, time:6889)
@Enrollment100333.save
@Enrollment100334 = Enrollment.new(user_id: @User10033.id, event_id: @Event4.id, time:10251)
@Enrollment100334.save
@Enrollment100335 = Enrollment.new(user_id: @User10033.id, event_id: @Event5.id, time:7162)
@Enrollment100335.save
@Enrollment100336 = Enrollment.new(user_id: @User10033.id, event_id: @Event6.id, time:10682)
@Enrollment100336.save
EnrollmentData.new(enrollment_id: @Enrollment100334.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100334.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100332.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100333.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100331.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100336.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10034 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Alhonnoro', username: 'user10034', email: 'user10034@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10034, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10034.save
Result.new(name: 'Juha Alhonnoro', city: 'Helsinki', group: 'Sportia KT-SPORT', year: 2014, series: 'M60', kk_number: '10034').save
@Enrollment100341 = Enrollment.new(user_id: @User10034.id, event_id: @Event1.id, time:3525)
@Enrollment100341.save
@Enrollment100342 = Enrollment.new(user_id: @User10034.id, event_id: @Event2.id, time:10961)
@Enrollment100342.save
@Enrollment100343 = Enrollment.new(user_id: @User10034.id, event_id: @Event3.id, time:6121)
@Enrollment100343.save
@Enrollment100344 = Enrollment.new(user_id: @User10034.id, event_id: @Event4.id, time:11084)
@Enrollment100344.save
@Enrollment100345 = Enrollment.new(user_id: @User10034.id, event_id: @Event5.id, time:7745)
@Enrollment100345.save
@Enrollment100346 = Enrollment.new(user_id: @User10034.id, event_id: @Event6.id, time:8441)
@Enrollment100346.save
EnrollmentData.new(enrollment_id: @Enrollment100344.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100344.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100342.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100343.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100341.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100346.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10035 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jaakko', last_name: 'Pärssinen', username: 'user10035', email: 'user10035@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10035, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10035.save
Result.new(name: 'Jaakko Pärssinen', city: 'Helsinki', group: 'Tervakosken Pato 1.', year: 2014, series: 'M60', kk_number: '10035').save
@Enrollment100351 = Enrollment.new(user_id: @User10035.id, event_id: @Event1.id, time:3627)
@Enrollment100351.save
@Enrollment100352 = Enrollment.new(user_id: @User10035.id, event_id: @Event2.id, time:10406)
@Enrollment100352.save
@Enrollment100353 = Enrollment.new(user_id: @User10035.id, event_id: @Event3.id, time:6153)
@Enrollment100353.save
@Enrollment100354 = Enrollment.new(user_id: @User10035.id, event_id: @Event4.id, time:11408)
@Enrollment100354.save
@Enrollment100355 = Enrollment.new(user_id: @User10035.id, event_id: @Event5.id, time:7614)
@Enrollment100355.save
@Enrollment100356 = Enrollment.new(user_id: @User10035.id, event_id: @Event6.id, time:8494)
@Enrollment100356.save
EnrollmentData.new(enrollment_id: @Enrollment100354.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100354.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100352.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100353.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100351.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100356.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10036 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kari', last_name: 'Nieminen', username: 'user10036', email: 'user10036@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10036, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10036.save
Result.new(name: 'Kari Nieminen', city: 'Helsinki', group: 'Tervakosken Pato 1.', year: 2014, series: 'M55', kk_number: '10036').save
@Enrollment100361 = Enrollment.new(user_id: @User10036.id, event_id: @Event1.id, time:3668)
@Enrollment100361.save
@Enrollment100362 = Enrollment.new(user_id: @User10036.id, event_id: @Event2.id, time:10542)
@Enrollment100362.save
@Enrollment100363 = Enrollment.new(user_id: @User10036.id, event_id: @Event3.id, time:5841)
@Enrollment100363.save
@Enrollment100364 = Enrollment.new(user_id: @User10036.id, event_id: @Event4.id, time:11018)
@Enrollment100364.save
@Enrollment100365 = Enrollment.new(user_id: @User10036.id, event_id: @Event5.id, time:7940)
@Enrollment100365.save
@Enrollment100366 = Enrollment.new(user_id: @User10036.id, event_id: @Event6.id, time:9055)
@Enrollment100366.save
EnrollmentData.new(enrollment_id: @Enrollment100364.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100364.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100362.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100363.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100361.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100366.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10037 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Seppo', last_name: 'Kuoppala', username: 'user10037', email: 'user10037@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10037, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10037.save
Result.new(name: 'Seppo Kuoppala', city: 'Helsinki', group: 'Selän Sitkeät 1.', year: 2014, series: 'M55', kk_number: '10037').save
@Enrollment100371 = Enrollment.new(user_id: @User10037.id, event_id: @Event1.id, time:3440)
@Enrollment100371.save
@Enrollment100372 = Enrollment.new(user_id: @User10037.id, event_id: @Event2.id, time:9826)
@Enrollment100372.save
@Enrollment100373 = Enrollment.new(user_id: @User10037.id, event_id: @Event3.id, time:6095)
@Enrollment100373.save
@Enrollment100374 = Enrollment.new(user_id: @User10037.id, event_id: @Event4.id, time:10749)
@Enrollment100374.save
@Enrollment100375 = Enrollment.new(user_id: @User10037.id, event_id: @Event5.id, time:8181)
@Enrollment100375.save
@Enrollment100376 = Enrollment.new(user_id: @User10037.id, event_id: @Event6.id, time:9217)
@Enrollment100376.save
EnrollmentData.new(enrollment_id: @Enrollment100374.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100374.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100372.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100373.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100371.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100376.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10038 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jukka', last_name: 'Iitti', username: 'user10038', email: 'user10038@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10038, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10038.save
Result.new(name: 'Jukka Iitti', city: 'Helsinki', group: 'KENSU-KK', year: 2014, series: 'M45', kk_number: '10038').save
@Enrollment100381 = Enrollment.new(user_id: @User10038.id, event_id: @Event1.id, time:3354)
@Enrollment100381.save
@Enrollment100382 = Enrollment.new(user_id: @User10038.id, event_id: @Event2.id, time:10827)
@Enrollment100382.save
@Enrollment100383 = Enrollment.new(user_id: @User10038.id, event_id: @Event3.id, time:7222)
@Enrollment100383.save
@Enrollment100384 = Enrollment.new(user_id: @User10038.id, event_id: @Event4.id, time:11618)
@Enrollment100384.save
@Enrollment100385 = Enrollment.new(user_id: @User10038.id, event_id: @Event5.id, time:7681)
@Enrollment100385.save
@Enrollment100386 = Enrollment.new(user_id: @User10038.id, event_id: @Event6.id, time:7171)
@Enrollment100386.save
EnrollmentData.new(enrollment_id: @Enrollment100384.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100384.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100382.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100383.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100381.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100386.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10039 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tapio', last_name: 'Yli-Karro', username: 'user10039', email: 'user10039@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10039, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10039.save
Result.new(name: 'Tapio Yli-Karro', city: 'Helsinki', group: 'Rauman Kalevankiertäjät', year: 2014, series: 'M60', kk_number: '10039').save
@Enrollment100391 = Enrollment.new(user_id: @User10039.id, event_id: @Event1.id, time:3596)
@Enrollment100391.save
@Enrollment100392 = Enrollment.new(user_id: @User10039.id, event_id: @Event2.id, time:10954)
@Enrollment100392.save
@Enrollment100393 = Enrollment.new(user_id: @User10039.id, event_id: @Event3.id, time:6076)
@Enrollment100393.save
@Enrollment100394 = Enrollment.new(user_id: @User10039.id, event_id: @Event4.id, time:11450)
@Enrollment100394.save
@Enrollment100395 = Enrollment.new(user_id: @User10039.id, event_id: @Event5.id, time:7773)
@Enrollment100395.save
@Enrollment100396 = Enrollment.new(user_id: @User10039.id, event_id: @Event6.id, time:8563)
@Enrollment100396.save
EnrollmentData.new(enrollment_id: @Enrollment100394.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100394.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100392.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100393.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100391.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100396.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10040 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pekka', last_name: 'Pakkanen', username: 'user10040', email: 'user10040@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10040, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10040.save
Result.new(name: 'Pekka Pakkanen', city: 'Helsinki', group: 'Pajulahti', year: 2014, series: 'M55', kk_number: '10040').save
@Enrollment100401 = Enrollment.new(user_id: @User10040.id, event_id: @Event1.id, time:3794)
@Enrollment100401.save
@Enrollment100402 = Enrollment.new(user_id: @User10040.id, event_id: @Event2.id, time:10031)
@Enrollment100402.save
@Enrollment100403 = Enrollment.new(user_id: @User10040.id, event_id: @Event3.id, time:5690)
@Enrollment100403.save
@Enrollment100404 = Enrollment.new(user_id: @User10040.id, event_id: @Event4.id, time:10742)
@Enrollment100404.save
@Enrollment100405 = Enrollment.new(user_id: @User10040.id, event_id: @Event5.id, time:8447)
@Enrollment100405.save
@Enrollment100406 = Enrollment.new(user_id: @User10040.id, event_id: @Event6.id, time:8165)
@Enrollment100406.save
EnrollmentData.new(enrollment_id: @Enrollment100404.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100404.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100402.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100403.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100401.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100406.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10041 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Kokko', username: 'user10041', email: 'user10041@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10041, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10041.save
Result.new(name: 'Juha Kokko', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10041').save
@Enrollment100411 = Enrollment.new(user_id: @User10041.id, event_id: @Event1.id, time:4006)
@Enrollment100411.save
@Enrollment100412 = Enrollment.new(user_id: @User10041.id, event_id: @Event2.id, time:10180)
@Enrollment100412.save
@Enrollment100413 = Enrollment.new(user_id: @User10041.id, event_id: @Event3.id, time:6147)
@Enrollment100413.save
@Enrollment100414 = Enrollment.new(user_id: @User10041.id, event_id: @Event4.id, time:11255)
@Enrollment100414.save
@Enrollment100415 = Enrollment.new(user_id: @User10041.id, event_id: @Event5.id, time:6997)
@Enrollment100415.save
@Enrollment100416 = Enrollment.new(user_id: @User10041.id, event_id: @Event6.id, time:9938)
@Enrollment100416.save
EnrollmentData.new(enrollment_id: @Enrollment100414.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100414.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100412.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100413.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100411.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100416.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10042 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Erkki', last_name: 'Lehtonen', username: 'user10042', email: 'user10042@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10042, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10042.save
Result.new(name: 'Erkki Lehtonen', city: 'Helsinki', group: 'Hitaat 2', year: 2014, series: 'M55', kk_number: '10042').save
@Enrollment100421 = Enrollment.new(user_id: @User10042.id, event_id: @Event1.id, time:3423)
@Enrollment100421.save
@Enrollment100422 = Enrollment.new(user_id: @User10042.id, event_id: @Event2.id, time:11386)
@Enrollment100422.save
@Enrollment100423 = Enrollment.new(user_id: @User10042.id, event_id: @Event3.id, time:6482)
@Enrollment100423.save
@Enrollment100424 = Enrollment.new(user_id: @User10042.id, event_id: @Event4.id, time:10589)
@Enrollment100424.save
@Enrollment100425 = Enrollment.new(user_id: @User10042.id, event_id: @Event5.id, time:7601)
@Enrollment100425.save
@Enrollment100426 = Enrollment.new(user_id: @User10042.id, event_id: @Event6.id, time:9076)
@Enrollment100426.save
EnrollmentData.new(enrollment_id: @Enrollment100424.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100424.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100422.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100423.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100421.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100426.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10043 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tuomas', last_name: 'Seppälä', username: 'user10043', email: 'user10043@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10043, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10043.save
Result.new(name: 'Tuomas Seppälä', city: 'Helsinki', group: nil, year: 2014, series: 'M45', kk_number: '10043').save
@Enrollment100431 = Enrollment.new(user_id: @User10043.id, event_id: @Event1.id, time:3820)
@Enrollment100431.save
@Enrollment100432 = Enrollment.new(user_id: @User10043.id, event_id: @Event2.id, time:11032)
@Enrollment100432.save
@Enrollment100433 = Enrollment.new(user_id: @User10043.id, event_id: @Event3.id, time:5599)
@Enrollment100433.save
@Enrollment100434 = Enrollment.new(user_id: @User10043.id, event_id: @Event4.id, time:11461)
@Enrollment100434.save
@Enrollment100435 = Enrollment.new(user_id: @User10043.id, event_id: @Event5.id, time:7799)
@Enrollment100435.save
@Enrollment100436 = Enrollment.new(user_id: @User10043.id, event_id: @Event6.id, time:8017)
@Enrollment100436.save
EnrollmentData.new(enrollment_id: @Enrollment100434.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100434.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100432.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100433.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100431.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100436.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10044 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Arto', last_name: 'Korpinen', username: 'user10044', email: 'user10044@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10044, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10044.save
Result.new(name: 'Arto Korpinen', city: 'Helsinki', group: 'Uskelan Urhot II', year: 2014, series: 'M40', kk_number: '10044').save
@Enrollment100441 = Enrollment.new(user_id: @User10044.id, event_id: @Event1.id, time:4061)
@Enrollment100441.save
@Enrollment100442 = Enrollment.new(user_id: @User10044.id, event_id: @Event2.id, time:11743)
@Enrollment100442.save
@Enrollment100443 = Enrollment.new(user_id: @User10044.id, event_id: @Event3.id, time:6023)
@Enrollment100443.save
@Enrollment100444 = Enrollment.new(user_id: @User10044.id, event_id: @Event4.id, time:11156)
@Enrollment100444.save
@Enrollment100445 = Enrollment.new(user_id: @User10044.id, event_id: @Event5.id, time:7737)
@Enrollment100445.save
@Enrollment100446 = Enrollment.new(user_id: @User10044.id, event_id: @Event6.id, time:7125)
@Enrollment100446.save
EnrollmentData.new(enrollment_id: @Enrollment100444.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100444.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100442.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100443.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100441.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100446.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10045 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mikko', last_name: 'Tenho', username: 'user10045', email: 'user10045@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10045, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10045.save
Result.new(name: 'Mikko Tenho', city: 'Helsinki', group: 'Turun NMKY', year: 2014, series: 'M', kk_number: '10045').save
@Enrollment100451 = Enrollment.new(user_id: @User10045.id, event_id: @Event1.id, time:4091)
@Enrollment100451.save
@Enrollment100452 = Enrollment.new(user_id: @User10045.id, event_id: @Event2.id, time:11531)
@Enrollment100452.save
@Enrollment100453 = Enrollment.new(user_id: @User10045.id, event_id: @Event3.id, time:5565)
@Enrollment100453.save
@Enrollment100454 = Enrollment.new(user_id: @User10045.id, event_id: @Event4.id, time:12564)
@Enrollment100454.save
@Enrollment100455 = Enrollment.new(user_id: @User10045.id, event_id: @Event5.id, time:6997)
@Enrollment100455.save
@Enrollment100456 = Enrollment.new(user_id: @User10045.id, event_id: @Event6.id, time:6859)
@Enrollment100456.save
EnrollmentData.new(enrollment_id: @Enrollment100454.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100454.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100452.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100453.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100451.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100456.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10046 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jari', last_name: 'Ylänne', username: 'user10046', email: 'user10046@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10046, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10046.save
Result.new(name: 'Jari Ylänne', city: 'Helsinki', group: nil, year: 2014, series: 'M50', kk_number: '10046').save
@Enrollment100461 = Enrollment.new(user_id: @User10046.id, event_id: @Event1.id, time:4081)
@Enrollment100461.save
@Enrollment100462 = Enrollment.new(user_id: @User10046.id, event_id: @Event2.id, time:12241)
@Enrollment100462.save
@Enrollment100463 = Enrollment.new(user_id: @User10046.id, event_id: @Event3.id, time:5640)
@Enrollment100463.save
@Enrollment100464 = Enrollment.new(user_id: @User10046.id, event_id: @Event4.id, time:11584)
@Enrollment100464.save
@Enrollment100465 = Enrollment.new(user_id: @User10046.id, event_id: @Event5.id, time:7596)
@Enrollment100465.save
@Enrollment100466 = Enrollment.new(user_id: @User10046.id, event_id: @Event6.id, time:8187)
@Enrollment100466.save
EnrollmentData.new(enrollment_id: @Enrollment100464.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100464.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100462.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100463.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100461.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100466.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10047 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Raine', last_name: 'Lehto', username: 'user10047', email: 'user10047@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10047, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10047.save
Result.new(name: 'Raine Lehto', city: 'Helsinki', group: 'Pajulahti', year: 2014, series: 'M50', kk_number: '10047').save
@Enrollment100471 = Enrollment.new(user_id: @User10047.id, event_id: @Event1.id, time:3881)
@Enrollment100471.save
@Enrollment100472 = Enrollment.new(user_id: @User10047.id, event_id: @Event2.id, time:11809)
@Enrollment100472.save
@Enrollment100473 = Enrollment.new(user_id: @User10047.id, event_id: @Event3.id, time:5778)
@Enrollment100473.save
@Enrollment100474 = Enrollment.new(user_id: @User10047.id, event_id: @Event4.id, time:10930)
@Enrollment100474.save
@Enrollment100475 = Enrollment.new(user_id: @User10047.id, event_id: @Event5.id, time:7425)
@Enrollment100475.save
@Enrollment100476 = Enrollment.new(user_id: @User10047.id, event_id: @Event6.id, time:11872)
@Enrollment100476.save
EnrollmentData.new(enrollment_id: @Enrollment100474.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100474.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100472.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100473.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100471.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100476.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10048 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Hannu', last_name: 'Anttila', username: 'user10048', email: 'user10048@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10048, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10048.save
Result.new(name: 'Hannu Anttila', city: 'Helsinki', group: 'Kankaanpään Kalevankiertäjät 1', year: 2014, series: 'M45', kk_number: '10048').save
@Enrollment100481 = Enrollment.new(user_id: @User10048.id, event_id: @Event1.id, time:3719)
@Enrollment100481.save
@Enrollment100482 = Enrollment.new(user_id: @User10048.id, event_id: @Event2.id, time:10014)
@Enrollment100482.save
@Enrollment100483 = Enrollment.new(user_id: @User10048.id, event_id: @Event3.id, time:6259)
@Enrollment100483.save
@Enrollment100484 = Enrollment.new(user_id: @User10048.id, event_id: @Event4.id, time:11721)
@Enrollment100484.save
@Enrollment100485 = Enrollment.new(user_id: @User10048.id, event_id: @Event5.id, time:7726)
@Enrollment100485.save
@Enrollment100486 = Enrollment.new(user_id: @User10048.id, event_id: @Event6.id, time:9155)
@Enrollment100486.save
EnrollmentData.new(enrollment_id: @Enrollment100484.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100484.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100482.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100483.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100481.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100486.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10049 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Martti', last_name: 'Kuitunen', username: 'user10049', email: 'user10049@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10049, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10049.save
Result.new(name: 'Martti Kuitunen', city: 'Helsinki', group: 'Selän Sitkeät 1.', year: 2014, series: 'M45', kk_number: '10049').save
@Enrollment100491 = Enrollment.new(user_id: @User10049.id, event_id: @Event1.id, time:3866)
@Enrollment100491.save
@Enrollment100492 = Enrollment.new(user_id: @User10049.id, event_id: @Event2.id, time:20953)
@Enrollment100492.save
@Enrollment100493 = Enrollment.new(user_id: @User10049.id, event_id: @Event3.id, time:6085)
@Enrollment100493.save
@Enrollment100494 = Enrollment.new(user_id: @User10049.id, event_id: @Event4.id, time:11886)
@Enrollment100494.save
@Enrollment100495 = Enrollment.new(user_id: @User10049.id, event_id: @Event5.id, time:8220)
@Enrollment100495.save
@Enrollment100496 = Enrollment.new(user_id: @User10049.id, event_id: @Event6.id, time:8335)
@Enrollment100496.save
EnrollmentData.new(enrollment_id: @Enrollment100494.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100494.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100492.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100493.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100491.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100496.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10050 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Eero', last_name: 'Savonen', username: 'user10050', email: 'user10050@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10050, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10050.save
Result.new(name: 'Eero Savonen', city: 'Helsinki', group: 'Tuusulan Tallaajat II', year: 2014, series: 'M65', kk_number: '10050').save
@Enrollment100501 = Enrollment.new(user_id: @User10050.id, event_id: @Event1.id, time:3650)
@Enrollment100501.save
@Enrollment100502 = Enrollment.new(user_id: @User10050.id, event_id: @Event2.id, time:11444)
@Enrollment100502.save
@Enrollment100503 = Enrollment.new(user_id: @User10050.id, event_id: @Event3.id, time:6246)
@Enrollment100503.save
@Enrollment100504 = Enrollment.new(user_id: @User10050.id, event_id: @Event4.id, time:10694)
@Enrollment100504.save
@Enrollment100505 = Enrollment.new(user_id: @User10050.id, event_id: @Event5.id, time:7883)
@Enrollment100505.save
@Enrollment100506 = Enrollment.new(user_id: @User10050.id, event_id: @Event6.id, time:9767)
@Enrollment100506.save
EnrollmentData.new(enrollment_id: @Enrollment100504.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100504.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100502.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100503.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100501.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100506.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10051 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pasi', last_name: 'Kyheröinen', username: 'user10051', email: 'user10051@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10051, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10051.save
Result.new(name: 'Pasi Kyheröinen', city: 'Helsinki', group: 'Korvenpojat', year: 2014, series: 'M40', kk_number: '10051').save
@Enrollment100511 = Enrollment.new(user_id: @User10051.id, event_id: @Event1.id, time:3974)
@Enrollment100511.save
@Enrollment100512 = Enrollment.new(user_id: @User10051.id, event_id: @Event2.id, time:26964)
@Enrollment100512.save
@Enrollment100513 = Enrollment.new(user_id: @User10051.id, event_id: @Event3.id, time:5697)
@Enrollment100513.save
@Enrollment100514 = Enrollment.new(user_id: @User10051.id, event_id: @Event4.id, time:11032)
@Enrollment100514.save
@Enrollment100515 = Enrollment.new(user_id: @User10051.id, event_id: @Event5.id, time:8039)
@Enrollment100515.save
@Enrollment100516 = Enrollment.new(user_id: @User10051.id, event_id: @Event6.id, time:7450)
@Enrollment100516.save
EnrollmentData.new(enrollment_id: @Enrollment100514.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100514.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100512.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100513.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100511.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100516.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10052 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Oliver', last_name: 'Ojala', username: 'user10052', email: 'user10052@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10052, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10052.save
Result.new(name: 'Oliver Ojala', city: 'Helsinki', group: 'CCRT', year: 2014, series: 'M', kk_number: '10052').save
@Enrollment100521 = Enrollment.new(user_id: @User10052.id, event_id: @Event1.id, time:4193)
@Enrollment100521.save
@Enrollment100522 = Enrollment.new(user_id: @User10052.id, event_id: @Event2.id, time:12024)
@Enrollment100522.save
@Enrollment100523 = Enrollment.new(user_id: @User10052.id, event_id: @Event3.id, time:6200)
@Enrollment100523.save
@Enrollment100524 = Enrollment.new(user_id: @User10052.id, event_id: @Event4.id, time:11269)
@Enrollment100524.save
@Enrollment100525 = Enrollment.new(user_id: @User10052.id, event_id: @Event5.id, time:7404)
@Enrollment100525.save
@Enrollment100526 = Enrollment.new(user_id: @User10052.id, event_id: @Event6.id, time:7269)
@Enrollment100526.save
EnrollmentData.new(enrollment_id: @Enrollment100524.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100524.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100522.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100523.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100521.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100526.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10053 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jussi', last_name: 'Pirinen', username: 'user10053', email: 'user10053@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10053, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10053.save
Result.new(name: 'Jussi Pirinen', city: 'Helsinki', group: 'Tuusulan Tallaajat I', year: 2014, series: 'M', kk_number: '10053').save
@Enrollment100531 = Enrollment.new(user_id: @User10053.id, event_id: @Event1.id, time:3721)
@Enrollment100531.save
@Enrollment100532 = Enrollment.new(user_id: @User10053.id, event_id: @Event2.id, time:11750)
@Enrollment100532.save
@Enrollment100533 = Enrollment.new(user_id: @User10053.id, event_id: @Event3.id, time:14554)
@Enrollment100533.save
@Enrollment100534 = Enrollment.new(user_id: @User10053.id, event_id: @Event4.id, time:11832)
@Enrollment100534.save
@Enrollment100535 = Enrollment.new(user_id: @User10053.id, event_id: @Event5.id, time:7716)
@Enrollment100535.save
@Enrollment100536 = Enrollment.new(user_id: @User10053.id, event_id: @Event6.id, time:7873)
@Enrollment100536.save
EnrollmentData.new(enrollment_id: @Enrollment100534.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100534.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100532.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100533.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100531.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100536.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10054 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ari', last_name: 'Tolvanen', username: 'user10054', email: 'user10054@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10054, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10054.save
Result.new(name: 'Ari Tolvanen', city: 'Helsinki', group: 'Kuntokonnat 1.', year: 2014, series: 'M60', kk_number: '10054').save
@Enrollment100541 = Enrollment.new(user_id: @User10054.id, event_id: @Event1.id, time:3507)
@Enrollment100541.save
@Enrollment100542 = Enrollment.new(user_id: @User10054.id, event_id: @Event2.id, time:23810)
@Enrollment100542.save
@Enrollment100543 = Enrollment.new(user_id: @User10054.id, event_id: @Event3.id, time:5947)
@Enrollment100543.save
@Enrollment100544 = Enrollment.new(user_id: @User10054.id, event_id: @Event4.id, time:11081)
@Enrollment100544.save
@Enrollment100545 = Enrollment.new(user_id: @User10054.id, event_id: @Event5.id, time:7892)
@Enrollment100545.save
@Enrollment100546 = Enrollment.new(user_id: @User10054.id, event_id: @Event6.id, time:11130)
@Enrollment100546.save
EnrollmentData.new(enrollment_id: @Enrollment100544.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100544.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100542.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100543.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100541.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100546.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10055 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Petteri', last_name: 'Hannula', username: 'user10055', email: 'user10055@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10055, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10055.save
Result.new(name: 'Petteri Hannula', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10055').save
@Enrollment100551 = Enrollment.new(user_id: @User10055.id, event_id: @Event1.id, time:3905)
@Enrollment100551.save
@Enrollment100552 = Enrollment.new(user_id: @User10055.id, event_id: @Event2.id, time:12462)
@Enrollment100552.save
@Enrollment100553 = Enrollment.new(user_id: @User10055.id, event_id: @Event3.id, time:15635)
@Enrollment100553.save
@Enrollment100554 = Enrollment.new(user_id: @User10055.id, event_id: @Event4.id, time:12337)
@Enrollment100554.save
@Enrollment100555 = Enrollment.new(user_id: @User10055.id, event_id: @Event5.id, time:6777)
@Enrollment100555.save
@Enrollment100556 = Enrollment.new(user_id: @User10055.id, event_id: @Event6.id, time:9182)
@Enrollment100556.save
EnrollmentData.new(enrollment_id: @Enrollment100554.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100554.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100552.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100553.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100551.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100556.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10056 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juho', last_name: 'Tuominen', username: 'user10056', email: 'user10056@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10056, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10056.save
Result.new(name: 'Juho Tuominen', city: 'Helsinki', group: 'Kankaanpään Kalevankiertäjät 2', year: 2014, series: 'M', kk_number: '10056').save
@Enrollment100561 = Enrollment.new(user_id: @User10056.id, event_id: @Event1.id, time:4193)
@Enrollment100561.save
@Enrollment100562 = Enrollment.new(user_id: @User10056.id, event_id: @Event2.id, time:10764)
@Enrollment100562.save
@Enrollment100563 = Enrollment.new(user_id: @User10056.id, event_id: @Event3.id, time:6056)
@Enrollment100563.save
@Enrollment100564 = Enrollment.new(user_id: @User10056.id, event_id: @Event4.id, time:11773)
@Enrollment100564.save
@Enrollment100565 = Enrollment.new(user_id: @User10056.id, event_id: @Event5.id, time:8292)
@Enrollment100565.save
@Enrollment100566 = Enrollment.new(user_id: @User10056.id, event_id: @Event6.id, time:7538)
@Enrollment100566.save
EnrollmentData.new(enrollment_id: @Enrollment100564.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100564.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100562.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100563.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100561.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100566.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10057 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Erkki', last_name: 'Moilanen', username: 'user10057', email: 'user10057@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10057, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10057.save
Result.new(name: 'Erkki Moilanen', city: 'Helsinki', group: nil, year: 2014, series: 'M55', kk_number: '10057').save
@Enrollment100571 = Enrollment.new(user_id: @User10057.id, event_id: @Event1.id, time:4128)
@Enrollment100571.save
@Enrollment100572 = Enrollment.new(user_id: @User10057.id, event_id: @Event2.id, time:23197)
@Enrollment100572.save
@Enrollment100573 = Enrollment.new(user_id: @User10057.id, event_id: @Event3.id, time:12054)
@Enrollment100573.save
@Enrollment100574 = Enrollment.new(user_id: @User10057.id, event_id: @Event4.id, time:11821)
@Enrollment100574.save
@Enrollment100575 = Enrollment.new(user_id: @User10057.id, event_id: @Event5.id, time:8089)
@Enrollment100575.save
@Enrollment100576 = Enrollment.new(user_id: @User10057.id, event_id: @Event6.id, time:10698)
@Enrollment100576.save
EnrollmentData.new(enrollment_id: @Enrollment100574.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100574.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100572.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100573.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100571.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100576.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10058 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pasi', last_name: 'Kontkanen', username: 'user10058', email: 'user10058@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10058, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10058.save
Result.new(name: 'Pasi Kontkanen', city: 'Helsinki', group: 'CCRT', year: 2014, series: 'M50', kk_number: '10058').save
@Enrollment100581 = Enrollment.new(user_id: @User10058.id, event_id: @Event1.id, time:3780)
@Enrollment100581.save
@Enrollment100582 = Enrollment.new(user_id: @User10058.id, event_id: @Event2.id, time:12304)
@Enrollment100582.save
@Enrollment100583 = Enrollment.new(user_id: @User10058.id, event_id: @Event3.id, time:5514)
@Enrollment100583.save
@Enrollment100584 = Enrollment.new(user_id: @User10058.id, event_id: @Event4.id, time:10852)
@Enrollment100584.save
@Enrollment100585 = Enrollment.new(user_id: @User10058.id, event_id: @Event5.id, time:7925)
@Enrollment100585.save
@Enrollment100586 = Enrollment.new(user_id: @User10058.id, event_id: @Event6.id, time:12427)
@Enrollment100586.save
EnrollmentData.new(enrollment_id: @Enrollment100584.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100584.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100582.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100583.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100581.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100586.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10059 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Katja', last_name: 'Koivulahti', username: 'user10059', email: 'user10059@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10059, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10059.save
Result.new(name: 'Katja Koivulahti', city: 'Helsinki', group: 'Hitaat Neidot', year: 2014, series: 'N40', kk_number: '10059').save
@Enrollment100591 = Enrollment.new(user_id: @User10059.id, event_id: @Event1.id, time:4127)
@Enrollment100591.save
@Enrollment100592 = Enrollment.new(user_id: @User10059.id, event_id: @Event2.id, time:24469)
@Enrollment100592.save
@Enrollment100593 = Enrollment.new(user_id: @User10059.id, event_id: @Event3.id, time:6331)
@Enrollment100593.save
@Enrollment100594 = Enrollment.new(user_id: @User10059.id, event_id: @Event4.id, time:11277)
@Enrollment100594.save
@Enrollment100595 = Enrollment.new(user_id: @User10059.id, event_id: @Event5.id, time:7508)
@Enrollment100595.save
@Enrollment100596 = Enrollment.new(user_id: @User10059.id, event_id: @Event6.id, time:9762)
@Enrollment100596.save
EnrollmentData.new(enrollment_id: @Enrollment100594.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100594.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100592.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100593.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100591.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100596.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10060 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Hannu', last_name: 'Kröger', username: 'user10060', email: 'user10060@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10060, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10060.save
Result.new(name: 'Hannu Kröger', city: 'Helsinki', group: 'KK Länsi-Uusimaa 1', year: 2014, series: 'M45', kk_number: '10060').save
@Enrollment100601 = Enrollment.new(user_id: @User10060.id, event_id: @Event1.id, time:4104)
@Enrollment100601.save
@Enrollment100602 = Enrollment.new(user_id: @User10060.id, event_id: @Event2.id, time:11947)
@Enrollment100602.save
@Enrollment100603 = Enrollment.new(user_id: @User10060.id, event_id: @Event3.id, time:7168)
@Enrollment100603.save
@Enrollment100604 = Enrollment.new(user_id: @User10060.id, event_id: @Event4.id, time:11454)
@Enrollment100604.save
@Enrollment100605 = Enrollment.new(user_id: @User10060.id, event_id: @Event5.id, time:7781)
@Enrollment100605.save
@Enrollment100606 = Enrollment.new(user_id: @User10060.id, event_id: @Event6.id, time:8168)
@Enrollment100606.save
EnrollmentData.new(enrollment_id: @Enrollment100604.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100604.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100602.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100603.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100601.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100606.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10061 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mikko', last_name: 'Mäenpää', username: 'user10061', email: 'user10061@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10061, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10061.save
Result.new(name: 'Mikko Mäenpää', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10061').save
@Enrollment100611 = Enrollment.new(user_id: @User10061.id, event_id: @Event1.id, time:4282)
@Enrollment100611.save
@Enrollment100612 = Enrollment.new(user_id: @User10061.id, event_id: @Event2.id, time:13353)
@Enrollment100612.save
@Enrollment100613 = Enrollment.new(user_id: @User10061.id, event_id: @Event3.id, time:6067)
@Enrollment100613.save
@Enrollment100614 = Enrollment.new(user_id: @User10061.id, event_id: @Event4.id, time:11491)
@Enrollment100614.save
@Enrollment100615 = Enrollment.new(user_id: @User10061.id, event_id: @Event5.id, time:7290)
@Enrollment100615.save
@Enrollment100616 = Enrollment.new(user_id: @User10061.id, event_id: @Event6.id, time:10452)
@Enrollment100616.save
EnrollmentData.new(enrollment_id: @Enrollment100614.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100614.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100612.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100613.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100611.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100616.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10062 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ossi', last_name: 'Vilhu', username: 'user10062', email: 'user10062@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10062, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10062.save
Result.new(name: 'Ossi Vilhu', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10062').save
@Enrollment100621 = Enrollment.new(user_id: @User10062.id, event_id: @Event1.id, time:3865)
@Enrollment100621.save
@Enrollment100622 = Enrollment.new(user_id: @User10062.id, event_id: @Event2.id, time:11306)
@Enrollment100622.save
@Enrollment100623 = Enrollment.new(user_id: @User10062.id, event_id: @Event3.id, time:7522)
@Enrollment100623.save
@Enrollment100624 = Enrollment.new(user_id: @User10062.id, event_id: @Event4.id, time:11262)
@Enrollment100624.save
@Enrollment100625 = Enrollment.new(user_id: @User10062.id, event_id: @Event5.id, time:7781)
@Enrollment100625.save
@Enrollment100626 = Enrollment.new(user_id: @User10062.id, event_id: @Event6.id, time:10181)
@Enrollment100626.save
EnrollmentData.new(enrollment_id: @Enrollment100624.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100624.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100622.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100623.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100621.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100626.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10063 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jouko', last_name: 'Tyrkäs', username: 'user10063', email: 'user10063@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10063, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10063.save
Result.new(name: 'Jouko Tyrkäs', city: 'Helsinki', group: 'Tuusulan Tallaajat II', year: 2014, series: 'M60', kk_number: '10063').save
@Enrollment100631 = Enrollment.new(user_id: @User10063.id, event_id: @Event1.id, time:3396)
@Enrollment100631.save
@Enrollment100632 = Enrollment.new(user_id: @User10063.id, event_id: @Event2.id, time:13280)
@Enrollment100632.save
@Enrollment100633 = Enrollment.new(user_id: @User10063.id, event_id: @Event3.id, time:7049)
@Enrollment100633.save
@Enrollment100634 = Enrollment.new(user_id: @User10063.id, event_id: @Event4.id, time:11894)
@Enrollment100634.save
@Enrollment100635 = Enrollment.new(user_id: @User10063.id, event_id: @Event5.id, time:7901)
@Enrollment100635.save
@Enrollment100636 = Enrollment.new(user_id: @User10063.id, event_id: @Event6.id, time:10636)
@Enrollment100636.save
EnrollmentData.new(enrollment_id: @Enrollment100634.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100634.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100632.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100633.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100631.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100636.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10064 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Alpo', last_name: 'Kumpula', username: 'user10064', email: 'user10064@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10064, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10064.save
Result.new(name: 'Alpo Kumpula', city: 'Helsinki', group: 'Tuusulan Tallaajat II', year: 2014, series: 'M55', kk_number: '10064').save
@Enrollment100641 = Enrollment.new(user_id: @User10064.id, event_id: @Event1.id, time:3657)
@Enrollment100641.save
@Enrollment100642 = Enrollment.new(user_id: @User10064.id, event_id: @Event2.id, time:24925)
@Enrollment100642.save
@Enrollment100643 = Enrollment.new(user_id: @User10064.id, event_id: @Event3.id, time:6762)
@Enrollment100643.save
@Enrollment100644 = Enrollment.new(user_id: @User10064.id, event_id: @Event4.id, time:11170)
@Enrollment100644.save
@Enrollment100645 = Enrollment.new(user_id: @User10064.id, event_id: @Event5.id, time:8147)
@Enrollment100645.save
@Enrollment100646 = Enrollment.new(user_id: @User10064.id, event_id: @Event6.id, time:10042)
@Enrollment100646.save
EnrollmentData.new(enrollment_id: @Enrollment100644.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100644.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100642.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100643.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100641.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100646.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10065 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Anne', last_name: 'Rasku', username: 'user10065', email: 'user10065@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10065, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10065.save
Result.new(name: 'Anne Rasku', city: 'Helsinki', group: 'OJy Justiinat', year: 2014, series: 'N45', kk_number: '10065').save
@Enrollment100651 = Enrollment.new(user_id: @User10065.id, event_id: @Event1.id, time:3900)
@Enrollment100651.save
@Enrollment100652 = Enrollment.new(user_id: @User10065.id, event_id: @Event2.id, time:12701)
@Enrollment100652.save
@Enrollment100653 = Enrollment.new(user_id: @User10065.id, event_id: @Event3.id, time:14037)
@Enrollment100653.save
@Enrollment100654 = Enrollment.new(user_id: @User10065.id, event_id: @Event4.id, time:11226)
@Enrollment100654.save
@Enrollment100655 = Enrollment.new(user_id: @User10065.id, event_id: @Event5.id, time:8472)
@Enrollment100655.save
@Enrollment100656 = Enrollment.new(user_id: @User10065.id, event_id: @Event6.id, time:9940)
@Enrollment100656.save
EnrollmentData.new(enrollment_id: @Enrollment100654.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100654.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100652.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100653.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100651.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100656.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10066 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ari', last_name: 'Pukki', username: 'user10066', email: 'user10066@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10066, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10066.save
Result.new(name: 'Ari Pukki', city: 'Helsinki', group: 'Uskelan Urhot III', year: 2014, series: 'M45', kk_number: '10066').save
@Enrollment100661 = Enrollment.new(user_id: @User10066.id, event_id: @Event1.id, time:4028)
@Enrollment100661.save
@Enrollment100662 = Enrollment.new(user_id: @User10066.id, event_id: @Event2.id, time:12184)
@Enrollment100662.save
@Enrollment100663 = Enrollment.new(user_id: @User10066.id, event_id: @Event3.id, time:7105)
@Enrollment100663.save
@Enrollment100664 = Enrollment.new(user_id: @User10066.id, event_id: @Event4.id, time:10734)
@Enrollment100664.save
@Enrollment100665 = Enrollment.new(user_id: @User10066.id, event_id: @Event5.id, time:8372)
@Enrollment100665.save
@Enrollment100666 = Enrollment.new(user_id: @User10066.id, event_id: @Event6.id, time:8274)
@Enrollment100666.save
EnrollmentData.new(enrollment_id: @Enrollment100664.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100664.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100662.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100663.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100661.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100666.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10067 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Harri', last_name: 'Kuusniemi', username: 'user10067', email: 'user10067@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10067, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10067.save
Result.new(name: 'Harri Kuusniemi', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10067').save
@Enrollment100671 = Enrollment.new(user_id: @User10067.id, event_id: @Event1.id, time:3881)
@Enrollment100671.save
@Enrollment100672 = Enrollment.new(user_id: @User10067.id, event_id: @Event2.id, time:11882)
@Enrollment100672.save
@Enrollment100673 = Enrollment.new(user_id: @User10067.id, event_id: @Event3.id, time:5972)
@Enrollment100673.save
@Enrollment100674 = Enrollment.new(user_id: @User10067.id, event_id: @Event4.id, time:12496)
@Enrollment100674.save
@Enrollment100675 = Enrollment.new(user_id: @User10067.id, event_id: @Event5.id, time:8251)
@Enrollment100675.save
@Enrollment100676 = Enrollment.new(user_id: @User10067.id, event_id: @Event6.id, time:8548)
@Enrollment100676.save
EnrollmentData.new(enrollment_id: @Enrollment100674.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100674.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100672.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100673.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100671.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100676.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10068 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Veli-Matti', last_name: 'Tiitinen', username: 'user10068', email: 'user10068@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10068, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10068.save
Result.new(name: 'Veli-Matti Tiitinen', city: 'Helsinki', group: 'Kuntokonnat 2.', year: 2014, series: 'M60', kk_number: '10068').save
@Enrollment100681 = Enrollment.new(user_id: @User10068.id, event_id: @Event1.id, time:3844)
@Enrollment100681.save
@Enrollment100682 = Enrollment.new(user_id: @User10068.id, event_id: @Event2.id, time:12245)
@Enrollment100682.save
@Enrollment100683 = Enrollment.new(user_id: @User10068.id, event_id: @Event3.id, time:6640)
@Enrollment100683.save
@Enrollment100684 = Enrollment.new(user_id: @User10068.id, event_id: @Event4.id, time:11081)
@Enrollment100684.save
@Enrollment100685 = Enrollment.new(user_id: @User10068.id, event_id: @Event5.id, time:8568)
@Enrollment100685.save
@Enrollment100686 = Enrollment.new(user_id: @User10068.id, event_id: @Event6.id, time:8980)
@Enrollment100686.save
EnrollmentData.new(enrollment_id: @Enrollment100684.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100684.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100682.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100683.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100681.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100686.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10069 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markku', last_name: 'Tunturi', username: 'user10069', email: 'user10069@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10069, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10069.save
Result.new(name: 'Markku Tunturi', city: 'Helsinki', group: nil, year: 2014, series: 'M70', kk_number: '10069').save
@Enrollment100691 = Enrollment.new(user_id: @User10069.id, event_id: @Event1.id, time:4042)
@Enrollment100691.save
@Enrollment100692 = Enrollment.new(user_id: @User10069.id, event_id: @Event2.id, time:25795)
@Enrollment100692.save
@Enrollment100693 = Enrollment.new(user_id: @User10069.id, event_id: @Event3.id, time:14136)
@Enrollment100693.save
@Enrollment100694 = Enrollment.new(user_id: @User10069.id, event_id: @Event4.id, time:10799)
@Enrollment100694.save
@Enrollment100695 = Enrollment.new(user_id: @User10069.id, event_id: @Event5.id, time:8843)
@Enrollment100695.save
@Enrollment100696 = Enrollment.new(user_id: @User10069.id, event_id: @Event6.id, time:9666)
@Enrollment100696.save
EnrollmentData.new(enrollment_id: @Enrollment100694.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100694.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100692.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100693.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100691.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100696.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10070 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Hannu', last_name: 'Lappalainen', username: 'user10070', email: 'user10070@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10070, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10070.save
Result.new(name: 'Hannu Lappalainen', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10070').save
@Enrollment100701 = Enrollment.new(user_id: @User10070.id, event_id: @Event1.id, time:3813)
@Enrollment100701.save
@Enrollment100702 = Enrollment.new(user_id: @User10070.id, event_id: @Event2.id, time:26123)
@Enrollment100702.save
@Enrollment100703 = Enrollment.new(user_id: @User10070.id, event_id: @Event3.id, time:13894)
@Enrollment100703.save
@Enrollment100704 = Enrollment.new(user_id: @User10070.id, event_id: @Event4.id, time:11749)
@Enrollment100704.save
@Enrollment100705 = Enrollment.new(user_id: @User10070.id, event_id: @Event5.id, time:8762)
@Enrollment100705.save
@Enrollment100706 = Enrollment.new(user_id: @User10070.id, event_id: @Event6.id, time:10123)
@Enrollment100706.save
EnrollmentData.new(enrollment_id: @Enrollment100704.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100704.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100702.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100703.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100701.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100706.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10071 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Olli', last_name: 'Kujansuu', username: 'user10071', email: 'user10071@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10071, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10071.save
Result.new(name: 'Olli Kujansuu', city: 'Helsinki', group: 'Kankaanpään Kalevankiertäjät 1', year: 2014, series: 'M50', kk_number: '10071').save
@Enrollment100711 = Enrollment.new(user_id: @User10071.id, event_id: @Event1.id, time:3646)
@Enrollment100711.save
@Enrollment100712 = Enrollment.new(user_id: @User10071.id, event_id: @Event2.id, time:24640)
@Enrollment100712.save
@Enrollment100713 = Enrollment.new(user_id: @User10071.id, event_id: @Event3.id, time:8225)
@Enrollment100713.save
@Enrollment100714 = Enrollment.new(user_id: @User10071.id, event_id: @Event4.id, time:10906)
@Enrollment100714.save
@Enrollment100715 = Enrollment.new(user_id: @User10071.id, event_id: @Event5.id, time:8615)
@Enrollment100715.save
@Enrollment100716 = Enrollment.new(user_id: @User10071.id, event_id: @Event6.id, time:8805)
@Enrollment100716.save
EnrollmentData.new(enrollment_id: @Enrollment100714.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100714.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100712.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100713.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100711.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100716.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10072 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Päivi', last_name: 'Särmäntö', username: 'user10072', email: 'user10072@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10072, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10072.save
Result.new(name: 'Päivi Särmäntö', city: 'Helsinki', group: 'Uskelan Urhottaret', year: 2014, series: 'N', kk_number: '10072').save
@Enrollment100721 = Enrollment.new(user_id: @User10072.id, event_id: @Event1.id, time:4153)
@Enrollment100721.save
@Enrollment100722 = Enrollment.new(user_id: @User10072.id, event_id: @Event2.id, time:12280)
@Enrollment100722.save
@Enrollment100723 = Enrollment.new(user_id: @User10072.id, event_id: @Event3.id, time:7048)
@Enrollment100723.save
@Enrollment100724 = Enrollment.new(user_id: @User10072.id, event_id: @Event4.id, time:11434)
@Enrollment100724.save
@Enrollment100725 = Enrollment.new(user_id: @User10072.id, event_id: @Event5.id, time:8823)
@Enrollment100725.save
@Enrollment100726 = Enrollment.new(user_id: @User10072.id, event_id: @Event6.id, time:9027)
@Enrollment100726.save
EnrollmentData.new(enrollment_id: @Enrollment100724.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100724.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100722.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100723.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100721.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100726.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10073 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Raimo', last_name: 'Hämäläinen', username: 'user10073', email: 'user10073@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10073, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10073.save
Result.new(name: 'Raimo Hämäläinen', city: 'Helsinki', group: 'Uskelan Urhot II', year: 2014, series: 'M65', kk_number: '10073').save
@Enrollment100731 = Enrollment.new(user_id: @User10073.id, event_id: @Event1.id, time:3790)
@Enrollment100731.save
@Enrollment100732 = Enrollment.new(user_id: @User10073.id, event_id: @Event2.id, time:11699)
@Enrollment100732.save
@Enrollment100733 = Enrollment.new(user_id: @User10073.id, event_id: @Event3.id, time:13969)
@Enrollment100733.save
@Enrollment100734 = Enrollment.new(user_id: @User10073.id, event_id: @Event4.id, time:11421)
@Enrollment100734.save
@Enrollment100735 = Enrollment.new(user_id: @User10073.id, event_id: @Event5.id, time:7811)
@Enrollment100735.save
@Enrollment100736 = Enrollment.new(user_id: @User10073.id, event_id: @Event6.id, time:16530)
@Enrollment100736.save
EnrollmentData.new(enrollment_id: @Enrollment100734.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100734.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100732.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100733.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100731.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100736.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10074 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Antti', last_name: 'Rytkönen', username: 'user10074', email: 'user10074@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10074, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10074.save
Result.new(name: 'Antti Rytkönen', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10074').save
@Enrollment100741 = Enrollment.new(user_id: @User10074.id, event_id: @Event1.id, time:3563)
@Enrollment100741.save
@Enrollment100742 = Enrollment.new(user_id: @User10074.id, event_id: @Event2.id, time:14135)
@Enrollment100742.save
@Enrollment100743 = Enrollment.new(user_id: @User10074.id, event_id: @Event3.id, time:8493)
@Enrollment100743.save
@Enrollment100744 = Enrollment.new(user_id: @User10074.id, event_id: @Event4.id, time:11095)
@Enrollment100744.save
@Enrollment100745 = Enrollment.new(user_id: @User10074.id, event_id: @Event5.id, time:8013)
@Enrollment100745.save
@Enrollment100746 = Enrollment.new(user_id: @User10074.id, event_id: @Event6.id, time:10194)
@Enrollment100746.save
EnrollmentData.new(enrollment_id: @Enrollment100744.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100744.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100742.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100743.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100741.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100746.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10075 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jyrki', last_name: 'Laurikainen', username: 'user10075', email: 'user10075@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10075, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10075.save
Result.new(name: 'Jyrki Laurikainen', city: 'Helsinki', group: 'ERRY ', year: 2014, series: 'M40', kk_number: '10075').save
@Enrollment100751 = Enrollment.new(user_id: @User10075.id, event_id: @Event1.id, time:4669)
@Enrollment100751.save
@Enrollment100752 = Enrollment.new(user_id: @User10075.id, event_id: @Event2.id, time:14655)
@Enrollment100752.save
@Enrollment100753 = Enrollment.new(user_id: @User10075.id, event_id: @Event3.id, time:5908)
@Enrollment100753.save
@Enrollment100754 = Enrollment.new(user_id: @User10075.id, event_id: @Event4.id, time:11231)
@Enrollment100754.save
@Enrollment100755 = Enrollment.new(user_id: @User10075.id, event_id: @Event5.id, time:7965)
@Enrollment100755.save
@Enrollment100756 = Enrollment.new(user_id: @User10075.id, event_id: @Event6.id, time:8816)
@Enrollment100756.save
EnrollmentData.new(enrollment_id: @Enrollment100754.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100754.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100752.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100753.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100751.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100756.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10076 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jaakko', last_name: 'Helminen', username: 'user10076', email: 'user10076@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10076, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10076.save
Result.new(name: 'Jaakko Helminen', city: 'Helsinki', group: 'Tuusulan Tallaajat II', year: 2014, series: 'M65', kk_number: '10076').save
@Enrollment100761 = Enrollment.new(user_id: @User10076.id, event_id: @Event1.id, time:4112)
@Enrollment100761.save
@Enrollment100762 = Enrollment.new(user_id: @User10076.id, event_id: @Event2.id, time:13224)
@Enrollment100762.save
@Enrollment100763 = Enrollment.new(user_id: @User10076.id, event_id: @Event3.id, time:6901)
@Enrollment100763.save
@Enrollment100764 = Enrollment.new(user_id: @User10076.id, event_id: @Event4.id, time:10812)
@Enrollment100764.save
@Enrollment100765 = Enrollment.new(user_id: @User10076.id, event_id: @Event5.id, time:8266)
@Enrollment100765.save
@Enrollment100766 = Enrollment.new(user_id: @User10076.id, event_id: @Event6.id, time:10264)
@Enrollment100766.save
EnrollmentData.new(enrollment_id: @Enrollment100764.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100764.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100762.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100763.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100761.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100766.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10077 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Raimo', last_name: 'Liukkonen', username: 'user10077', email: 'user10077@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10077, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10077.save
Result.new(name: 'Raimo Liukkonen', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10077').save
@Enrollment100771 = Enrollment.new(user_id: @User10077.id, event_id: @Event1.id, time:3842)
@Enrollment100771.save
@Enrollment100772 = Enrollment.new(user_id: @User10077.id, event_id: @Event2.id, time:12186)
@Enrollment100772.save
@Enrollment100773 = Enrollment.new(user_id: @User10077.id, event_id: @Event3.id, time:6837)
@Enrollment100773.save
@Enrollment100774 = Enrollment.new(user_id: @User10077.id, event_id: @Event4.id, time:13096)
@Enrollment100774.save
@Enrollment100775 = Enrollment.new(user_id: @User10077.id, event_id: @Event5.id, time:8775)
@Enrollment100775.save
@Enrollment100776 = Enrollment.new(user_id: @User10077.id, event_id: @Event6.id, time:8590)
@Enrollment100776.save
EnrollmentData.new(enrollment_id: @Enrollment100774.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100774.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100772.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100773.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100771.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100776.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10078 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ilkka', last_name: 'Kivi', username: 'user10078', email: 'user10078@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10078, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10078.save
Result.new(name: 'Ilkka Kivi', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10078').save
@Enrollment100781 = Enrollment.new(user_id: @User10078.id, event_id: @Event1.id, time:4430)
@Enrollment100781.save
@Enrollment100782 = Enrollment.new(user_id: @User10078.id, event_id: @Event2.id, time:28521)
@Enrollment100782.save
@Enrollment100783 = Enrollment.new(user_id: @User10078.id, event_id: @Event3.id, time:14323)
@Enrollment100783.save
@Enrollment100784 = Enrollment.new(user_id: @User10078.id, event_id: @Event4.id, time:11642)
@Enrollment100784.save
@Enrollment100785 = Enrollment.new(user_id: @User10078.id, event_id: @Event5.id, time:8384)
@Enrollment100785.save
@Enrollment100786 = Enrollment.new(user_id: @User10078.id, event_id: @Event6.id, time:9608)
@Enrollment100786.save
EnrollmentData.new(enrollment_id: @Enrollment100784.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100784.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100782.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100783.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100781.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100786.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10079 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Katja', last_name: 'Huotari', username: 'user10079', email: 'user10079@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10079, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10079.save
Result.new(name: 'Katja Huotari', city: 'Helsinki', group: nil, year: 2014, series: 'N65', kk_number: '10079').save
@Enrollment100791 = Enrollment.new(user_id: @User10079.id, event_id: @Event1.id, time:3979)
@Enrollment100791.save
@Enrollment100792 = Enrollment.new(user_id: @User10079.id, event_id: @Event2.id, time:12139)
@Enrollment100792.save
@Enrollment100793 = Enrollment.new(user_id: @User10079.id, event_id: @Event3.id, time:6113)
@Enrollment100793.save
@Enrollment100794 = Enrollment.new(user_id: @User10079.id, event_id: @Event4.id, time:12732)
@Enrollment100794.save
@Enrollment100795 = Enrollment.new(user_id: @User10079.id, event_id: @Event5.id, time:7984)
@Enrollment100795.save
@Enrollment100796 = Enrollment.new(user_id: @User10079.id, event_id: @Event6.id, time:11158)
@Enrollment100796.save
EnrollmentData.new(enrollment_id: @Enrollment100794.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100794.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100792.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100793.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100791.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100796.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10080 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Riitta', last_name: 'Ynnilä', username: 'user10080', email: 'user10080@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10080, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10080.save
Result.new(name: 'Riitta Ynnilä', city: 'Helsinki', group: 'Uskelan Urhottaret', year: 2014, series: 'N55', kk_number: '10080').save
@Enrollment100801 = Enrollment.new(user_id: @User10080.id, event_id: @Event1.id, time:4618)
@Enrollment100801.save
@Enrollment100802 = Enrollment.new(user_id: @User10080.id, event_id: @Event2.id, time:11751)
@Enrollment100802.save
@Enrollment100803 = Enrollment.new(user_id: @User10080.id, event_id: @Event3.id, time:6117)
@Enrollment100803.save
@Enrollment100804 = Enrollment.new(user_id: @User10080.id, event_id: @Event4.id, time:11727)
@Enrollment100804.save
@Enrollment100805 = Enrollment.new(user_id: @User10080.id, event_id: @Event5.id, time:8646)
@Enrollment100805.save
@Enrollment100806 = Enrollment.new(user_id: @User10080.id, event_id: @Event6.id, time:8894)
@Enrollment100806.save
EnrollmentData.new(enrollment_id: @Enrollment100804.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100804.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100802.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100803.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100801.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100806.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10081 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Matti', last_name: 'Teittinen', username: 'user10081', email: 'user10081@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10081, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10081.save
Result.new(name: 'Matti Teittinen', city: 'Helsinki', group: 'Uskelan Urhot II', year: 2014, series: 'M60', kk_number: '10081').save
@Enrollment100811 = Enrollment.new(user_id: @User10081.id, event_id: @Event1.id, time:3820)
@Enrollment100811.save
@Enrollment100812 = Enrollment.new(user_id: @User10081.id, event_id: @Event2.id, time:13208)
@Enrollment100812.save
@Enrollment100813 = Enrollment.new(user_id: @User10081.id, event_id: @Event3.id, time:6033)
@Enrollment100813.save
@Enrollment100814 = Enrollment.new(user_id: @User10081.id, event_id: @Event4.id, time:11967)
@Enrollment100814.save
@Enrollment100815 = Enrollment.new(user_id: @User10081.id, event_id: @Event5.id, time:10697)
@Enrollment100815.save
@Enrollment100816 = Enrollment.new(user_id: @User10081.id, event_id: @Event6.id, time:7536)
@Enrollment100816.save
EnrollmentData.new(enrollment_id: @Enrollment100814.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100814.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100812.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100813.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100811.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100816.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10082 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Heikki', last_name: 'Husu', username: 'user10082', email: 'user10082@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10082, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10082.save
Result.new(name: 'Heikki Husu', city: 'Helsinki', group: 'Uskelan Urhot I', year: 2014, series: 'M', kk_number: '10082').save
@Enrollment100821 = Enrollment.new(user_id: @User10082.id, event_id: @Event1.id, time:4199)
@Enrollment100821.save
@Enrollment100822 = Enrollment.new(user_id: @User10082.id, event_id: @Event2.id, time:12850)
@Enrollment100822.save
@Enrollment100823 = Enrollment.new(user_id: @User10082.id, event_id: @Event3.id, time:7443)
@Enrollment100823.save
@Enrollment100824 = Enrollment.new(user_id: @User10082.id, event_id: @Event4.id, time:11514)
@Enrollment100824.save
@Enrollment100825 = Enrollment.new(user_id: @User10082.id, event_id: @Event5.id, time:8380)
@Enrollment100825.save
@Enrollment100826 = Enrollment.new(user_id: @User10082.id, event_id: @Event6.id, time:9393)
@Enrollment100826.save
EnrollmentData.new(enrollment_id: @Enrollment100824.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100824.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100822.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100823.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100821.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100826.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10083 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Anna', last_name: 'Keskisaari', username: 'user10083', email: 'user10083@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10083, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10083.save
Result.new(name: 'Anna Keskisaari', city: 'Helsinki', group: nil, year: 2014, series: 'N', kk_number: '10083').save
@Enrollment100831 = Enrollment.new(user_id: @User10083.id, event_id: @Event1.id, time:4533)
@Enrollment100831.save
@Enrollment100832 = Enrollment.new(user_id: @User10083.id, event_id: @Event2.id, time:10268)
@Enrollment100832.save
@Enrollment100833 = Enrollment.new(user_id: @User10083.id, event_id: @Event3.id, time:6470)
@Enrollment100833.save
@Enrollment100834 = Enrollment.new(user_id: @User10083.id, event_id: @Event4.id, time:12793)
@Enrollment100834.save
@Enrollment100835 = Enrollment.new(user_id: @User10083.id, event_id: @Event5.id, time:8394)
@Enrollment100835.save
@Enrollment100836 = Enrollment.new(user_id: @User10083.id, event_id: @Event6.id, time:10483)
@Enrollment100836.save
EnrollmentData.new(enrollment_id: @Enrollment100834.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100834.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100832.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100833.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100831.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100836.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10084 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Nappu', username: 'user10084', email: 'user10084@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10084, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10084.save
Result.new(name: 'Juha Nappu', city: 'Helsinki', group: 'Turun NMKY', year: 2014, series: 'M45', kk_number: '10084').save
@Enrollment100841 = Enrollment.new(user_id: @User10084.id, event_id: @Event1.id, time:4089)
@Enrollment100841.save
@Enrollment100842 = Enrollment.new(user_id: @User10084.id, event_id: @Event2.id, time:14133)
@Enrollment100842.save
@Enrollment100843 = Enrollment.new(user_id: @User10084.id, event_id: @Event3.id, time:6522)
@Enrollment100843.save
@Enrollment100844 = Enrollment.new(user_id: @User10084.id, event_id: @Event4.id, time:12575)
@Enrollment100844.save
@Enrollment100845 = Enrollment.new(user_id: @User10084.id, event_id: @Event5.id, time:8710)
@Enrollment100845.save
@Enrollment100846 = Enrollment.new(user_id: @User10084.id, event_id: @Event6.id, time:6921)
@Enrollment100846.save
EnrollmentData.new(enrollment_id: @Enrollment100844.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100844.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100842.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100843.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100841.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100846.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10085 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Sirpa', last_name: 'Översti', username: 'user10085', email: 'user10085@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10085, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10085.save
Result.new(name: 'Sirpa Översti', city: 'Helsinki', group: 'Selän Sitkeät Seireenit', year: 2014, series: 'N45', kk_number: '10085').save
@Enrollment100851 = Enrollment.new(user_id: @User10085.id, event_id: @Event1.id, time:3950)
@Enrollment100851.save
@Enrollment100852 = Enrollment.new(user_id: @User10085.id, event_id: @Event2.id, time:11628)
@Enrollment100852.save
@Enrollment100853 = Enrollment.new(user_id: @User10085.id, event_id: @Event3.id, time:7162)
@Enrollment100853.save
@Enrollment100854 = Enrollment.new(user_id: @User10085.id, event_id: @Event4.id, time:12117)
@Enrollment100854.save
@Enrollment100855 = Enrollment.new(user_id: @User10085.id, event_id: @Event5.id, time:8244)
@Enrollment100855.save
@Enrollment100856 = Enrollment.new(user_id: @User10085.id, event_id: @Event6.id, time:10805)
@Enrollment100856.save
EnrollmentData.new(enrollment_id: @Enrollment100854.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100854.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100852.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100853.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100851.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100856.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10086 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Antti', last_name: 'Piesanen', username: 'user10086', email: 'user10086@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10086, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10086.save
Result.new(name: 'Antti Piesanen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10086').save
@Enrollment100861 = Enrollment.new(user_id: @User10086.id, event_id: @Event1.id, time:4375)
@Enrollment100861.save
@Enrollment100862 = Enrollment.new(user_id: @User10086.id, event_id: @Event2.id, time:11508)
@Enrollment100862.save
@Enrollment100863 = Enrollment.new(user_id: @User10086.id, event_id: @Event3.id, time:7086)
@Enrollment100863.save
@Enrollment100864 = Enrollment.new(user_id: @User10086.id, event_id: @Event4.id, time:11774)
@Enrollment100864.save
@Enrollment100865 = Enrollment.new(user_id: @User10086.id, event_id: @Event5.id, time:8410)
@Enrollment100865.save
@Enrollment100866 = Enrollment.new(user_id: @User10086.id, event_id: @Event6.id, time:9442)
@Enrollment100866.save
EnrollmentData.new(enrollment_id: @Enrollment100864.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100864.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100862.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100863.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100861.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100866.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10087 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Marja-Liisa', last_name: 'Salonen', username: 'user10087', email: 'user10087@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10087, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10087.save
Result.new(name: 'Marja-Liisa Salonen', city: 'Helsinki', group: 'Hitaat Neidot', year: 2014, series: 'N60', kk_number: '10087').save
@Enrollment100871 = Enrollment.new(user_id: @User10087.id, event_id: @Event1.id, time:4230)
@Enrollment100871.save
@Enrollment100872 = Enrollment.new(user_id: @User10087.id, event_id: @Event2.id, time:13757)
@Enrollment100872.save
@Enrollment100873 = Enrollment.new(user_id: @User10087.id, event_id: @Event3.id, time:6799)
@Enrollment100873.save
@Enrollment100874 = Enrollment.new(user_id: @User10087.id, event_id: @Event4.id, time:11277)
@Enrollment100874.save
@Enrollment100875 = Enrollment.new(user_id: @User10087.id, event_id: @Event5.id, time:8714)
@Enrollment100875.save
@Enrollment100876 = Enrollment.new(user_id: @User10087.id, event_id: @Event6.id, time:9342)
@Enrollment100876.save
EnrollmentData.new(enrollment_id: @Enrollment100874.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100874.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100872.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100873.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100871.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100876.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10088 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kimmo', last_name: 'Behm', username: 'user10088', email: 'user10088@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10088, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10088.save
Result.new(name: 'Kimmo Behm', city: 'Helsinki', group: 'Tuusulan Tallaajat II', year: 2014, series: 'M60', kk_number: '10088').save
@Enrollment100881 = Enrollment.new(user_id: @User10088.id, event_id: @Event1.id, time:3736)
@Enrollment100881.save
@Enrollment100882 = Enrollment.new(user_id: @User10088.id, event_id: @Event2.id, time:13644)
@Enrollment100882.save
@Enrollment100883 = Enrollment.new(user_id: @User10088.id, event_id: @Event3.id, time:7804)
@Enrollment100883.save
@Enrollment100884 = Enrollment.new(user_id: @User10088.id, event_id: @Event4.id, time:11892)
@Enrollment100884.save
@Enrollment100885 = Enrollment.new(user_id: @User10088.id, event_id: @Event5.id, time:8209)
@Enrollment100885.save
@Enrollment100886 = Enrollment.new(user_id: @User10088.id, event_id: @Event6.id, time:10021)
@Enrollment100886.save
EnrollmentData.new(enrollment_id: @Enrollment100884.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100884.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100882.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100883.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100881.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100886.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10089 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Veikko', last_name: 'Långström', username: 'user10089', email: 'user10089@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10089, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10089.save
Result.new(name: 'Veikko Långström', city: 'Helsinki', group: 'Hitaat 2', year: 2014, series: 'M60', kk_number: '10089').save
@Enrollment100891 = Enrollment.new(user_id: @User10089.id, event_id: @Event1.id, time:4116)
@Enrollment100891.save
@Enrollment100892 = Enrollment.new(user_id: @User10089.id, event_id: @Event2.id, time:12302)
@Enrollment100892.save
@Enrollment100893 = Enrollment.new(user_id: @User10089.id, event_id: @Event3.id, time:7921)
@Enrollment100893.save
@Enrollment100894 = Enrollment.new(user_id: @User10089.id, event_id: @Event4.id, time:11631)
@Enrollment100894.save
@Enrollment100895 = Enrollment.new(user_id: @User10089.id, event_id: @Event5.id, time:8244)
@Enrollment100895.save
@Enrollment100896 = Enrollment.new(user_id: @User10089.id, event_id: @Event6.id, time:9298)
@Enrollment100896.save
EnrollmentData.new(enrollment_id: @Enrollment100894.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100894.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100892.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100893.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100891.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100896.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10090 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Milla', last_name: 'Seppä', username: 'user10090', email: 'user10090@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10090, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10090.save
Result.new(name: 'Milla Seppä', city: 'Helsinki', group: 'Uskelan Urhottaret', year: 2014, series: 'N', kk_number: '10090').save
@Enrollment100901 = Enrollment.new(user_id: @User10090.id, event_id: @Event1.id, time:4104)
@Enrollment100901.save
@Enrollment100902 = Enrollment.new(user_id: @User10090.id, event_id: @Event2.id, time:13393)
@Enrollment100902.save
@Enrollment100903 = Enrollment.new(user_id: @User10090.id, event_id: @Event3.id, time:6599)
@Enrollment100903.save
@Enrollment100904 = Enrollment.new(user_id: @User10090.id, event_id: @Event4.id, time:11727)
@Enrollment100904.save
@Enrollment100905 = Enrollment.new(user_id: @User10090.id, event_id: @Event5.id, time:8623)
@Enrollment100905.save
@Enrollment100906 = Enrollment.new(user_id: @User10090.id, event_id: @Event6.id, time:10089)
@Enrollment100906.save
EnrollmentData.new(enrollment_id: @Enrollment100904.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100904.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100902.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100903.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100901.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100906.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10091 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Arto', last_name: 'Jokela', username: 'user10091', email: 'user10091@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10091, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10091.save
Result.new(name: 'Arto Jokela', city: 'Helsinki', group: 'Uskelan Urhot III', year: 2014, series: 'M50', kk_number: '10091').save
@Enrollment100911 = Enrollment.new(user_id: @User10091.id, event_id: @Event1.id, time:4090)
@Enrollment100911.save
@Enrollment100912 = Enrollment.new(user_id: @User10091.id, event_id: @Event2.id, time:14031)
@Enrollment100912.save
@Enrollment100913 = Enrollment.new(user_id: @User10091.id, event_id: @Event3.id, time:6936)
@Enrollment100913.save
@Enrollment100914 = Enrollment.new(user_id: @User10091.id, event_id: @Event4.id, time:12564)
@Enrollment100914.save
@Enrollment100915 = Enrollment.new(user_id: @User10091.id, event_id: @Event5.id, time:8715)
@Enrollment100915.save
@Enrollment100916 = Enrollment.new(user_id: @User10091.id, event_id: @Event6.id, time:7193)
@Enrollment100916.save
EnrollmentData.new(enrollment_id: @Enrollment100914.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100914.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100912.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100913.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100911.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100916.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10092 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kari', last_name: 'Hyrkäs', username: 'user10092', email: 'user10092@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10092, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10092.save
Result.new(name: 'Kari Hyrkäs', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10092').save
@Enrollment100921 = Enrollment.new(user_id: @User10092.id, event_id: @Event1.id, time:4105)
@Enrollment100921.save
@Enrollment100922 = Enrollment.new(user_id: @User10092.id, event_id: @Event2.id, time:12347)
@Enrollment100922.save
@Enrollment100923 = Enrollment.new(user_id: @User10092.id, event_id: @Event3.id, time:6439)
@Enrollment100923.save
@Enrollment100924 = Enrollment.new(user_id: @User10092.id, event_id: @Event4.id, time:13242)
@Enrollment100924.save
@Enrollment100925 = Enrollment.new(user_id: @User10092.id, event_id: @Event5.id, time:8862)
@Enrollment100925.save
@Enrollment100926 = Enrollment.new(user_id: @User10092.id, event_id: @Event6.id, time:9626)
@Enrollment100926.save
EnrollmentData.new(enrollment_id: @Enrollment100924.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100924.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100922.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100923.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100921.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100926.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10093 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Nurmela', username: 'user10093', email: 'user10093@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10093, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10093.save
Result.new(name: 'Juha Nurmela', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10093').save
@Enrollment100931 = Enrollment.new(user_id: @User10093.id, event_id: @Event1.id, time:4736)
@Enrollment100931.save
@Enrollment100932 = Enrollment.new(user_id: @User10093.id, event_id: @Event2.id, time:12946)
@Enrollment100932.save
@Enrollment100933 = Enrollment.new(user_id: @User10093.id, event_id: @Event3.id, time:5681)
@Enrollment100933.save
@Enrollment100934 = Enrollment.new(user_id: @User10093.id, event_id: @Event4.id, time:12936)
@Enrollment100934.save
@Enrollment100935 = Enrollment.new(user_id: @User10093.id, event_id: @Event5.id, time:8535)
@Enrollment100935.save
@Enrollment100936 = Enrollment.new(user_id: @User10093.id, event_id: @Event6.id, time:9634)
@Enrollment100936.save
EnrollmentData.new(enrollment_id: @Enrollment100934.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100934.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100932.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100933.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100931.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100936.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10094 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jouni', last_name: 'Partanen', username: 'user10094', email: 'user10094@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10094, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10094.save
Result.new(name: 'Jouni Partanen', city: 'Helsinki', group: nil, year: 2014, series: 'M50', kk_number: '10094').save
@Enrollment100941 = Enrollment.new(user_id: @User10094.id, event_id: @Event1.id, time:4104)
@Enrollment100941.save
@Enrollment100942 = Enrollment.new(user_id: @User10094.id, event_id: @Event2.id, time:13993)
@Enrollment100942.save
@Enrollment100943 = Enrollment.new(user_id: @User10094.id, event_id: @Event3.id, time:6821)
@Enrollment100943.save
@Enrollment100944 = Enrollment.new(user_id: @User10094.id, event_id: @Event4.id, time:11964)
@Enrollment100944.save
@Enrollment100945 = Enrollment.new(user_id: @User10094.id, event_id: @Event5.id, time:8490)
@Enrollment100945.save
@Enrollment100946 = Enrollment.new(user_id: @User10094.id, event_id: @Event6.id, time:9825)
@Enrollment100946.save
EnrollmentData.new(enrollment_id: @Enrollment100944.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100944.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100942.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100943.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100941.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100946.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10095 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Leo', last_name: 'Lehtimäki', username: 'user10095', email: 'user10095@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10095, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10095.save
Result.new(name: 'Leo Lehtimäki', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10095').save
@Enrollment100951 = Enrollment.new(user_id: @User10095.id, event_id: @Event1.id, time:4320)
@Enrollment100951.save
@Enrollment100952 = Enrollment.new(user_id: @User10095.id, event_id: @Event2.id, time:12610)
@Enrollment100952.save
@Enrollment100953 = Enrollment.new(user_id: @User10095.id, event_id: @Event3.id, time:6559)
@Enrollment100953.save
@Enrollment100954 = Enrollment.new(user_id: @User10095.id, event_id: @Event4.id, time:12187)
@Enrollment100954.save
@Enrollment100955 = Enrollment.new(user_id: @User10095.id, event_id: @Event5.id, time:9095)
@Enrollment100955.save
@Enrollment100956 = Enrollment.new(user_id: @User10095.id, event_id: @Event6.id, time:9091)
@Enrollment100956.save
EnrollmentData.new(enrollment_id: @Enrollment100954.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100954.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100952.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100953.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100951.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100956.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10096 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Petteri', last_name: 'Pirinen', username: 'user10096', email: 'user10096@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10096, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10096.save
Result.new(name: 'Petteri Pirinen', city: 'Helsinki', group: 'Tuusulan Tallaajat III', year: 2014, series: 'M55', kk_number: '10096').save
@Enrollment100961 = Enrollment.new(user_id: @User10096.id, event_id: @Event1.id, time:4084)
@Enrollment100961.save
@Enrollment100962 = Enrollment.new(user_id: @User10096.id, event_id: @Event2.id, time:13118)
@Enrollment100962.save
@Enrollment100963 = Enrollment.new(user_id: @User10096.id, event_id: @Event3.id, time:15192)
@Enrollment100963.save
@Enrollment100964 = Enrollment.new(user_id: @User10096.id, event_id: @Event4.id, time:11832)
@Enrollment100964.save
@Enrollment100965 = Enrollment.new(user_id: @User10096.id, event_id: @Event5.id, time:8902)
@Enrollment100965.save
@Enrollment100966 = Enrollment.new(user_id: @User10096.id, event_id: @Event6.id, time:10890)
@Enrollment100966.save
EnrollmentData.new(enrollment_id: @Enrollment100964.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100964.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100962.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100963.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100961.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100966.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10097 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jarmo', last_name: 'Huttunen', username: 'user10097', email: 'user10097@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10097, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10097.save
Result.new(name: 'Jarmo Huttunen', city: 'Helsinki', group: 'Kankaanpään Kalevankiertäjät 1', year: 2014, series: 'M45', kk_number: '10097').save
@Enrollment100971 = Enrollment.new(user_id: @User10097.id, event_id: @Event1.id, time:4562)
@Enrollment100971.save
@Enrollment100972 = Enrollment.new(user_id: @User10097.id, event_id: @Event2.id, time:25758)
@Enrollment100972.save
@Enrollment100973 = Enrollment.new(user_id: @User10097.id, event_id: @Event3.id, time:7106)
@Enrollment100973.save
@Enrollment100974 = Enrollment.new(user_id: @User10097.id, event_id: @Event4.id, time:11773)
@Enrollment100974.save
@Enrollment100975 = Enrollment.new(user_id: @User10097.id, event_id: @Event5.id, time:8199)
@Enrollment100975.save
@Enrollment100976 = Enrollment.new(user_id: @User10097.id, event_id: @Event6.id, time:9640)
@Enrollment100976.save
EnrollmentData.new(enrollment_id: @Enrollment100974.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100974.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100972.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100973.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100971.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100976.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10098 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Martin', last_name: 'Löfström', username: 'user10098', email: 'user10098@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10098, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10098.save
Result.new(name: 'Martin Löfström', city: 'Helsinki', group: nil, year: 2014, series: 'M70', kk_number: '10098').save
@Enrollment100981 = Enrollment.new(user_id: @User10098.id, event_id: @Event1.id, time:4142)
@Enrollment100981.save
@Enrollment100982 = Enrollment.new(user_id: @User10098.id, event_id: @Event2.id, time:13478)
@Enrollment100982.save
@Enrollment100983 = Enrollment.new(user_id: @User10098.id, event_id: @Event3.id, time:6327)
@Enrollment100983.save
@Enrollment100984 = Enrollment.new(user_id: @User10098.id, event_id: @Event4.id, time:11828)
@Enrollment100984.save
@Enrollment100985 = Enrollment.new(user_id: @User10098.id, event_id: @Event5.id, time:9039)
@Enrollment100985.save
@Enrollment100986 = Enrollment.new(user_id: @User10098.id, event_id: @Event6.id, time:12427)
@Enrollment100986.save
EnrollmentData.new(enrollment_id: @Enrollment100984.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100984.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100982.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100983.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100981.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100986.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10099 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Meronen', username: 'user10099', email: 'user10099@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10099, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10099.save
Result.new(name: 'Juha Meronen', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10099').save
@Enrollment100991 = Enrollment.new(user_id: @User10099.id, event_id: @Event1.id, time:5228)
@Enrollment100991.save
@Enrollment100992 = Enrollment.new(user_id: @User10099.id, event_id: @Event2.id, time:15889)
@Enrollment100992.save
@Enrollment100993 = Enrollment.new(user_id: @User10099.id, event_id: @Event3.id, time:5934)
@Enrollment100993.save
@Enrollment100994 = Enrollment.new(user_id: @User10099.id, event_id: @Event4.id, time:11949)
@Enrollment100994.save
@Enrollment100995 = Enrollment.new(user_id: @User10099.id, event_id: @Event5.id, time:8020)
@Enrollment100995.save
@Enrollment100996 = Enrollment.new(user_id: @User10099.id, event_id: @Event6.id, time:6962)
@Enrollment100996.save
EnrollmentData.new(enrollment_id: @Enrollment100994.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100994.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100992.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100993.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100991.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100996.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10100 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'jari', last_name: 'tiimo', username: 'user10100', email: 'user10100@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10100, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10100.save
Result.new(name: 'jari tiimo', city: 'Helsinki', group: nil, year: 2014, series: 'M50', kk_number: '10100').save
@Enrollment101001 = Enrollment.new(user_id: @User10100.id, event_id: @Event1.id, time:4785)
@Enrollment101001.save
@Enrollment101002 = Enrollment.new(user_id: @User10100.id, event_id: @Event2.id, time:13363)
@Enrollment101002.save
@Enrollment101003 = Enrollment.new(user_id: @User10100.id, event_id: @Event3.id, time:14523)
@Enrollment101003.save
@Enrollment101004 = Enrollment.new(user_id: @User10100.id, event_id: @Event4.id, time:12328)
@Enrollment101004.save
@Enrollment101005 = Enrollment.new(user_id: @User10100.id, event_id: @Event5.id, time:8270)
@Enrollment101005.save
@Enrollment101006 = Enrollment.new(user_id: @User10100.id, event_id: @Event6.id, time:10190)
@Enrollment101006.save
EnrollmentData.new(enrollment_id: @Enrollment101004.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101004.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101002.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101003.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101001.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101006.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10101 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jani', last_name: 'Lehmuskoski', username: 'user10101', email: 'user10101@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10101, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10101.save
Result.new(name: 'Jani Lehmuskoski', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10101').save
@Enrollment101011 = Enrollment.new(user_id: @User10101.id, event_id: @Event1.id, time:4080)
@Enrollment101011.save
@Enrollment101012 = Enrollment.new(user_id: @User10101.id, event_id: @Event2.id, time:15161)
@Enrollment101012.save
@Enrollment101013 = Enrollment.new(user_id: @User10101.id, event_id: @Event3.id, time:13022)
@Enrollment101013.save
@Enrollment101014 = Enrollment.new(user_id: @User10101.id, event_id: @Event4.id, time:16143)
@Enrollment101014.save
@Enrollment101015 = Enrollment.new(user_id: @User10101.id, event_id: @Event5.id, time:8057)
@Enrollment101015.save
@Enrollment101016 = Enrollment.new(user_id: @User10101.id, event_id: @Event6.id, time:8558)
@Enrollment101016.save
EnrollmentData.new(enrollment_id: @Enrollment101014.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101014.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101012.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101013.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101011.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101016.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10102 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Antti', last_name: 'Mäntynen', username: 'user10102', email: 'user10102@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10102, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10102.save
Result.new(name: 'Antti Mäntynen', city: 'Helsinki', group: 'Otaniemen Jyllääjät II', year: 2014, series: 'M45', kk_number: '10102').save
@Enrollment101021 = Enrollment.new(user_id: @User10102.id, event_id: @Event1.id, time:4057)
@Enrollment101021.save
@Enrollment101022 = Enrollment.new(user_id: @User10102.id, event_id: @Event2.id, time:11858)
@Enrollment101022.save
@Enrollment101023 = Enrollment.new(user_id: @User10102.id, event_id: @Event3.id, time:7024)
@Enrollment101023.save
@Enrollment101024 = Enrollment.new(user_id: @User10102.id, event_id: @Event4.id, time:11966)
@Enrollment101024.save
@Enrollment101025 = Enrollment.new(user_id: @User10102.id, event_id: @Event5.id, time:8121)
@Enrollment101025.save
@Enrollment101026 = Enrollment.new(user_id: @User10102.id, event_id: @Event6.id, time:16803)
@Enrollment101026.save
EnrollmentData.new(enrollment_id: @Enrollment101024.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101024.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101022.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101023.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101021.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101026.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10103 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juhani', last_name: 'Joutsenniemi', username: 'user10103', email: 'user10103@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10103, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10103.save
Result.new(name: 'Juhani Joutsenniemi', city: 'Helsinki', group: 'Tuusulan Tallaajat III', year: 2014, series: 'M70', kk_number: '10103').save
@Enrollment101031 = Enrollment.new(user_id: @User10103.id, event_id: @Event1.id, time:3746)
@Enrollment101031.save
@Enrollment101032 = Enrollment.new(user_id: @User10103.id, event_id: @Event2.id, time:14449)
@Enrollment101032.save
@Enrollment101033 = Enrollment.new(user_id: @User10103.id, event_id: @Event3.id, time:8225)
@Enrollment101033.save
@Enrollment101034 = Enrollment.new(user_id: @User10103.id, event_id: @Event4.id, time:11501)
@Enrollment101034.save
@Enrollment101035 = Enrollment.new(user_id: @User10103.id, event_id: @Event5.id, time:8538)
@Enrollment101035.save
@Enrollment101036 = Enrollment.new(user_id: @User10103.id, event_id: @Event6.id, time:13983)
@Enrollment101036.save
EnrollmentData.new(enrollment_id: @Enrollment101034.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101034.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101032.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101033.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101031.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101036.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10104 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Timo', last_name: 'Lappi', username: 'user10104', email: 'user10104@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10104, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10104.save
Result.new(name: 'Timo Lappi', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10104').save
@Enrollment101041 = Enrollment.new(user_id: @User10104.id, event_id: @Event1.id, time:5074)
@Enrollment101041.save
@Enrollment101042 = Enrollment.new(user_id: @User10104.id, event_id: @Event2.id, time:14628)
@Enrollment101042.save
@Enrollment101043 = Enrollment.new(user_id: @User10104.id, event_id: @Event3.id, time:5971)
@Enrollment101043.save
@Enrollment101044 = Enrollment.new(user_id: @User10104.id, event_id: @Event4.id, time:11949)
@Enrollment101044.save
@Enrollment101045 = Enrollment.new(user_id: @User10104.id, event_id: @Event5.id, time:8098)
@Enrollment101045.save
@Enrollment101046 = Enrollment.new(user_id: @User10104.id, event_id: @Event6.id, time:11552)
@Enrollment101046.save
EnrollmentData.new(enrollment_id: @Enrollment101044.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101044.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101042.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101043.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101041.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101046.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10105 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Petri', last_name: 'Hammar', username: 'user10105', email: 'user10105@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10105, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10105.save
Result.new(name: 'Petri Hammar', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10105').save
@Enrollment101051 = Enrollment.new(user_id: @User10105.id, event_id: @Event1.id, time:4179)
@Enrollment101051.save
@Enrollment101052 = Enrollment.new(user_id: @User10105.id, event_id: @Event2.id, time:13277)
@Enrollment101052.save
@Enrollment101053 = Enrollment.new(user_id: @User10105.id, event_id: @Event3.id, time:7786)
@Enrollment101053.save
@Enrollment101054 = Enrollment.new(user_id: @User10105.id, event_id: @Event4.id, time:11774)
@Enrollment101054.save
@Enrollment101055 = Enrollment.new(user_id: @User10105.id, event_id: @Event5.id, time:9008)
@Enrollment101055.save
@Enrollment101056 = Enrollment.new(user_id: @User10105.id, event_id: @Event6.id, time:11482)
@Enrollment101056.save
EnrollmentData.new(enrollment_id: @Enrollment101054.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101054.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101052.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101053.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101051.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101056.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10106 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Heikki', last_name: 'Aurasmaa', username: 'user10106', email: 'user10106@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10106, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10106.save
Result.new(name: 'Heikki Aurasmaa', city: 'Helsinki', group: 'Korvenpojat', year: 2014, series: 'M65', kk_number: '10106').save
@Enrollment101061 = Enrollment.new(user_id: @User10106.id, event_id: @Event1.id, time:4130)
@Enrollment101061.save
@Enrollment101062 = Enrollment.new(user_id: @User10106.id, event_id: @Event2.id, time:32819)
@Enrollment101062.save
@Enrollment101063 = Enrollment.new(user_id: @User10106.id, event_id: @Event3.id, time:7482)
@Enrollment101063.save
@Enrollment101064 = Enrollment.new(user_id: @User10106.id, event_id: @Event4.id, time:11032)
@Enrollment101064.save
@Enrollment101065 = Enrollment.new(user_id: @User10106.id, event_id: @Event5.id, time:9412)
@Enrollment101065.save
@Enrollment101066 = Enrollment.new(user_id: @User10106.id, event_id: @Event6.id, time:11188)
@Enrollment101066.save
EnrollmentData.new(enrollment_id: @Enrollment101064.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101064.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101062.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101063.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101061.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101066.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10107 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Hannu', last_name: 'Saarinen', username: 'user10107', email: 'user10107@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10107, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10107.save
Result.new(name: 'Hannu Saarinen', city: 'Helsinki', group: 'Sveitsiläiset', year: 2014, series: 'M65', kk_number: '10107').save
@Enrollment101071 = Enrollment.new(user_id: @User10107.id, event_id: @Event1.id, time:4795)
@Enrollment101071.save
@Enrollment101072 = Enrollment.new(user_id: @User10107.id, event_id: @Event2.id, time:12912)
@Enrollment101072.save
@Enrollment101073 = Enrollment.new(user_id: @User10107.id, event_id: @Event3.id, time:7638)
@Enrollment101073.save
@Enrollment101074 = Enrollment.new(user_id: @User10107.id, event_id: @Event4.id, time:11864)
@Enrollment101074.save
@Enrollment101075 = Enrollment.new(user_id: @User10107.id, event_id: @Event5.id, time:8421)
@Enrollment101075.save
@Enrollment101076 = Enrollment.new(user_id: @User10107.id, event_id: @Event6.id, time:10989)
@Enrollment101076.save
EnrollmentData.new(enrollment_id: @Enrollment101074.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101074.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101072.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101073.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101071.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101076.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10108 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Etti', last_name: 'Kantola', username: 'user10108', email: 'user10108@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10108, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10108.save
Result.new(name: 'Etti Kantola', city: 'Helsinki', group: 'Hitaat Neidot', year: 2014, series: 'N', kk_number: '10108').save
@Enrollment101081 = Enrollment.new(user_id: @User10108.id, event_id: @Event1.id, time:4572)
@Enrollment101081.save
@Enrollment101082 = Enrollment.new(user_id: @User10108.id, event_id: @Event2.id, time:13339)
@Enrollment101082.save
@Enrollment101083 = Enrollment.new(user_id: @User10108.id, event_id: @Event3.id, time:7260)
@Enrollment101083.save
@Enrollment101084 = Enrollment.new(user_id: @User10108.id, event_id: @Event4.id, time:12352)
@Enrollment101084.save
@Enrollment101085 = Enrollment.new(user_id: @User10108.id, event_id: @Event5.id, time:9030)
@Enrollment101085.save
@Enrollment101086 = Enrollment.new(user_id: @User10108.id, event_id: @Event6.id, time:10140)
@Enrollment101086.save
EnrollmentData.new(enrollment_id: @Enrollment101084.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101084.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101082.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101083.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101081.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101086.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10109 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pekka', last_name: 'Ahlqvist', username: 'user10109', email: 'user10109@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10109, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10109.save
Result.new(name: 'Pekka Ahlqvist', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10109').save
@Enrollment101091 = Enrollment.new(user_id: @User10109.id, event_id: @Event1.id, time:4408)
@Enrollment101091.save
@Enrollment101092 = Enrollment.new(user_id: @User10109.id, event_id: @Event2.id, time:16182)
@Enrollment101092.save
@Enrollment101093 = Enrollment.new(user_id: @User10109.id, event_id: @Event3.id, time:7433)
@Enrollment101093.save
@Enrollment101094 = Enrollment.new(user_id: @User10109.id, event_id: @Event4.id, time:12870)
@Enrollment101094.save
@Enrollment101095 = Enrollment.new(user_id: @User10109.id, event_id: @Event5.id, time:9031)
@Enrollment101095.save
@Enrollment101096 = Enrollment.new(user_id: @User10109.id, event_id: @Event6.id, time:9340)
@Enrollment101096.save
EnrollmentData.new(enrollment_id: @Enrollment101094.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101094.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101092.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101093.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101091.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101096.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10110 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Liisa', last_name: 'Särmäntö', username: 'user10110', email: 'user10110@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10110, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10110.save
Result.new(name: 'Liisa Särmäntö', city: 'Helsinki', group: 'Uskelan Urhot IV', year: 2014, series: 'N', kk_number: '10110').save
@Enrollment101101 = Enrollment.new(user_id: @User10110.id, event_id: @Event1.id, time:4579)
@Enrollment101101.save
@Enrollment101102 = Enrollment.new(user_id: @User10110.id, event_id: @Event2.id, time:14845)
@Enrollment101102.save
@Enrollment101103 = Enrollment.new(user_id: @User10110.id, event_id: @Event3.id, time:7470)
@Enrollment101103.save
@Enrollment101104 = Enrollment.new(user_id: @User10110.id, event_id: @Event4.id, time:12032)
@Enrollment101104.save
@Enrollment101105 = Enrollment.new(user_id: @User10110.id, event_id: @Event5.id, time:8845)
@Enrollment101105.save
@Enrollment101106 = Enrollment.new(user_id: @User10110.id, event_id: @Event6.id, time:10877)
@Enrollment101106.save
EnrollmentData.new(enrollment_id: @Enrollment101104.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101104.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101102.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101103.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101101.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101106.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10111 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Väinö', last_name: 'Kärsämä', username: 'user10111', email: 'user10111@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10111, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10111.save
Result.new(name: 'Väinö Kärsämä', city: 'Helsinki', group: 'SM MAANPÄÄ ', year: 2014, series: 'M65', kk_number: '10111').save
@Enrollment101111 = Enrollment.new(user_id: @User10111.id, event_id: @Event1.id, time:3980)
@Enrollment101111.save
@Enrollment101112 = Enrollment.new(user_id: @User10111.id, event_id: @Event2.id, time:14727)
@Enrollment101112.save
@Enrollment101113 = Enrollment.new(user_id: @User10111.id, event_id: @Event3.id, time:7558)
@Enrollment101113.save
@Enrollment101114 = Enrollment.new(user_id: @User10111.id, event_id: @Event4.id, time:12138)
@Enrollment101114.save
@Enrollment101115 = Enrollment.new(user_id: @User10111.id, event_id: @Event5.id, time:9106)
@Enrollment101115.save
@Enrollment101116 = Enrollment.new(user_id: @User10111.id, event_id: @Event6.id, time:12770)
@Enrollment101116.save
EnrollmentData.new(enrollment_id: @Enrollment101114.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101114.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101112.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101113.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101111.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101116.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10112 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Eero', last_name: 'Aalto', username: 'user10112', email: 'user10112@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10112, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10112.save
Result.new(name: 'Eero Aalto', city: 'Helsinki', group: 'KK Länsi-Uusimaa 1', year: 2014, series: 'M65', kk_number: '10112').save
@Enrollment101121 = Enrollment.new(user_id: @User10112.id, event_id: @Event1.id, time:4254)
@Enrollment101121.save
@Enrollment101122 = Enrollment.new(user_id: @User10112.id, event_id: @Event2.id, time:30210)
@Enrollment101122.save
@Enrollment101123 = Enrollment.new(user_id: @User10112.id, event_id: @Event3.id, time:7969)
@Enrollment101123.save
@Enrollment101124 = Enrollment.new(user_id: @User10112.id, event_id: @Event4.id, time:11788)
@Enrollment101124.save
@Enrollment101125 = Enrollment.new(user_id: @User10112.id, event_id: @Event5.id, time:8774)
@Enrollment101125.save
@Enrollment101126 = Enrollment.new(user_id: @User10112.id, event_id: @Event6.id, time:12786)
@Enrollment101126.save
EnrollmentData.new(enrollment_id: @Enrollment101124.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101124.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101122.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101123.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101121.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101126.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10113 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pirjo', last_name: 'Peltomaa', username: 'user10113', email: 'user10113@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10113, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10113.save
Result.new(name: 'Pirjo Peltomaa', city: 'Helsinki', group: 'Selän Sitkeät Seireenit', year: 2014, series: 'N45', kk_number: '10113').save
@Enrollment101131 = Enrollment.new(user_id: @User10113.id, event_id: @Event1.id, time:4611)
@Enrollment101131.save
@Enrollment101132 = Enrollment.new(user_id: @User10113.id, event_id: @Event2.id, time:12568)
@Enrollment101132.save
@Enrollment101133 = Enrollment.new(user_id: @User10113.id, event_id: @Event3.id, time:8293)
@Enrollment101133.save
@Enrollment101134 = Enrollment.new(user_id: @User10113.id, event_id: @Event4.id, time:13175)
@Enrollment101134.save
@Enrollment101135 = Enrollment.new(user_id: @User10113.id, event_id: @Event5.id, time:9010)
@Enrollment101135.save
@Enrollment101136 = Enrollment.new(user_id: @User10113.id, event_id: @Event6.id, time:10565)
@Enrollment101136.save
EnrollmentData.new(enrollment_id: @Enrollment101134.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101134.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101132.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101133.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101131.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101136.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10114 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ida', last_name: 'Kujansuu', username: 'user10114', email: 'user10114@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10114, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10114.save
Result.new(name: 'Ida Kujansuu', city: 'Helsinki', group: 'Kankaanpään Kalevankiertäjät 2', year: 2014, series: 'N', kk_number: '10114').save
@Enrollment101141 = Enrollment.new(user_id: @User10114.id, event_id: @Event1.id, time:4509)
@Enrollment101141.save
@Enrollment101142 = Enrollment.new(user_id: @User10114.id, event_id: @Event2.id, time:14294)
@Enrollment101142.save
@Enrollment101143 = Enrollment.new(user_id: @User10114.id, event_id: @Event3.id, time:7749)
@Enrollment101143.save
@Enrollment101144 = Enrollment.new(user_id: @User10114.id, event_id: @Event4.id, time:12059)
@Enrollment101144.save
@Enrollment101145 = Enrollment.new(user_id: @User10114.id, event_id: @Event5.id, time:9016)
@Enrollment101145.save
@Enrollment101146 = Enrollment.new(user_id: @User10114.id, event_id: @Event6.id, time:8751)
@Enrollment101146.save
EnrollmentData.new(enrollment_id: @Enrollment101144.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101144.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101142.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101143.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101141.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101146.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10115 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Hannu', last_name: 'Haimi', username: 'user10115', email: 'user10115@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10115, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10115.save
Result.new(name: 'Hannu Haimi', city: 'Helsinki', group: nil, year: 2014, series: 'M55', kk_number: '10115').save
@Enrollment101151 = Enrollment.new(user_id: @User10115.id, event_id: @Event1.id, time:5673)
@Enrollment101151.save
@Enrollment101152 = Enrollment.new(user_id: @User10115.id, event_id: @Event2.id, time:14484)
@Enrollment101152.save
@Enrollment101153 = Enrollment.new(user_id: @User10115.id, event_id: @Event3.id, time:14382)
@Enrollment101153.save
@Enrollment101154 = Enrollment.new(user_id: @User10115.id, event_id: @Event4.id, time:11143)
@Enrollment101154.save
@Enrollment101155 = Enrollment.new(user_id: @User10115.id, event_id: @Event5.id, time:9314)
@Enrollment101155.save
@Enrollment101156 = Enrollment.new(user_id: @User10115.id, event_id: @Event6.id, time:11668)
@Enrollment101156.save
EnrollmentData.new(enrollment_id: @Enrollment101154.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101154.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101152.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101153.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101151.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101156.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10116 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Heidi', last_name: 'Korventausta', username: 'user10116', email: 'user10116@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10116, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10116.save
Result.new(name: 'Heidi Korventausta', city: 'Helsinki', group: 'KK Länsi-Uusimaa 2', year: 2014, series: 'N45', kk_number: '10116').save
@Enrollment101161 = Enrollment.new(user_id: @User10116.id, event_id: @Event1.id, time:4957)
@Enrollment101161.save
@Enrollment101162 = Enrollment.new(user_id: @User10116.id, event_id: @Event2.id, time:13403)
@Enrollment101162.save
@Enrollment101163 = Enrollment.new(user_id: @User10116.id, event_id: @Event3.id, time:6481)
@Enrollment101163.save
@Enrollment101164 = Enrollment.new(user_id: @User10116.id, event_id: @Event4.id, time:13709)
@Enrollment101164.save
@Enrollment101165 = Enrollment.new(user_id: @User10116.id, event_id: @Event5.id, time:8460)
@Enrollment101165.save
@Enrollment101166 = Enrollment.new(user_id: @User10116.id, event_id: @Event6.id, time:12679)
@Enrollment101166.save
EnrollmentData.new(enrollment_id: @Enrollment101164.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101164.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101162.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101163.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101161.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101166.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10117 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jukka', last_name: 'Yli-Viikari', username: 'user10117', email: 'user10117@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10117, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10117.save
Result.new(name: 'Jukka Yli-Viikari', city: 'Helsinki', group: nil, year: 2014, series: 'M55', kk_number: '10117').save
@Enrollment101171 = Enrollment.new(user_id: @User10117.id, event_id: @Event1.id, time:4103)
@Enrollment101171.save
@Enrollment101172 = Enrollment.new(user_id: @User10117.id, event_id: @Event2.id, time:15950)
@Enrollment101172.save
@Enrollment101173 = Enrollment.new(user_id: @User10117.id, event_id: @Event3.id, time:18917)
@Enrollment101173.save
@Enrollment101174 = Enrollment.new(user_id: @User10117.id, event_id: @Event4.id, time:12310)
@Enrollment101174.save
@Enrollment101175 = Enrollment.new(user_id: @User10117.id, event_id: @Event5.id, time:8577)
@Enrollment101175.save
@Enrollment101176 = Enrollment.new(user_id: @User10117.id, event_id: @Event6.id, time:13152)
@Enrollment101176.save
EnrollmentData.new(enrollment_id: @Enrollment101174.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101174.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101172.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101173.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101171.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101176.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10118 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Sameri', username: 'user10118', email: 'user10118@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10118, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10118.save
Result.new(name: 'Juha Sameri', city: 'Helsinki', group: 'Espoon Etanat', year: 2014, series: 'M60', kk_number: '10118').save
@Enrollment101181 = Enrollment.new(user_id: @User10118.id, event_id: @Event1.id, time:3562)
@Enrollment101181.save
@Enrollment101182 = Enrollment.new(user_id: @User10118.id, event_id: @Event2.id, time:15174)
@Enrollment101182.save
@Enrollment101183 = Enrollment.new(user_id: @User10118.id, event_id: @Event3.id, time:8387)
@Enrollment101183.save
@Enrollment101184 = Enrollment.new(user_id: @User10118.id, event_id: @Event4.id, time:12768)
@Enrollment101184.save
@Enrollment101185 = Enrollment.new(user_id: @User10118.id, event_id: @Event5.id, time:8978)
@Enrollment101185.save
@Enrollment101186 = Enrollment.new(user_id: @User10118.id, event_id: @Event6.id, time:16379)
@Enrollment101186.save
EnrollmentData.new(enrollment_id: @Enrollment101184.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101184.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101182.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101183.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101181.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101186.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10119 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kari', last_name: 'Mamia', username: 'user10119', email: 'user10119@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10119, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10119.save
Result.new(name: 'Kari Mamia', city: 'Helsinki', group: 'KK Länsi-Uusimaa 1', year: 2014, series: 'M45', kk_number: '10119').save
@Enrollment101191 = Enrollment.new(user_id: @User10119.id, event_id: @Event1.id, time:4731)
@Enrollment101191.save
@Enrollment101192 = Enrollment.new(user_id: @User10119.id, event_id: @Event2.id, time:15578)
@Enrollment101192.save
@Enrollment101193 = Enrollment.new(user_id: @User10119.id, event_id: @Event3.id, time:8073)
@Enrollment101193.save
@Enrollment101194 = Enrollment.new(user_id: @User10119.id, event_id: @Event4.id, time:13177)
@Enrollment101194.save
@Enrollment101195 = Enrollment.new(user_id: @User10119.id, event_id: @Event5.id, time:9191)
@Enrollment101195.save
@Enrollment101196 = Enrollment.new(user_id: @User10119.id, event_id: @Event6.id, time:7715)
@Enrollment101196.save
EnrollmentData.new(enrollment_id: @Enrollment101194.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101194.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101192.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101193.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101191.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101196.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10120 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juhani', last_name: 'Sillanpää', username: 'user10120', email: 'user10120@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10120, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10120.save
Result.new(name: 'Juhani Sillanpää', city: 'Helsinki', group: 'Espoon Etanat', year: 2014, series: 'M65', kk_number: '10120').save
@Enrollment101201 = Enrollment.new(user_id: @User10120.id, event_id: @Event1.id, time:4393)
@Enrollment101201.save
@Enrollment101202 = Enrollment.new(user_id: @User10120.id, event_id: @Event2.id, time:15349)
@Enrollment101202.save
@Enrollment101203 = Enrollment.new(user_id: @User10120.id, event_id: @Event3.id, time:7666)
@Enrollment101203.save
@Enrollment101204 = Enrollment.new(user_id: @User10120.id, event_id: @Event4.id, time:11749)
@Enrollment101204.save
@Enrollment101205 = Enrollment.new(user_id: @User10120.id, event_id: @Event5.id, time:9529)
@Enrollment101205.save
@Enrollment101206 = Enrollment.new(user_id: @User10120.id, event_id: @Event6.id, time:11604)
@Enrollment101206.save
EnrollmentData.new(enrollment_id: @Enrollment101204.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101204.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101202.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101203.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101201.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101206.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10121 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Erkki', last_name: 'Marila', username: 'user10121', email: 'user10121@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10121, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10121.save
Result.new(name: 'Erkki Marila', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10121').save
@Enrollment101211 = Enrollment.new(user_id: @User10121.id, event_id: @Event1.id, time:4455)
@Enrollment101211.save
@Enrollment101212 = Enrollment.new(user_id: @User10121.id, event_id: @Event2.id, time:28482)
@Enrollment101212.save
@Enrollment101213 = Enrollment.new(user_id: @User10121.id, event_id: @Event3.id, time:7160)
@Enrollment101213.save
@Enrollment101214 = Enrollment.new(user_id: @User10121.id, event_id: @Event4.id, time:12537)
@Enrollment101214.save
@Enrollment101215 = Enrollment.new(user_id: @User10121.id, event_id: @Event5.id, time:9656)
@Enrollment101215.save
@Enrollment101216 = Enrollment.new(user_id: @User10121.id, event_id: @Event6.id, time:11643)
@Enrollment101216.save
EnrollmentData.new(enrollment_id: @Enrollment101214.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101214.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101212.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101213.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101211.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101216.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10122 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Esa', last_name: 'Ojanen', username: 'user10122', email: 'user10122@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10122, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10122.save
Result.new(name: 'Esa Ojanen', city: 'Helsinki', group: 'Sveitsiläiset', year: 2014, series: 'M65', kk_number: '10122').save
@Enrollment101221 = Enrollment.new(user_id: @User10122.id, event_id: @Event1.id, time:4026)
@Enrollment101221.save
@Enrollment101222 = Enrollment.new(user_id: @User10122.id, event_id: @Event2.id, time:14079)
@Enrollment101222.save
@Enrollment101223 = Enrollment.new(user_id: @User10122.id, event_id: @Event3.id, time:9307)
@Enrollment101223.save
@Enrollment101224 = Enrollment.new(user_id: @User10122.id, event_id: @Event4.id, time:11205)
@Enrollment101224.save
@Enrollment101225 = Enrollment.new(user_id: @User10122.id, event_id: @Event5.id, time:9436)
@Enrollment101225.save
@Enrollment101226 = Enrollment.new(user_id: @User10122.id, event_id: @Event6.id, time:13766)
@Enrollment101226.save
EnrollmentData.new(enrollment_id: @Enrollment101224.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101224.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101222.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101223.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101221.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101226.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10123 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tarmo', last_name: 'Pietilä', username: 'user10123', email: 'user10123@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10123, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10123.save
Result.new(name: 'Tarmo Pietilä', city: 'Helsinki', group: 'Tammelan Ryske', year: 2014, series: 'M50', kk_number: '10123').save
@Enrollment101231 = Enrollment.new(user_id: @User10123.id, event_id: @Event1.id, time:4328)
@Enrollment101231.save
@Enrollment101232 = Enrollment.new(user_id: @User10123.id, event_id: @Event2.id, time:16326)
@Enrollment101232.save
@Enrollment101233 = Enrollment.new(user_id: @User10123.id, event_id: @Event3.id, time:7622)
@Enrollment101233.save
@Enrollment101234 = Enrollment.new(user_id: @User10123.id, event_id: @Event4.id, time:11892)
@Enrollment101234.save
@Enrollment101235 = Enrollment.new(user_id: @User10123.id, event_id: @Event5.id, time:9908)
@Enrollment101235.save
@Enrollment101236 = Enrollment.new(user_id: @User10123.id, event_id: @Event6.id, time:10178)
@Enrollment101236.save
EnrollmentData.new(enrollment_id: @Enrollment101234.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101234.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101232.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101233.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101231.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101236.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10124 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kaisa', last_name: 'Reunanen', username: 'user10124', email: 'user10124@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10124, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10124.save
Result.new(name: 'Kaisa Reunanen', city: 'Helsinki', group: nil, year: 2014, series: 'N45', kk_number: '10124').save
@Enrollment101241 = Enrollment.new(user_id: @User10124.id, event_id: @Event1.id, time:4500)
@Enrollment101241.save
@Enrollment101242 = Enrollment.new(user_id: @User10124.id, event_id: @Event2.id, time:13714)
@Enrollment101242.save
@Enrollment101243 = Enrollment.new(user_id: @User10124.id, event_id: @Event3.id, time:8203)
@Enrollment101243.save
@Enrollment101244 = Enrollment.new(user_id: @User10124.id, event_id: @Event4.id, time:12662)
@Enrollment101244.save
@Enrollment101245 = Enrollment.new(user_id: @User10124.id, event_id: @Event5.id, time:9177)
@Enrollment101245.save
@Enrollment101246 = Enrollment.new(user_id: @User10124.id, event_id: @Event6.id, time:13506)
@Enrollment101246.save
EnrollmentData.new(enrollment_id: @Enrollment101244.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101244.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101242.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101243.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101241.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101246.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10125 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markku', last_name: 'Luoto', username: 'user10125', email: 'user10125@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10125, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10125.save
Result.new(name: 'Markku Luoto', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10125').save
@Enrollment101251 = Enrollment.new(user_id: @User10125.id, event_id: @Event1.id, time:4675)
@Enrollment101251.save
@Enrollment101252 = Enrollment.new(user_id: @User10125.id, event_id: @Event2.id, time:16581)
@Enrollment101252.save
@Enrollment101253 = Enrollment.new(user_id: @User10125.id, event_id: @Event3.id, time:7612)
@Enrollment101253.save
@Enrollment101254 = Enrollment.new(user_id: @User10125.id, event_id: @Event4.id, time:12138)
@Enrollment101254.save
@Enrollment101255 = Enrollment.new(user_id: @User10125.id, event_id: @Event5.id, time:8921)
@Enrollment101255.save
@Enrollment101256 = Enrollment.new(user_id: @User10125.id, event_id: @Event6.id, time:13122)
@Enrollment101256.save
EnrollmentData.new(enrollment_id: @Enrollment101254.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101254.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101252.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101253.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101251.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101256.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10126 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Marjut', last_name: 'Kujansuu', username: 'user10126', email: 'user10126@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10126, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10126.save
Result.new(name: 'Marjut Kujansuu', city: 'Helsinki', group: 'Kankaanpään Kalevankiertäjät 2', year: 2014, series: 'N45', kk_number: '10126').save
@Enrollment101261 = Enrollment.new(user_id: @User10126.id, event_id: @Event1.id, time:4921)
@Enrollment101261.save
@Enrollment101262 = Enrollment.new(user_id: @User10126.id, event_id: @Event2.id, time:17879)
@Enrollment101262.save
@Enrollment101263 = Enrollment.new(user_id: @User10126.id, event_id: @Event3.id, time:7958)
@Enrollment101263.save
@Enrollment101264 = Enrollment.new(user_id: @User10126.id, event_id: @Event4.id, time:12896)
@Enrollment101264.save
@Enrollment101265 = Enrollment.new(user_id: @User10126.id, event_id: @Event5.id, time:8934)
@Enrollment101265.save
@Enrollment101266 = Enrollment.new(user_id: @User10126.id, event_id: @Event6.id, time:10507)
@Enrollment101266.save
EnrollmentData.new(enrollment_id: @Enrollment101264.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101264.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101262.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101263.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101261.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101266.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10127 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Esa', last_name: 'Salonen', username: 'user10127', email: 'user10127@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10127, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10127.save
Result.new(name: 'Esa Salonen', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10127').save
@Enrollment101271 = Enrollment.new(user_id: @User10127.id, event_id: @Event1.id, time:4467)
@Enrollment101271.save
@Enrollment101272 = Enrollment.new(user_id: @User10127.id, event_id: @Event2.id, time:13900)
@Enrollment101272.save
@Enrollment101273 = Enrollment.new(user_id: @User10127.id, event_id: @Event3.id, time:8085)
@Enrollment101273.save
@Enrollment101274 = Enrollment.new(user_id: @User10127.id, event_id: @Event4.id, time:12382)
@Enrollment101274.save
@Enrollment101275 = Enrollment.new(user_id: @User10127.id, event_id: @Event5.id, time:9517)
@Enrollment101275.save
@Enrollment101276 = Enrollment.new(user_id: @User10127.id, event_id: @Event6.id, time:14312)
@Enrollment101276.save
EnrollmentData.new(enrollment_id: @Enrollment101274.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101274.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101272.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101273.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101271.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101276.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10128 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mikael', last_name: 'Lindström', username: 'user10128', email: 'user10128@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10128, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10128.save
Result.new(name: 'Mikael Lindström', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10128').save
@Enrollment101281 = Enrollment.new(user_id: @User10128.id, event_id: @Event1.id, time:4810)
@Enrollment101281.save
@Enrollment101282 = Enrollment.new(user_id: @User10128.id, event_id: @Event2.id, time:14652)
@Enrollment101282.save
@Enrollment101283 = Enrollment.new(user_id: @User10128.id, event_id: @Event3.id, time:8747)
@Enrollment101283.save
@Enrollment101284 = Enrollment.new(user_id: @User10128.id, event_id: @Event4.id, time:12602)
@Enrollment101284.save
@Enrollment101285 = Enrollment.new(user_id: @User10128.id, event_id: @Event5.id, time:8818)
@Enrollment101285.save
@Enrollment101286 = Enrollment.new(user_id: @User10128.id, event_id: @Event6.id, time:11862)
@Enrollment101286.save
EnrollmentData.new(enrollment_id: @Enrollment101284.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101284.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101282.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101283.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101281.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101286.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10129 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pertti', last_name: 'Mannevuo', username: 'user10129', email: 'user10129@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10129, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10129.save
Result.new(name: 'Pertti Mannevuo', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10129').save
@Enrollment101291 = Enrollment.new(user_id: @User10129.id, event_id: @Event1.id, time:4196)
@Enrollment101291.save
@Enrollment101292 = Enrollment.new(user_id: @User10129.id, event_id: @Event2.id, time:15541)
@Enrollment101292.save
@Enrollment101293 = Enrollment.new(user_id: @User10129.id, event_id: @Event3.id, time:8776)
@Enrollment101293.save
@Enrollment101294 = Enrollment.new(user_id: @User10129.id, event_id: @Event4.id, time:13305)
@Enrollment101294.save
@Enrollment101295 = Enrollment.new(user_id: @User10129.id, event_id: @Event5.id, time:9007)
@Enrollment101295.save
@Enrollment101296 = Enrollment.new(user_id: @User10129.id, event_id: @Event6.id, time:12035)
@Enrollment101296.save
EnrollmentData.new(enrollment_id: @Enrollment101294.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101294.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101292.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101293.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101291.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101296.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10130 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Esa', last_name: 'Rantala', username: 'user10130', email: 'user10130@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10130, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10130.save
Result.new(name: 'Esa Rantala', city: 'Helsinki', group: 'Tervakosken Pato 2.', year: 2014, series: 'M55', kk_number: '10130').save
@Enrollment101301 = Enrollment.new(user_id: @User10130.id, event_id: @Event1.id, time:4180)
@Enrollment101301.save
@Enrollment101302 = Enrollment.new(user_id: @User10130.id, event_id: @Event2.id, time:15690)
@Enrollment101302.save
@Enrollment101303 = Enrollment.new(user_id: @User10130.id, event_id: @Event3.id, time:7746)
@Enrollment101303.save
@Enrollment101304 = Enrollment.new(user_id: @User10130.id, event_id: @Event4.id, time:14238)
@Enrollment101304.save
@Enrollment101305 = Enrollment.new(user_id: @User10130.id, event_id: @Event5.id, time:8826)
@Enrollment101305.save
@Enrollment101306 = Enrollment.new(user_id: @User10130.id, event_id: @Event6.id, time:16835)
@Enrollment101306.save
EnrollmentData.new(enrollment_id: @Enrollment101304.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101304.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101302.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101303.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101301.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101306.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10131 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pekka', last_name: 'Ropponen', username: 'user10131', email: 'user10131@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10131, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10131.save
Result.new(name: 'Pekka Ropponen', city: 'Helsinki', group: 'Espoon Etanat', year: 2014, series: 'M65', kk_number: '10131').save
@Enrollment101311 = Enrollment.new(user_id: @User10131.id, event_id: @Event1.id, time:4103)
@Enrollment101311.save
@Enrollment101312 = Enrollment.new(user_id: @User10131.id, event_id: @Event2.id, time:16553)
@Enrollment101312.save
@Enrollment101313 = Enrollment.new(user_id: @User10131.id, event_id: @Event3.id, time:6873)
@Enrollment101313.save
@Enrollment101314 = Enrollment.new(user_id: @User10131.id, event_id: @Event4.id, time:13090)
@Enrollment101314.save
@Enrollment101315 = Enrollment.new(user_id: @User10131.id, event_id: @Event5.id, time:9951)
@Enrollment101315.save
@Enrollment101316 = Enrollment.new(user_id: @User10131.id, event_id: @Event6.id, time:16566)
@Enrollment101316.save
EnrollmentData.new(enrollment_id: @Enrollment101314.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101314.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101312.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101313.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101311.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101316.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10132 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Taisto', last_name: 'Jurvanen', username: 'user10132', email: 'user10132@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10132, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10132.save
Result.new(name: 'Taisto Jurvanen', city: 'Helsinki', group: 'Hitaat 2', year: 2014, series: 'M65', kk_number: '10132').save
@Enrollment101321 = Enrollment.new(user_id: @User10132.id, event_id: @Event1.id, time:4133)
@Enrollment101321.save
@Enrollment101322 = Enrollment.new(user_id: @User10132.id, event_id: @Event2.id, time:21467)
@Enrollment101322.save
@Enrollment101323 = Enrollment.new(user_id: @User10132.id, event_id: @Event3.id, time:8121)
@Enrollment101323.save
@Enrollment101324 = Enrollment.new(user_id: @User10132.id, event_id: @Event4.id, time:12267)
@Enrollment101324.save
@Enrollment101325 = Enrollment.new(user_id: @User10132.id, event_id: @Event5.id, time:9690)
@Enrollment101325.save
@Enrollment101326 = Enrollment.new(user_id: @User10132.id, event_id: @Event6.id, time:11881)
@Enrollment101326.save
EnrollmentData.new(enrollment_id: @Enrollment101324.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101324.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101322.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101323.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101321.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101326.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10133 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Merja', last_name: 'Sundman', username: 'user10133', email: 'user10133@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10133, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10133.save
Result.new(name: 'Merja Sundman', city: 'Helsinki', group: 'Rauman Kalevankiertäjät', year: 2014, series: 'N60', kk_number: '10133').save
@Enrollment101331 = Enrollment.new(user_id: @User10133.id, event_id: @Event1.id, time:6116)
@Enrollment101331.save
@Enrollment101332 = Enrollment.new(user_id: @User10133.id, event_id: @Event2.id, time:15759)
@Enrollment101332.save
@Enrollment101333 = Enrollment.new(user_id: @User10133.id, event_id: @Event3.id, time:6796)
@Enrollment101333.save
@Enrollment101334 = Enrollment.new(user_id: @User10133.id, event_id: @Event4.id, time:13473)
@Enrollment101334.save
@Enrollment101335 = Enrollment.new(user_id: @User10133.id, event_id: @Event5.id, time:9146)
@Enrollment101335.save
@Enrollment101336 = Enrollment.new(user_id: @User10133.id, event_id: @Event6.id, time:11452)
@Enrollment101336.save
EnrollmentData.new(enrollment_id: @Enrollment101334.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101334.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101332.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101333.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101331.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101336.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10134 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Onni', last_name: 'Siltala', username: 'user10134', email: 'user10134@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10134, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10134.save
Result.new(name: 'Onni Siltala', city: 'Helsinki', group: nil, year: 2014, series: 'M70', kk_number: '10134').save
@Enrollment101341 = Enrollment.new(user_id: @User10134.id, event_id: @Event1.id, time:5758)
@Enrollment101341.save
@Enrollment101342 = Enrollment.new(user_id: @User10134.id, event_id: @Event2.id, time:29398)
@Enrollment101342.save
@Enrollment101343 = Enrollment.new(user_id: @User10134.id, event_id: @Event3.id, time:19816)
@Enrollment101343.save
@Enrollment101344 = Enrollment.new(user_id: @User10134.id, event_id: @Event4.id, time:12535)
@Enrollment101344.save
@Enrollment101345 = Enrollment.new(user_id: @User10134.id, event_id: @Event5.id, time:9408)
@Enrollment101345.save
@Enrollment101346 = Enrollment.new(user_id: @User10134.id, event_id: @Event6.id, time:11598)
@Enrollment101346.save
EnrollmentData.new(enrollment_id: @Enrollment101344.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101344.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101342.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101343.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101341.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101346.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10135 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Matti', last_name: 'Supponen', username: 'user10135', email: 'user10135@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10135, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10135.save
Result.new(name: 'Matti Supponen', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10135').save
@Enrollment101351 = Enrollment.new(user_id: @User10135.id, event_id: @Event1.id, time:4282)
@Enrollment101351.save
@Enrollment101352 = Enrollment.new(user_id: @User10135.id, event_id: @Event2.id, time:35485)
@Enrollment101352.save
@Enrollment101353 = Enrollment.new(user_id: @User10135.id, event_id: @Event3.id, time:16706)
@Enrollment101353.save
@Enrollment101354 = Enrollment.new(user_id: @User10135.id, event_id: @Event4.id, time:13779)
@Enrollment101354.save
@Enrollment101355 = Enrollment.new(user_id: @User10135.id, event_id: @Event5.id, time:8357)
@Enrollment101355.save
@Enrollment101356 = Enrollment.new(user_id: @User10135.id, event_id: @Event6.id, time:10147)
@Enrollment101356.save
EnrollmentData.new(enrollment_id: @Enrollment101354.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101354.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101352.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101353.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101351.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101356.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10136 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'tuula', last_name: 'Viheroja', username: 'user10136', email: 'user10136@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10136, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10136.save
Result.new(name: 'tuula Viheroja', city: 'Helsinki', group: 'Rauman Kalevankiertäjät', year: 2014, series: 'N45', kk_number: '10136').save
@Enrollment101361 = Enrollment.new(user_id: @User10136.id, event_id: @Event1.id, time:4753)
@Enrollment101361.save
@Enrollment101362 = Enrollment.new(user_id: @User10136.id, event_id: @Event2.id, time:32469)
@Enrollment101362.save
@Enrollment101363 = Enrollment.new(user_id: @User10136.id, event_id: @Event3.id, time:7689)
@Enrollment101363.save
@Enrollment101364 = Enrollment.new(user_id: @User10136.id, event_id: @Event4.id, time:13862)
@Enrollment101364.save
@Enrollment101365 = Enrollment.new(user_id: @User10136.id, event_id: @Event5.id, time:9715)
@Enrollment101365.save
@Enrollment101366 = Enrollment.new(user_id: @User10136.id, event_id: @Event6.id, time:13530)
@Enrollment101366.save
EnrollmentData.new(enrollment_id: @Enrollment101364.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101364.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101362.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101363.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101361.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101366.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10137 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Hannu', last_name: 'Kutvonen', username: 'user10137', email: 'user10137@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10137, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10137.save
Result.new(name: 'Hannu Kutvonen', city: 'Helsinki', group: 'Kuntokonnat 2.', year: 2014, series: 'M65', kk_number: '10137').save
@Enrollment101371 = Enrollment.new(user_id: @User10137.id, event_id: @Event1.id, time:4735)
@Enrollment101371.save
@Enrollment101372 = Enrollment.new(user_id: @User10137.id, event_id: @Event2.id, time:17949)
@Enrollment101372.save
@Enrollment101373 = Enrollment.new(user_id: @User10137.id, event_id: @Event3.id, time:9014)
@Enrollment101373.save
@Enrollment101374 = Enrollment.new(user_id: @User10137.id, event_id: @Event4.id, time:12460)
@Enrollment101374.save
@Enrollment101375 = Enrollment.new(user_id: @User10137.id, event_id: @Event5.id, time:8369)
@Enrollment101375.save
@Enrollment101376 = Enrollment.new(user_id: @User10137.id, event_id: @Event6.id, time:15313)
@Enrollment101376.save
EnrollmentData.new(enrollment_id: @Enrollment101374.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101374.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101372.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101373.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101371.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101376.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10138 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jorma', last_name: 'Löyttyniemi', username: 'user10138', email: 'user10138@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10138, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10138.save
Result.new(name: 'Jorma Löyttyniemi', city: 'Helsinki', group: 'Tervakosken Pato 2.', year: 2014, series: 'M70', kk_number: '10138').save
@Enrollment101381 = Enrollment.new(user_id: @User10138.id, event_id: @Event1.id, time:5314)
@Enrollment101381.save
@Enrollment101382 = Enrollment.new(user_id: @User10138.id, event_id: @Event2.id, time:14128)
@Enrollment101382.save
@Enrollment101383 = Enrollment.new(user_id: @User10138.id, event_id: @Event3.id, time:8348)
@Enrollment101383.save
@Enrollment101384 = Enrollment.new(user_id: @User10138.id, event_id: @Event4.id, time:14141)
@Enrollment101384.save
@Enrollment101385 = Enrollment.new(user_id: @User10138.id, event_id: @Event5.id, time:9902)
@Enrollment101385.save
@Enrollment101386 = Enrollment.new(user_id: @User10138.id, event_id: @Event6.id, time:11952)
@Enrollment101386.save
EnrollmentData.new(enrollment_id: @Enrollment101384.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101384.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101382.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101383.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101381.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101386.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10139 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Raili', last_name: 'Tonteri', username: 'user10139', email: 'user10139@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10139, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10139.save
Result.new(name: 'Raili Tonteri', city: 'Helsinki', group: 'Selän Sitkeät Seireenit', year: 2014, series: 'N50', kk_number: '10139').save
@Enrollment101391 = Enrollment.new(user_id: @User10139.id, event_id: @Event1.id, time:5939)
@Enrollment101391.save
@Enrollment101392 = Enrollment.new(user_id: @User10139.id, event_id: @Event2.id, time:13120)
@Enrollment101392.save
@Enrollment101393 = Enrollment.new(user_id: @User10139.id, event_id: @Event3.id, time:7128)
@Enrollment101393.save
@Enrollment101394 = Enrollment.new(user_id: @User10139.id, event_id: @Event4.id, time:14399)
@Enrollment101394.save
@Enrollment101395 = Enrollment.new(user_id: @User10139.id, event_id: @Event5.id, time:8935)
@Enrollment101395.save
@Enrollment101396 = Enrollment.new(user_id: @User10139.id, event_id: @Event6.id, time:15076)
@Enrollment101396.save
EnrollmentData.new(enrollment_id: @Enrollment101394.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101394.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101392.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101393.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101391.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101396.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10140 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Osmo', last_name: 'Perkamo', username: 'user10140', email: 'user10140@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10140, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10140.save
Result.new(name: 'Osmo Perkamo', city: 'Helsinki', group: 'Tuusulan Tallaajat III', year: 2014, series: 'M70', kk_number: '10140').save
@Enrollment101401 = Enrollment.new(user_id: @User10140.id, event_id: @Event1.id, time:4427)
@Enrollment101401.save
@Enrollment101402 = Enrollment.new(user_id: @User10140.id, event_id: @Event2.id, time:18360)
@Enrollment101402.save
@Enrollment101403 = Enrollment.new(user_id: @User10140.id, event_id: @Event3.id, time:10089)
@Enrollment101403.save
@Enrollment101404 = Enrollment.new(user_id: @User10140.id, event_id: @Event4.id, time:13322)
@Enrollment101404.save
@Enrollment101405 = Enrollment.new(user_id: @User10140.id, event_id: @Event5.id, time:9754)
@Enrollment101405.save
@Enrollment101406 = Enrollment.new(user_id: @User10140.id, event_id: @Event6.id, time:11943)
@Enrollment101406.save
EnrollmentData.new(enrollment_id: @Enrollment101404.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101404.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101402.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101403.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101401.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101406.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10141 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Bagh Riitta', last_name: 'von', username: 'user10141', email: 'user10141@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10141, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10141.save
Result.new(name: 'Bagh Riitta von', city: 'Helsinki', group: nil, year: 2014, series: 'N50', kk_number: '10141').save
@Enrollment101411 = Enrollment.new(user_id: @User10141.id, event_id: @Event1.id, time:5334)
@Enrollment101411.save
@Enrollment101412 = Enrollment.new(user_id: @User10141.id, event_id: @Event2.id, time:17428)
@Enrollment101412.save
@Enrollment101413 = Enrollment.new(user_id: @User10141.id, event_id: @Event3.id, time:8033)
@Enrollment101413.save
@Enrollment101414 = Enrollment.new(user_id: @User10141.id, event_id: @Event4.id, time:12170)
@Enrollment101414.save
@Enrollment101415 = Enrollment.new(user_id: @User10141.id, event_id: @Event5.id, time:9935)
@Enrollment101415.save
@Enrollment101416 = Enrollment.new(user_id: @User10141.id, event_id: @Event6.id, time:16084)
@Enrollment101416.save
EnrollmentData.new(enrollment_id: @Enrollment101414.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101414.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101412.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101413.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101411.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101416.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10142 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Airi', last_name: 'Mäkinen', username: 'user10142', email: 'user10142@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10142, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10142.save
Result.new(name: 'Airi Mäkinen', city: 'Helsinki', group: 'Uskelan Urhottaret', year: 2014, series: 'N60', kk_number: '10142').save
@Enrollment101421 = Enrollment.new(user_id: @User10142.id, event_id: @Event1.id, time:5841)
@Enrollment101421.save
@Enrollment101422 = Enrollment.new(user_id: @User10142.id, event_id: @Event2.id, time:16657)
@Enrollment101422.save
@Enrollment101423 = Enrollment.new(user_id: @User10142.id, event_id: @Event3.id, time:9088)
@Enrollment101423.save
@Enrollment101424 = Enrollment.new(user_id: @User10142.id, event_id: @Event4.id, time:12032)
@Enrollment101424.save
@Enrollment101425 = Enrollment.new(user_id: @User10142.id, event_id: @Event5.id, time:9327)
@Enrollment101425.save
@Enrollment101426 = Enrollment.new(user_id: @User10142.id, event_id: @Event6.id, time:13149)
@Enrollment101426.save
EnrollmentData.new(enrollment_id: @Enrollment101424.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101424.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101422.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101423.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101421.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101426.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10143 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Raija', last_name: 'Uurtio-Keränen', username: 'user10143', email: 'user10143@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10143, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10143.save
Result.new(name: 'Raija Uurtio-Keränen', city: 'Helsinki', group: nil, year: 2014, series: 'N50', kk_number: '10143').save
@Enrollment101431 = Enrollment.new(user_id: @User10143.id, event_id: @Event1.id, time:5419)
@Enrollment101431.save
@Enrollment101432 = Enrollment.new(user_id: @User10143.id, event_id: @Event2.id, time:13154)
@Enrollment101432.save
@Enrollment101433 = Enrollment.new(user_id: @User10143.id, event_id: @Event3.id, time:6818)
@Enrollment101433.save
@Enrollment101434 = Enrollment.new(user_id: @User10143.id, event_id: @Event4.id, time:14623)
@Enrollment101434.save
@Enrollment101435 = Enrollment.new(user_id: @User10143.id, event_id: @Event5.id, time:9591)
@Enrollment101435.save
@Enrollment101436 = Enrollment.new(user_id: @User10143.id, event_id: @Event6.id, time:20417)
@Enrollment101436.save
EnrollmentData.new(enrollment_id: @Enrollment101434.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101434.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101432.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101433.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101431.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101436.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10144 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Piia', last_name: 'Uotinen', username: 'user10144', email: 'user10144@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10144, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10144.save
Result.new(name: 'Piia Uotinen', city: 'Helsinki', group: 'Selän sitkeät sivistyneet', year: 2014, series: 'N', kk_number: '10144').save
@Enrollment101441 = Enrollment.new(user_id: @User10144.id, event_id: @Event1.id, time:5513)
@Enrollment101441.save
@Enrollment101442 = Enrollment.new(user_id: @User10144.id, event_id: @Event2.id, time:14205)
@Enrollment101442.save
@Enrollment101443 = Enrollment.new(user_id: @User10144.id, event_id: @Event3.id, time:7808)
@Enrollment101443.save
@Enrollment101444 = Enrollment.new(user_id: @User10144.id, event_id: @Event4.id, time:13584)
@Enrollment101444.save
@Enrollment101445 = Enrollment.new(user_id: @User10144.id, event_id: @Event5.id, time:10139)
@Enrollment101445.save
@Enrollment101446 = Enrollment.new(user_id: @User10144.id, event_id: @Event6.id, time:15558)
@Enrollment101446.save
EnrollmentData.new(enrollment_id: @Enrollment101444.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101444.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101442.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101443.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101441.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101446.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10145 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Soile', last_name: 'Sillanpää', username: 'user10145', email: 'user10145@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10145, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10145.save
Result.new(name: 'Soile Sillanpää', city: 'Helsinki', group: 'Espoon Etanat', year: 2014, series: 'N65', kk_number: '10145').save
@Enrollment101451 = Enrollment.new(user_id: @User10145.id, event_id: @Event1.id, time:4889)
@Enrollment101451.save
@Enrollment101452 = Enrollment.new(user_id: @User10145.id, event_id: @Event2.id, time:15336)
@Enrollment101452.save
@Enrollment101453 = Enrollment.new(user_id: @User10145.id, event_id: @Event3.id, time:8044)
@Enrollment101453.save
@Enrollment101454 = Enrollment.new(user_id: @User10145.id, event_id: @Event4.id, time:14623)
@Enrollment101454.save
@Enrollment101455 = Enrollment.new(user_id: @User10145.id, event_id: @Event5.id, time:9862)
@Enrollment101455.save
@Enrollment101456 = Enrollment.new(user_id: @User10145.id, event_id: @Event6.id, time:15057)
@Enrollment101456.save
EnrollmentData.new(enrollment_id: @Enrollment101454.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101454.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101452.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101453.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101451.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101456.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10146 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Raine', last_name: 'Jaakkola', username: 'user10146', email: 'user10146@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10146, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10146.save
Result.new(name: 'Raine Jaakkola', city: 'Helsinki', group: 'Otaniemen Jyllääjät II', year: 2014, series: 'M50', kk_number: '10146').save
@Enrollment101461 = Enrollment.new(user_id: @User10146.id, event_id: @Event1.id, time:4569)
@Enrollment101461.save
@Enrollment101462 = Enrollment.new(user_id: @User10146.id, event_id: @Event2.id, time:18203)
@Enrollment101462.save
@Enrollment101463 = Enrollment.new(user_id: @User10146.id, event_id: @Event3.id, time:10002)
@Enrollment101463.save
@Enrollment101464 = Enrollment.new(user_id: @User10146.id, event_id: @Event4.id, time:11966)
@Enrollment101464.save
@Enrollment101465 = Enrollment.new(user_id: @User10146.id, event_id: @Event5.id, time:9867)
@Enrollment101465.save
@Enrollment101466 = Enrollment.new(user_id: @User10146.id, event_id: @Event6.id, time:18100)
@Enrollment101466.save
EnrollmentData.new(enrollment_id: @Enrollment101464.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101464.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101462.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101463.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101461.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101466.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10147 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Armi', last_name: 'Yli-Karro', username: 'user10147', email: 'user10147@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10147, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10147.save
Result.new(name: 'Armi Yli-Karro', city: 'Helsinki', group: 'Rauman Kalevankiertäjät', year: 2014, series: 'N55', kk_number: '10147').save
@Enrollment101471 = Enrollment.new(user_id: @User10147.id, event_id: @Event1.id, time:5977)
@Enrollment101471.save
@Enrollment101472 = Enrollment.new(user_id: @User10147.id, event_id: @Event2.id, time:17063)
@Enrollment101472.save
@Enrollment101473 = Enrollment.new(user_id: @User10147.id, event_id: @Event3.id, time:9019)
@Enrollment101473.save
@Enrollment101474 = Enrollment.new(user_id: @User10147.id, event_id: @Event4.id, time:13473)
@Enrollment101474.save
@Enrollment101475 = Enrollment.new(user_id: @User10147.id, event_id: @Event5.id, time:9109)
@Enrollment101475.save
@Enrollment101476 = Enrollment.new(user_id: @User10147.id, event_id: @Event6.id, time:12890)
@Enrollment101476.save
EnrollmentData.new(enrollment_id: @Enrollment101474.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101474.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101472.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101473.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101471.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101476.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10148 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Rainer', last_name: 'Blomster', username: 'user10148', email: 'user10148@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10148, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10148.save
Result.new(name: 'Rainer Blomster', city: 'Helsinki', group: 'Tuusulan Tallaajat IV', year: 2014, series: 'M70', kk_number: '10148').save
@Enrollment101481 = Enrollment.new(user_id: @User10148.id, event_id: @Event1.id, time:4804)
@Enrollment101481.save
@Enrollment101482 = Enrollment.new(user_id: @User10148.id, event_id: @Event2.id, time:16337)
@Enrollment101482.save
@Enrollment101483 = Enrollment.new(user_id: @User10148.id, event_id: @Event3.id, time:11769)
@Enrollment101483.save
@Enrollment101484 = Enrollment.new(user_id: @User10148.id, event_id: @Event4.id, time:12718)
@Enrollment101484.save
@Enrollment101485 = Enrollment.new(user_id: @User10148.id, event_id: @Event5.id, time:11401)
@Enrollment101485.save
@Enrollment101486 = Enrollment.new(user_id: @User10148.id, event_id: @Event6.id, time:16530)
@Enrollment101486.save
EnrollmentData.new(enrollment_id: @Enrollment101484.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101484.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101482.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101483.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101481.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101486.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10149 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Elina', last_name: 'Tuomisto', username: 'user10149', email: 'user10149@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10149, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10149.save
Result.new(name: 'Elina Tuomisto', city: 'Helsinki', group: 'Rauman Kalevankiertäjät', year: 2014, series: 'N40', kk_number: '10149').save
@Enrollment101491 = Enrollment.new(user_id: @User10149.id, event_id: @Event1.id, time:5794)
@Enrollment101491.save
@Enrollment101492 = Enrollment.new(user_id: @User10149.id, event_id: @Event2.id, time:21143)
@Enrollment101492.save
@Enrollment101493 = Enrollment.new(user_id: @User10149.id, event_id: @Event3.id, time:8532)
@Enrollment101493.save
@Enrollment101494 = Enrollment.new(user_id: @User10149.id, event_id: @Event4.id, time:13862)
@Enrollment101494.save
@Enrollment101495 = Enrollment.new(user_id: @User10149.id, event_id: @Event5.id, time:10016)
@Enrollment101495.save
@Enrollment101496 = Enrollment.new(user_id: @User10149.id, event_id: @Event6.id, time:13284)
@Enrollment101496.save
EnrollmentData.new(enrollment_id: @Enrollment101494.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101494.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101492.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101493.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101491.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101496.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10150 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Anne-Mari', last_name: 'Kuoppala', username: 'user10150', email: 'user10150@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10150, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10150.save
Result.new(name: 'Anne-Mari Kuoppala', city: 'Helsinki', group: 'Selän Sitkeät Seireenit', year: 2014, series: 'N', kk_number: '10150').save
@Enrollment101501 = Enrollment.new(user_id: @User10150.id, event_id: @Event1.id, time:6667)
@Enrollment101501.save
@Enrollment101502 = Enrollment.new(user_id: @User10150.id, event_id: @Event2.id, time:17081)
@Enrollment101502.save
@Enrollment101503 = Enrollment.new(user_id: @User10150.id, event_id: @Event3.id, time:8242)
@Enrollment101503.save
@Enrollment101504 = Enrollment.new(user_id: @User10150.id, event_id: @Event4.id, time:14399)
@Enrollment101504.save
@Enrollment101505 = Enrollment.new(user_id: @User10150.id, event_id: @Event5.id, time:8936)
@Enrollment101505.save
@Enrollment101506 = Enrollment.new(user_id: @User10150.id, event_id: @Event6.id, time:15856)
@Enrollment101506.save
EnrollmentData.new(enrollment_id: @Enrollment101504.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101504.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101502.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101503.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101501.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101506.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10151 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Henri', last_name: 'Korhonen', username: 'user10151', email: 'user10151@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10151, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10151.save
Result.new(name: 'Henri Korhonen', city: 'Helsinki', group: 'Uskelan Urhot IV', year: 2014, series: 'M', kk_number: '10151').save
@Enrollment101511 = Enrollment.new(user_id: @User10151.id, event_id: @Event1.id, time:4671)
@Enrollment101511.save
@Enrollment101512 = Enrollment.new(user_id: @User10151.id, event_id: @Event2.id, time:45184)
@Enrollment101512.save
@Enrollment101513 = Enrollment.new(user_id: @User10151.id, event_id: @Event3.id, time:7203)
@Enrollment101513.save
@Enrollment101514 = Enrollment.new(user_id: @User10151.id, event_id: @Event4.id, time:12609)
@Enrollment101514.save
@Enrollment101515 = Enrollment.new(user_id: @User10151.id, event_id: @Event5.id, time:9858)
@Enrollment101515.save
@Enrollment101516 = Enrollment.new(user_id: @User10151.id, event_id: @Event6.id, time:16051)
@Enrollment101516.save
EnrollmentData.new(enrollment_id: @Enrollment101514.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101514.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101512.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101513.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101511.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101516.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10152 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pertti', last_name: 'Palo', username: 'user10152', email: 'user10152@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10152, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10152.save
Result.new(name: 'Pertti Palo', city: 'Helsinki', group: nil, year: 2014, series: 'M70', kk_number: '10152').save
@Enrollment101521 = Enrollment.new(user_id: @User10152.id, event_id: @Event1.id, time:5864)
@Enrollment101521.save
@Enrollment101522 = Enrollment.new(user_id: @User10152.id, event_id: @Event2.id, time:19596)
@Enrollment101522.save
@Enrollment101523 = Enrollment.new(user_id: @User10152.id, event_id: @Event3.id, time:10614)
@Enrollment101523.save
@Enrollment101524 = Enrollment.new(user_id: @User10152.id, event_id: @Event4.id, time:12382)
@Enrollment101524.save
@Enrollment101525 = Enrollment.new(user_id: @User10152.id, event_id: @Event5.id, time:10424)
@Enrollment101525.save
@Enrollment101526 = Enrollment.new(user_id: @User10152.id, event_id: @Event6.id, time:18778)
@Enrollment101526.save
EnrollmentData.new(enrollment_id: @Enrollment101524.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101524.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101522.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101523.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101521.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101526.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10153 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Veikko', last_name: 'Seppä', username: 'user10153', email: 'user10153@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10153, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10153.save
Result.new(name: 'Veikko Seppä', city: 'Helsinki', group: nil, year: 2014, series: 'M70', kk_number: '10153').save
@Enrollment101531 = Enrollment.new(user_id: @User10153.id, event_id: @Event1.id, time:5281)
@Enrollment101531.save
@Enrollment101532 = Enrollment.new(user_id: @User10153.id, event_id: @Event2.id, time:17616)
@Enrollment101532.save
@Enrollment101533 = Enrollment.new(user_id: @User10153.id, event_id: @Event3.id, time:10225)
@Enrollment101533.save
@Enrollment101534 = Enrollment.new(user_id: @User10153.id, event_id: @Event4.id, time:13932)
@Enrollment101534.save
@Enrollment101535 = Enrollment.new(user_id: @User10153.id, event_id: @Event5.id, time:13079)
@Enrollment101535.save
@Enrollment101536 = Enrollment.new(user_id: @User10153.id, event_id: @Event6.id, time:16707)
@Enrollment101536.save
EnrollmentData.new(enrollment_id: @Enrollment101534.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101534.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101532.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101533.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101531.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101536.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10154 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Terttu', last_name: 'Salonen', username: 'user10154', email: 'user10154@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10154, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10154.save
Result.new(name: 'Terttu Salonen', city: 'Helsinki', group: 'Sveitsiläiset', year: 2014, series: 'N60', kk_number: '10154').save
@Enrollment101541 = Enrollment.new(user_id: @User10154.id, event_id: @Event1.id, time:5062)
@Enrollment101541.save
@Enrollment101542 = Enrollment.new(user_id: @User10154.id, event_id: @Event2.id, time:22184)
@Enrollment101542.save
@Enrollment101543 = Enrollment.new(user_id: @User10154.id, event_id: @Event3.id, time:11256)
@Enrollment101543.save
@Enrollment101544 = Enrollment.new(user_id: @User10154.id, event_id: @Event4.id, time:12535)
@Enrollment101544.save
@Enrollment101545 = Enrollment.new(user_id: @User10154.id, event_id: @Event5.id, time:10724)
@Enrollment101545.save
@Enrollment101546 = Enrollment.new(user_id: @User10154.id, event_id: @Event6.id, time:20658)
@Enrollment101546.save
EnrollmentData.new(enrollment_id: @Enrollment101544.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101544.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101542.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101543.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101541.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101546.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10155 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ari-Pekka', last_name: 'Ojala', username: 'user10155', email: 'user10155@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10155, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10155.save
Result.new(name: 'Ari-Pekka Ojala', city: 'Helsinki', group: 'Tervakosken Pato 1.', year: 2014, series: 'M45', kk_number: '10155').save
@Enrollment101551 = Enrollment.new(user_id: @User10155.id, event_id: @Event1.id, time:3389)
@Enrollment101551.save
@Enrollment101552 = Enrollment.new(user_id: @User10155.id, event_id: @Event2.id, time:10252)
@Enrollment101552.save
@Enrollment101554 = Enrollment.new(user_id: @User10155.id, event_id: @Event4.id, time:10655)
@Enrollment101554.save
@Enrollment101555 = Enrollment.new(user_id: @User10155.id, event_id: @Event5.id, time:7029)
@Enrollment101555.save
@Enrollment101556 = Enrollment.new(user_id: @User10155.id, event_id: @Event6.id, time:6467)
@Enrollment101556.save
EnrollmentData.new(enrollment_id: @Enrollment101554.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101554.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101552.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101551.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101556.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10156 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mika', last_name: 'Lehtonen', username: 'user10156', email: 'user10156@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10156, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10156.save
Result.new(name: 'Mika Lehtonen', city: 'Helsinki', group: 'Tuusulan Tallaajat I', year: 2014, series: 'M40', kk_number: '10156').save
@Enrollment101562 = Enrollment.new(user_id: @User10156.id, event_id: @Event2.id, time:10303)
@Enrollment101562.save
@Enrollment101563 = Enrollment.new(user_id: @User10156.id, event_id: @Event3.id, time:13597)
@Enrollment101563.save
@Enrollment101564 = Enrollment.new(user_id: @User10156.id, event_id: @Event4.id, time:10399)
@Enrollment101564.save
@Enrollment101565 = Enrollment.new(user_id: @User10156.id, event_id: @Event5.id, time:6849)
@Enrollment101565.save
@Enrollment101566 = Enrollment.new(user_id: @User10156.id, event_id: @Event6.id, time:6310)
@Enrollment101566.save
EnrollmentData.new(enrollment_id: @Enrollment101564.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101564.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101562.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101563.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101566.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10157 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Samuli', last_name: 'Rantala', username: 'user10157', email: 'user10157@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10157, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10157.save
Result.new(name: 'Samuli Rantala', city: 'Helsinki', group: 'Tervakosken Pato 1.', year: 2014, series: 'M', kk_number: '10157').save
@Enrollment101571 = Enrollment.new(user_id: @User10157.id, event_id: @Event1.id, time:3713)
@Enrollment101571.save
@Enrollment101572 = Enrollment.new(user_id: @User10157.id, event_id: @Event2.id, time:8533)
@Enrollment101572.save
@Enrollment101573 = Enrollment.new(user_id: @User10157.id, event_id: @Event3.id, time:5107)
@Enrollment101573.save
@Enrollment101574 = Enrollment.new(user_id: @User10157.id, event_id: @Event4.id, time:10236)
@Enrollment101574.save
@Enrollment101575 = Enrollment.new(user_id: @User10157.id, event_id: @Event5.id, time:7429)
@Enrollment101575.save
EnrollmentData.new(enrollment_id: @Enrollment101574.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101574.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101572.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101573.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101571.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10158 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Arttu', last_name: 'Salminen', username: 'user10158', email: 'user10158@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10158, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10158.save
Result.new(name: 'Arttu Salminen', city: 'Helsinki', group: 'Viialan Viri', year: 2014, series: 'M', kk_number: '10158').save
@Enrollment101582 = Enrollment.new(user_id: @User10158.id, event_id: @Event2.id, time:18958)
@Enrollment101582.save
@Enrollment101583 = Enrollment.new(user_id: @User10158.id, event_id: @Event3.id, time:4910)
@Enrollment101583.save
@Enrollment101584 = Enrollment.new(user_id: @User10158.id, event_id: @Event4.id, time:10590)
@Enrollment101584.save
@Enrollment101585 = Enrollment.new(user_id: @User10158.id, event_id: @Event5.id, time:7387)
@Enrollment101585.save
@Enrollment101586 = Enrollment.new(user_id: @User10158.id, event_id: @Event6.id, time:7185)
@Enrollment101586.save
EnrollmentData.new(enrollment_id: @Enrollment101584.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101584.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101582.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101583.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101586.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10159 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jorma', last_name: 'Närhi', username: 'user10159', email: 'user10159@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10159, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10159.save
Result.new(name: 'Jorma Närhi', city: 'Helsinki', group: 'Sportia KT-SPORT', year: 2014, series: 'M50', kk_number: '10159').save
@Enrollment101591 = Enrollment.new(user_id: @User10159.id, event_id: @Event1.id, time:3393)
@Enrollment101591.save
@Enrollment101592 = Enrollment.new(user_id: @User10159.id, event_id: @Event2.id, time:10197)
@Enrollment101592.save
@Enrollment101593 = Enrollment.new(user_id: @User10159.id, event_id: @Event3.id, time:5510)
@Enrollment101593.save
@Enrollment101594 = Enrollment.new(user_id: @User10159.id, event_id: @Event4.id, time:10563)
@Enrollment101594.save
@Enrollment101595 = Enrollment.new(user_id: @User10159.id, event_id: @Event5.id, time:7162)
@Enrollment101595.save
EnrollmentData.new(enrollment_id: @Enrollment101594.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101594.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101592.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101593.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101591.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10160 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'matti', last_name: 'vaaja', username: 'user10160', email: 'user10160@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10160, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10160.save
Result.new(name: 'matti vaaja', city: 'Helsinki', group: 'Otaniemen Jyllääjät I', year: 2014, series: 'M', kk_number: '10160').save
@Enrollment101602 = Enrollment.new(user_id: @User10160.id, event_id: @Event2.id, time:8563)
@Enrollment101602.save
@Enrollment101603 = Enrollment.new(user_id: @User10160.id, event_id: @Event3.id, time:5595)
@Enrollment101603.save
@Enrollment101604 = Enrollment.new(user_id: @User10160.id, event_id: @Event4.id, time:10633)
@Enrollment101604.save
@Enrollment101605 = Enrollment.new(user_id: @User10160.id, event_id: @Event5.id, time:7311)
@Enrollment101605.save
@Enrollment101606 = Enrollment.new(user_id: @User10160.id, event_id: @Event6.id, time:7429)
@Enrollment101606.save
EnrollmentData.new(enrollment_id: @Enrollment101604.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101604.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101602.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101603.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101606.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10161 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Timo', last_name: 'Hellberg', username: 'user10161', email: 'user10161@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10161, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10161.save
Result.new(name: 'Timo Hellberg', city: 'Helsinki', group: 'Uskelan Urhot I', year: 2014, series: 'M50', kk_number: '10161').save
@Enrollment101611 = Enrollment.new(user_id: @User10161.id, event_id: @Event1.id, time:3651)
@Enrollment101611.save
@Enrollment101613 = Enrollment.new(user_id: @User10161.id, event_id: @Event3.id, time:6061)
@Enrollment101613.save
@Enrollment101614 = Enrollment.new(user_id: @User10161.id, event_id: @Event4.id, time:9921)
@Enrollment101614.save
@Enrollment101615 = Enrollment.new(user_id: @User10161.id, event_id: @Event5.id, time:7259)
@Enrollment101615.save
@Enrollment101616 = Enrollment.new(user_id: @User10161.id, event_id: @Event6.id, time:7508)
@Enrollment101616.save
EnrollmentData.new(enrollment_id: @Enrollment101614.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101614.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101613.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101611.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101616.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10162 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pekka', last_name: 'Valjakka', username: 'user10162', email: 'user10162@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10162, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10162.save
Result.new(name: 'Pekka Valjakka', city: 'Helsinki', group: 'Tuusulan Tallaajat I', year: 2014, series: 'M', kk_number: '10162').save
@Enrollment101621 = Enrollment.new(user_id: @User10162.id, event_id: @Event1.id, time:3380)
@Enrollment101621.save
@Enrollment101622 = Enrollment.new(user_id: @User10162.id, event_id: @Event2.id, time:10453)
@Enrollment101622.save
@Enrollment101623 = Enrollment.new(user_id: @User10162.id, event_id: @Event3.id, time:12255)
@Enrollment101623.save
@Enrollment101624 = Enrollment.new(user_id: @User10162.id, event_id: @Event4.id, time:11585)
@Enrollment101624.save
@Enrollment101626 = Enrollment.new(user_id: @User10162.id, event_id: @Event6.id, time:7339)
@Enrollment101626.save
EnrollmentData.new(enrollment_id: @Enrollment101624.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101624.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101622.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101623.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101621.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101626.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10163 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Eero', last_name: 'Kujansuu', username: 'user10163', email: 'user10163@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10163, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10163.save
Result.new(name: 'Eero Kujansuu', city: 'Helsinki', group: 'Kankaanpään Kalevankiertäjät 1', year: 2014, series: 'M45', kk_number: '10163').save
@Enrollment101631 = Enrollment.new(user_id: @User10163.id, event_id: @Event1.id, time:3702)
@Enrollment101631.save
@Enrollment101632 = Enrollment.new(user_id: @User10163.id, event_id: @Event2.id, time:11030)
@Enrollment101632.save
@Enrollment101633 = Enrollment.new(user_id: @User10163.id, event_id: @Event3.id, time:6110)
@Enrollment101633.save
@Enrollment101634 = Enrollment.new(user_id: @User10163.id, event_id: @Event4.id, time:10906)
@Enrollment101634.save
@Enrollment101636 = Enrollment.new(user_id: @User10163.id, event_id: @Event6.id, time:6774)
@Enrollment101636.save
EnrollmentData.new(enrollment_id: @Enrollment101634.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101634.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101632.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101633.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101631.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101636.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10164 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Antero', last_name: 'Korpela', username: 'user10164', email: 'user10164@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10164, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10164.save
Result.new(name: 'Antero Korpela', city: 'Helsinki', group: 'Hitaat 1', year: 2014, series: 'M', kk_number: '10164').save
@Enrollment101641 = Enrollment.new(user_id: @User10164.id, event_id: @Event1.id, time:3702)
@Enrollment101641.save
@Enrollment101643 = Enrollment.new(user_id: @User10164.id, event_id: @Event3.id, time:13987)
@Enrollment101643.save
@Enrollment101644 = Enrollment.new(user_id: @User10164.id, event_id: @Event4.id, time:11248)
@Enrollment101644.save
@Enrollment101645 = Enrollment.new(user_id: @User10164.id, event_id: @Event5.id, time:7643)
@Enrollment101645.save
@Enrollment101646 = Enrollment.new(user_id: @User10164.id, event_id: @Event6.id, time:7732)
@Enrollment101646.save
EnrollmentData.new(enrollment_id: @Enrollment101644.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101644.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101643.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101641.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101646.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10165 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jouko', last_name: 'Peipinen', username: 'user10165', email: 'user10165@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10165, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10165.save
Result.new(name: 'Jouko Peipinen', city: 'Helsinki', group: 'Tammelan Ryske', year: 2014, series: 'M55', kk_number: '10165').save
@Enrollment101651 = Enrollment.new(user_id: @User10165.id, event_id: @Event1.id, time:4270)
@Enrollment101651.save
@Enrollment101652 = Enrollment.new(user_id: @User10165.id, event_id: @Event2.id, time:11001)
@Enrollment101652.save
@Enrollment101653 = Enrollment.new(user_id: @User10165.id, event_id: @Event3.id, time:5729)
@Enrollment101653.save
@Enrollment101654 = Enrollment.new(user_id: @User10165.id, event_id: @Event4.id, time:10606)
@Enrollment101654.save
@Enrollment101655 = Enrollment.new(user_id: @User10165.id, event_id: @Event5.id, time:7916)
@Enrollment101655.save
EnrollmentData.new(enrollment_id: @Enrollment101654.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101654.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101652.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101653.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101651.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10166 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Eero', last_name: 'Pasanen', username: 'user10166', email: 'user10166@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10166, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10166.save
Result.new(name: 'Eero Pasanen', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10166').save
@Enrollment101661 = Enrollment.new(user_id: @User10166.id, event_id: @Event1.id, time:3425)
@Enrollment101661.save
@Enrollment101662 = Enrollment.new(user_id: @User10166.id, event_id: @Event2.id, time:10909)
@Enrollment101662.save
@Enrollment101663 = Enrollment.new(user_id: @User10166.id, event_id: @Event3.id, time:8228)
@Enrollment101663.save
@Enrollment101664 = Enrollment.new(user_id: @User10166.id, event_id: @Event4.id, time:10553)
@Enrollment101664.save
@Enrollment101665 = Enrollment.new(user_id: @User10166.id, event_id: @Event5.id, time:7737)
@Enrollment101665.save
EnrollmentData.new(enrollment_id: @Enrollment101664.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101664.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101662.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101663.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101661.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10167 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jorma', last_name: 'Pöyry', username: 'user10167', email: 'user10167@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10167, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10167.save
Result.new(name: 'Jorma Pöyry', city: 'Helsinki', group: 'Selän Sitkeät 1.', year: 2014, series: 'M55', kk_number: '10167').save
@Enrollment101671 = Enrollment.new(user_id: @User10167.id, event_id: @Event1.id, time:3476)
@Enrollment101671.save
@Enrollment101672 = Enrollment.new(user_id: @User10167.id, event_id: @Event2.id, time:24723)
@Enrollment101672.save
@Enrollment101674 = Enrollment.new(user_id: @User10167.id, event_id: @Event4.id, time:10749)
@Enrollment101674.save
@Enrollment101675 = Enrollment.new(user_id: @User10167.id, event_id: @Event5.id, time:8265)
@Enrollment101675.save
@Enrollment101676 = Enrollment.new(user_id: @User10167.id, event_id: @Event6.id, time:10724)
@Enrollment101676.save
EnrollmentData.new(enrollment_id: @Enrollment101674.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101674.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101672.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101671.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101676.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10168 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jyrki', last_name: 'Määttä', username: 'user10168', email: 'user10168@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10168, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10168.save
Result.new(name: 'Jyrki Määttä', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10168').save
@Enrollment101681 = Enrollment.new(user_id: @User10168.id, event_id: @Event1.id, time:3883)
@Enrollment101681.save
@Enrollment101682 = Enrollment.new(user_id: @User10168.id, event_id: @Event2.id, time:12531)
@Enrollment101682.save
@Enrollment101683 = Enrollment.new(user_id: @User10168.id, event_id: @Event3.id, time:6291)
@Enrollment101683.save
@Enrollment101684 = Enrollment.new(user_id: @User10168.id, event_id: @Event4.id, time:11784)
@Enrollment101684.save
@Enrollment101686 = Enrollment.new(user_id: @User10168.id, event_id: @Event6.id, time:8696)
@Enrollment101686.save
EnrollmentData.new(enrollment_id: @Enrollment101684.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101684.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101682.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101683.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101681.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101686.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10169 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markus', last_name: 'Kantola', username: 'user10169', email: 'user10169@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10169, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10169.save
Result.new(name: 'Markus Kantola', city: 'Helsinki', group: 'CCRT', year: 2014, series: 'M45', kk_number: '10169').save
@Enrollment101691 = Enrollment.new(user_id: @User10169.id, event_id: @Event1.id, time:3646)
@Enrollment101691.save
@Enrollment101692 = Enrollment.new(user_id: @User10169.id, event_id: @Event2.id, time:10527)
@Enrollment101692.save
@Enrollment101693 = Enrollment.new(user_id: @User10169.id, event_id: @Event3.id, time:5674)
@Enrollment101693.save
@Enrollment101695 = Enrollment.new(user_id: @User10169.id, event_id: @Event5.id, time:7584)
@Enrollment101695.save
@Enrollment101696 = Enrollment.new(user_id: @User10169.id, event_id: @Event6.id, time:15139)
@Enrollment101696.save
EnrollmentData.new(enrollment_id: @Enrollment101692.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101693.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101691.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101696.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10170 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Rantanen', username: 'user10170', email: 'user10170@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10170, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10170.save
Result.new(name: 'Juha Rantanen', city: 'Helsinki', group: 'Hitaat 1', year: 2014, series: 'M', kk_number: '10170').save
@Enrollment101701 = Enrollment.new(user_id: @User10170.id, event_id: @Event1.id, time:3825)
@Enrollment101701.save
@Enrollment101702 = Enrollment.new(user_id: @User10170.id, event_id: @Event2.id, time:11394)
@Enrollment101702.save
@Enrollment101704 = Enrollment.new(user_id: @User10170.id, event_id: @Event4.id, time:10681)
@Enrollment101704.save
@Enrollment101705 = Enrollment.new(user_id: @User10170.id, event_id: @Event5.id, time:7473)
@Enrollment101705.save
@Enrollment101706 = Enrollment.new(user_id: @User10170.id, event_id: @Event6.id, time:13103)
@Enrollment101706.save
EnrollmentData.new(enrollment_id: @Enrollment101704.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101704.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101702.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101701.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101706.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10171 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tuomas', last_name: 'Kesti', username: 'user10171', email: 'user10171@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10171, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10171.save
Result.new(name: 'Tuomas Kesti', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10171').save
@Enrollment101711 = Enrollment.new(user_id: @User10171.id, event_id: @Event1.id, time:4274)
@Enrollment101711.save
@Enrollment101712 = Enrollment.new(user_id: @User10171.id, event_id: @Event2.id, time:23640)
@Enrollment101712.save
@Enrollment101713 = Enrollment.new(user_id: @User10171.id, event_id: @Event3.id, time:7032)
@Enrollment101713.save
@Enrollment101715 = Enrollment.new(user_id: @User10171.id, event_id: @Event5.id, time:7142)
@Enrollment101715.save
@Enrollment101716 = Enrollment.new(user_id: @User10171.id, event_id: @Event6.id, time:8595)
@Enrollment101716.save
EnrollmentData.new(enrollment_id: @Enrollment101712.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101713.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101711.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101716.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10172 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markku', last_name: 'Vilén', username: 'user10172', email: 'user10172@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10172, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10172.save
Result.new(name: 'Markku Vilén', city: 'Helsinki', group: 'Uskelan Urhot III', year: 2014, series: 'M50', kk_number: '10172').save
@Enrollment101721 = Enrollment.new(user_id: @User10172.id, event_id: @Event1.id, time:4205)
@Enrollment101721.save
@Enrollment101722 = Enrollment.new(user_id: @User10172.id, event_id: @Event2.id, time:11812)
@Enrollment101722.save
@Enrollment101723 = Enrollment.new(user_id: @User10172.id, event_id: @Event3.id, time:6987)
@Enrollment101723.save
@Enrollment101724 = Enrollment.new(user_id: @User10172.id, event_id: @Event4.id, time:10446)
@Enrollment101724.save
@Enrollment101725 = Enrollment.new(user_id: @User10172.id, event_id: @Event5.id, time:8143)
@Enrollment101725.save
EnrollmentData.new(enrollment_id: @Enrollment101724.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101724.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101722.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101723.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101721.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10173 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Lasse', last_name: 'Mikkelsson', username: 'user10173', email: 'user10173@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10173, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10173.save
Result.new(name: 'Lasse Mikkelsson', city: 'Helsinki', group: 'Pajulahti', year: 2014, series: 'M55', kk_number: '10173').save
@Enrollment101731 = Enrollment.new(user_id: @User10173.id, event_id: @Event1.id, time:4194)
@Enrollment101731.save
@Enrollment101733 = Enrollment.new(user_id: @User10173.id, event_id: @Event3.id, time:6228)
@Enrollment101733.save
@Enrollment101734 = Enrollment.new(user_id: @User10173.id, event_id: @Event4.id, time:10742)
@Enrollment101734.save
@Enrollment101735 = Enrollment.new(user_id: @User10173.id, event_id: @Event5.id, time:7950)
@Enrollment101735.save
@Enrollment101736 = Enrollment.new(user_id: @User10173.id, event_id: @Event6.id, time:11138)
@Enrollment101736.save
EnrollmentData.new(enrollment_id: @Enrollment101734.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101734.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101733.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101731.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101736.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10174 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Lars', last_name: 'Svenskberg', username: 'user10174', email: 'user10174@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10174, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10174.save
Result.new(name: 'Lars Svenskberg', city: 'Helsinki', group: 'KK Länsi-Uusimaa 1', year: 2014, series: 'M60', kk_number: '10174').save
@Enrollment101741 = Enrollment.new(user_id: @User10174.id, event_id: @Event1.id, time:3845)
@Enrollment101741.save
@Enrollment101742 = Enrollment.new(user_id: @User10174.id, event_id: @Event2.id, time:13335)
@Enrollment101742.save
@Enrollment101743 = Enrollment.new(user_id: @User10174.id, event_id: @Event3.id, time:6640)
@Enrollment101743.save
@Enrollment101744 = Enrollment.new(user_id: @User10174.id, event_id: @Event4.id, time:10528)
@Enrollment101744.save
@Enrollment101746 = Enrollment.new(user_id: @User10174.id, event_id: @Event6.id, time:13126)
@Enrollment101746.save
EnrollmentData.new(enrollment_id: @Enrollment101744.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101744.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101742.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101743.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101741.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101746.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10175 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jarmo', last_name: 'Valli', username: 'user10175', email: 'user10175@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10175, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10175.save
Result.new(name: 'Jarmo Valli', city: 'Helsinki', group: 'Uskelan Urhot I', year: 2014, series: 'M50', kk_number: '10175').save
@Enrollment101753 = Enrollment.new(user_id: @User10175.id, event_id: @Event3.id, time:14136)
@Enrollment101753.save
@Enrollment101754 = Enrollment.new(user_id: @User10175.id, event_id: @Event4.id, time:9823)
@Enrollment101754.save
@Enrollment101755 = Enrollment.new(user_id: @User10175.id, event_id: @Event5.id, time:6908)
@Enrollment101755.save
@Enrollment101756 = Enrollment.new(user_id: @User10175.id, event_id: @Event6.id, time:6674)
@Enrollment101756.save
EnrollmentData.new(enrollment_id: @Enrollment101754.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101754.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101753.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101756.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10176 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Sami', last_name: 'Sipilä', username: 'user10176', email: 'user10176@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10176, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10176.save
Result.new(name: 'Sami Sipilä', city: 'Helsinki', group: 'SM MAANPÄÄ ', year: 2014, series: 'M40', kk_number: '10176').save
@Enrollment101761 = Enrollment.new(user_id: @User10176.id, event_id: @Event1.id, time:4130)
@Enrollment101761.save
@Enrollment101762 = Enrollment.new(user_id: @User10176.id, event_id: @Event2.id, time:12087)
@Enrollment101762.save
@Enrollment101763 = Enrollment.new(user_id: @User10176.id, event_id: @Event3.id, time:6194)
@Enrollment101763.save
@Enrollment101765 = Enrollment.new(user_id: @User10176.id, event_id: @Event5.id, time:8578)
@Enrollment101765.save
@Enrollment101766 = Enrollment.new(user_id: @User10176.id, event_id: @Event6.id, time:8112)
@Enrollment101766.save
EnrollmentData.new(enrollment_id: @Enrollment101762.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101763.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101761.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101766.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10177 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Erkki', last_name: 'Helminen', username: 'user10177', email: 'user10177@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10177, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10177.save
Result.new(name: 'Erkki Helminen', city: 'Helsinki', group: 'Tuusulan Tallaajat II', year: 2014, series: 'M60', kk_number: '10177').save
@Enrollment101771 = Enrollment.new(user_id: @User10177.id, event_id: @Event1.id, time:4181)
@Enrollment101771.save
@Enrollment101772 = Enrollment.new(user_id: @User10177.id, event_id: @Event2.id, time:14061)
@Enrollment101772.save
@Enrollment101773 = Enrollment.new(user_id: @User10177.id, event_id: @Event3.id, time:6428)
@Enrollment101773.save
@Enrollment101774 = Enrollment.new(user_id: @User10177.id, event_id: @Event4.id, time:10812)
@Enrollment101774.save
@Enrollment101775 = Enrollment.new(user_id: @User10177.id, event_id: @Event5.id, time:8178)
@Enrollment101775.save
EnrollmentData.new(enrollment_id: @Enrollment101774.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101774.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101772.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101773.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101771.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10178 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Teemu', last_name: 'Tukiainen', username: 'user10178', email: 'user10178@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10178, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10178.save
Result.new(name: 'Teemu Tukiainen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10178').save
@Enrollment101781 = Enrollment.new(user_id: @User10178.id, event_id: @Event1.id, time:4521)
@Enrollment101781.save
@Enrollment101782 = Enrollment.new(user_id: @User10178.id, event_id: @Event2.id, time:13956)
@Enrollment101782.save
@Enrollment101783 = Enrollment.new(user_id: @User10178.id, event_id: @Event3.id, time:11834)
@Enrollment101783.save
@Enrollment101784 = Enrollment.new(user_id: @User10178.id, event_id: @Event4.id, time:12591)
@Enrollment101784.save
@Enrollment101786 = Enrollment.new(user_id: @User10178.id, event_id: @Event6.id, time:7580)
@Enrollment101786.save
EnrollmentData.new(enrollment_id: @Enrollment101784.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101784.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101782.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101783.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101781.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101786.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10179 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Lauri', last_name: 'Supponen', username: 'user10179', email: 'user10179@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10179, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10179.save
Result.new(name: 'Lauri Supponen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10179').save
@Enrollment101791 = Enrollment.new(user_id: @User10179.id, event_id: @Event1.id, time:4089)
@Enrollment101791.save
@Enrollment101792 = Enrollment.new(user_id: @User10179.id, event_id: @Event2.id, time:13147)
@Enrollment101792.save
@Enrollment101793 = Enrollment.new(user_id: @User10179.id, event_id: @Event3.id, time:5752)
@Enrollment101793.save
@Enrollment101795 = Enrollment.new(user_id: @User10179.id, event_id: @Event5.id, time:8358)
@Enrollment101795.save
@Enrollment101796 = Enrollment.new(user_id: @User10179.id, event_id: @Event6.id, time:9615)
@Enrollment101796.save
EnrollmentData.new(enrollment_id: @Enrollment101792.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101793.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101791.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101796.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10180 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pasi', last_name: 'Uotinen', username: 'user10180', email: 'user10180@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10180, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10180.save
Result.new(name: 'Pasi Uotinen', city: 'Helsinki', group: 'Selän sitkeät ruostumattomat', year: 2014, series: 'M40', kk_number: '10180').save
@Enrollment101801 = Enrollment.new(user_id: @User10180.id, event_id: @Event1.id, time:4093)
@Enrollment101801.save
@Enrollment101803 = Enrollment.new(user_id: @User10180.id, event_id: @Event3.id, time:7141)
@Enrollment101803.save
@Enrollment101804 = Enrollment.new(user_id: @User10180.id, event_id: @Event4.id, time:12015)
@Enrollment101804.save
@Enrollment101805 = Enrollment.new(user_id: @User10180.id, event_id: @Event5.id, time:8368)
@Enrollment101805.save
@Enrollment101806 = Enrollment.new(user_id: @User10180.id, event_id: @Event6.id, time:9070)
@Enrollment101806.save
EnrollmentData.new(enrollment_id: @Enrollment101804.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101804.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101803.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101801.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101806.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10181 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ossi', last_name: 'Karjalainen', username: 'user10181', email: 'user10181@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10181, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10181.save
Result.new(name: 'Ossi Karjalainen', city: 'Helsinki', group: 'GSK', year: 2014, series: 'M55', kk_number: '10181').save
@Enrollment101811 = Enrollment.new(user_id: @User10181.id, event_id: @Event1.id, time:3892)
@Enrollment101811.save
@Enrollment101812 = Enrollment.new(user_id: @User10181.id, event_id: @Event2.id, time:11725)
@Enrollment101812.save
@Enrollment101814 = Enrollment.new(user_id: @User10181.id, event_id: @Event4.id, time:11680)
@Enrollment101814.save
@Enrollment101815 = Enrollment.new(user_id: @User10181.id, event_id: @Event5.id, time:8319)
@Enrollment101815.save
@Enrollment101816 = Enrollment.new(user_id: @User10181.id, event_id: @Event6.id, time:10810)
@Enrollment101816.save
EnrollmentData.new(enrollment_id: @Enrollment101814.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101814.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101812.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101811.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101816.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10182 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Rauno', last_name: 'Lahti', username: 'user10182', email: 'user10182@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10182, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10182.save
Result.new(name: 'Rauno Lahti', city: 'Helsinki', group: 'Reilut Miehet Havumetsien', year: 2014, series: 'M50', kk_number: '10182').save
@Enrollment101821 = Enrollment.new(user_id: @User10182.id, event_id: @Event1.id, time:4532)
@Enrollment101821.save
@Enrollment101822 = Enrollment.new(user_id: @User10182.id, event_id: @Event2.id, time:13125)
@Enrollment101822.save
@Enrollment101823 = Enrollment.new(user_id: @User10182.id, event_id: @Event3.id, time:14027)
@Enrollment101823.save
@Enrollment101824 = Enrollment.new(user_id: @User10182.id, event_id: @Event4.id, time:11848)
@Enrollment101824.save
@Enrollment101825 = Enrollment.new(user_id: @User10182.id, event_id: @Event5.id, time:8491)
@Enrollment101825.save
EnrollmentData.new(enrollment_id: @Enrollment101824.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101824.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101822.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101823.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101821.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10183 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pauli', last_name: 'Rantanen', username: 'user10183', email: 'user10183@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10183, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10183.save
Result.new(name: 'Pauli Rantanen', city: 'Helsinki', group: 'Hitaat 2', year: 2014, series: 'M55', kk_number: '10183').save
@Enrollment101831 = Enrollment.new(user_id: @User10183.id, event_id: @Event1.id, time:4164)
@Enrollment101831.save
@Enrollment101832 = Enrollment.new(user_id: @User10183.id, event_id: @Event2.id, time:11773)
@Enrollment101832.save
@Enrollment101834 = Enrollment.new(user_id: @User10183.id, event_id: @Event4.id, time:10681)
@Enrollment101834.save
@Enrollment101835 = Enrollment.new(user_id: @User10183.id, event_id: @Event5.id, time:9383)
@Enrollment101835.save
@Enrollment101836 = Enrollment.new(user_id: @User10183.id, event_id: @Event6.id, time:10411)
@Enrollment101836.save
EnrollmentData.new(enrollment_id: @Enrollment101834.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101834.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101832.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101831.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101836.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10184 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Lauri', last_name: 'Markelin', username: 'user10184', email: 'user10184@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10184, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10184.save
Result.new(name: 'Lauri Markelin', city: 'Helsinki', group: 'Otaniemen Jyllääjät II', year: 2014, series: 'M', kk_number: '10184').save
@Enrollment101841 = Enrollment.new(user_id: @User10184.id, event_id: @Event1.id, time:4472)
@Enrollment101841.save
@Enrollment101842 = Enrollment.new(user_id: @User10184.id, event_id: @Event2.id, time:13088)
@Enrollment101842.save
@Enrollment101843 = Enrollment.new(user_id: @User10184.id, event_id: @Event3.id, time:13081)
@Enrollment101843.save
@Enrollment101845 = Enrollment.new(user_id: @User10184.id, event_id: @Event5.id, time:8907)
@Enrollment101845.save
@Enrollment101846 = Enrollment.new(user_id: @User10184.id, event_id: @Event6.id, time:8981)
@Enrollment101846.save
EnrollmentData.new(enrollment_id: @Enrollment101842.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101843.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101841.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101846.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10185 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Lauri', last_name: 'Österman', username: 'user10185', email: 'user10185@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10185, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10185.save
Result.new(name: 'Lauri Österman', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10185').save
@Enrollment101851 = Enrollment.new(user_id: @User10185.id, event_id: @Event1.id, time:4888)
@Enrollment101851.save
@Enrollment101852 = Enrollment.new(user_id: @User10185.id, event_id: @Event2.id, time:12778)
@Enrollment101852.save
@Enrollment101854 = Enrollment.new(user_id: @User10185.id, event_id: @Event4.id, time:12496)
@Enrollment101854.save
@Enrollment101855 = Enrollment.new(user_id: @User10185.id, event_id: @Event5.id, time:7422)
@Enrollment101855.save
@Enrollment101856 = Enrollment.new(user_id: @User10185.id, event_id: @Event6.id, time:7723)
@Enrollment101856.save
EnrollmentData.new(enrollment_id: @Enrollment101854.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101854.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101852.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101851.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101856.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10186 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jussi', last_name: 'Johansson', username: 'user10186', email: 'user10186@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10186, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10186.save
Result.new(name: 'Jussi Johansson', city: 'Helsinki', group: 'Viialan Viri', year: 2014, series: 'M', kk_number: '10186').save
@Enrollment101861 = Enrollment.new(user_id: @User10186.id, event_id: @Event1.id, time:3686)
@Enrollment101861.save
@Enrollment101862 = Enrollment.new(user_id: @User10186.id, event_id: @Event2.id, time:11198)
@Enrollment101862.save
@Enrollment101863 = Enrollment.new(user_id: @User10186.id, event_id: @Event3.id, time:6546)
@Enrollment101863.save
@Enrollment101864 = Enrollment.new(user_id: @User10186.id, event_id: @Event4.id, time:13575)
@Enrollment101864.save
@Enrollment101865 = Enrollment.new(user_id: @User10186.id, event_id: @Event5.id, time:9495)
@Enrollment101865.save
EnrollmentData.new(enrollment_id: @Enrollment101864.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101864.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101862.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101863.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101861.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10187 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Osmo', last_name: 'Kiiski', username: 'user10187', email: 'user10187@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10187, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10187.save
Result.new(name: 'Osmo Kiiski', city: 'Helsinki', group: nil, year: 2014, series: 'M70', kk_number: '10187').save
@Enrollment101871 = Enrollment.new(user_id: @User10187.id, event_id: @Event1.id, time:3992)
@Enrollment101871.save
@Enrollment101873 = Enrollment.new(user_id: @User10187.id, event_id: @Event3.id, time:8325)
@Enrollment101873.save
@Enrollment101874 = Enrollment.new(user_id: @User10187.id, event_id: @Event4.id, time:12729)
@Enrollment101874.save
@Enrollment101875 = Enrollment.new(user_id: @User10187.id, event_id: @Event5.id, time:8981)
@Enrollment101875.save
@Enrollment101876 = Enrollment.new(user_id: @User10187.id, event_id: @Event6.id, time:8937)
@Enrollment101876.save
EnrollmentData.new(enrollment_id: @Enrollment101874.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101874.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101873.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101871.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101876.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10188 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jussi', last_name: 'Heikkinen', username: 'user10188', email: 'user10188@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10188, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10188.save
Result.new(name: 'Jussi Heikkinen', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10188').save
@Enrollment101881 = Enrollment.new(user_id: @User10188.id, event_id: @Event1.id, time:3646)
@Enrollment101881.save
@Enrollment101882 = Enrollment.new(user_id: @User10188.id, event_id: @Event2.id, time:14049)
@Enrollment101882.save
@Enrollment101883 = Enrollment.new(user_id: @User10188.id, event_id: @Event3.id, time:8304)
@Enrollment101883.save
@Enrollment101885 = Enrollment.new(user_id: @User10188.id, event_id: @Event5.id, time:8066)
@Enrollment101885.save
@Enrollment101886 = Enrollment.new(user_id: @User10188.id, event_id: @Event6.id, time:11243)
@Enrollment101886.save
EnrollmentData.new(enrollment_id: @Enrollment101882.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101883.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101881.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101886.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10189 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Eero', last_name: 'Särkilahti', username: 'user10189', email: 'user10189@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10189, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10189.save
Result.new(name: 'Eero Särkilahti', city: 'Helsinki', group: 'ERRY ', year: 2014, series: 'M', kk_number: '10189').save
@Enrollment101891 = Enrollment.new(user_id: @User10189.id, event_id: @Event1.id, time:5727)
@Enrollment101891.save
@Enrollment101892 = Enrollment.new(user_id: @User10189.id, event_id: @Event2.id, time:12728)
@Enrollment101892.save
@Enrollment101893 = Enrollment.new(user_id: @User10189.id, event_id: @Event3.id, time:5910)
@Enrollment101893.save
@Enrollment101894 = Enrollment.new(user_id: @User10189.id, event_id: @Event4.id, time:11744)
@Enrollment101894.save
@Enrollment101896 = Enrollment.new(user_id: @User10189.id, event_id: @Event6.id, time:8591)
@Enrollment101896.save
EnrollmentData.new(enrollment_id: @Enrollment101894.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101894.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101892.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101893.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101891.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101896.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10190 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jari', last_name: 'Johansson', username: 'user10190', email: 'user10190@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10190, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10190.save
Result.new(name: 'Jari Johansson', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10190').save
@Enrollment101901 = Enrollment.new(user_id: @User10190.id, event_id: @Event1.id, time:4151)
@Enrollment101901.save
@Enrollment101902 = Enrollment.new(user_id: @User10190.id, event_id: @Event2.id, time:12310)
@Enrollment101902.save
@Enrollment101903 = Enrollment.new(user_id: @User10190.id, event_id: @Event3.id, time:6445)
@Enrollment101903.save
@Enrollment101904 = Enrollment.new(user_id: @User10190.id, event_id: @Event4.id, time:13575)
@Enrollment101904.save
@Enrollment101905 = Enrollment.new(user_id: @User10190.id, event_id: @Event5.id, time:9044)
@Enrollment101905.save
EnrollmentData.new(enrollment_id: @Enrollment101904.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101904.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101902.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101903.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101901.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10191 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tapio', last_name: 'Heikkilä', username: 'user10191', email: 'user10191@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10191, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10191.save
Result.new(name: 'Tapio Heikkilä', city: 'Helsinki', group: 'Hitaat 1', year: 2014, series: 'M60', kk_number: '10191').save
@Enrollment101911 = Enrollment.new(user_id: @User10191.id, event_id: @Event1.id, time:4965)
@Enrollment101911.save
@Enrollment101913 = Enrollment.new(user_id: @User10191.id, event_id: @Event3.id, time:6834)
@Enrollment101913.save
@Enrollment101914 = Enrollment.new(user_id: @User10191.id, event_id: @Event4.id, time:12145)
@Enrollment101914.save
@Enrollment101915 = Enrollment.new(user_id: @User10191.id, event_id: @Event5.id, time:8830)
@Enrollment101915.save
@Enrollment101916 = Enrollment.new(user_id: @User10191.id, event_id: @Event6.id, time:10317)
@Enrollment101916.save
EnrollmentData.new(enrollment_id: @Enrollment101914.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101914.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101913.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101911.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101916.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10192 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tuomas', last_name: 'Särkilahti', username: 'user10192', email: 'user10192@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10192, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10192.save
Result.new(name: 'Tuomas Särkilahti', city: 'Helsinki', group: 'ERRY ', year: 2014, series: 'M45', kk_number: '10192').save
@Enrollment101921 = Enrollment.new(user_id: @User10192.id, event_id: @Event1.id, time:4280)
@Enrollment101921.save
@Enrollment101922 = Enrollment.new(user_id: @User10192.id, event_id: @Event2.id, time:12660)
@Enrollment101922.save
@Enrollment101923 = Enrollment.new(user_id: @User10192.id, event_id: @Event3.id, time:7394)
@Enrollment101923.save
@Enrollment101924 = Enrollment.new(user_id: @User10192.id, event_id: @Event4.id, time:11744)
@Enrollment101924.save
@Enrollment101926 = Enrollment.new(user_id: @User10192.id, event_id: @Event6.id, time:12625)
@Enrollment101926.save
EnrollmentData.new(enrollment_id: @Enrollment101924.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101924.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101922.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101923.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101921.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101926.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10193 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pekka', last_name: 'Snellman', username: 'user10193', email: 'user10193@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10193, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10193.save
Result.new(name: 'Pekka Snellman', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10193').save
@Enrollment101931 = Enrollment.new(user_id: @User10193.id, event_id: @Event1.id, time:4157)
@Enrollment101931.save
@Enrollment101932 = Enrollment.new(user_id: @User10193.id, event_id: @Event2.id, time:17602)
@Enrollment101932.save
@Enrollment101933 = Enrollment.new(user_id: @User10193.id, event_id: @Event3.id, time:6661)
@Enrollment101933.save
@Enrollment101935 = Enrollment.new(user_id: @User10193.id, event_id: @Event5.id, time:7916)
@Enrollment101935.save
@Enrollment101936 = Enrollment.new(user_id: @User10193.id, event_id: @Event6.id, time:11463)
@Enrollment101936.save
EnrollmentData.new(enrollment_id: @Enrollment101932.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101933.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101931.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101936.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10194 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jouni', last_name: 'Heliste', username: 'user10194', email: 'user10194@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10194, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10194.save
Result.new(name: 'Jouni Heliste', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10194').save
@Enrollment101941 = Enrollment.new(user_id: @User10194.id, event_id: @Event1.id, time:5190)
@Enrollment101941.save
@Enrollment101942 = Enrollment.new(user_id: @User10194.id, event_id: @Event2.id, time:12296)
@Enrollment101942.save
@Enrollment101943 = Enrollment.new(user_id: @User10194.id, event_id: @Event3.id, time:6433)
@Enrollment101943.save
@Enrollment101944 = Enrollment.new(user_id: @User10194.id, event_id: @Event4.id, time:11631)
@Enrollment101944.save
@Enrollment101945 = Enrollment.new(user_id: @User10194.id, event_id: @Event5.id, time:9148)
@Enrollment101945.save
EnrollmentData.new(enrollment_id: @Enrollment101944.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101944.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101942.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101943.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101941.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10195 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tom', last_name: 'Vihonen', username: 'user10195', email: 'user10195@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10195, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10195.save
Result.new(name: 'Tom Vihonen', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10195').save
@Enrollment101951 = Enrollment.new(user_id: @User10195.id, event_id: @Event1.id, time:4480)
@Enrollment101951.save
@Enrollment101952 = Enrollment.new(user_id: @User10195.id, event_id: @Event2.id, time:16292)
@Enrollment101952.save
@Enrollment101953 = Enrollment.new(user_id: @User10195.id, event_id: @Event3.id, time:13539)
@Enrollment101953.save
@Enrollment101954 = Enrollment.new(user_id: @User10195.id, event_id: @Event4.id, time:11461)
@Enrollment101954.save
@Enrollment101955 = Enrollment.new(user_id: @User10195.id, event_id: @Event5.id, time:9915)
@Enrollment101955.save
EnrollmentData.new(enrollment_id: @Enrollment101954.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101954.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101952.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101953.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101951.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10196 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Heli', last_name: 'Hakala', username: 'user10196', email: 'user10196@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10196, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10196.save
Result.new(name: 'Heli Hakala', city: 'Helsinki', group: 'KK Länsi-Uusimaa 2', year: 2014, series: 'N', kk_number: '10196').save
@Enrollment101961 = Enrollment.new(user_id: @User10196.id, event_id: @Event1.id, time:4759)
@Enrollment101961.save
@Enrollment101963 = Enrollment.new(user_id: @User10196.id, event_id: @Event3.id, time:7542)
@Enrollment101963.save
@Enrollment101964 = Enrollment.new(user_id: @User10196.id, event_id: @Event4.id, time:12332)
@Enrollment101964.save
@Enrollment101965 = Enrollment.new(user_id: @User10196.id, event_id: @Event5.id, time:7913)
@Enrollment101965.save
@Enrollment101966 = Enrollment.new(user_id: @User10196.id, event_id: @Event6.id, time:15471)
@Enrollment101966.save
EnrollmentData.new(enrollment_id: @Enrollment101964.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101964.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101963.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101961.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101966.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10197 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kalevi', last_name: 'Vikman', username: 'user10197', email: 'user10197@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10197, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10197.save
Result.new(name: 'Kalevi Vikman', city: 'Helsinki', group: 'Tuusulan Tallaajat III', year: 2014, series: 'M65', kk_number: '10197').save
@Enrollment101971 = Enrollment.new(user_id: @User10197.id, event_id: @Event1.id, time:4179)
@Enrollment101971.save
@Enrollment101972 = Enrollment.new(user_id: @User10197.id, event_id: @Event2.id, time:14785)
@Enrollment101972.save
@Enrollment101973 = Enrollment.new(user_id: @User10197.id, event_id: @Event3.id, time:9116)
@Enrollment101973.save
@Enrollment101974 = Enrollment.new(user_id: @User10197.id, event_id: @Event4.id, time:11170)
@Enrollment101974.save
@Enrollment101975 = Enrollment.new(user_id: @User10197.id, event_id: @Event5.id, time:9535)
@Enrollment101975.save
EnrollmentData.new(enrollment_id: @Enrollment101974.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101974.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101972.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101973.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101971.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10198 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ilmo', last_name: 'Liukko', username: 'user10198', email: 'user10198@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10198, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10198.save
Result.new(name: 'Ilmo Liukko', city: 'Helsinki', group: 'Kuntokonnat 2.', year: 2014, series: 'M70', kk_number: '10198').save
@Enrollment101981 = Enrollment.new(user_id: @User10198.id, event_id: @Event1.id, time:4150)
@Enrollment101981.save
@Enrollment101983 = Enrollment.new(user_id: @User10198.id, event_id: @Event3.id, time:18733)
@Enrollment101983.save
@Enrollment101984 = Enrollment.new(user_id: @User10198.id, event_id: @Event4.id, time:12460)
@Enrollment101984.save
@Enrollment101985 = Enrollment.new(user_id: @User10198.id, event_id: @Event5.id, time:8110)
@Enrollment101985.save
@Enrollment101986 = Enrollment.new(user_id: @User10198.id, event_id: @Event6.id, time:15951)
@Enrollment101986.save
EnrollmentData.new(enrollment_id: @Enrollment101984.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101984.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101983.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101981.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101986.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10199 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Reino', last_name: 'Uusitalo', username: 'user10199', email: 'user10199@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10199, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10199.save
Result.new(name: 'Reino Uusitalo', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10199').save
@Enrollment101991 = Enrollment.new(user_id: @User10199.id, event_id: @Event1.id, time:4882)
@Enrollment101991.save
@Enrollment101993 = Enrollment.new(user_id: @User10199.id, event_id: @Event3.id, time:14137)
@Enrollment101993.save
@Enrollment101994 = Enrollment.new(user_id: @User10199.id, event_id: @Event4.id, time:12602)
@Enrollment101994.save
@Enrollment101995 = Enrollment.new(user_id: @User10199.id, event_id: @Event5.id, time:9873)
@Enrollment101995.save
@Enrollment101996 = Enrollment.new(user_id: @User10199.id, event_id: @Event6.id, time:11993)
@Enrollment101996.save
EnrollmentData.new(enrollment_id: @Enrollment101994.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101994.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101993.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101991.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101996.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10200 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jani', last_name: 'Kaljunen', username: 'user10200', email: 'user10200@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10200, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10200.save
Result.new(name: 'Jani Kaljunen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10200').save
@Enrollment102001 = Enrollment.new(user_id: @User10200.id, event_id: @Event1.id, time:5185)
@Enrollment102001.save
@Enrollment102002 = Enrollment.new(user_id: @User10200.id, event_id: @Event2.id, time:31799)
@Enrollment102002.save
@Enrollment102003 = Enrollment.new(user_id: @User10200.id, event_id: @Event3.id, time:7225)
@Enrollment102003.save
@Enrollment102004 = Enrollment.new(user_id: @User10200.id, event_id: @Event4.id, time:12187)
@Enrollment102004.save
@Enrollment102005 = Enrollment.new(user_id: @User10200.id, event_id: @Event5.id, time:8618)
@Enrollment102005.save
EnrollmentData.new(enrollment_id: @Enrollment102004.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102004.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102002.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102003.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102001.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10201 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Matti', last_name: 'Laitsaari', username: 'user10201', email: 'user10201@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10201, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10201.save
Result.new(name: 'Matti Laitsaari', city: 'Helsinki', group: nil, year: 2014, series: 'M55', kk_number: '10201').save
@Enrollment102011 = Enrollment.new(user_id: @User10201.id, event_id: @Event1.id, time:5105)
@Enrollment102011.save
@Enrollment102013 = Enrollment.new(user_id: @User10201.id, event_id: @Event3.id, time:7093)
@Enrollment102013.save
@Enrollment102014 = Enrollment.new(user_id: @User10201.id, event_id: @Event4.id, time:11498)
@Enrollment102014.save
@Enrollment102015 = Enrollment.new(user_id: @User10201.id, event_id: @Event5.id, time:10112)
@Enrollment102015.save
@Enrollment102016 = Enrollment.new(user_id: @User10201.id, event_id: @Event6.id, time:11954)
@Enrollment102016.save
EnrollmentData.new(enrollment_id: @Enrollment102014.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102014.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102013.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102011.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102016.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10202 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markku', last_name: 'Sipi', username: 'user10202', email: 'user10202@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10202, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10202.save
Result.new(name: 'Markku Sipi', city: 'Helsinki', group: nil, year: 2014, series: 'M55', kk_number: '10202').save
@Enrollment102021 = Enrollment.new(user_id: @User10202.id, event_id: @Event1.id, time:4735)
@Enrollment102021.save
@Enrollment102022 = Enrollment.new(user_id: @User10202.id, event_id: @Event2.id, time:16927)
@Enrollment102022.save
@Enrollment102023 = Enrollment.new(user_id: @User10202.id, event_id: @Event3.id, time:16241)
@Enrollment102023.save
@Enrollment102025 = Enrollment.new(user_id: @User10202.id, event_id: @Event5.id, time:10032)
@Enrollment102025.save
@Enrollment102026 = Enrollment.new(user_id: @User10202.id, event_id: @Event6.id, time:10623)
@Enrollment102026.save
EnrollmentData.new(enrollment_id: @Enrollment102022.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102023.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102021.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102026.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10203 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Aarne', last_name: 'Talikka', username: 'user10203', email: 'user10203@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10203, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10203.save
Result.new(name: 'Aarne Talikka', city: 'Helsinki', group: 'Uskelan Urhot III', year: 2014, series: 'M60', kk_number: '10203').save
@Enrollment102031 = Enrollment.new(user_id: @User10203.id, event_id: @Event1.id, time:4820)
@Enrollment102031.save
@Enrollment102032 = Enrollment.new(user_id: @User10203.id, event_id: @Event2.id, time:16230)
@Enrollment102032.save
@Enrollment102033 = Enrollment.new(user_id: @User10203.id, event_id: @Event3.id, time:8613)
@Enrollment102033.save
@Enrollment102035 = Enrollment.new(user_id: @User10203.id, event_id: @Event5.id, time:9983)
@Enrollment102035.save
@Enrollment102036 = Enrollment.new(user_id: @User10203.id, event_id: @Event6.id, time:11105)
@Enrollment102036.save
EnrollmentData.new(enrollment_id: @Enrollment102032.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102033.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102031.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102036.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10204 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mailiina', last_name: 'Turanlahti', username: 'user10204', email: 'user10204@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10204, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10204.save
Result.new(name: 'Mailiina Turanlahti', city: 'Helsinki', group: 'OJy Justiinat', year: 2014, series: 'N', kk_number: '10204').save
@Enrollment102041 = Enrollment.new(user_id: @User10204.id, event_id: @Event1.id, time:4423)
@Enrollment102041.save
@Enrollment102042 = Enrollment.new(user_id: @User10204.id, event_id: @Event2.id, time:17531)
@Enrollment102042.save
@Enrollment102044 = Enrollment.new(user_id: @User10204.id, event_id: @Event4.id, time:14728)
@Enrollment102044.save
@Enrollment102045 = Enrollment.new(user_id: @User10204.id, event_id: @Event5.id, time:9085)
@Enrollment102045.save
@Enrollment102046 = Enrollment.new(user_id: @User10204.id, event_id: @Event6.id, time:11922)
@Enrollment102046.save
EnrollmentData.new(enrollment_id: @Enrollment102044.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102044.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102042.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102041.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102046.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10205 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Heidi', last_name: 'Räihä', username: 'user10205', email: 'user10205@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10205, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10205.save
Result.new(name: 'Heidi Räihä', city: 'Helsinki', group: nil, year: 2014, series: 'N', kk_number: '10205').save
@Enrollment102051 = Enrollment.new(user_id: @User10205.id, event_id: @Event1.id, time:5609)
@Enrollment102051.save
@Enrollment102052 = Enrollment.new(user_id: @User10205.id, event_id: @Event2.id, time:16364)
@Enrollment102052.save
@Enrollment102054 = Enrollment.new(user_id: @User10205.id, event_id: @Event4.id, time:11039)
@Enrollment102054.save
@Enrollment102055 = Enrollment.new(user_id: @User10205.id, event_id: @Event5.id, time:8760)
@Enrollment102055.save
@Enrollment102056 = Enrollment.new(user_id: @User10205.id, event_id: @Event6.id, time:18003)
@Enrollment102056.save
EnrollmentData.new(enrollment_id: @Enrollment102054.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102054.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102052.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102051.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102056.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10206 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Toni', last_name: 'Hägg', username: 'user10206', email: 'user10206@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10206, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10206.save
Result.new(name: 'Toni Hägg', city: 'Helsinki', group: nil, year: 2014, series: 'M55', kk_number: '10206').save
@Enrollment102061 = Enrollment.new(user_id: @User10206.id, event_id: @Event1.id, time:4451)
@Enrollment102061.save
@Enrollment102062 = Enrollment.new(user_id: @User10206.id, event_id: @Event2.id, time:19924)
@Enrollment102062.save
@Enrollment102063 = Enrollment.new(user_id: @User10206.id, event_id: @Event3.id, time:9202)
@Enrollment102063.save
@Enrollment102065 = Enrollment.new(user_id: @User10206.id, event_id: @Event5.id, time:9074)
@Enrollment102065.save
@Enrollment102066 = Enrollment.new(user_id: @User10206.id, event_id: @Event6.id, time:13632)
@Enrollment102066.save
EnrollmentData.new(enrollment_id: @Enrollment102062.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102063.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102061.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102066.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10207 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tiina', last_name: 'Koski-Laulaja', username: 'user10207', email: 'user10207@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10207, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10207.save
Result.new(name: 'Tiina Koski-Laulaja', city: 'Helsinki', group: 'Selän sitkeät sivistyneet', year: 2014, series: 'N55', kk_number: '10207').save
@Enrollment102071 = Enrollment.new(user_id: @User10207.id, event_id: @Event1.id, time:5323)
@Enrollment102071.save
@Enrollment102073 = Enrollment.new(user_id: @User10207.id, event_id: @Event3.id, time:8091)
@Enrollment102073.save
@Enrollment102074 = Enrollment.new(user_id: @User10207.id, event_id: @Event4.id, time:13392)
@Enrollment102074.save
@Enrollment102075 = Enrollment.new(user_id: @User10207.id, event_id: @Event5.id, time:10286)
@Enrollment102075.save
@Enrollment102076 = Enrollment.new(user_id: @User10207.id, event_id: @Event6.id, time:16700)
@Enrollment102076.save
EnrollmentData.new(enrollment_id: @Enrollment102074.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102074.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102073.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102071.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102076.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10208 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juhani', last_name: 'Marjamaa', username: 'user10208', email: 'user10208@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10208, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10208.save
Result.new(name: 'Juhani Marjamaa', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10208').save
@Enrollment102081 = Enrollment.new(user_id: @User10208.id, event_id: @Event1.id, time:4298)
@Enrollment102081.save
@Enrollment102082 = Enrollment.new(user_id: @User10208.id, event_id: @Event2.id, time:17185)
@Enrollment102082.save
@Enrollment102083 = Enrollment.new(user_id: @User10208.id, event_id: @Event3.id, time:8875)
@Enrollment102083.save
@Enrollment102085 = Enrollment.new(user_id: @User10208.id, event_id: @Event5.id, time:11005)
@Enrollment102085.save
@Enrollment102086 = Enrollment.new(user_id: @User10208.id, event_id: @Event6.id, time:17442)
@Enrollment102086.save
EnrollmentData.new(enrollment_id: @Enrollment102082.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102083.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102081.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102086.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10209 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ritva', last_name: 'Suominen', username: 'user10209', email: 'user10209@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10209, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10209.save
Result.new(name: 'Ritva Suominen', city: 'Helsinki', group: 'Selän sitkeät sivistyneet', year: 2014, series: 'N55', kk_number: '10209').save
@Enrollment102091 = Enrollment.new(user_id: @User10209.id, event_id: @Event1.id, time:6024)
@Enrollment102091.save
@Enrollment102093 = Enrollment.new(user_id: @User10209.id, event_id: @Event3.id, time:8099)
@Enrollment102093.save
@Enrollment102094 = Enrollment.new(user_id: @User10209.id, event_id: @Event4.id, time:13392)
@Enrollment102094.save
@Enrollment102095 = Enrollment.new(user_id: @User10209.id, event_id: @Event5.id, time:10529)
@Enrollment102095.save
@Enrollment102096 = Enrollment.new(user_id: @User10209.id, event_id: @Event6.id, time:19814)
@Enrollment102096.save
EnrollmentData.new(enrollment_id: @Enrollment102094.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102094.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102093.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102091.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102096.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10210 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Veera', last_name: 'Kalla', username: 'user10210', email: 'user10210@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10210, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10210.save
Result.new(name: 'Veera Kalla', city: 'Helsinki', group: 'Selän sitkeät sivistyneet', year: 2014, series: 'N', kk_number: '10210').save
@Enrollment102101 = Enrollment.new(user_id: @User10210.id, event_id: @Event1.id, time:5572)
@Enrollment102101.save
@Enrollment102102 = Enrollment.new(user_id: @User10210.id, event_id: @Event2.id, time:17621)
@Enrollment102102.save
@Enrollment102103 = Enrollment.new(user_id: @User10210.id, event_id: @Event3.id, time:8017)
@Enrollment102103.save
@Enrollment102104 = Enrollment.new(user_id: @User10210.id, event_id: @Event4.id, time:13584)
@Enrollment102104.save
@Enrollment102105 = Enrollment.new(user_id: @User10210.id, event_id: @Event5.id, time:12484)
@Enrollment102105.save
EnrollmentData.new(enrollment_id: @Enrollment102104.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102104.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102102.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102103.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102101.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10211 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Raimo', last_name: 'Stenvall', username: 'user10211', email: 'user10211@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10211, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10211.save
Result.new(name: 'Raimo Stenvall', city: 'Helsinki', group: 'Tuusulan Tallaajat IV', year: 2014, series: 'M70', kk_number: '10211').save
@Enrollment102111 = Enrollment.new(user_id: @User10211.id, event_id: @Event1.id, time:5067)
@Enrollment102111.save
@Enrollment102112 = Enrollment.new(user_id: @User10211.id, event_id: @Event2.id, time:20045)
@Enrollment102112.save
@Enrollment102113 = Enrollment.new(user_id: @User10211.id, event_id: @Event3.id, time:10124)
@Enrollment102113.save
@Enrollment102114 = Enrollment.new(user_id: @User10211.id, event_id: @Event4.id, time:12953)
@Enrollment102114.save
@Enrollment102115 = Enrollment.new(user_id: @User10211.id, event_id: @Event5.id, time:12180)
@Enrollment102115.save
EnrollmentData.new(enrollment_id: @Enrollment102114.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102114.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102112.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102113.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102111.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10212 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Minna', last_name: 'Kantsila', username: 'user10212', email: 'user10212@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10212, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10212.save
Result.new(name: 'Minna Kantsila', city: 'Helsinki', group: nil, year: 2014, series: 'N', kk_number: '10212').save
@Enrollment102122 = Enrollment.new(user_id: @User10212.id, event_id: @Event2.id, time:37934)
@Enrollment102122.save
@Enrollment102123 = Enrollment.new(user_id: @User10212.id, event_id: @Event3.id, time:8364)
@Enrollment102123.save
@Enrollment102124 = Enrollment.new(user_id: @User10212.id, event_id: @Event4.id, time:14372)
@Enrollment102124.save
@Enrollment102125 = Enrollment.new(user_id: @User10212.id, event_id: @Event5.id, time:10884)
@Enrollment102125.save
@Enrollment102126 = Enrollment.new(user_id: @User10212.id, event_id: @Event6.id, time:13101)
@Enrollment102126.save
EnrollmentData.new(enrollment_id: @Enrollment102124.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102124.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102122.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102123.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102126.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10213 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Siiri', last_name: 'Pietilä', username: 'user10213', email: 'user10213@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10213, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10213.save
Result.new(name: 'Siiri Pietilä', city: 'Helsinki', group: 'Tammelan Ryske', year: 2014, series: 'N', kk_number: '10213').save
@Enrollment102131 = Enrollment.new(user_id: @User10213.id, event_id: @Event1.id, time:5518)
@Enrollment102131.save
@Enrollment102132 = Enrollment.new(user_id: @User10213.id, event_id: @Event2.id, time:16322)
@Enrollment102132.save
@Enrollment102133 = Enrollment.new(user_id: @User10213.id, event_id: @Event3.id, time:8591)
@Enrollment102133.save
@Enrollment102135 = Enrollment.new(user_id: @User10213.id, event_id: @Event5.id, time:13936)
@Enrollment102135.save
@Enrollment102136 = Enrollment.new(user_id: @User10213.id, event_id: @Event6.id, time:15447)
@Enrollment102136.save
EnrollmentData.new(enrollment_id: @Enrollment102132.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102133.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102131.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102136.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10214 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tapani', last_name: 'Havia', username: 'user10214', email: 'user10214@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10214, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10214.save
Result.new(name: 'Tapani Havia', city: 'Helsinki', group: 'Uskelan Urhot III', year: 2014, series: 'M75', kk_number: '10214').save
@Enrollment102141 = Enrollment.new(user_id: @User10214.id, event_id: @Event1.id, time:6021)
@Enrollment102141.save
@Enrollment102143 = Enrollment.new(user_id: @User10214.id, event_id: @Event3.id, time:11119)
@Enrollment102143.save
@Enrollment102144 = Enrollment.new(user_id: @User10214.id, event_id: @Event4.id, time:15100)
@Enrollment102144.save
@Enrollment102145 = Enrollment.new(user_id: @User10214.id, event_id: @Event5.id, time:11362)
@Enrollment102145.save
@Enrollment102146 = Enrollment.new(user_id: @User10214.id, event_id: @Event6.id, time:17750)
@Enrollment102146.save
EnrollmentData.new(enrollment_id: @Enrollment102144.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102144.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102143.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102141.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102146.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10215 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Laila', last_name: 'Patronen-Jurvanen', username: 'user10215', email: 'user10215@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10215, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10215.save
Result.new(name: 'Laila Patronen-Jurvanen', city: 'Helsinki', group: nil, year: 2014, series: 'N65', kk_number: '10215').save
@Enrollment102151 = Enrollment.new(user_id: @User10215.id, event_id: @Event1.id, time:6116)
@Enrollment102151.save
@Enrollment102152 = Enrollment.new(user_id: @User10215.id, event_id: @Event2.id, time:21466)
@Enrollment102152.save
@Enrollment102153 = Enrollment.new(user_id: @User10215.id, event_id: @Event3.id, time:11039)
@Enrollment102153.save
@Enrollment102154 = Enrollment.new(user_id: @User10215.id, event_id: @Event4.id, time:12267)
@Enrollment102154.save
@Enrollment102155 = Enrollment.new(user_id: @User10215.id, event_id: @Event5.id, time:11826)
@Enrollment102155.save
EnrollmentData.new(enrollment_id: @Enrollment102154.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102154.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102152.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102153.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102151.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10216 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jari', last_name: 'Pihlajamäki', username: 'user10216', email: 'user10216@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10216, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10216.save
Result.new(name: 'Jari Pihlajamäki', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10216').save
@Enrollment102161 = Enrollment.new(user_id: @User10216.id, event_id: @Event1.id, time:5890)
@Enrollment102161.save
@Enrollment102162 = Enrollment.new(user_id: @User10216.id, event_id: @Event2.id, time:45488)
@Enrollment102162.save
@Enrollment102164 = Enrollment.new(user_id: @User10216.id, event_id: @Event4.id, time:12609)
@Enrollment102164.save
@Enrollment102165 = Enrollment.new(user_id: @User10216.id, event_id: @Event5.id, time:12987)
@Enrollment102165.save
@Enrollment102166 = Enrollment.new(user_id: @User10216.id, event_id: @Event6.id, time:17170)
@Enrollment102166.save
EnrollmentData.new(enrollment_id: @Enrollment102164.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102164.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102162.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102161.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102166.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10217 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pyry', last_name: 'Kettunen', username: 'user10217', email: 'user10217@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10217, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10217.save
Result.new(name: 'Pyry Kettunen', city: 'Helsinki', group: 'Otaniemen Jyllääjät I', year: 2014, series: 'M', kk_number: '10217').save
@Enrollment102171 = Enrollment.new(user_id: @User10217.id, event_id: @Event1.id, time:3421)
@Enrollment102171.save
@Enrollment102172 = Enrollment.new(user_id: @User10217.id, event_id: @Event2.id, time:9196)
@Enrollment102172.save
@Enrollment102175 = Enrollment.new(user_id: @User10217.id, event_id: @Event5.id, time:7141)
@Enrollment102175.save
@Enrollment102176 = Enrollment.new(user_id: @User10217.id, event_id: @Event6.id, time:5865)
@Enrollment102176.save
EnrollmentData.new(enrollment_id: @Enrollment102172.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102171.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102176.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10218 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mikko', last_name: 'Isokangas', username: 'user10218', email: 'user10218@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10218, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10218.save
Result.new(name: 'Mikko Isokangas', city: 'Helsinki', group: nil, year: 2014, series: 'M45', kk_number: '10218').save
@Enrollment102181 = Enrollment.new(user_id: @User10218.id, event_id: @Event1.id, time:3614)
@Enrollment102181.save
@Enrollment102182 = Enrollment.new(user_id: @User10218.id, event_id: @Event2.id, time:9003)
@Enrollment102182.save
@Enrollment102184 = Enrollment.new(user_id: @User10218.id, event_id: @Event4.id, time:10245)
@Enrollment102184.save
@Enrollment102185 = Enrollment.new(user_id: @User10218.id, event_id: @Event5.id, time:7170)
@Enrollment102185.save
EnrollmentData.new(enrollment_id: @Enrollment102184.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102184.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102182.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102181.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10219 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jouni', last_name: 'Siitonen', username: 'user10219', email: 'user10219@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10219, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10219.save
Result.new(name: 'Jouni Siitonen', city: 'Helsinki', group: nil, year: 2014, series: 'M55', kk_number: '10219').save
@Enrollment102191 = Enrollment.new(user_id: @User10219.id, event_id: @Event1.id, time:3650)
@Enrollment102191.save
@Enrollment102192 = Enrollment.new(user_id: @User10219.id, event_id: @Event2.id, time:11636)
@Enrollment102192.save
@Enrollment102194 = Enrollment.new(user_id: @User10219.id, event_id: @Event4.id, time:10907)
@Enrollment102194.save
@Enrollment102195 = Enrollment.new(user_id: @User10219.id, event_id: @Event5.id, time:7825)
@Enrollment102195.save
EnrollmentData.new(enrollment_id: @Enrollment102194.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102194.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102192.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102191.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10220 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pasi', last_name: 'Lehtimäki', username: 'user10220', email: 'user10220@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10220, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10220.save
Result.new(name: 'Pasi Lehtimäki', city: 'Helsinki', group: 'Reilut Miehet Havumetsien', year: 2014, series: 'M', kk_number: '10220').save
@Enrollment102202 = Enrollment.new(user_id: @User10220.id, event_id: @Event2.id, time:11187)
@Enrollment102202.save
@Enrollment102203 = Enrollment.new(user_id: @User10220.id, event_id: @Event3.id, time:6152)
@Enrollment102203.save
@Enrollment102205 = Enrollment.new(user_id: @User10220.id, event_id: @Event5.id, time:7694)
@Enrollment102205.save
@Enrollment102206 = Enrollment.new(user_id: @User10220.id, event_id: @Event6.id, time:6392)
@Enrollment102206.save
EnrollmentData.new(enrollment_id: @Enrollment102202.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102203.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102206.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10221 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kyösti', last_name: 'Halonen', username: 'user10221', email: 'user10221@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10221, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10221.save
Result.new(name: 'Kyösti Halonen', city: 'Helsinki', group: 'Hitaat 1', year: 2014, series: 'M55', kk_number: '10221').save
@Enrollment102212 = Enrollment.new(user_id: @User10221.id, event_id: @Event2.id, time:25936)
@Enrollment102212.save
@Enrollment102214 = Enrollment.new(user_id: @User10221.id, event_id: @Event4.id, time:11045)
@Enrollment102214.save
@Enrollment102215 = Enrollment.new(user_id: @User10221.id, event_id: @Event5.id, time:6978)
@Enrollment102215.save
@Enrollment102216 = Enrollment.new(user_id: @User10221.id, event_id: @Event6.id, time:8287)
@Enrollment102216.save
EnrollmentData.new(enrollment_id: @Enrollment102214.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102214.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102212.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102216.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10222 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ari-Pekka', last_name: 'Rouvali', username: 'user10222', email: 'user10222@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10222, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10222.save
Result.new(name: 'Ari-Pekka Rouvali', city: 'Helsinki', group: 'KK Länsi-Uusimaa 3', year: 2014, series: 'M45', kk_number: '10222').save
@Enrollment102221 = Enrollment.new(user_id: @User10222.id, event_id: @Event1.id, time:3391)
@Enrollment102221.save
@Enrollment102222 = Enrollment.new(user_id: @User10222.id, event_id: @Event2.id, time:12080)
@Enrollment102222.save
@Enrollment102224 = Enrollment.new(user_id: @User10222.id, event_id: @Event4.id, time:11361)
@Enrollment102224.save
@Enrollment102225 = Enrollment.new(user_id: @User10222.id, event_id: @Event5.id, time:7738)
@Enrollment102225.save
EnrollmentData.new(enrollment_id: @Enrollment102224.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102224.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102222.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102221.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10223 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mika', last_name: 'Niinimaa', username: 'user10223', email: 'user10223@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10223, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10223.save
Result.new(name: 'Mika Niinimaa', city: 'Helsinki', group: 'Turun NMKY', year: 2014, series: 'M45', kk_number: '10223').save
@Enrollment102231 = Enrollment.new(user_id: @User10223.id, event_id: @Event1.id, time:3825)
@Enrollment102231.save
@Enrollment102232 = Enrollment.new(user_id: @User10223.id, event_id: @Event2.id, time:10815)
@Enrollment102232.save
@Enrollment102233 = Enrollment.new(user_id: @User10223.id, event_id: @Event3.id, time:6100)
@Enrollment102233.save
@Enrollment102235 = Enrollment.new(user_id: @User10223.id, event_id: @Event5.id, time:7258)
@Enrollment102235.save
EnrollmentData.new(enrollment_id: @Enrollment102232.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102233.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102231.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10224 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Timo', last_name: 'Seppänen', username: 'user10224', email: 'user10224@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10224, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10224.save
Result.new(name: 'Timo Seppänen', city: 'Helsinki', group: 'Otaniemen Jyllääjät I', year: 2014, series: 'M50', kk_number: '10224').save
@Enrollment102241 = Enrollment.new(user_id: @User10224.id, event_id: @Event1.id, time:3343)
@Enrollment102241.save
@Enrollment102243 = Enrollment.new(user_id: @User10224.id, event_id: @Event3.id, time:7270)
@Enrollment102243.save
@Enrollment102244 = Enrollment.new(user_id: @User10224.id, event_id: @Event4.id, time:11796)
@Enrollment102244.save
@Enrollment102245 = Enrollment.new(user_id: @User10224.id, event_id: @Event5.id, time:7508)
@Enrollment102245.save
EnrollmentData.new(enrollment_id: @Enrollment102244.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102244.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102243.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102241.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10225 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juho', last_name: 'Koskinen', username: 'user10225', email: 'user10225@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10225, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10225.save
Result.new(name: 'Juho Koskinen', city: 'Helsinki', group: 'Tervakosken Pato 1.', year: 2014, series: 'M40', kk_number: '10225').save
@Enrollment102252 = Enrollment.new(user_id: @User10225.id, event_id: @Event2.id, time:23527)
@Enrollment102252.save
@Enrollment102253 = Enrollment.new(user_id: @User10225.id, event_id: @Event3.id, time:6049)
@Enrollment102253.save
@Enrollment102254 = Enrollment.new(user_id: @User10225.id, event_id: @Event4.id, time:11594)
@Enrollment102254.save
@Enrollment102255 = Enrollment.new(user_id: @User10225.id, event_id: @Event5.id, time:7795)
@Enrollment102255.save
EnrollmentData.new(enrollment_id: @Enrollment102254.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102254.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102252.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102253.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10226 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jaakko', last_name: 'Penttinen', username: 'user10226', email: 'user10226@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10226, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10226.save
Result.new(name: 'Jaakko Penttinen', city: 'Helsinki', group: 'Tuusulan Tallaajat I', year: 2014, series: 'M50', kk_number: '10226').save
@Enrollment102261 = Enrollment.new(user_id: @User10226.id, event_id: @Event1.id, time:3699)
@Enrollment102261.save
@Enrollment102262 = Enrollment.new(user_id: @User10226.id, event_id: @Event2.id, time:11005)
@Enrollment102262.save
@Enrollment102263 = Enrollment.new(user_id: @User10226.id, event_id: @Event3.id, time:5272)
@Enrollment102263.save
@Enrollment102265 = Enrollment.new(user_id: @User10226.id, event_id: @Event5.id, time:8695)
@Enrollment102265.save
EnrollmentData.new(enrollment_id: @Enrollment102262.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102263.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102261.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10227 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Anja', last_name: 'Halonen', username: 'user10227', email: 'user10227@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10227, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10227.save
Result.new(name: 'Anja Halonen', city: 'Helsinki', group: 'OJy Justiinat', year: 2014, series: 'N', kk_number: '10227').save
@Enrollment102271 = Enrollment.new(user_id: @User10227.id, event_id: @Event1.id, time:3248)
@Enrollment102271.save
@Enrollment102272 = Enrollment.new(user_id: @User10227.id, event_id: @Event2.id, time:24198)
@Enrollment102272.save
@Enrollment102273 = Enrollment.new(user_id: @User10227.id, event_id: @Event3.id, time:5835)
@Enrollment102273.save
@Enrollment102274 = Enrollment.new(user_id: @User10227.id, event_id: @Event4.id, time:12732)
@Enrollment102274.save
EnrollmentData.new(enrollment_id: @Enrollment102274.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102274.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102272.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102273.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102271.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10228 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Heikki', last_name: 'Lehtonen', username: 'user10228', email: 'user10228@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10228, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10228.save
Result.new(name: 'Heikki Lehtonen', city: 'Helsinki', group: 'Hitaat 2', year: 2014, series: 'M55', kk_number: '10228').save
@Enrollment102282 = Enrollment.new(user_id: @User10228.id, event_id: @Event2.id, time:11422)
@Enrollment102282.save
@Enrollment102284 = Enrollment.new(user_id: @User10228.id, event_id: @Event4.id, time:10589)
@Enrollment102284.save
@Enrollment102285 = Enrollment.new(user_id: @User10228.id, event_id: @Event5.id, time:7746)
@Enrollment102285.save
@Enrollment102286 = Enrollment.new(user_id: @User10228.id, event_id: @Event6.id, time:9295)
@Enrollment102286.save
EnrollmentData.new(enrollment_id: @Enrollment102284.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102284.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102282.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102286.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10229 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Erkki', last_name: 'Valtonen', username: 'user10229', email: 'user10229@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10229, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10229.save
Result.new(name: 'Erkki Valtonen', city: 'Helsinki', group: 'Otaniemen Jyllääjät I', year: 2014, series: 'M', kk_number: '10229').save
@Enrollment102291 = Enrollment.new(user_id: @User10229.id, event_id: @Event1.id, time:3790)
@Enrollment102291.save
@Enrollment102292 = Enrollment.new(user_id: @User10229.id, event_id: @Event2.id, time:12470)
@Enrollment102292.save
@Enrollment102293 = Enrollment.new(user_id: @User10229.id, event_id: @Event3.id, time:5759)
@Enrollment102293.save
@Enrollment102295 = Enrollment.new(user_id: @User10229.id, event_id: @Event5.id, time:7971)
@Enrollment102295.save
EnrollmentData.new(enrollment_id: @Enrollment102292.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102293.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102291.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10230 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tero', last_name: 'Antila', username: 'user10230', email: 'user10230@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10230, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10230.save
Result.new(name: 'Tero Antila', city: 'Helsinki', group: 'Tuusulan Tallaajat III', year: 2014, series: 'M65', kk_number: '10230').save
@Enrollment102301 = Enrollment.new(user_id: @User10230.id, event_id: @Event1.id, time:3415)
@Enrollment102301.save
@Enrollment102302 = Enrollment.new(user_id: @User10230.id, event_id: @Event2.id, time:12215)
@Enrollment102302.save
@Enrollment102303 = Enrollment.new(user_id: @User10230.id, event_id: @Event3.id, time:6778)
@Enrollment102303.save
@Enrollment102305 = Enrollment.new(user_id: @User10230.id, event_id: @Event5.id, time:8083)
@Enrollment102305.save
EnrollmentData.new(enrollment_id: @Enrollment102302.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102303.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102301.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10231 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Erkka', last_name: 'Karjalainen', username: 'user10231', email: 'user10231@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10231, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10231.save
Result.new(name: 'Erkka Karjalainen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10231').save
@Enrollment102311 = Enrollment.new(user_id: @User10231.id, event_id: @Event1.id, time:4196)
@Enrollment102311.save
@Enrollment102312 = Enrollment.new(user_id: @User10231.id, event_id: @Event2.id, time:11652)
@Enrollment102312.save
@Enrollment102313 = Enrollment.new(user_id: @User10231.id, event_id: @Event3.id, time:6053)
@Enrollment102313.save
@Enrollment102314 = Enrollment.new(user_id: @User10231.id, event_id: @Event4.id, time:10872)
@Enrollment102314.save
EnrollmentData.new(enrollment_id: @Enrollment102314.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102314.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102312.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102313.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102311.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10232 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jukka', last_name: 'Lehtonen', username: 'user10232', email: 'user10232@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10232, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10232.save
Result.new(name: 'Jukka Lehtonen', city: 'Helsinki', group: 'Turun NMKY', year: 2014, series: 'M50', kk_number: '10232').save
@Enrollment102321 = Enrollment.new(user_id: @User10232.id, event_id: @Event1.id, time:3938)
@Enrollment102321.save
@Enrollment102324 = Enrollment.new(user_id: @User10232.id, event_id: @Event4.id, time:12575)
@Enrollment102324.save
@Enrollment102325 = Enrollment.new(user_id: @User10232.id, event_id: @Event5.id, time:7577)
@Enrollment102325.save
@Enrollment102326 = Enrollment.new(user_id: @User10232.id, event_id: @Event6.id, time:7282)
@Enrollment102326.save
EnrollmentData.new(enrollment_id: @Enrollment102324.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102324.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102321.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102326.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10233 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Olli', last_name: 'Lehtonen', username: 'user10233', email: 'user10233@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10233, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10233.save
Result.new(name: 'Olli Lehtonen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10233').save
@Enrollment102331 = Enrollment.new(user_id: @User10233.id, event_id: @Event1.id, time:3979)
@Enrollment102331.save
@Enrollment102332 = Enrollment.new(user_id: @User10233.id, event_id: @Event2.id, time:12243)
@Enrollment102332.save
@Enrollment102334 = Enrollment.new(user_id: @User10233.id, event_id: @Event4.id, time:12101)
@Enrollment102334.save
@Enrollment102336 = Enrollment.new(user_id: @User10233.id, event_id: @Event6.id, time:7475)
@Enrollment102336.save
EnrollmentData.new(enrollment_id: @Enrollment102334.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102334.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102332.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102331.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102336.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10234 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Teemu', last_name: 'Heino', username: 'user10234', email: 'user10234@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10234, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10234.save
Result.new(name: 'Teemu Heino', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10234').save
@Enrollment102341 = Enrollment.new(user_id: @User10234.id, event_id: @Event1.id, time:4077)
@Enrollment102341.save
@Enrollment102342 = Enrollment.new(user_id: @User10234.id, event_id: @Event2.id, time:12650)
@Enrollment102342.save
@Enrollment102343 = Enrollment.new(user_id: @User10234.id, event_id: @Event3.id, time:6190)
@Enrollment102343.save
@Enrollment102345 = Enrollment.new(user_id: @User10234.id, event_id: @Event5.id, time:8208)
@Enrollment102345.save
EnrollmentData.new(enrollment_id: @Enrollment102342.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102343.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102341.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10235 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Sauli', last_name: 'Maanpää', username: 'user10235', email: 'user10235@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10235, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10235.save
Result.new(name: 'Sauli Maanpää', city: 'Helsinki', group: 'SM MAANPÄÄ ', year: 2014, series: 'M60', kk_number: '10235').save
@Enrollment102351 = Enrollment.new(user_id: @User10235.id, event_id: @Event1.id, time:3339)
@Enrollment102351.save
@Enrollment102353 = Enrollment.new(user_id: @User10235.id, event_id: @Event3.id, time:8367)
@Enrollment102353.save
@Enrollment102355 = Enrollment.new(user_id: @User10235.id, event_id: @Event5.id, time:7615)
@Enrollment102355.save
@Enrollment102356 = Enrollment.new(user_id: @User10235.id, event_id: @Event6.id, time:12258)
@Enrollment102356.save
EnrollmentData.new(enrollment_id: @Enrollment102353.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102351.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102356.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10236 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Matti', last_name: 'Sajomaa', username: 'user10236', email: 'user10236@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10236, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10236.save
Result.new(name: 'Matti Sajomaa', city: 'Helsinki', group: 'Tuusulan Tallaajat IV', year: 2014, series: 'M65', kk_number: '10236').save
@Enrollment102361 = Enrollment.new(user_id: @User10236.id, event_id: @Event1.id, time:4180)
@Enrollment102361.save
@Enrollment102362 = Enrollment.new(user_id: @User10236.id, event_id: @Event2.id, time:13668)
@Enrollment102362.save
@Enrollment102363 = Enrollment.new(user_id: @User10236.id, event_id: @Event3.id, time:7357)
@Enrollment102363.save
@Enrollment102364 = Enrollment.new(user_id: @User10236.id, event_id: @Event4.id, time:10694)
@Enrollment102364.save
EnrollmentData.new(enrollment_id: @Enrollment102364.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102364.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102362.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102363.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102361.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10237 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Patric', last_name: 'Granholm', username: 'user10237', email: 'user10237@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10237, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10237.save
Result.new(name: 'Patric Granholm', city: 'Helsinki', group: 'Uskelan Urhot IV', year: 2014, series: 'M45', kk_number: '10237').save
@Enrollment102371 = Enrollment.new(user_id: @User10237.id, event_id: @Event1.id, time:4388)
@Enrollment102371.save
@Enrollment102373 = Enrollment.new(user_id: @User10237.id, event_id: @Event3.id, time:6234)
@Enrollment102373.save
@Enrollment102374 = Enrollment.new(user_id: @User10237.id, event_id: @Event4.id, time:11967)
@Enrollment102374.save
@Enrollment102376 = Enrollment.new(user_id: @User10237.id, event_id: @Event6.id, time:10290)
@Enrollment102376.save
EnrollmentData.new(enrollment_id: @Enrollment102374.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102374.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102373.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102371.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102376.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10238 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Arto', last_name: 'Remes', username: 'user10238', email: 'user10238@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10238, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10238.save
Result.new(name: 'Arto Remes', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10238').save
@Enrollment102382 = Enrollment.new(user_id: @User10238.id, event_id: @Event2.id, time:12373)
@Enrollment102382.save
@Enrollment102384 = Enrollment.new(user_id: @User10238.id, event_id: @Event4.id, time:10978)
@Enrollment102384.save
@Enrollment102385 = Enrollment.new(user_id: @User10238.id, event_id: @Event5.id, time:8720)
@Enrollment102385.save
@Enrollment102386 = Enrollment.new(user_id: @User10238.id, event_id: @Event6.id, time:11398)
@Enrollment102386.save
EnrollmentData.new(enrollment_id: @Enrollment102384.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102384.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102382.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102386.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10239 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jarmo', last_name: 'Savela', username: 'user10239', email: 'user10239@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10239, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10239.save
Result.new(name: 'Jarmo Savela', city: 'Helsinki', group: 'KK Länsi-Uusimaa 1', year: 2014, series: 'M60', kk_number: '10239').save
@Enrollment102391 = Enrollment.new(user_id: @User10239.id, event_id: @Event1.id, time:3977)
@Enrollment102391.save
@Enrollment102394 = Enrollment.new(user_id: @User10239.id, event_id: @Event4.id, time:11788)
@Enrollment102394.save
@Enrollment102395 = Enrollment.new(user_id: @User10239.id, event_id: @Event5.id, time:9160)
@Enrollment102395.save
@Enrollment102396 = Enrollment.new(user_id: @User10239.id, event_id: @Event6.id, time:9642)
@Enrollment102396.save
EnrollmentData.new(enrollment_id: @Enrollment102394.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102394.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102391.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102396.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10240 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Arto', last_name: 'Saviranta', username: 'user10240', email: 'user10240@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10240, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10240.save
Result.new(name: 'Arto Saviranta', city: 'Helsinki', group: 'Uskelan Urhot IV', year: 2014, series: 'M50', kk_number: '10240').save
@Enrollment102401 = Enrollment.new(user_id: @User10240.id, event_id: @Event1.id, time:4327)
@Enrollment102401.save
@Enrollment102403 = Enrollment.new(user_id: @User10240.id, event_id: @Event3.id, time:6984)
@Enrollment102403.save
@Enrollment102404 = Enrollment.new(user_id: @User10240.id, event_id: @Event4.id, time:11156)
@Enrollment102404.save
@Enrollment102405 = Enrollment.new(user_id: @User10240.id, event_id: @Event5.id, time:9345)
@Enrollment102405.save
EnrollmentData.new(enrollment_id: @Enrollment102404.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102404.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102403.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102401.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10241 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juuso', last_name: 'Högblom', username: 'user10241', email: 'user10241@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10241, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10241.save
Result.new(name: 'Juuso Högblom', city: 'Helsinki', group: 'Kankaanpään Kalevankiertäjät 2', year: 2014, series: 'M', kk_number: '10241').save
@Enrollment102411 = Enrollment.new(user_id: @User10241.id, event_id: @Event1.id, time:4289)
@Enrollment102411.save
@Enrollment102412 = Enrollment.new(user_id: @User10241.id, event_id: @Event2.id, time:13298)
@Enrollment102412.save
@Enrollment102413 = Enrollment.new(user_id: @User10241.id, event_id: @Event3.id, time:6903)
@Enrollment102413.save
@Enrollment102414 = Enrollment.new(user_id: @User10241.id, event_id: @Event4.id, time:12059)
@Enrollment102414.save
EnrollmentData.new(enrollment_id: @Enrollment102414.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102414.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102412.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102413.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102411.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10242 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ari', last_name: 'Tolmunen', username: 'user10242', email: 'user10242@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10242, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10242.save
Result.new(name: 'Ari Tolmunen', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10242').save
@Enrollment102422 = Enrollment.new(user_id: @User10242.id, event_id: @Event2.id, time:15210)
@Enrollment102422.save
@Enrollment102423 = Enrollment.new(user_id: @User10242.id, event_id: @Event3.id, time:6872)
@Enrollment102423.save
@Enrollment102424 = Enrollment.new(user_id: @User10242.id, event_id: @Event4.id, time:11408)
@Enrollment102424.save
@Enrollment102425 = Enrollment.new(user_id: @User10242.id, event_id: @Event5.id, time:9056)
@Enrollment102425.save
EnrollmentData.new(enrollment_id: @Enrollment102424.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102424.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102422.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102423.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10243 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Raimo', last_name: 'Korpela', username: 'user10243', email: 'user10243@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10243, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10243.save
Result.new(name: 'Raimo Korpela', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10243').save
@Enrollment102431 = Enrollment.new(user_id: @User10243.id, event_id: @Event1.id, time:4092)
@Enrollment102431.save
@Enrollment102433 = Enrollment.new(user_id: @User10243.id, event_id: @Event3.id, time:8600)
@Enrollment102433.save
@Enrollment102434 = Enrollment.new(user_id: @User10243.id, event_id: @Event4.id, time:11582)
@Enrollment102434.save
@Enrollment102435 = Enrollment.new(user_id: @User10243.id, event_id: @Event5.id, time:8643)
@Enrollment102435.save
EnrollmentData.new(enrollment_id: @Enrollment102434.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102434.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102433.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102431.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10244 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mikko', last_name: 'Fagerström', username: 'user10244', email: 'user10244@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10244, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10244.save
Result.new(name: 'Mikko Fagerström', city: 'Helsinki', group: 'Espoon Etanat', year: 2014, series: 'M55', kk_number: '10244').save
@Enrollment102441 = Enrollment.new(user_id: @User10244.id, event_id: @Event1.id, time:4538)
@Enrollment102441.save
@Enrollment102442 = Enrollment.new(user_id: @User10244.id, event_id: @Event2.id, time:13986)
@Enrollment102442.save
@Enrollment102443 = Enrollment.new(user_id: @User10244.id, event_id: @Event3.id, time:7623)
@Enrollment102443.save
@Enrollment102444 = Enrollment.new(user_id: @User10244.id, event_id: @Event4.id, time:11572)
@Enrollment102444.save
EnrollmentData.new(enrollment_id: @Enrollment102444.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102444.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102442.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102443.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102441.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10245 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Olavi', last_name: 'Heino', username: 'user10245', email: 'user10245@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10245, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10245.save
Result.new(name: 'Olavi Heino', city: 'Helsinki', group: 'KK Länsi-Uusimaa 1', year: 2014, series: 'M50', kk_number: '10245').save
@Enrollment102451 = Enrollment.new(user_id: @User10245.id, event_id: @Event1.id, time:4200)
@Enrollment102451.save
@Enrollment102452 = Enrollment.new(user_id: @User10245.id, event_id: @Event2.id, time:15777)
@Enrollment102452.save
@Enrollment102455 = Enrollment.new(user_id: @User10245.id, event_id: @Event5.id, time:7770)
@Enrollment102455.save
@Enrollment102456 = Enrollment.new(user_id: @User10245.id, event_id: @Event6.id, time:11420)
@Enrollment102456.save
EnrollmentData.new(enrollment_id: @Enrollment102452.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102451.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102456.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10246 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markku', last_name: 'Hirvonen', username: 'user10246', email: 'user10246@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10246, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10246.save
Result.new(name: 'Markku Hirvonen', city: 'Helsinki', group: 'Kuntokonnat 2.', year: 2014, series: 'M60', kk_number: '10246').save
@Enrollment102461 = Enrollment.new(user_id: @User10246.id, event_id: @Event1.id, time:3665)
@Enrollment102461.save
@Enrollment102462 = Enrollment.new(user_id: @User10246.id, event_id: @Event2.id, time:12186)
@Enrollment102462.save
@Enrollment102465 = Enrollment.new(user_id: @User10246.id, event_id: @Event5.id, time:9615)
@Enrollment102465.save
@Enrollment102466 = Enrollment.new(user_id: @User10246.id, event_id: @Event6.id, time:13297)
@Enrollment102466.save
EnrollmentData.new(enrollment_id: @Enrollment102462.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102461.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102466.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10247 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ari', last_name: 'Venäläinen', username: 'user10247', email: 'user10247@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10247, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10247.save
Result.new(name: 'Ari Venäläinen', city: 'Helsinki', group: 'CCRT', year: 2014, series: 'M55', kk_number: '10247').save
@Enrollment102471 = Enrollment.new(user_id: @User10247.id, event_id: @Event1.id, time:4733)
@Enrollment102471.save
@Enrollment102472 = Enrollment.new(user_id: @User10247.id, event_id: @Event2.id, time:13838)
@Enrollment102472.save
@Enrollment102473 = Enrollment.new(user_id: @User10247.id, event_id: @Event3.id, time:7042)
@Enrollment102473.save
@Enrollment102474 = Enrollment.new(user_id: @User10247.id, event_id: @Event4.id, time:11269)
@Enrollment102474.save
EnrollmentData.new(enrollment_id: @Enrollment102474.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102474.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102472.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102473.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102471.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10248 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Antti', last_name: 'Virtanen', username: 'user10248', email: 'user10248@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10248, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10248.save
Result.new(name: 'Antti Virtanen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10248').save
@Enrollment102481 = Enrollment.new(user_id: @User10248.id, event_id: @Event1.id, time:4609)
@Enrollment102481.save
@Enrollment102482 = Enrollment.new(user_id: @User10248.id, event_id: @Event2.id, time:14798)
@Enrollment102482.save
@Enrollment102485 = Enrollment.new(user_id: @User10248.id, event_id: @Event5.id, time:8956)
@Enrollment102485.save
@Enrollment102486 = Enrollment.new(user_id: @User10248.id, event_id: @Event6.id, time:7308)
@Enrollment102486.save
EnrollmentData.new(enrollment_id: @Enrollment102482.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102481.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102486.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10249 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mikko', last_name: 'Sirkiä', username: 'user10249', email: 'user10249@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10249, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10249.save
Result.new(name: 'Mikko Sirkiä', city: 'Helsinki', group: 'Espoon Kepardit', year: 2014, series: 'M45', kk_number: '10249').save
@Enrollment102491 = Enrollment.new(user_id: @User10249.id, event_id: @Event1.id, time:4678)
@Enrollment102491.save
@Enrollment102493 = Enrollment.new(user_id: @User10249.id, event_id: @Event3.id, time:7351)
@Enrollment102493.save
@Enrollment102495 = Enrollment.new(user_id: @User10249.id, event_id: @Event5.id, time:8484)
@Enrollment102495.save
@Enrollment102496 = Enrollment.new(user_id: @User10249.id, event_id: @Event6.id, time:10121)
@Enrollment102496.save
EnrollmentData.new(enrollment_id: @Enrollment102493.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102491.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102496.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10250 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Antti', last_name: 'Ojala', username: 'user10250', email: 'user10250@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10250, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10250.save
Result.new(name: 'Antti Ojala', city: 'Helsinki', group: 'Tervakosken Pato 2.', year: 2014, series: 'M60', kk_number: '10250').save
@Enrollment102501 = Enrollment.new(user_id: @User10250.id, event_id: @Event1.id, time:5504)
@Enrollment102501.save
@Enrollment102502 = Enrollment.new(user_id: @User10250.id, event_id: @Event2.id, time:13240)
@Enrollment102502.save
@Enrollment102504 = Enrollment.new(user_id: @User10250.id, event_id: @Event4.id, time:12156)
@Enrollment102504.save
@Enrollment102505 = Enrollment.new(user_id: @User10250.id, event_id: @Event5.id, time:7922)
@Enrollment102505.save
EnrollmentData.new(enrollment_id: @Enrollment102504.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102504.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102502.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102501.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10251 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kari', last_name: 'Sumiala', username: 'user10251', email: 'user10251@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10251, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10251.save
Result.new(name: 'Kari Sumiala', city: 'Helsinki', group: nil, year: 2014, series: 'M55', kk_number: '10251').save
@Enrollment102511 = Enrollment.new(user_id: @User10251.id, event_id: @Event1.id, time:4454)
@Enrollment102511.save
@Enrollment102513 = Enrollment.new(user_id: @User10251.id, event_id: @Event3.id, time:6569)
@Enrollment102513.save
@Enrollment102515 = Enrollment.new(user_id: @User10251.id, event_id: @Event5.id, time:9970)
@Enrollment102515.save
@Enrollment102516 = Enrollment.new(user_id: @User10251.id, event_id: @Event6.id, time:10484)
@Enrollment102516.save
EnrollmentData.new(enrollment_id: @Enrollment102513.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102511.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102516.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10252 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Harri', last_name: 'Leinikka', username: 'user10252', email: 'user10252@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10252, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10252.save
Result.new(name: 'Harri Leinikka', city: 'Helsinki', group: 'KK Länsi-Uusimaa 3', year: 2014, series: 'M', kk_number: '10252').save
@Enrollment102521 = Enrollment.new(user_id: @User10252.id, event_id: @Event1.id, time:4735)
@Enrollment102521.save
@Enrollment102522 = Enrollment.new(user_id: @User10252.id, event_id: @Event2.id, time:14796)
@Enrollment102522.save
@Enrollment102525 = Enrollment.new(user_id: @User10252.id, event_id: @Event5.id, time:8741)
@Enrollment102525.save
@Enrollment102526 = Enrollment.new(user_id: @User10252.id, event_id: @Event6.id, time:8495)
@Enrollment102526.save
EnrollmentData.new(enrollment_id: @Enrollment102522.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102521.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102526.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10253 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Aulis', last_name: 'Nikkanen', username: 'user10253', email: 'user10253@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10253, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10253.save
Result.new(name: 'Aulis Nikkanen', city: 'Helsinki', group: 'Uskelan Urhot III', year: 2014, series: 'M65', kk_number: '10253').save
@Enrollment102531 = Enrollment.new(user_id: @User10253.id, event_id: @Event1.id, time:4733)
@Enrollment102531.save
@Enrollment102534 = Enrollment.new(user_id: @User10253.id, event_id: @Event4.id, time:11421)
@Enrollment102534.save
@Enrollment102535 = Enrollment.new(user_id: @User10253.id, event_id: @Event5.id, time:9013)
@Enrollment102535.save
@Enrollment102536 = Enrollment.new(user_id: @User10253.id, event_id: @Event6.id, time:12430)
@Enrollment102536.save
EnrollmentData.new(enrollment_id: @Enrollment102534.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102534.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102531.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102536.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10254 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pertti', last_name: 'Keski-Honkola', username: 'user10254', email: 'user10254@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10254, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10254.save
Result.new(name: 'Pertti Keski-Honkola', city: 'Helsinki', group: 'Sveitsiläiset', year: 2014, series: 'M60', kk_number: '10254').save
@Enrollment102542 = Enrollment.new(user_id: @User10254.id, event_id: @Event2.id, time:13116)
@Enrollment102542.save
@Enrollment102543 = Enrollment.new(user_id: @User10254.id, event_id: @Event3.id, time:6295)
@Enrollment102543.save
@Enrollment102545 = Enrollment.new(user_id: @User10254.id, event_id: @Event5.id, time:9484)
@Enrollment102545.save
@Enrollment102546 = Enrollment.new(user_id: @User10254.id, event_id: @Event6.id, time:14452)
@Enrollment102546.save
EnrollmentData.new(enrollment_id: @Enrollment102542.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102543.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102546.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10255 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jouni', last_name: 'Monto', username: 'user10255', email: 'user10255@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10255, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10255.save
Result.new(name: 'Jouni Monto', city: 'Helsinki', group: 'KK Länsi-Uusimaa 2', year: 2014, series: 'M45', kk_number: '10255').save
@Enrollment102553 = Enrollment.new(user_id: @User10255.id, event_id: @Event3.id, time:7391)
@Enrollment102553.save
@Enrollment102554 = Enrollment.new(user_id: @User10255.id, event_id: @Event4.id, time:12067)
@Enrollment102554.save
@Enrollment102555 = Enrollment.new(user_id: @User10255.id, event_id: @Event5.id, time:9125)
@Enrollment102555.save
@Enrollment102556 = Enrollment.new(user_id: @User10255.id, event_id: @Event6.id, time:14231)
@Enrollment102556.save
EnrollmentData.new(enrollment_id: @Enrollment102554.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102554.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102553.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102556.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10256 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ville', last_name: 'Melkko', username: 'user10256', email: 'user10256@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10256, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10256.save
Result.new(name: 'Ville Melkko', city: 'Helsinki', group: 'Espoon Kepardit', year: 2014, series: 'M40', kk_number: '10256').save
@Enrollment102561 = Enrollment.new(user_id: @User10256.id, event_id: @Event1.id, time:4657)
@Enrollment102561.save
@Enrollment102562 = Enrollment.new(user_id: @User10256.id, event_id: @Event2.id, time:16785)
@Enrollment102562.save
@Enrollment102563 = Enrollment.new(user_id: @User10256.id, event_id: @Event3.id, time:6316)
@Enrollment102563.save
@Enrollment102565 = Enrollment.new(user_id: @User10256.id, event_id: @Event5.id, time:9095)
@Enrollment102565.save
EnrollmentData.new(enrollment_id: @Enrollment102562.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102563.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102561.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10257 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Kalliokoski', username: 'user10257', email: 'user10257@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10257, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10257.save
Result.new(name: 'Juha Kalliokoski', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10257').save
@Enrollment102571 = Enrollment.new(user_id: @User10257.id, event_id: @Event1.id, time:5111)
@Enrollment102571.save
@Enrollment102572 = Enrollment.new(user_id: @User10257.id, event_id: @Event2.id, time:33443)
@Enrollment102572.save
@Enrollment102573 = Enrollment.new(user_id: @User10257.id, event_id: @Event3.id, time:6044)
@Enrollment102573.save
@Enrollment102575 = Enrollment.new(user_id: @User10257.id, event_id: @Event5.id, time:8639)
@Enrollment102575.save
EnrollmentData.new(enrollment_id: @Enrollment102572.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102573.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102571.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10258 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tuula', last_name: 'Ruotsalainen-Piippo', username: 'user10258', email: 'user10258@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10258, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10258.save
Result.new(name: 'Tuula Ruotsalainen-Piippo', city: 'Helsinki', group: nil, year: 2014, series: 'N40', kk_number: '10258').save
@Enrollment102581 = Enrollment.new(user_id: @User10258.id, event_id: @Event1.id, time:4592)
@Enrollment102581.save
@Enrollment102582 = Enrollment.new(user_id: @User10258.id, event_id: @Event2.id, time:14147)
@Enrollment102582.save
@Enrollment102583 = Enrollment.new(user_id: @User10258.id, event_id: @Event3.id, time:7559)
@Enrollment102583.save
@Enrollment102584 = Enrollment.new(user_id: @User10258.id, event_id: @Event4.id, time:12649)
@Enrollment102584.save
EnrollmentData.new(enrollment_id: @Enrollment102584.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102584.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102582.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102583.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102581.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10259 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Rita', last_name: 'Stubb', username: 'user10259', email: 'user10259@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10259, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10259.save
Result.new(name: 'Rita Stubb', city: 'Helsinki', group: 'Hitaat Neidot', year: 2014, series: 'N40', kk_number: '10259').save
@Enrollment102592 = Enrollment.new(user_id: @User10259.id, event_id: @Event2.id, time:16941)
@Enrollment102592.save
@Enrollment102593 = Enrollment.new(user_id: @User10259.id, event_id: @Event3.id, time:7304)
@Enrollment102593.save
@Enrollment102594 = Enrollment.new(user_id: @User10259.id, event_id: @Event4.id, time:12352)
@Enrollment102594.save
@Enrollment102596 = Enrollment.new(user_id: @User10259.id, event_id: @Event6.id, time:11600)
@Enrollment102596.save
EnrollmentData.new(enrollment_id: @Enrollment102594.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102594.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102592.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102593.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102596.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10260 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kirsti', last_name: 'Siikamäki', username: 'user10260', email: 'user10260@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10260, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10260.save
Result.new(name: 'Kirsti Siikamäki', city: 'Helsinki', group: nil, year: 2014, series: 'N45', kk_number: '10260').save
@Enrollment102601 = Enrollment.new(user_id: @User10260.id, event_id: @Event1.id, time:4694)
@Enrollment102601.save
@Enrollment102602 = Enrollment.new(user_id: @User10260.id, event_id: @Event2.id, time:14647)
@Enrollment102602.save
@Enrollment102603 = Enrollment.new(user_id: @User10260.id, event_id: @Event3.id, time:7473)
@Enrollment102603.save
@Enrollment102606 = Enrollment.new(user_id: @User10260.id, event_id: @Event6.id, time:12087)
@Enrollment102606.save
EnrollmentData.new(enrollment_id: @Enrollment102602.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102603.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102601.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102606.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10261 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Matti', last_name: 'Raunio', username: 'user10261', email: 'user10261@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10261, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10261.save
Result.new(name: 'Matti Raunio', city: 'Helsinki', group: 'Kuntokonnat 2.', year: 2014, series: 'M60', kk_number: '10261').save
@Enrollment102611 = Enrollment.new(user_id: @User10261.id, event_id: @Event1.id, time:4287)
@Enrollment102611.save
@Enrollment102612 = Enrollment.new(user_id: @User10261.id, event_id: @Event2.id, time:16690)
@Enrollment102612.save
@Enrollment102613 = Enrollment.new(user_id: @User10261.id, event_id: @Event3.id, time:7377)
@Enrollment102613.save
@Enrollment102615 = Enrollment.new(user_id: @User10261.id, event_id: @Event5.id, time:9596)
@Enrollment102615.save
EnrollmentData.new(enrollment_id: @Enrollment102612.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102613.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102611.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10262 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Sirkku', last_name: 'Paukkunen', username: 'user10262', email: 'user10262@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10262, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10262.save
Result.new(name: 'Sirkku Paukkunen', city: 'Helsinki', group: nil, year: 2014, series: 'N50', kk_number: '10262').save
@Enrollment102622 = Enrollment.new(user_id: @User10262.id, event_id: @Event2.id, time:18316)
@Enrollment102622.save
@Enrollment102623 = Enrollment.new(user_id: @User10262.id, event_id: @Event3.id, time:8253)
@Enrollment102623.save
@Enrollment102624 = Enrollment.new(user_id: @User10262.id, event_id: @Event4.id, time:11542)
@Enrollment102624.save
@Enrollment102625 = Enrollment.new(user_id: @User10262.id, event_id: @Event5.id, time:9670)
@Enrollment102625.save
EnrollmentData.new(enrollment_id: @Enrollment102624.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102624.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102622.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102623.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10263 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Marjut', last_name: 'Vainio', username: 'user10263', email: 'user10263@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10263, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10263.save
Result.new(name: 'Marjut Vainio', city: 'Helsinki', group: 'KK Länsi-Uusimaa 2', year: 2014, series: 'N50', kk_number: '10263').save
@Enrollment102633 = Enrollment.new(user_id: @User10263.id, event_id: @Event3.id, time:8568)
@Enrollment102633.save
@Enrollment102634 = Enrollment.new(user_id: @User10263.id, event_id: @Event4.id, time:12067)
@Enrollment102634.save
@Enrollment102635 = Enrollment.new(user_id: @User10263.id, event_id: @Event5.id, time:8554)
@Enrollment102635.save
@Enrollment102636 = Enrollment.new(user_id: @User10263.id, event_id: @Event6.id, time:14991)
@Enrollment102636.save
EnrollmentData.new(enrollment_id: @Enrollment102634.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102634.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102633.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102636.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10264 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tapio', last_name: 'Moisio', username: 'user10264', email: 'user10264@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10264, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10264.save
Result.new(name: 'Tapio Moisio', city: 'Helsinki', group: 'ERRY ', year: 2014, series: 'M45', kk_number: '10264').save
@Enrollment102641 = Enrollment.new(user_id: @User10264.id, event_id: @Event1.id, time:5252)
@Enrollment102641.save
@Enrollment102643 = Enrollment.new(user_id: @User10264.id, event_id: @Event3.id, time:7887)
@Enrollment102643.save
@Enrollment102644 = Enrollment.new(user_id: @User10264.id, event_id: @Event4.id, time:11231)
@Enrollment102644.save
@Enrollment102645 = Enrollment.new(user_id: @User10264.id, event_id: @Event5.id, time:10662)
@Enrollment102645.save
EnrollmentData.new(enrollment_id: @Enrollment102644.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102644.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102643.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102641.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10265 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Anna', last_name: 'Kumpulainen', username: 'user10265', email: 'user10265@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10265, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10265.save
Result.new(name: 'Anna Kumpulainen', city: 'Helsinki', group: 'OJy Justiinat', year: 2014, series: 'N', kk_number: '10265').save
@Enrollment102651 = Enrollment.new(user_id: @User10265.id, event_id: @Event1.id, time:4509)
@Enrollment102651.save
@Enrollment102652 = Enrollment.new(user_id: @User10265.id, event_id: @Event2.id, time:15692)
@Enrollment102652.save
@Enrollment102653 = Enrollment.new(user_id: @User10265.id, event_id: @Event3.id, time:6966)
@Enrollment102653.save
@Enrollment102655 = Enrollment.new(user_id: @User10265.id, event_id: @Event5.id, time:10969)
@Enrollment102655.save
EnrollmentData.new(enrollment_id: @Enrollment102652.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102653.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102651.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10266 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Antti', last_name: 'Nikkola', username: 'user10266', email: 'user10266@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10266, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10266.save
Result.new(name: 'Antti Nikkola', city: 'Helsinki', group: nil, year: 2014, series: 'M55', kk_number: '10266').save
@Enrollment102661 = Enrollment.new(user_id: @User10266.id, event_id: @Event1.id, time:4801)
@Enrollment102661.save
@Enrollment102662 = Enrollment.new(user_id: @User10266.id, event_id: @Event2.id, time:14120)
@Enrollment102662.save
@Enrollment102663 = Enrollment.new(user_id: @User10266.id, event_id: @Event3.id, time:7985)
@Enrollment102663.save
@Enrollment102665 = Enrollment.new(user_id: @User10266.id, event_id: @Event5.id, time:10284)
@Enrollment102665.save
EnrollmentData.new(enrollment_id: @Enrollment102662.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102663.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102661.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10267 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Olli', last_name: 'Hyppänen', username: 'user10267', email: 'user10267@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10267, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10267.save
Result.new(name: 'Olli Hyppänen', city: 'Helsinki', group: 'ERRY ', year: 2014, series: 'M45', kk_number: '10267').save
@Enrollment102671 = Enrollment.new(user_id: @User10267.id, event_id: @Event1.id, time:4931)
@Enrollment102671.save
@Enrollment102674 = Enrollment.new(user_id: @User10267.id, event_id: @Event4.id, time:13351)
@Enrollment102674.save
@Enrollment102675 = Enrollment.new(user_id: @User10267.id, event_id: @Event5.id, time:10941)
@Enrollment102675.save
@Enrollment102676 = Enrollment.new(user_id: @User10267.id, event_id: @Event6.id, time:10957)
@Enrollment102676.save
EnrollmentData.new(enrollment_id: @Enrollment102674.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102674.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102671.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102676.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10268 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jorma', last_name: 'Niskanen', username: 'user10268', email: 'user10268@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10268, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10268.save
Result.new(name: 'Jorma Niskanen', city: 'Helsinki', group: 'Tuusulan Tallaajat III', year: 2014, series: 'M70', kk_number: '10268').save
@Enrollment102681 = Enrollment.new(user_id: @User10268.id, event_id: @Event1.id, time:4501)
@Enrollment102681.save
@Enrollment102683 = Enrollment.new(user_id: @User10268.id, event_id: @Event3.id, time:7520)
@Enrollment102683.save
@Enrollment102684 = Enrollment.new(user_id: @User10268.id, event_id: @Event4.id, time:11585)
@Enrollment102684.save
EnrollmentData.new(enrollment_id: @Enrollment102684.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102684.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102683.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102681.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10269 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Esa', last_name: 'Vainikainen', username: 'user10269', email: 'user10269@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10269, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10269.save
Result.new(name: 'Esa Vainikainen', city: 'Helsinki', group: nil, year: 2014, series: 'M50', kk_number: '10269').save
@Enrollment102691 = Enrollment.new(user_id: @User10269.id, event_id: @Event1.id, time:5240)
@Enrollment102691.save
@Enrollment102692 = Enrollment.new(user_id: @User10269.id, event_id: @Event2.id, time:18390)
@Enrollment102692.save
@Enrollment102695 = Enrollment.new(user_id: @User10269.id, event_id: @Event5.id, time:8863)
@Enrollment102695.save
@Enrollment102696 = Enrollment.new(user_id: @User10269.id, event_id: @Event6.id, time:11948)
@Enrollment102696.save
EnrollmentData.new(enrollment_id: @Enrollment102692.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102691.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102696.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10270 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pirjo', last_name: 'Leskinen', username: 'user10270', email: 'user10270@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10270, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10270.save
Result.new(name: 'Pirjo Leskinen', city: 'Helsinki', group: nil, year: 2014, series: 'N50', kk_number: '10270').save
@Enrollment102702 = Enrollment.new(user_id: @User10270.id, event_id: @Event2.id, time:18316)
@Enrollment102702.save
@Enrollment102703 = Enrollment.new(user_id: @User10270.id, event_id: @Event3.id, time:8457)
@Enrollment102703.save
@Enrollment102704 = Enrollment.new(user_id: @User10270.id, event_id: @Event4.id, time:11542)
@Enrollment102704.save
@Enrollment102705 = Enrollment.new(user_id: @User10270.id, event_id: @Event5.id, time:11466)
@Enrollment102705.save
EnrollmentData.new(enrollment_id: @Enrollment102704.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102704.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102702.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102703.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10271 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Maritta', last_name: 'Maanpää', username: 'user10271', email: 'user10271@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10271, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10271.save
Result.new(name: 'Maritta Maanpää', city: 'Helsinki', group: 'SM MAANPÄÄ ', year: 2014, series: 'N60', kk_number: '10271').save
@Enrollment102711 = Enrollment.new(user_id: @User10271.id, event_id: @Event1.id, time:4681)
@Enrollment102711.save
@Enrollment102713 = Enrollment.new(user_id: @User10271.id, event_id: @Event3.id, time:10045)
@Enrollment102713.save
@Enrollment102715 = Enrollment.new(user_id: @User10271.id, event_id: @Event5.id, time:9835)
@Enrollment102715.save
@Enrollment102716 = Enrollment.new(user_id: @User10271.id, event_id: @Event6.id, time:14920)
@Enrollment102716.save
EnrollmentData.new(enrollment_id: @Enrollment102713.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102711.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102716.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10272 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Petri', last_name: 'Uusiheimala', username: 'user10272', email: 'user10272@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10272, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10272.save
Result.new(name: 'Petri Uusiheimala', city: 'Helsinki', group: nil, year: 2014, series: 'M45', kk_number: '10272').save
@Enrollment102721 = Enrollment.new(user_id: @User10272.id, event_id: @Event1.id, time:5723)
@Enrollment102721.save
@Enrollment102723 = Enrollment.new(user_id: @User10272.id, event_id: @Event3.id, time:8967)
@Enrollment102723.save
@Enrollment102725 = Enrollment.new(user_id: @User10272.id, event_id: @Event5.id, time:8869)
@Enrollment102725.save
@Enrollment102726 = Enrollment.new(user_id: @User10272.id, event_id: @Event6.id, time:14939)
@Enrollment102726.save
EnrollmentData.new(enrollment_id: @Enrollment102723.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102721.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102726.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10273 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tauno', last_name: 'Hyppönen', username: 'user10273', email: 'user10273@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10273, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10273.save
Result.new(name: 'Tauno Hyppönen', city: 'Helsinki', group: 'Tuusulan Tallaajat IV', year: 2014, series: 'M65', kk_number: '10273').save
@Enrollment102731 = Enrollment.new(user_id: @User10273.id, event_id: @Event1.id, time:5364)
@Enrollment102731.save
@Enrollment102732 = Enrollment.new(user_id: @User10273.id, event_id: @Event2.id, time:17639)
@Enrollment102732.save
@Enrollment102734 = Enrollment.new(user_id: @User10273.id, event_id: @Event4.id, time:12953)
@Enrollment102734.save
@Enrollment102735 = Enrollment.new(user_id: @User10273.id, event_id: @Event5.id, time:10478)
@Enrollment102735.save
EnrollmentData.new(enrollment_id: @Enrollment102734.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102734.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102732.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102731.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10274 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Helena', last_name: 'Lappala', username: 'user10274', email: 'user10274@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10274, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10274.save
Result.new(name: 'Helena Lappala', city: 'Helsinki', group: nil, year: 2014, series: 'N40', kk_number: '10274').save
@Enrollment102741 = Enrollment.new(user_id: @User10274.id, event_id: @Event1.id, time:5746)
@Enrollment102741.save
@Enrollment102742 = Enrollment.new(user_id: @User10274.id, event_id: @Event2.id, time:15886)
@Enrollment102742.save
@Enrollment102745 = Enrollment.new(user_id: @User10274.id, event_id: @Event5.id, time:9615)
@Enrollment102745.save
@Enrollment102746 = Enrollment.new(user_id: @User10274.id, event_id: @Event6.id, time:14069)
@Enrollment102746.save
EnrollmentData.new(enrollment_id: @Enrollment102742.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102741.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102746.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10275 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Eija', last_name: 'Mäkinen', username: 'user10275', email: 'user10275@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10275, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10275.save
Result.new(name: 'Eija Mäkinen', city: 'Helsinki', group: 'Uskelan Urhot IV', year: 2014, series: 'N40', kk_number: '10275').save
@Enrollment102751 = Enrollment.new(user_id: @User10275.id, event_id: @Event1.id, time:5029)
@Enrollment102751.save
@Enrollment102752 = Enrollment.new(user_id: @User10275.id, event_id: @Event2.id, time:19410)
@Enrollment102752.save
@Enrollment102755 = Enrollment.new(user_id: @User10275.id, event_id: @Event5.id, time:10881)
@Enrollment102755.save
@Enrollment102756 = Enrollment.new(user_id: @User10275.id, event_id: @Event6.id, time:14967)
@Enrollment102756.save
EnrollmentData.new(enrollment_id: @Enrollment102752.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102751.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102756.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10276 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kauko', last_name: 'Vähä', username: 'user10276', email: 'user10276@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10276, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10276.save
Result.new(name: 'Kauko Vähä', city: 'Helsinki', group: nil, year: 2014, series: 'M70', kk_number: '10276').save
@Enrollment102761 = Enrollment.new(user_id: @User10276.id, event_id: @Event1.id, time:4466)
@Enrollment102761.save
@Enrollment102764 = Enrollment.new(user_id: @User10276.id, event_id: @Event4.id, time:14544)
@Enrollment102764.save
@Enrollment102765 = Enrollment.new(user_id: @User10276.id, event_id: @Event5.id, time:11688)
@Enrollment102765.save
@Enrollment102766 = Enrollment.new(user_id: @User10276.id, event_id: @Event6.id, time:22723)
@Enrollment102766.save
EnrollmentData.new(enrollment_id: @Enrollment102764.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102764.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102761.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102766.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10277 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Mäenpää', username: 'user10277', email: 'user10277@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10277, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10277.save
Result.new(name: 'Juha Mäenpää', city: 'Helsinki', group: nil, year: 2014, series: 'M50', kk_number: '10277').save
@Enrollment102771 = Enrollment.new(user_id: @User10277.id, event_id: @Event1.id, time:5383)
@Enrollment102771.save
@Enrollment102772 = Enrollment.new(user_id: @User10277.id, event_id: @Event2.id, time:19120)
@Enrollment102772.save
@Enrollment102773 = Enrollment.new(user_id: @User10277.id, event_id: @Event3.id, time:8001)
@Enrollment102773.save
@Enrollment102775 = Enrollment.new(user_id: @User10277.id, event_id: @Event5.id, time:13002)
@Enrollment102775.save
EnrollmentData.new(enrollment_id: @Enrollment102772.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102773.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102771.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10278 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Minna', last_name: 'Kotila', username: 'user10278', email: 'user10278@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10278, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10278.save
Result.new(name: 'Minna Kotila', city: 'Helsinki', group: nil, year: 2014, series: 'N', kk_number: '10278').save
@Enrollment102783 = Enrollment.new(user_id: @User10278.id, event_id: @Event3.id, time:9878)
@Enrollment102783.save
@Enrollment102784 = Enrollment.new(user_id: @User10278.id, event_id: @Event4.id, time:14728)
@Enrollment102784.save
@Enrollment102785 = Enrollment.new(user_id: @User10278.id, event_id: @Event5.id, time:11248)
@Enrollment102785.save
@Enrollment102786 = Enrollment.new(user_id: @User10278.id, event_id: @Event6.id, time:19920)
@Enrollment102786.save
EnrollmentData.new(enrollment_id: @Enrollment102784.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102784.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102783.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102786.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10279 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Hannu', last_name: 'Liekola', username: 'user10279', email: 'user10279@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10279, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10279.save
Result.new(name: 'Hannu Liekola', city: 'Helsinki', group: 'Sportia KT-SPORT', year: 2014, series: 'M45', kk_number: '10279').save
@Enrollment102792 = Enrollment.new(user_id: @User10279.id, event_id: @Event2.id, time:9400)
@Enrollment102792.save
@Enrollment102794 = Enrollment.new(user_id: @User10279.id, event_id: @Event4.id, time:10044)
@Enrollment102794.save
@Enrollment102795 = Enrollment.new(user_id: @User10279.id, event_id: @Event5.id, time:6349)
@Enrollment102795.save
EnrollmentData.new(enrollment_id: @Enrollment102794.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102794.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102792.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
@User10280 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kari', last_name: 'Kinnunen', username: 'user10280', email: 'user10280@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10280, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10280.save
Result.new(name: 'Kari Kinnunen', city: 'Helsinki', group: 'Kuntokonnat 1.', year: 2014, series: 'M50', kk_number: '10280').save
@Enrollment102801 = Enrollment.new(user_id: @User10280.id, event_id: @Event1.id, time:3437)
@Enrollment102801.save
@Enrollment102803 = Enrollment.new(user_id: @User10280.id, event_id: @Event3.id, time:11860)
@Enrollment102803.save
@Enrollment102805 = Enrollment.new(user_id: @User10280.id, event_id: @Event5.id, time:7031)
@Enrollment102805.save
EnrollmentData.new(enrollment_id: @Enrollment102803.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102801.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10281 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Antti', last_name: 'Lumme', username: 'user10281', email: 'user10281@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10281, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10281.save
Result.new(name: 'Antti Lumme', city: 'Helsinki', group: 'Uskelan Urhot I', year: 2014, series: 'M', kk_number: '10281').save
@Enrollment102811 = Enrollment.new(user_id: @User10281.id, event_id: @Event1.id, time:3387)
@Enrollment102811.save
@Enrollment102812 = Enrollment.new(user_id: @User10281.id, event_id: @Event2.id, time:19736)
@Enrollment102812.save
@Enrollment102815 = Enrollment.new(user_id: @User10281.id, event_id: @Event5.id, time:7001)
@Enrollment102815.save
EnrollmentData.new(enrollment_id: @Enrollment102812.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102811.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10282 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Asko', last_name: 'Lautamäki', username: 'user10282', email: 'user10282@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10282, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10282.save
Result.new(name: 'Asko Lautamäki', city: 'Helsinki', group: 'Tervakosken Pato 1.', year: 2014, series: 'M45', kk_number: '10282').save
@Enrollment102821 = Enrollment.new(user_id: @User10282.id, event_id: @Event1.id, time:3618)
@Enrollment102821.save
@Enrollment102823 = Enrollment.new(user_id: @User10282.id, event_id: @Event3.id, time:5669)
@Enrollment102823.save
@Enrollment102826 = Enrollment.new(user_id: @User10282.id, event_id: @Event6.id, time:6521)
@Enrollment102826.save
EnrollmentData.new(enrollment_id: @Enrollment102823.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102821.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102826.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10283 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Turo', last_name: 'Väätäinen', username: 'user10283', email: 'user10283@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10283, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10283.save
Result.new(name: 'Turo Väätäinen', city: 'Helsinki', group: 'Korvenpojat', year: 2014, series: 'M', kk_number: '10283').save
@Enrollment102831 = Enrollment.new(user_id: @User10283.id, event_id: @Event1.id, time:3894)
@Enrollment102831.save
@Enrollment102833 = Enrollment.new(user_id: @User10283.id, event_id: @Event3.id, time:5329)
@Enrollment102833.save
@Enrollment102834 = Enrollment.new(user_id: @User10283.id, event_id: @Event4.id, time:10648)
@Enrollment102834.save
EnrollmentData.new(enrollment_id: @Enrollment102834.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102834.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102833.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102831.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10284 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pauli', last_name: 'Uitto', username: 'user10284', email: 'user10284@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10284, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10284.save
Result.new(name: 'Pauli Uitto', city: 'Helsinki', group: 'Sportia KT-SPORT', year: 2014, series: 'M', kk_number: '10284').save
@Enrollment102841 = Enrollment.new(user_id: @User10284.id, event_id: @Event1.id, time:3981)
@Enrollment102841.save
@Enrollment102842 = Enrollment.new(user_id: @User10284.id, event_id: @Event2.id, time:11127)
@Enrollment102842.save
@Enrollment102845 = Enrollment.new(user_id: @User10284.id, event_id: @Event5.id, time:6630)
@Enrollment102845.save
EnrollmentData.new(enrollment_id: @Enrollment102842.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102841.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10285 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pekka', last_name: 'Aho', username: 'user10285', email: 'user10285@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10285, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10285.save
Result.new(name: 'Pekka Aho', city: 'Helsinki', group: 'KENSU-KK', year: 2014, series: 'M45', kk_number: '10285').save
@Enrollment102851 = Enrollment.new(user_id: @User10285.id, event_id: @Event1.id, time:3804)
@Enrollment102851.save
@Enrollment102852 = Enrollment.new(user_id: @User10285.id, event_id: @Event2.id, time:10498)
@Enrollment102852.save
@Enrollment102855 = Enrollment.new(user_id: @User10285.id, event_id: @Event5.id, time:7673)
@Enrollment102855.save
EnrollmentData.new(enrollment_id: @Enrollment102852.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102851.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10286 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mikko', last_name: 'Heino', username: 'user10286', email: 'user10286@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10286, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10286.save
Result.new(name: 'Mikko Heino', city: 'Helsinki', group: 'Turun NMKY', year: 2014, series: 'M40', kk_number: '10286').save
@Enrollment102862 = Enrollment.new(user_id: @User10286.id, event_id: @Event2.id, time:12291)
@Enrollment102862.save
@Enrollment102863 = Enrollment.new(user_id: @User10286.id, event_id: @Event3.id, time:5724)
@Enrollment102863.save
@Enrollment102865 = Enrollment.new(user_id: @User10286.id, event_id: @Event5.id, time:7770)
@Enrollment102865.save
EnrollmentData.new(enrollment_id: @Enrollment102862.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102863.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10287 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Aimo', last_name: 'Väisänen', username: 'user10287', email: 'user10287@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10287, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10287.save
Result.new(name: 'Aimo Väisänen', city: 'Helsinki', group: 'KENSU-KK', year: 2014, series: 'M60', kk_number: '10287').save
@Enrollment102872 = Enrollment.new(user_id: @User10287.id, event_id: @Event2.id, time:12269)
@Enrollment102872.save
@Enrollment102873 = Enrollment.new(user_id: @User10287.id, event_id: @Event3.id, time:6677)
@Enrollment102873.save
@Enrollment102874 = Enrollment.new(user_id: @User10287.id, event_id: @Event4.id, time:10251)
@Enrollment102874.save
EnrollmentData.new(enrollment_id: @Enrollment102874.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102874.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102872.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102873.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10288 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Sanna', last_name: 'Karjalainen', username: 'user10288', email: 'user10288@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10288, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10288.save
Result.new(name: 'Sanna Karjalainen', city: 'Helsinki', group: 'Uskelan Urhottaret', year: 2014, series: 'N', kk_number: '10288').save
@Enrollment102881 = Enrollment.new(user_id: @User10288.id, event_id: @Event1.id, time:3985)
@Enrollment102881.save
@Enrollment102885 = Enrollment.new(user_id: @User10288.id, event_id: @Event5.id, time:7851)
@Enrollment102885.save
@Enrollment102886 = Enrollment.new(user_id: @User10288.id, event_id: @Event6.id, time:8506)
@Enrollment102886.save
EnrollmentData.new(enrollment_id: @Enrollment102881.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102886.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10289 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Olli', last_name: 'Pakkanen', username: 'user10289', email: 'user10289@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10289, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10289.save
Result.new(name: 'Olli Pakkanen', city: 'Helsinki', group: 'Sveitsiläiset', year: 2014, series: 'M', kk_number: '10289').save
@Enrollment102891 = Enrollment.new(user_id: @User10289.id, event_id: @Event1.id, time:4533)
@Enrollment102891.save
@Enrollment102892 = Enrollment.new(user_id: @User10289.id, event_id: @Event2.id, time:25658)
@Enrollment102892.save
@Enrollment102893 = Enrollment.new(user_id: @User10289.id, event_id: @Event3.id, time:5371)
@Enrollment102893.save
EnrollmentData.new(enrollment_id: @Enrollment102892.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102893.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102891.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10290 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kristian', last_name: 'Myllymäki', username: 'user10290', email: 'user10290@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10290, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10290.save
Result.new(name: 'Kristian Myllymäki', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10290').save
@Enrollment102901 = Enrollment.new(user_id: @User10290.id, event_id: @Event1.id, time:4730)
@Enrollment102901.save
@Enrollment102905 = Enrollment.new(user_id: @User10290.id, event_id: @Event5.id, time:7840)
@Enrollment102905.save
@Enrollment102906 = Enrollment.new(user_id: @User10290.id, event_id: @Event6.id, time:7686)
@Enrollment102906.save
EnrollmentData.new(enrollment_id: @Enrollment102901.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102906.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10291 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Aarno', last_name: 'Tiirikainen', username: 'user10291', email: 'user10291@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10291, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10291.save
Result.new(name: 'Aarno Tiirikainen', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10291').save
@Enrollment102913 = Enrollment.new(user_id: @User10291.id, event_id: @Event3.id, time:7395)
@Enrollment102913.save
@Enrollment102914 = Enrollment.new(user_id: @User10291.id, event_id: @Event4.id, time:11421)
@Enrollment102914.save
@Enrollment102916 = Enrollment.new(user_id: @User10291.id, event_id: @Event6.id, time:10872)
@Enrollment102916.save
EnrollmentData.new(enrollment_id: @Enrollment102914.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102914.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102913.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102916.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10292 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Olli-Pekka', last_name: 'Hakala', username: 'user10292', email: 'user10292@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10292, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10292.save
Result.new(name: 'Olli-Pekka Hakala', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10292').save
@Enrollment102921 = Enrollment.new(user_id: @User10292.id, event_id: @Event1.id, time:4246)
@Enrollment102921.save
@Enrollment102922 = Enrollment.new(user_id: @User10292.id, event_id: @Event2.id, time:13524)
@Enrollment102922.save
@Enrollment102923 = Enrollment.new(user_id: @User10292.id, event_id: @Event3.id, time:6116)
@Enrollment102923.save
EnrollmentData.new(enrollment_id: @Enrollment102922.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102923.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102921.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10293 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Teemu', last_name: 'Sipilä', username: 'user10293', email: 'user10293@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10293, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10293.save
Result.new(name: 'Teemu Sipilä', city: 'Helsinki', group: 'Otaniemen Jyllääjät II', year: 2014, series: 'M', kk_number: '10293').save
@Enrollment102932 = Enrollment.new(user_id: @User10293.id, event_id: @Event2.id, time:13273)
@Enrollment102932.save
@Enrollment102933 = Enrollment.new(user_id: @User10293.id, event_id: @Event3.id, time:6975)
@Enrollment102933.save
@Enrollment102936 = Enrollment.new(user_id: @User10293.id, event_id: @Event6.id, time:9855)
@Enrollment102936.save
EnrollmentData.new(enrollment_id: @Enrollment102932.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102933.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102936.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10294 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kristiina', last_name: 'Sirviö', username: 'user10294', email: 'user10294@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10294, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10294.save
Result.new(name: 'Kristiina Sirviö', city: 'Helsinki', group: nil, year: 2014, series: 'N45', kk_number: '10294').save
@Enrollment102941 = Enrollment.new(user_id: @User10294.id, event_id: @Event1.id, time:4269)
@Enrollment102941.save
@Enrollment102942 = Enrollment.new(user_id: @User10294.id, event_id: @Event2.id, time:11843)
@Enrollment102942.save
@Enrollment102943 = Enrollment.new(user_id: @User10294.id, event_id: @Event3.id, time:7731)
@Enrollment102943.save
EnrollmentData.new(enrollment_id: @Enrollment102942.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102943.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102941.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10295 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markku', last_name: 'Paija', username: 'user10295', email: 'user10295@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10295, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10295.save
Result.new(name: 'Markku Paija', city: 'Helsinki', group: 'Tammelan Ryske', year: 2014, series: 'M45', kk_number: '10295').save
@Enrollment102951 = Enrollment.new(user_id: @User10295.id, event_id: @Event1.id, time:4360)
@Enrollment102951.save
@Enrollment102952 = Enrollment.new(user_id: @User10295.id, event_id: @Event2.id, time:16060)
@Enrollment102952.save
@Enrollment102956 = Enrollment.new(user_id: @User10295.id, event_id: @Event6.id, time:8295)
@Enrollment102956.save
EnrollmentData.new(enrollment_id: @Enrollment102952.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102951.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102956.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10296 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Hannu', last_name: 'Riippi', username: 'user10296', email: 'user10296@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10296, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10296.save
Result.new(name: 'Hannu Riippi', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10296').save
@Enrollment102961 = Enrollment.new(user_id: @User10296.id, event_id: @Event1.id, time:4795)
@Enrollment102961.save
@Enrollment102962 = Enrollment.new(user_id: @User10296.id, event_id: @Event2.id, time:14095)
@Enrollment102962.save
@Enrollment102963 = Enrollment.new(user_id: @User10296.id, event_id: @Event3.id, time:6592)
@Enrollment102963.save
EnrollmentData.new(enrollment_id: @Enrollment102962.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102963.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102961.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10297 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Sauli', last_name: 'Hakala', username: 'user10297', email: 'user10297@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10297, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10297.save
Result.new(name: 'Sauli Hakala', city: 'Helsinki', group: nil, year: 2014, series: 'M55', kk_number: '10297').save
@Enrollment102971 = Enrollment.new(user_id: @User10297.id, event_id: @Event1.id, time:4536)
@Enrollment102971.save
@Enrollment102972 = Enrollment.new(user_id: @User10297.id, event_id: @Event2.id, time:13577)
@Enrollment102972.save
@Enrollment102973 = Enrollment.new(user_id: @User10297.id, event_id: @Event3.id, time:7552)
@Enrollment102973.save
EnrollmentData.new(enrollment_id: @Enrollment102972.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102973.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102971.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10298 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Petteri', last_name: 'Hyppänen', username: 'user10298', email: 'user10298@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10298, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10298.save
Result.new(name: 'Petteri Hyppänen', city: 'Helsinki', group: 'ERRY ', year: 2014, series: 'M', kk_number: '10298').save
@Enrollment102981 = Enrollment.new(user_id: @User10298.id, event_id: @Event1.id, time:4730)
@Enrollment102981.save
@Enrollment102983 = Enrollment.new(user_id: @User10298.id, event_id: @Event3.id, time:7148)
@Enrollment102983.save
@Enrollment102984 = Enrollment.new(user_id: @User10298.id, event_id: @Event4.id, time:13351)
@Enrollment102984.save
EnrollmentData.new(enrollment_id: @Enrollment102984.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102984.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102983.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102981.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10299 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Vilma', last_name: 'Maanpää', username: 'user10299', email: 'user10299@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10299, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10299.save
Result.new(name: 'Vilma Maanpää', city: 'Helsinki', group: 'SM MAANPÄÄ ', year: 2014, series: 'N', kk_number: '10299').save
@Enrollment102991 = Enrollment.new(user_id: @User10299.id, event_id: @Event1.id, time:4181)
@Enrollment102991.save
@Enrollment102992 = Enrollment.new(user_id: @User10299.id, event_id: @Event2.id, time:17506)
@Enrollment102992.save
@Enrollment102993 = Enrollment.new(user_id: @User10299.id, event_id: @Event3.id, time:7606)
@Enrollment102993.save
EnrollmentData.new(enrollment_id: @Enrollment102992.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102993.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102991.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10300 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kimmo', last_name: 'Runtti', username: 'user10300', email: 'user10300@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10300, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10300.save
Result.new(name: 'Kimmo Runtti', city: 'Helsinki', group: 'Espoon Kepardit', year: 2014, series: 'M40', kk_number: '10300').save
@Enrollment103001 = Enrollment.new(user_id: @User10300.id, event_id: @Event1.id, time:5021)
@Enrollment103001.save
@Enrollment103005 = Enrollment.new(user_id: @User10300.id, event_id: @Event5.id, time:9310)
@Enrollment103005.save
@Enrollment103006 = Enrollment.new(user_id: @User10300.id, event_id: @Event6.id, time:11609)
@Enrollment103006.save
EnrollmentData.new(enrollment_id: @Enrollment103001.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103006.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10301 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juha', last_name: 'Kytömäki', username: 'user10301', email: 'user10301@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10301, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10301.save
Result.new(name: 'Juha Kytömäki', city: 'Helsinki', group: 'Korvenpojat', year: 2014, series: 'M55', kk_number: '10301').save
@Enrollment103012 = Enrollment.new(user_id: @User10301.id, event_id: @Event2.id, time:31835)
@Enrollment103012.save
@Enrollment103015 = Enrollment.new(user_id: @User10301.id, event_id: @Event5.id, time:10149)
@Enrollment103015.save
@Enrollment103016 = Enrollment.new(user_id: @User10301.id, event_id: @Event6.id, time:10724)
@Enrollment103016.save
EnrollmentData.new(enrollment_id: @Enrollment103012.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103016.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10302 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Henri', last_name: 'Nieminen', username: 'user10302', email: 'user10302@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10302, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10302.save
Result.new(name: 'Henri Nieminen', city: 'Helsinki', group: 'Tervakosken Pato 2.', year: 2014, series: 'M', kk_number: '10302').save
@Enrollment103022 = Enrollment.new(user_id: @User10302.id, event_id: @Event2.id, time:10044)
@Enrollment103022.save
@Enrollment103024 = Enrollment.new(user_id: @User10302.id, event_id: @Event4.id, time:10479)
@Enrollment103024.save
EnrollmentData.new(enrollment_id: @Enrollment103024.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103024.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103022.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
@User10303 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Rainer', last_name: 'Mäkelä', username: 'user10303', email: 'user10303@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10303, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10303.save
Result.new(name: 'Rainer Mäkelä', city: 'Helsinki', group: 'Reilut Miehet Havumetsien', year: 2014, series: 'M55', kk_number: '10303').save
@Enrollment103032 = Enrollment.new(user_id: @User10303.id, event_id: @Event2.id, time:19534)
@Enrollment103032.save
@Enrollment103034 = Enrollment.new(user_id: @User10303.id, event_id: @Event4.id, time:11225)
@Enrollment103034.save
EnrollmentData.new(enrollment_id: @Enrollment103034.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103034.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103032.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
@User10304 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mikko', last_name: 'Lappi', username: 'user10304', email: 'user10304@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10304, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10304.save
Result.new(name: 'Mikko Lappi', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10304').save
@Enrollment103043 = Enrollment.new(user_id: @User10304.id, event_id: @Event3.id, time:5881)
@Enrollment103043.save
@Enrollment103045 = Enrollment.new(user_id: @User10304.id, event_id: @Event5.id, time:7471)
@Enrollment103045.save
EnrollmentData.new(enrollment_id: @Enrollment103043.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10305 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Carl-Johan', last_name: 'Wasström', username: 'user10305', email: 'user10305@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10305, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10305.save
Result.new(name: 'Carl-Johan Wasström', city: 'Helsinki', group: 'KK Länsi-Uusimaa 3', year: 2014, series: 'M40', kk_number: '10305').save
@Enrollment103051 = Enrollment.new(user_id: @User10305.id, event_id: @Event1.id, time:4104)
@Enrollment103051.save
@Enrollment103052 = Enrollment.new(user_id: @User10305.id, event_id: @Event2.id, time:10593)
@Enrollment103052.save
EnrollmentData.new(enrollment_id: @Enrollment103052.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103051.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10306 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markku', last_name: 'Pulkkinen', username: 'user10306', email: 'user10306@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10306, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10306.save
Result.new(name: 'Markku Pulkkinen', city: 'Helsinki', group: 'GSK', year: 2014, series: 'M55', kk_number: '10306').save
@Enrollment103064 = Enrollment.new(user_id: @User10306.id, event_id: @Event4.id, time:11680)
@Enrollment103064.save
@Enrollment103065 = Enrollment.new(user_id: @User10306.id, event_id: @Event5.id, time:8554)
@Enrollment103065.save
EnrollmentData.new(enrollment_id: @Enrollment103064.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103064.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10307 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Suvi', last_name: 'Tiainen', username: 'user10307', email: 'user10307@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10307, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10307.save
Result.new(name: 'Suvi Tiainen', city: 'Helsinki', group: nil, year: 2014, series: 'N', kk_number: '10307').save
@Enrollment103071 = Enrollment.new(user_id: @User10307.id, event_id: @Event1.id, time:4057)
@Enrollment103071.save
@Enrollment103072 = Enrollment.new(user_id: @User10307.id, event_id: @Event2.id, time:12476)
@Enrollment103072.save
EnrollmentData.new(enrollment_id: @Enrollment103072.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103071.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10308 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markus', last_name: 'Peltola', username: 'user10308', email: 'user10308@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10308, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10308.save
Result.new(name: 'Markus Peltola', city: 'Helsinki', group: nil, year: 2014, series: 'M55', kk_number: '10308').save
@Enrollment103081 = Enrollment.new(user_id: @User10308.id, event_id: @Event1.id, time:3983)
@Enrollment103081.save
@Enrollment103082 = Enrollment.new(user_id: @User10308.id, event_id: @Event2.id, time:14199)
@Enrollment103082.save
EnrollmentData.new(enrollment_id: @Enrollment103082.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103081.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10309 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jussi', last_name: 'Voima', username: 'user10309', email: 'user10309@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10309, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10309.save
Result.new(name: 'Jussi Voima', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10309').save
@Enrollment103092 = Enrollment.new(user_id: @User10309.id, event_id: @Event2.id, time:17100)
@Enrollment103092.save
@Enrollment103095 = Enrollment.new(user_id: @User10309.id, event_id: @Event5.id, time:7307)
@Enrollment103095.save
EnrollmentData.new(enrollment_id: @Enrollment103092.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
@User10310 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Hannu', last_name: 'Jäppinen', username: 'user10310', email: 'user10310@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10310, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10310.save
Result.new(name: 'Hannu Jäppinen', city: 'Helsinki', group: 'Kuntokonnat 1.', year: 2014, series: 'M55', kk_number: '10310').save
@Enrollment103101 = Enrollment.new(user_id: @User10310.id, event_id: @Event1.id, time:4376)
@Enrollment103101.save
@Enrollment103102 = Enrollment.new(user_id: @User10310.id, event_id: @Event2.id, time:12904)
@Enrollment103102.save
EnrollmentData.new(enrollment_id: @Enrollment103102.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103101.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10311 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'antti', last_name: 'laitsaari', username: 'user10311', email: 'user10311@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10311, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10311.save
Result.new(name: 'antti laitsaari', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10311').save
@Enrollment103111 = Enrollment.new(user_id: @User10311.id, event_id: @Event1.id, time:4805)
@Enrollment103111.save
@Enrollment103114 = Enrollment.new(user_id: @User10311.id, event_id: @Event4.id, time:11498)
@Enrollment103114.save
EnrollmentData.new(enrollment_id: @Enrollment103114.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103114.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103111.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10312 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kirsi', last_name: 'Palohonka', username: 'user10312', email: 'user10312@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10312, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10312.save
Result.new(name: 'Kirsi Palohonka', city: 'Helsinki', group: 'Uskelan Urhottaret', year: 2014, series: 'N', kk_number: '10312').save
@Enrollment103122 = Enrollment.new(user_id: @User10312.id, event_id: @Event2.id, time:15256)
@Enrollment103122.save
@Enrollment103123 = Enrollment.new(user_id: @User10312.id, event_id: @Event3.id, time:6573)
@Enrollment103123.save
EnrollmentData.new(enrollment_id: @Enrollment103122.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103123.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10313 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ilkka', last_name: 'Kuuluvainen', username: 'user10313', email: 'user10313@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10313, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10313.save
Result.new(name: 'Ilkka Kuuluvainen', city: 'Helsinki', group: 'Selän Sitkeät 1.', year: 2014, series: 'M55', kk_number: '10313').save
@Enrollment103131 = Enrollment.new(user_id: @User10313.id, event_id: @Event1.id, time:4036)
@Enrollment103131.save
@Enrollment103132 = Enrollment.new(user_id: @User10313.id, event_id: @Event2.id, time:15413)
@Enrollment103132.save
EnrollmentData.new(enrollment_id: @Enrollment103132.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103131.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10314 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Sanna', last_name: 'Supponen', username: 'user10314', email: 'user10314@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10314, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10314.save
Result.new(name: 'Sanna Supponen', city: 'Helsinki', group: 'OJy Justiinat', year: 2014, series: 'N', kk_number: '10314').save
@Enrollment103141 = Enrollment.new(user_id: @User10314.id, event_id: @Event1.id, time:4158)
@Enrollment103141.save
@Enrollment103142 = Enrollment.new(user_id: @User10314.id, event_id: @Event2.id, time:16053)
@Enrollment103142.save
EnrollmentData.new(enrollment_id: @Enrollment103142.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103141.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10315 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Sanna', last_name: 'Lahtinen', username: 'user10315', email: 'user10315@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10315, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10315.save
Result.new(name: 'Sanna Lahtinen', city: 'Helsinki', group: nil, year: 2014, series: 'N', kk_number: '10315').save
@Enrollment103151 = Enrollment.new(user_id: @User10315.id, event_id: @Event1.id, time:4251)
@Enrollment103151.save
@Enrollment103152 = Enrollment.new(user_id: @User10315.id, event_id: @Event2.id, time:15767)
@Enrollment103152.save
EnrollmentData.new(enrollment_id: @Enrollment103152.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103151.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10316 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Heidi', last_name: 'Simberg', username: 'user10316', email: 'user10316@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10316, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10316.save
Result.new(name: 'Heidi Simberg', city: 'Helsinki', group: 'Selän sitkeät ruostumattomat', year: 2014, series: 'N', kk_number: '10316').save
@Enrollment103162 = Enrollment.new(user_id: @User10316.id, event_id: @Event2.id, time:15425)
@Enrollment103162.save
@Enrollment103163 = Enrollment.new(user_id: @User10316.id, event_id: @Event3.id, time:7277)
@Enrollment103163.save
EnrollmentData.new(enrollment_id: @Enrollment103162.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103163.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10317 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tero', last_name: 'Äijälä', username: 'user10317', email: 'user10317@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10317, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10317.save
Result.new(name: 'Tero Äijälä', city: 'Helsinki', group: 'Selän sitkeät sivistyneet', year: 2014, series: 'M55', kk_number: '10317').save
@Enrollment103171 = Enrollment.new(user_id: @User10317.id, event_id: @Event1.id, time:4614)
@Enrollment103171.save
@Enrollment103173 = Enrollment.new(user_id: @User10317.id, event_id: @Event3.id, time:8039)
@Enrollment103173.save
EnrollmentData.new(enrollment_id: @Enrollment103173.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103171.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10318 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jerry', last_name: 'Kettunen', username: 'user10318', email: 'user10318@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10318, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10318.save
Result.new(name: 'Jerry Kettunen', city: 'Helsinki', group: 'Pajulahti', year: 2014, series: 'M45', kk_number: '10318').save
@Enrollment103181 = Enrollment.new(user_id: @User10318.id, event_id: @Event1.id, time:4526)
@Enrollment103181.save
@Enrollment103183 = Enrollment.new(user_id: @User10318.id, event_id: @Event3.id, time:8523)
@Enrollment103183.save
EnrollmentData.new(enrollment_id: @Enrollment103183.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103181.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10319 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tapani', last_name: 'Laaksonen', username: 'user10319', email: 'user10319@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10319, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10319.save
Result.new(name: 'Tapani Laaksonen', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10319').save
@Enrollment103191 = Enrollment.new(user_id: @User10319.id, event_id: @Event1.id, time:5099)
@Enrollment103191.save
@Enrollment103194 = Enrollment.new(user_id: @User10319.id, event_id: @Event4.id, time:13305)
@Enrollment103194.save
EnrollmentData.new(enrollment_id: @Enrollment103194.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103194.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103191.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10320 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Sami', last_name: 'Kaijanen', username: 'user10320', email: 'user10320@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10320, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10320.save
Result.new(name: 'Sami Kaijanen', city: 'Helsinki', group: 'Selän sitkeät ruostumattomat', year: 2014, series: 'M45', kk_number: '10320').save
@Enrollment103201 = Enrollment.new(user_id: @User10320.id, event_id: @Event1.id, time:5172)
@Enrollment103201.save
@Enrollment103202 = Enrollment.new(user_id: @User10320.id, event_id: @Event2.id, time:15426)
@Enrollment103202.save
EnrollmentData.new(enrollment_id: @Enrollment103202.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103201.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10321 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Heikki', last_name: 'Tanhuanpää', username: 'user10321', email: 'user10321@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10321, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10321.save
Result.new(name: 'Heikki Tanhuanpää', city: 'Helsinki', group: 'Selän sitkeät sivistyneet', year: 2014, series: 'M60', kk_number: '10321').save
@Enrollment103211 = Enrollment.new(user_id: @User10321.id, event_id: @Event1.id, time:4678)
@Enrollment103211.save
@Enrollment103212 = Enrollment.new(user_id: @User10321.id, event_id: @Event2.id, time:18934)
@Enrollment103212.save
EnrollmentData.new(enrollment_id: @Enrollment103212.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103211.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10322 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Petri', last_name: 'Falck', username: 'user10322', email: 'user10322@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10322, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10322.save
Result.new(name: 'Petri Falck', city: 'Helsinki', group: nil, year: 2014, series: 'M45', kk_number: '10322').save
@Enrollment103221 = Enrollment.new(user_id: @User10322.id, event_id: @Event1.id, time:6677)
@Enrollment103221.save
@Enrollment103224 = Enrollment.new(user_id: @User10322.id, event_id: @Event4.id, time:11228)
@Enrollment103224.save
EnrollmentData.new(enrollment_id: @Enrollment103224.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103224.id, name: 'Parin nimi', value: '', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103221.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10323 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kalevi', last_name: 'Selander', username: 'user10323', email: 'user10323@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10323, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10323.save
Result.new(name: 'Kalevi Selander', city: 'Helsinki', group: 'Kankaanpään Kalevankiertäjät 2', year: 2014, series: 'M65', kk_number: '10323').save
@Enrollment103232 = Enrollment.new(user_id: @User10323.id, event_id: @Event2.id, time:20232)
@Enrollment103232.save
@Enrollment103235 = Enrollment.new(user_id: @User10323.id, event_id: @Event5.id, time:9252)
@Enrollment103235.save
EnrollmentData.new(enrollment_id: @Enrollment103232.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
@User10324 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Airi', last_name: 'Jäppinen', username: 'user10324', email: 'user10324@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10324, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10324.save
Result.new(name: 'Airi Jäppinen', city: 'Helsinki', group: nil, year: 2014, series: 'N60', kk_number: '10324').save
@Enrollment103242 = Enrollment.new(user_id: @User10324.id, event_id: @Event2.id, time:18613)
@Enrollment103242.save
@Enrollment103243 = Enrollment.new(user_id: @User10324.id, event_id: @Event3.id, time:8925)
@Enrollment103243.save
EnrollmentData.new(enrollment_id: @Enrollment103242.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103243.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10325 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tauno', last_name: 'Asukas', username: 'user10325', email: 'user10325@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10325, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10325.save
Result.new(name: 'Tauno Asukas', city: 'Helsinki', group: 'Kankaanpään Kalevankiertäjät 2', year: 2014, series: 'M60', kk_number: '10325').save
@Enrollment103252 = Enrollment.new(user_id: @User10325.id, event_id: @Event2.id, time:37425)
@Enrollment103252.save
@Enrollment103253 = Enrollment.new(user_id: @User10325.id, event_id: @Event3.id, time:9003)
@Enrollment103253.save
EnrollmentData.new(enrollment_id: @Enrollment103252.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103253.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10326 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Timo', last_name: 'Simell', username: 'user10326', email: 'user10326@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10326, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10326.save
Result.new(name: 'Timo Simell', city: 'Helsinki', group: nil, year: 2014, series: 'M45', kk_number: '10326').save
@Enrollment103261 = Enrollment.new(user_id: @User10326.id, event_id: @Event1.id, time:5986)
@Enrollment103261.save
@Enrollment103262 = Enrollment.new(user_id: @User10326.id, event_id: @Event2.id, time:18093)
@Enrollment103262.save
EnrollmentData.new(enrollment_id: @Enrollment103262.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103261.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10327 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tomi', last_name: 'Silvonen', username: 'user10327', email: 'user10327@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10327, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10327.save
Result.new(name: 'Tomi Silvonen', city: 'Helsinki', group: 'Selän Sitkeät 1.', year: 2014, series: 'M', kk_number: '10327').save
@Enrollment103274 = Enrollment.new(user_id: @User10327.id, event_id: @Event4.id, time:10016)
@Enrollment103274.save
EnrollmentData.new(enrollment_id: @Enrollment103274.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103274.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10328 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jari', last_name: 'Haverinen', username: 'user10328', email: 'user10328@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10328, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10328.save
Result.new(name: 'Jari Haverinen', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10328').save
@Enrollment103284 = Enrollment.new(user_id: @User10328.id, event_id: @Event4.id, time:10226)
@Enrollment103284.save
EnrollmentData.new(enrollment_id: @Enrollment103284.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103284.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10329 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pekka', last_name: 'Niemi', username: 'user10329', email: 'user10329@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10329, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10329.save
Result.new(name: 'Pekka Niemi', city: 'Helsinki', group: 'Kankaanpään Kalevankiertäjät 1', year: 2014, series: 'M70', kk_number: '10329').save
@Enrollment103292 = Enrollment.new(user_id: @User10329.id, event_id: @Event2.id, time:8482)
@Enrollment103292.save
EnrollmentData.new(enrollment_id: @Enrollment103292.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
@User10330 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Esa', last_name: 'Kymäläinen', username: 'user10330', email: 'user10330@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10330, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10330.save
Result.new(name: 'Esa Kymäläinen', city: 'Helsinki', group: 'Uskelan Urhot II', year: 2014, series: 'M40', kk_number: '10330').save
@Enrollment103301 = Enrollment.new(user_id: @User10330.id, event_id: @Event1.id, time:3243)
@Enrollment103301.save
EnrollmentData.new(enrollment_id: @Enrollment103301.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10331 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jaakko', last_name: 'Nurminen', username: 'user10331', email: 'user10331@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10331, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10331.save
Result.new(name: 'Jaakko Nurminen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10331').save
@Enrollment103314 = Enrollment.new(user_id: @User10331.id, event_id: @Event4.id, time:9921)
@Enrollment103314.save
EnrollmentData.new(enrollment_id: @Enrollment103314.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103314.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10332 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pentti', last_name: 'Satama', username: 'user10332', email: 'user10332@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10332, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10332.save
Result.new(name: 'Pentti Satama', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10332').save
@Enrollment103324 = Enrollment.new(user_id: @User10332.id, event_id: @Event4.id, time:9937)
@Enrollment103324.save
EnrollmentData.new(enrollment_id: @Enrollment103324.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103324.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10333 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Niklas', last_name: 'Nyman', username: 'user10333', email: 'user10333@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10333, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10333.save
Result.new(name: 'Niklas Nyman', city: 'Helsinki', group: 'KK Länsi-Uusimaa 3', year: 2014, series: 'M', kk_number: '10333').save
@Enrollment103332 = Enrollment.new(user_id: @User10333.id, event_id: @Event2.id, time:9193)
@Enrollment103332.save
EnrollmentData.new(enrollment_id: @Enrollment103332.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
@User10334 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Vesa', last_name: 'Vainio', username: 'user10334', email: 'user10334@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10334, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10334.save
Result.new(name: 'Vesa Vainio', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10334').save
@Enrollment103344 = Enrollment.new(user_id: @User10334.id, event_id: @Event4.id, time:10111)
@Enrollment103344.save
EnrollmentData.new(enrollment_id: @Enrollment103344.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103344.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10335 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Magnus', last_name: 'Hellström', username: 'user10335', email: 'user10335@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10335, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10335.save
Result.new(name: 'Magnus Hellström', city: 'Helsinki', group: 'KK Länsi-Uusimaa 3', year: 2014, series: 'M', kk_number: '10335').save
@Enrollment103352 = Enrollment.new(user_id: @User10335.id, event_id: @Event2.id, time:9879)
@Enrollment103352.save
EnrollmentData.new(enrollment_id: @Enrollment103352.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
@User10336 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Marko', last_name: 'Ollikainen', username: 'user10336', email: 'user10336@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10336, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10336.save
Result.new(name: 'Marko Ollikainen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10336').save
@Enrollment103364 = Enrollment.new(user_id: @User10336.id, event_id: @Event4.id, time:10563)
@Enrollment103364.save
EnrollmentData.new(enrollment_id: @Enrollment103364.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103364.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10337 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tuomas', last_name: 'Hakkarainen', username: 'user10337', email: 'user10337@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10337, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10337.save
Result.new(name: 'Tuomas Hakkarainen', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10337').save
@Enrollment103376 = Enrollment.new(user_id: @User10337.id, event_id: @Event6.id, time:7293)
@Enrollment103376.save
EnrollmentData.new(enrollment_id: @Enrollment103376.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10338 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Voitto', last_name: 'Jetsonen', username: 'user10338', email: 'user10338@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10338, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10338.save
Result.new(name: 'Voitto Jetsonen', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10338').save
@Enrollment103384 = Enrollment.new(user_id: @User10338.id, event_id: @Event4.id, time:10799)
@Enrollment103384.save
EnrollmentData.new(enrollment_id: @Enrollment103384.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103384.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10339 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jari', last_name: 'Mäkinen', username: 'user10339', email: 'user10339@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10339, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10339.save
Result.new(name: 'Jari Mäkinen', city: 'Helsinki', group: 'Hitaat 1', year: 2014, series: 'M45', kk_number: '10339').save
@Enrollment103391 = Enrollment.new(user_id: @User10339.id, event_id: @Event1.id, time:3664)
@Enrollment103391.save
EnrollmentData.new(enrollment_id: @Enrollment103391.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10340 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tuija', last_name: 'Kilpeläinen', username: 'user10340', email: 'user10340@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10340, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10340.save
Result.new(name: 'Tuija Kilpeläinen', city: 'Helsinki', group: nil, year: 2014, series: 'N40', kk_number: '10340').save
@Enrollment103404 = Enrollment.new(user_id: @User10340.id, event_id: @Event4.id, time:10982)
@Enrollment103404.save
EnrollmentData.new(enrollment_id: @Enrollment103404.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103404.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10341 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ulla', last_name: 'Yrjölä', username: 'user10341', email: 'user10341@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10341, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10341.save
Result.new(name: 'Ulla Yrjölä', city: 'Helsinki', group: nil, year: 2014, series: 'N', kk_number: '10341').save
@Enrollment103414 = Enrollment.new(user_id: @User10341.id, event_id: @Event4.id, time:10982)
@Enrollment103414.save
EnrollmentData.new(enrollment_id: @Enrollment103414.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103414.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10342 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Petri', last_name: 'Koponen', username: 'user10342', email: 'user10342@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10342, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10342.save
Result.new(name: 'Petri Koponen', city: 'Helsinki', group: 'GSK', year: 2014, series: 'M', kk_number: '10342').save
@Enrollment103423 = Enrollment.new(user_id: @User10342.id, event_id: @Event3.id, time:6296)
@Enrollment103423.save
EnrollmentData.new(enrollment_id: @Enrollment103423.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10343 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pekka', last_name: 'Tolvanen', username: 'user10343', email: 'user10343@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10343, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10343.save
Result.new(name: 'Pekka Tolvanen', city: 'Helsinki', group: 'Kuntokonnat 2.', year: 2014, series: 'M55', kk_number: '10343').save
@Enrollment103431 = Enrollment.new(user_id: @User10343.id, event_id: @Event1.id, time:3843)
@Enrollment103431.save
EnrollmentData.new(enrollment_id: @Enrollment103431.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10344 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Merja', last_name: 'Hakala', username: 'user10344', email: 'user10344@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10344, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10344.save
Result.new(name: 'Merja Hakala', city: 'Helsinki', group: nil, year: 2014, series: 'N40', kk_number: '10344').save
@Enrollment103446 = Enrollment.new(user_id: @User10344.id, event_id: @Event6.id, time:8496)
@Enrollment103446.save
EnrollmentData.new(enrollment_id: @Enrollment103446.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10345 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Timo', last_name: 'Kiiveri', username: 'user10345', email: 'user10345@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10345, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10345.save
Result.new(name: 'Timo Kiiveri', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10345').save
@Enrollment103456 = Enrollment.new(user_id: @User10345.id, event_id: @Event6.id, time:8629)
@Enrollment103456.save
EnrollmentData.new(enrollment_id: @Enrollment103456.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10346 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jouni', last_name: 'Oikarinen', username: 'user10346', email: 'user10346@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10346, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10346.save
Result.new(name: 'Jouni Oikarinen', city: 'Helsinki', group: nil, year: 2014, series: 'M50', kk_number: '10346').save
@Enrollment103461 = Enrollment.new(user_id: @User10346.id, event_id: @Event1.id, time:3908)
@Enrollment103461.save
EnrollmentData.new(enrollment_id: @Enrollment103461.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10347 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kirsi', last_name: 'Hiljanen', username: 'user10347', email: 'user10347@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10347, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10347.save
Result.new(name: 'Kirsi Hiljanen', city: 'Helsinki', group: nil, year: 2014, series: 'N50', kk_number: '10347').save
@Enrollment103474 = Enrollment.new(user_id: @User10347.id, event_id: @Event4.id, time:10241)
@Enrollment103474.save
EnrollmentData.new(enrollment_id: @Enrollment103474.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103474.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10348 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markku', last_name: 'Huotari', username: 'user10348', email: 'user10348@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10348, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10348.save
Result.new(name: 'Markku Huotari', city: 'Helsinki', group: 'Otaniemen Jyllääjät II', year: 2014, series: 'M40', kk_number: '10348').save
@Enrollment103486 = Enrollment.new(user_id: @User10348.id, event_id: @Event6.id, time:8819)
@Enrollment103486.save
EnrollmentData.new(enrollment_id: @Enrollment103486.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10349 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Niko', last_name: 'Järvenpää', username: 'user10349', email: 'user10349@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10349, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10349.save
Result.new(name: 'Niko Järvenpää', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10349').save
@Enrollment103493 = Enrollment.new(user_id: @User10349.id, event_id: @Event3.id, time:15375)
@Enrollment103493.save
EnrollmentData.new(enrollment_id: @Enrollment103493.id, name: 'Tyyppi', value: 'maraton', attribute_index: 1).save
@User10350 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kari', last_name: 'Majasaari', username: 'user10350', email: 'user10350@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10350, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10350.save
Result.new(name: 'Kari Majasaari', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10350').save
@Enrollment103503 = Enrollment.new(user_id: @User10350.id, event_id: @Event3.id, time:6742)
@Enrollment103503.save
EnrollmentData.new(enrollment_id: @Enrollment103503.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10351 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mauri', last_name: 'Saarinen', username: 'user10351', email: 'user10351@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10351, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10351.save
Result.new(name: 'Mauri Saarinen', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10351').save
@Enrollment103511 = Enrollment.new(user_id: @User10351.id, event_id: @Event1.id, time:4079)
@Enrollment103511.save
EnrollmentData.new(enrollment_id: @Enrollment103511.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10352 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Lasse', last_name: 'Lastuvuori', username: 'user10352', email: 'user10352@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10352, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10352.save
Result.new(name: 'Lasse Lastuvuori', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10352').save
@Enrollment103524 = Enrollment.new(user_id: @User10352.id, event_id: @Event4.id, time:11864)
@Enrollment103524.save
EnrollmentData.new(enrollment_id: @Enrollment103524.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103524.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10353 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mika', last_name: 'Nieminen', username: 'user10353', email: 'user10353@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10353, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10353.save
Result.new(name: 'Mika Nieminen', city: 'Helsinki', group: 'KK Länsi-Uusimaa 3', year: 2014, series: 'M', kk_number: '10353').save
@Enrollment103531 = Enrollment.new(user_id: @User10353.id, event_id: @Event1.id, time:4105)
@Enrollment103531.save
EnrollmentData.new(enrollment_id: @Enrollment103531.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10354 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kirsi', last_name: 'Ruohtula', username: 'user10354', email: 'user10354@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10354, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10354.save
Result.new(name: 'Kirsi Ruohtula', city: 'Helsinki', group: nil, year: 2014, series: 'N40', kk_number: '10354').save
@Enrollment103544 = Enrollment.new(user_id: @User10354.id, event_id: @Event4.id, time:12117)
@Enrollment103544.save
EnrollmentData.new(enrollment_id: @Enrollment103544.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103544.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10355 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Petteri', last_name: 'Sandell', username: 'user10355', email: 'user10355@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10355, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10355.save
Result.new(name: 'Petteri Sandell', city: 'Helsinki', group: 'Pajulahti', year: 2014, series: 'M40', kk_number: '10355').save
@Enrollment103551 = Enrollment.new(user_id: @User10355.id, event_id: @Event1.id, time:4230)
@Enrollment103551.save
EnrollmentData.new(enrollment_id: @Enrollment103551.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10356 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Maria', last_name: 'Sovasto', username: 'user10356', email: 'user10356@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10356, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10356.save
Result.new(name: 'Maria Sovasto', city: 'Helsinki', group: 'Selän Sitkeät Seireenit', year: 2014, series: 'N45', kk_number: '10356').save
@Enrollment103561 = Enrollment.new(user_id: @User10356.id, event_id: @Event1.id, time:4237)
@Enrollment103561.save
EnrollmentData.new(enrollment_id: @Enrollment103561.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10357 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Raimo', last_name: 'Nurmi', username: 'user10357', email: 'user10357@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10357, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10357.save
Result.new(name: 'Raimo Nurmi', city: 'Helsinki', group: 'GSK', year: 2014, series: 'M50', kk_number: '10357').save
@Enrollment103572 = Enrollment.new(user_id: @User10357.id, event_id: @Event2.id, time:25466)
@Enrollment103572.save
EnrollmentData.new(enrollment_id: @Enrollment103572.id, name: 'Tyyli', value: 'Pvapaa', attribute_index: 1).save
@User10358 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jaakko', last_name: 'Timperi', username: 'user10358', email: 'user10358@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10358, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10358.save
Result.new(name: 'Jaakko Timperi', city: 'Helsinki', group: nil, year: 2014, series: 'M70', kk_number: '10358').save
@Enrollment103581 = Enrollment.new(user_id: @User10358.id, event_id: @Event1.id, time:4267)
@Enrollment103581.save
EnrollmentData.new(enrollment_id: @Enrollment103581.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10359 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Kari', last_name: 'Niinistö', username: 'user10359', email: 'user10359@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10359, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10359.save
Result.new(name: 'Kari Niinistö', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10359').save
@Enrollment103596 = Enrollment.new(user_id: @User10359.id, event_id: @Event6.id, time:10479)
@Enrollment103596.save
EnrollmentData.new(enrollment_id: @Enrollment103596.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10360 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Petri', last_name: 'Meronen', username: 'user10360', email: 'user10360@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10360, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10360.save
Result.new(name: 'Petri Meronen', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10360').save
@Enrollment103604 = Enrollment.new(user_id: @User10360.id, event_id: @Event4.id, time:12310)
@Enrollment103604.save
EnrollmentData.new(enrollment_id: @Enrollment103604.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103604.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10361 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jaana', last_name: 'Kukkonen-Niinistö', username: 'user10361', email: 'user10361@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10361, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10361.save
Result.new(name: 'Jaana Kukkonen-Niinistö', city: 'Helsinki', group: nil, year: 2014, series: 'N50', kk_number: '10361').save
@Enrollment103616 = Enrollment.new(user_id: @User10361.id, event_id: @Event6.id, time:10804)
@Enrollment103616.save
EnrollmentData.new(enrollment_id: @Enrollment103616.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10362 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Sirkku', last_name: 'Riikonen', username: 'user10362', email: 'user10362@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10362, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10362.save
Result.new(name: 'Sirkku Riikonen', city: 'Helsinki', group: nil, year: 2014, series: 'N40', kk_number: '10362').save
@Enrollment103626 = Enrollment.new(user_id: @User10362.id, event_id: @Event6.id, time:10885)
@Enrollment103626.save
EnrollmentData.new(enrollment_id: @Enrollment103626.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10363 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jukka', last_name: 'Jokinen', username: 'user10363', email: 'user10363@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10363, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10363.save
Result.new(name: 'Jukka Jokinen', city: 'Helsinki', group: nil, year: 2014, series: 'M60', kk_number: '10363').save
@Enrollment103631 = Enrollment.new(user_id: @User10363.id, event_id: @Event1.id, time:4353)
@Enrollment103631.save
EnrollmentData.new(enrollment_id: @Enrollment103631.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10364 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Hannu', last_name: 'Liljemark', username: 'user10364', email: 'user10364@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10364, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10364.save
Result.new(name: 'Hannu Liljemark', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10364').save
@Enrollment103643 = Enrollment.new(user_id: @User10364.id, event_id: @Event3.id, time:7606)
@Enrollment103643.save
EnrollmentData.new(enrollment_id: @Enrollment103643.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10365 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Päivi', last_name: 'Puntila', username: 'user10365', email: 'user10365@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10365, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10365.save
Result.new(name: 'Päivi Puntila', city: 'Helsinki', group: nil, year: 2014, series: 'N40', kk_number: '10365').save
@Enrollment103654 = Enrollment.new(user_id: @User10365.id, event_id: @Event4.id, time:12649)
@Enrollment103654.save
EnrollmentData.new(enrollment_id: @Enrollment103654.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103654.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10366 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Lassi', last_name: 'Johansson', username: 'user10366', email: 'user10366@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10366, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10366.save
Result.new(name: 'Lassi Johansson', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10366').save
@Enrollment103661 = Enrollment.new(user_id: @User10366.id, event_id: @Event1.id, time:4431)
@Enrollment103661.save
EnrollmentData.new(enrollment_id: @Enrollment103661.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10367 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pasi', last_name: 'Koski', username: 'user10367', email: 'user10367@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10367, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10367.save
Result.new(name: 'Pasi Koski', city: 'Helsinki', group: 'KK Länsi-Uusimaa 2', year: 2014, series: 'M40', kk_number: '10367').save
@Enrollment103671 = Enrollment.new(user_id: @User10367.id, event_id: @Event1.id, time:4493)
@Enrollment103671.save
EnrollmentData.new(enrollment_id: @Enrollment103671.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10368 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Marko', last_name: 'Normi', username: 'user10368', email: 'user10368@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10368, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10368.save
Result.new(name: 'Marko Normi', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10368').save
@Enrollment103683 = Enrollment.new(user_id: @User10368.id, event_id: @Event3.id, time:7954)
@Enrollment103683.save
EnrollmentData.new(enrollment_id: @Enrollment103683.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
@User10369 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Veli-Matti', last_name: 'Vento', username: 'user10369', email: 'user10369@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10369, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10369.save
Result.new(name: 'Veli-Matti Vento', city: 'Helsinki', group: nil, year: 2014, series: 'M50', kk_number: '10369').save
@Enrollment103692 = Enrollment.new(user_id: @User10369.id, event_id: @Event2.id, time:15047)
@Enrollment103692.save
EnrollmentData.new(enrollment_id: @Enrollment103692.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
@User10370 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Outi', last_name: 'Montonen', username: 'user10370', email: 'user10370@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10370, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10370.save
Result.new(name: 'Outi Montonen', city: 'Helsinki', group: 'Selän Sitkeät Seireenit', year: 2014, series: 'N55', kk_number: '10370').save
@Enrollment103702 = Enrollment.new(user_id: @User10370.id, event_id: @Event2.id, time:14478)
@Enrollment103702.save
EnrollmentData.new(enrollment_id: @Enrollment103702.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
@User10371 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mira', last_name: 'Kyttälä', username: 'user10371', email: 'user10371@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10371, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10371.save
Result.new(name: 'Mira Kyttälä', city: 'Helsinki', group: 'KK Länsi-Uusimaa 2', year: 2014, series: 'N', kk_number: '10371').save
@Enrollment103711 = Enrollment.new(user_id: @User10371.id, event_id: @Event1.id, time:4852)
@Enrollment103711.save
EnrollmentData.new(enrollment_id: @Enrollment103711.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10372 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Maarit', last_name: 'Hannu', username: 'user10372', email: 'user10372@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10372, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10372.save
Result.new(name: 'Maarit Hannu', city: 'Helsinki', group: nil, year: 2014, series: 'N40', kk_number: '10372').save
@Enrollment103726 = Enrollment.new(user_id: @User10372.id, event_id: @Event6.id, time:13935)
@Enrollment103726.save
EnrollmentData.new(enrollment_id: @Enrollment103726.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10373 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Matti', last_name: 'Nieminen', username: 'user10373', email: 'user10373@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10373, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10373.save
Result.new(name: 'Matti Nieminen', city: 'Helsinki', group: nil, year: 2014, series: 'M70', kk_number: '10373').save
@Enrollment103734 = Enrollment.new(user_id: @User10373.id, event_id: @Event4.id, time:13932)
@Enrollment103734.save
EnrollmentData.new(enrollment_id: @Enrollment103734.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103734.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10374 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mari', last_name: 'Hjelt', username: 'user10374', email: 'user10374@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10374, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10374.save
Result.new(name: 'Mari Hjelt', city: 'Helsinki', group: nil, year: 2014, series: 'N40', kk_number: '10374').save
@Enrollment103746 = Enrollment.new(user_id: @User10374.id, event_id: @Event6.id, time:14714)
@Enrollment103746.save
EnrollmentData.new(enrollment_id: @Enrollment103746.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10375 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Maarit', last_name: 'Suomi', username: 'user10375', email: 'user10375@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10375, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10375.save
Result.new(name: 'Maarit Suomi', city: 'Helsinki', group: 'Uskelan Urhot IV', year: 2014, series: 'N50', kk_number: '10375').save
@Enrollment103751 = Enrollment.new(user_id: @User10375.id, event_id: @Event1.id, time:5024)
@Enrollment103751.save
EnrollmentData.new(enrollment_id: @Enrollment103751.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10376 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Markku', last_name: 'Kouhia', username: 'user10376', email: 'user10376@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10376, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10376.save
Result.new(name: 'Markku Kouhia', city: 'Helsinki', group: 'Hitaat 2', year: 2014, series: 'M55', kk_number: '10376').save
@Enrollment103761 = Enrollment.new(user_id: @User10376.id, event_id: @Event1.id, time:5030)
@Enrollment103761.save
EnrollmentData.new(enrollment_id: @Enrollment103761.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10377 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ville', last_name: 'Syrjänen', username: 'user10377', email: 'user10377@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10377, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10377.save
Result.new(name: 'Ville Syrjänen', city: 'Helsinki', group: nil, year: 2014, series: 'M45', kk_number: '10377').save
@Enrollment103772 = Enrollment.new(user_id: @User10377.id, event_id: @Event2.id, time:17372)
@Enrollment103772.save
EnrollmentData.new(enrollment_id: @Enrollment103772.id, name: 'Tyyli', value: 'Perinteinen', attribute_index: 1).save
@User10378 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Mikko', last_name: 'Niemi', username: 'user10378', email: 'user10378@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10378, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10378.save
Result.new(name: 'Mikko Niemi', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10378').save
@Enrollment103781 = Enrollment.new(user_id: @User10378.id, event_id: @Event1.id, time:5138)
@Enrollment103781.save
EnrollmentData.new(enrollment_id: @Enrollment103781.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10379 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Eeva', last_name: 'Matilainen', username: 'user10379', email: 'user10379@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10379, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10379.save
Result.new(name: 'Eeva Matilainen', city: 'Helsinki', group: nil, year: 2014, series: 'N60', kk_number: '10379').save
@Enrollment103796 = Enrollment.new(user_id: @User10379.id, event_id: @Event6.id, time:15943)
@Enrollment103796.save
EnrollmentData.new(enrollment_id: @Enrollment103796.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10380 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Risto', last_name: 'Viitanen', username: 'user10380', email: 'user10380@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10380, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10380.save
Result.new(name: 'Risto Viitanen', city: 'Helsinki', group: 'Tuusulan Tallaajat IV', year: 2014, series: 'M70', kk_number: '10380').save
@Enrollment103804 = Enrollment.new(user_id: @User10380.id, event_id: @Event4.id, time:14544)
@Enrollment103804.save
EnrollmentData.new(enrollment_id: @Enrollment103804.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103804.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10381 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Katri', last_name: 'Suppula', username: 'user10381', email: 'user10381@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10381, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10381.save
Result.new(name: 'Katri Suppula', city: 'Helsinki', group: 'Selän sitkeät ruostumattomat', year: 2014, series: 'N45', kk_number: '10381').save
@Enrollment103814 = Enrollment.new(user_id: @User10381.id, event_id: @Event4.id, time:15297)
@Enrollment103814.save
EnrollmentData.new(enrollment_id: @Enrollment103814.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103814.id, name: 'Parin nimi', value: '', attribute_index: 2).save
@User10382 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Matti', last_name: 'Vesala', username: 'user10382', email: 'user10382@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10382, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10382.save
Result.new(name: 'Matti Vesala', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10382').save
@Enrollment103821 = Enrollment.new(user_id: @User10382.id, event_id: @Event1.id, time:5244)
@Enrollment103821.save
EnrollmentData.new(enrollment_id: @Enrollment103821.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10383 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Aino', last_name: 'Tenhiälä', username: 'user10383', email: 'user10383@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10383, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10383.save
Result.new(name: 'Aino Tenhiälä', city: 'Helsinki', group: nil, year: 2014, series: 'N', kk_number: '10383').save
@Enrollment103831 = Enrollment.new(user_id: @User10383.id, event_id: @Event1.id, time:5558)
@Enrollment103831.save
EnrollmentData.new(enrollment_id: @Enrollment103831.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
@User10384 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Juhani', last_name: 'Enberg', username: 'user10384', email: 'user10384@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10384, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10384.save
Result.new(name: 'Juhani Enberg', city: 'Helsinki', group: nil, year: 2014, series: 'M70', kk_number: '10384').save
@Enrollment103846 = Enrollment.new(user_id: @User10384.id, event_id: @Event6.id, time:20289)
@Enrollment103846.save
EnrollmentData.new(enrollment_id: @Enrollment103846.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
