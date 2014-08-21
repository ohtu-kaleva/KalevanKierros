@Event1 = Event.new(name: 'Luistelu', factor: 2800, penalty_factor: 1.0, sport_type: 'SkatingEvent', start_date: Date.today + 1.month, end_date: Date.today + 2.month, second_end_date: Date.today + 3.month, price: 2000, second_price: 3000, description: 'Pistelaskun testaukseen')
@Event1.save
EventAttribute.new(name: 'Kierroslaskija', attribute_value: 'Kyllä', attribute_label: 'Tarvitsetko kierroslaskijan järjestäjän puolesta?', attribute_type: 'check_box', event_id: @Event1.id, attribute_index: 1).save
@Event2 = Event.new(name: 'Hiihto', factor: 2000, penalty_factor: 1.06, sport_type: 'SkiingEvent', start_date: Date.today + 1.month, end_date: Date.today + 2.month, second_end_date: Date.today + 3.month, price: 2000, second_price: 3000, description: 'Pistelaskun testaukseen')
@Event2.save
EventAttribute.new(name: 'Tyyli', attribute_value: 'Vapaa;Perinteinen', attribute_label: 'Valitse vapaa tai perinteinen tyyli.', attribute_type: 'radio_button', event_id: @Event2.id, attribute_index: 1).save
@Event3 = Event.new(name: 'Juoksu', factor: 2000, penalty_factor: 2.3, sport_type: 'RunningEvent', start_date: Date.today + 1.month, end_date: Date.today + 2.month, second_end_date: Date.today + 3.month, price: 2000, second_price: 3000, description: 'Pistelaskun testaukseen')
@Event3.save
EventAttribute.new(name: 'Tyyppi', attribute_value: 'maraton;puolimaraton', attribute_label: 'Valitse maraton tai puolimaraton', attribute_type: 'radio_button', event_id: @Event3.id, attribute_index: 1).save
@Event4 = Event.new(name: 'Soutu', factor: 3500, penalty_factor: 20.0, rowing_penalty: 12.0, sport_type: 'RowingEvent', start_date: Date.today + 1.month, end_date: Date.today + 2.month, second_end_date: Date.today + 3.month, price: 2000, second_price: 3000, description: 'Pistelaskun testaukseen')
@Event4.save
EventAttribute.new(name: 'Melonta', attribute_value: 'Soutu;Melonta', attribute_label: 'Soutu/melonta', attribute_type: 'select', event_id: @Event4.id, attribute_index: 1).save
EventAttribute.new(name: 'Tyyli', attribute_value: 'Yksin;Vuoro', attribute_label: 'Valitse soudatko yksin- tai vuorosoudun.', attribute_type: 'select', event_id: @Event4.id, attribute_index: 2).save
EventAttribute.new(name: 'Parin nimi', attribute_value: '', attribute_label: 'Jos soudat parin kanssa, kirjoita hänen nimensä tekstikenttään.', attribute_type: 'text_field', event_id: @Event4.id, attribute_index: 3).save
EventAttribute.new(name: 'Parin sukupuoli', attribute_value: 'M;F', attribute_label: 'Parisi sukupuoli.', attribute_type: 'select', event_id: @Event4.id, attribute_index: 4).save
EventAttribute.new(name: 'Parin syntymävuosi', attribute_value: '', attribute_label: 'Parisi syntymävuosi', attribute_type: 'text_field', event_id: @Event4.id, attribute_index: 5).save
EventAttribute.new(name: 'Onko pari kiertäjä', attribute_value: 'Ei;Kyllä', attribute_label: 'Onko parisi kiertäjä?', attribute_type: 'select', event_id: @Event4.id, attribute_index: 6).save
@Event5 = Event.new(name: 'Pyöräily', factor: 2800, penalty_factor: 1.0, sport_type: 'CyclingEvent', start_date: Date.today + 1.month, end_date: Date.today + 2.month, second_end_date: Date.today + 3.month, price: 2000, second_price: 3000, description: 'Pistelaskun testaukseen')
@Event5.save
@Event6 = Event.new(name: 'Suunnistus', factor: 1300, penalty_factor: 1.0, sport_type: 'OrienteeringEvent', start_date: Date.today + 1.month, end_date: Date.today + 2.month, second_end_date: Date.today + 3.month, price: 2000, second_price: 3000, description: 'Pistelaskun testaukseen')
@Event6.save
EventAttribute.new(name: 'Emit', attribute_value: 'Kyllä', attribute_label: 'Tarvitsetko emit-lähettimen järjestäjän puolesta?', attribute_type: 'check_box', event_id: @Event6.id, attribute_index: 1).save
User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Admin', last_name: 'von Admin', username: 'admin', email: 'admin@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10000, birth_date: Date.today, gender: 'M', admin: true, password: 'Salasana1', password_confirmation: 'Salasana1').save
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
EnrollmentData.new(enrollment_id: @Enrollment100014.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100014.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100014.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100014.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100014.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100024.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100024.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100024.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100024.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100024.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100034.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100034.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100034.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100034.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100034.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100044.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100054.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100054.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100054.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100054.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100054.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100064.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100074.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100084.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100094.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100104.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100104.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100104.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100104.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100104.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100114.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100114.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100114.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100114.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100114.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100124.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100134.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100134.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100134.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100134.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100134.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100144.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100154.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100154.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100154.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100154.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100154.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100164.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100174.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100184.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100194.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100204.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100204.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100204.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100204.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100204.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100214.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100214.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100214.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100214.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100214.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100224.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100234.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100244.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100244.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100244.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100244.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100244.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
EnrollmentData.new(enrollment_id: @Enrollment100242.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment100254.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100254.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100254.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100254.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100254.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100264.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100264.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100264.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100264.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100264.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100274.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100274.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100274.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100274.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100274.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100284.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100284.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100284.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100284.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100284.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100294.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100294.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100294.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100294.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100294.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100304.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100304.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100304.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100304.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100304.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100314.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100314.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100314.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100314.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100314.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100324.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100334.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100334.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100334.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100334.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100334.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100344.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100354.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100364.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100374.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100374.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100374.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100374.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100374.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100384.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100394.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100404.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100404.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100404.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100404.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100404.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100414.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100424.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100424.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100424.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100424.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100424.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100434.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100434.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100434.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100434.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100434.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100444.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100444.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100444.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100444.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100444.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100454.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100454.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100454.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100454.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100454.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100464.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100474.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100484.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100484.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100484.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100484.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100484.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100494.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100492.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment100504.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100504.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100504.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100504.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100504.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100514.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100514.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100514.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100514.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100514.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100524.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100524.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100524.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100524.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100524.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100534.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100534.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100534.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100534.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100534.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100544.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100544.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100544.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100544.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100544.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
EnrollmentData.new(enrollment_id: @Enrollment100542.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment100554.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100564.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100564.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100564.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100564.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100564.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100574.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100572.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment100584.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100584.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100584.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100584.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100584.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100594.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100594.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100594.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100594.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100594.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100604.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100614.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100624.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100634.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100644.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100644.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100644.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100644.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100644.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
EnrollmentData.new(enrollment_id: @Enrollment100642.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment100654.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100654.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100654.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100654.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100654.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100664.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100664.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100664.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100664.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100664.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100674.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100674.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100674.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100674.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100674.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100684.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100684.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100684.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100684.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100684.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100694.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100694.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100694.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100694.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100694.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
EnrollmentData.new(enrollment_id: @Enrollment100692.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment100704.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100704.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100704.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100704.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100704.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100714.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100714.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100714.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100714.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100714.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
EnrollmentData.new(enrollment_id: @Enrollment100712.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment100724.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100734.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100734.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100734.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100734.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100734.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100744.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100742.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100743.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100741.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment100746.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10075 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jyrki', last_name: 'Laurikainen', username: 'user10075', email: 'user10075@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10075, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10075.save
Result.new(name: 'Jyrki Laurikainen', city: 'Helsinki', group: 'ERRY', year: 2014, series: 'M40', kk_number: '10075').save
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
EnrollmentData.new(enrollment_id: @Enrollment100754.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100754.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100754.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100754.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100754.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100764.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100764.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100764.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100764.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100764.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100774.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100784.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100794.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100794.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100794.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100794.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100794.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100804.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100804.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100804.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100804.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100804.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100814.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100814.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100814.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100814.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100814.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100824.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100834.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100844.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100844.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100844.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100844.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100844.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100854.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100854.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100854.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100854.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100854.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100864.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100864.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100864.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100864.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100864.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100874.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100874.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100874.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100874.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100874.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100884.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100884.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100884.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100884.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100884.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100894.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100894.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100894.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100894.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100894.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100904.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100904.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100904.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100904.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100904.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100914.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100914.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100914.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100914.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100914.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100924.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100934.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100944.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100944.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100944.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100944.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100944.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100954.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100954.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100954.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100954.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100954.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100964.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100964.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100964.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100964.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100964.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment100974.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100974.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100974.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100974.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100974.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
EnrollmentData.new(enrollment_id: @Enrollment100972.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment100984.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment100994.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment100994.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment100994.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment100994.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment100994.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101004.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101014.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101024.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101024.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101024.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101024.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101024.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101034.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101044.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101044.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101044.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101044.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101044.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101054.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101054.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101054.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101054.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101054.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101064.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101064.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101064.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101064.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101064.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101074.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101074.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101074.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101074.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101074.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101084.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101084.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101084.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101084.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101084.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101094.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101104.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101104.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101104.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101104.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101104.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101114.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101114.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101114.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101114.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101114.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101124.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101124.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101124.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101124.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101124.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101134.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101144.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101144.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101144.id, name: 'Parin sukupuoli', value: 'M', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101144.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101144.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101154.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101154.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101154.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101154.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101154.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101164.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101174.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101174.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101174.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101174.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101174.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101184.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101194.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101194.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101194.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101194.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101194.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101204.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101204.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101204.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101204.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101204.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101214.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101214.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101214.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101214.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101214.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
EnrollmentData.new(enrollment_id: @Enrollment101212.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment101224.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101224.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101224.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101224.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101224.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101234.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101234.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101234.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101234.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101234.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101244.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101254.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101254.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101254.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101254.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101254.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101264.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101274.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101274.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101274.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101274.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101274.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101284.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101284.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101284.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101284.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101284.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
EnrollmentData.new(enrollment_id: @Enrollment101282.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101283.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101281.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101286.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10129 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pertti', last_name: 'ManneVuoro', username: 'user10129', email: 'user10129@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10129, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10129.save
Result.new(name: 'Pertti ManneVuoro', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10129').save
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
EnrollmentData.new(enrollment_id: @Enrollment101294.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101294.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101294.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101294.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101294.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101304.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101314.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101314.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101314.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101314.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101314.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101324.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101324.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101324.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101324.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101324.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101334.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101334.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101334.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101334.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101334.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101344.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101344.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101344.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101344.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101344.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101354.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101364.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101364.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101364.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101364.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101364.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101374.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101374.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101374.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101374.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101374.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101384.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101394.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101394.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101394.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101394.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101394.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101404.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101414.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101424.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101424.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101424.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101424.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101424.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101434.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101434.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101434.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101434.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101434.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101444.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101444.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101444.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101444.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101444.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101454.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101454.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101454.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101454.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101454.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101464.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101464.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101464.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101464.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101464.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101474.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101474.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101474.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101474.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101474.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101484.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101484.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101484.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101484.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101484.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101494.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101494.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101494.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101494.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101494.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101504.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101504.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101504.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101504.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101504.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101514.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101514.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101514.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101514.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101514.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101524.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101524.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101524.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101524.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101524.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101534.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101534.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101534.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101534.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101534.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101544.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101544.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101544.id, name: 'Parin sukupuoli', value: 'M', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101544.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101544.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101554.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101564.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101574.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101574.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101574.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101574.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101574.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101584.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101584.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101584.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101584.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101584.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101594.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101604.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101604.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101604.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101604.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101604.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101614.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101614.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101614.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101614.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101614.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101624.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101624.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101624.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101624.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101624.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101634.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101634.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101634.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101634.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101634.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101644.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101654.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101654.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101654.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101654.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101654.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101664.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101664.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101664.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101664.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101664.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101674.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101674.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101674.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101674.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101674.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101684.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101704.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101704.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101704.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101704.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101704.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101712.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment101724.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101724.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101724.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101724.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101724.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101734.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101734.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101734.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101734.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101734.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101744.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101754.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101754.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101754.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101754.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101754.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101774.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101774.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101774.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101774.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101774.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101784.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101784.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101784.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101784.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101784.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101804.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101814.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101814.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101814.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101814.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101814.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101824.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101834.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101834.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101834.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101834.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101834.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101854.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101854.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101854.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101854.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101854.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101864.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101864.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101864.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101864.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101864.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101874.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
Result.new(name: 'Eero Särkilahti', city: 'Helsinki', group: 'ERRY', year: 2014, series: 'M', kk_number: '10189').save
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
EnrollmentData.new(enrollment_id: @Enrollment101894.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101894.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101894.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101894.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101894.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101904.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101904.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101904.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101904.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101904.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101914.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101913.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101911.id, name: 'Kierroslaskija', value: 'Kyllä', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment101916.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10192 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tuomas', last_name: 'Särkilahti', username: 'user10192', email: 'user10192@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10192, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10192.save
Result.new(name: 'Tuomas Särkilahti', city: 'Helsinki', group: 'ERRY', year: 2014, series: 'M45', kk_number: '10192').save
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
EnrollmentData.new(enrollment_id: @Enrollment101924.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101924.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101924.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101924.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101924.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101944.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101944.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101944.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101944.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101944.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101954.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101954.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101954.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101954.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101954.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101964.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment101974.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101974.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101974.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101974.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101974.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101984.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101984.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101984.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101984.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101984.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment101994.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment101994.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment101994.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment101994.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment101994.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102004.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102004.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102004.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102004.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102004.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102014.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102014.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102014.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102014.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102014.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102044.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102044.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102044.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102044.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102044.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102054.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102054.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102054.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102054.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102054.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102074.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102074.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102074.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102074.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102074.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102094.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102094.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102094.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102094.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102094.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102104.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102104.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102104.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102104.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102104.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102114.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102114.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102114.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102114.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102114.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102124.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment102144.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment102154.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102154.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102154.id, name: 'Parin sukupuoli', value: 'M', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102154.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102154.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102164.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102164.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102164.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102164.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102164.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102184.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment102194.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment102214.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment102224.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment102244.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment102254.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment102274.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102274.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102274.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102274.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102274.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
EnrollmentData.new(enrollment_id: @Enrollment102272.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment102284.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102284.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102284.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102284.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102284.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102314.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102314.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102314.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102314.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102314.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102324.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102324.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102324.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102324.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102324.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102334.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102334.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102334.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102334.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102334.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102364.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102364.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102364.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102364.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102364.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102374.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102374.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102374.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102374.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102374.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102384.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102384.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102384.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102384.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102384.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102394.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102394.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102394.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102394.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102394.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102404.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102404.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102404.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102404.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102404.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102414.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102414.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102414.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102414.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102414.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102424.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102424.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102424.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102424.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102424.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102434.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102434.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102434.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102434.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102434.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102444.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment102474.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102474.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102474.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102474.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102474.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102504.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment102534.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102534.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102534.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102534.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102534.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102554.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102554.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102554.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102554.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102554.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102584.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102584.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102584.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102584.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102584.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102594.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102594.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102594.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102594.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102594.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102624.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102624.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102624.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102624.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102624.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102634.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102634.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102634.id, name: 'Parin sukupuoli', value: 'M', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102634.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102634.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
EnrollmentData.new(enrollment_id: @Enrollment102633.id, name: 'Tyyppi', value: 'puolimaraton', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102636.id, name: 'Emit', value: 'Kyllä', attribute_index: 1).save
@User10264 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Tapio', last_name: 'Moisio', username: 'user10264', email: 'user10264@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10264, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10264.save
Result.new(name: 'Tapio Moisio', city: 'Helsinki', group: 'ERRY', year: 2014, series: 'M45', kk_number: '10264').save
@Enrollment102641 = Enrollment.new(user_id: @User10264.id, event_id: @Event1.id, time:5252)
@Enrollment102641.save
@Enrollment102643 = Enrollment.new(user_id: @User10264.id, event_id: @Event3.id, time:7887)
@Enrollment102643.save
@Enrollment102644 = Enrollment.new(user_id: @User10264.id, event_id: @Event4.id, time:11231)
@Enrollment102644.save
@Enrollment102645 = Enrollment.new(user_id: @User10264.id, event_id: @Event5.id, time:10662)
@Enrollment102645.save
EnrollmentData.new(enrollment_id: @Enrollment102644.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102644.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102644.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102644.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102644.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102644.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
Result.new(name: 'Olli Hyppänen', city: 'Helsinki', group: 'ERRY', year: 2014, series: 'M45', kk_number: '10267').save
@Enrollment102671 = Enrollment.new(user_id: @User10267.id, event_id: @Event1.id, time:4931)
@Enrollment102671.save
@Enrollment102674 = Enrollment.new(user_id: @User10267.id, event_id: @Event4.id, time:13351)
@Enrollment102674.save
@Enrollment102675 = Enrollment.new(user_id: @User10267.id, event_id: @Event5.id, time:10941)
@Enrollment102675.save
@Enrollment102676 = Enrollment.new(user_id: @User10267.id, event_id: @Event6.id, time:10957)
@Enrollment102676.save
EnrollmentData.new(enrollment_id: @Enrollment102674.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102674.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102674.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102674.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102674.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102674.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102684.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102684.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102684.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102684.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102684.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102704.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102704.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102704.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102704.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102704.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102734.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102734.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102734.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102734.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102734.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102764.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102764.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102764.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102764.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102764.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102784.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102784.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102784.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102784.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102784.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102794.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment102812.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment102834.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102834.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102834.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102834.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102834.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102874.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102874.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102874.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102874.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102874.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment102892.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment102914.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
Result.new(name: 'Petteri Hyppänen', city: 'Helsinki', group: 'ERRY', year: 2014, series: 'M', kk_number: '10298').save
@Enrollment102981 = Enrollment.new(user_id: @User10298.id, event_id: @Event1.id, time:4730)
@Enrollment102981.save
@Enrollment102983 = Enrollment.new(user_id: @User10298.id, event_id: @Event3.id, time:7148)
@Enrollment102983.save
@Enrollment102984 = Enrollment.new(user_id: @User10298.id, event_id: @Event4.id, time:13351)
@Enrollment102984.save
EnrollmentData.new(enrollment_id: @Enrollment102984.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment102984.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment102984.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment102984.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment102984.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment102984.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103024.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103022.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
@User10303 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Rainer', last_name: 'Mäkelä', username: 'user10303', email: 'user10303@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10303, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10303.save
Result.new(name: 'Rainer Mäkelä', city: 'Helsinki', group: 'Reilut Miehet Havumetsien', year: 2014, series: 'M55', kk_number: '10303').save
@Enrollment103032 = Enrollment.new(user_id: @User10303.id, event_id: @Event2.id, time:19534)
@Enrollment103032.save
@Enrollment103034 = Enrollment.new(user_id: @User10303.id, event_id: @Event4.id, time:11225)
@Enrollment103034.save
EnrollmentData.new(enrollment_id: @Enrollment103034.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103034.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103032.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment103064.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103064.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103064.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103064.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103064.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103114.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103114.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103114.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103114.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103114.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103194.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103194.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103194.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103194.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103194.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103224.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103224.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103224.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103224.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103224.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103274.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
@User10328 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Jari', last_name: 'Haverinen', username: 'user10328', email: 'user10328@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10328, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10328.save
Result.new(name: 'Jari Haverinen', city: 'Helsinki', group: nil, year: 2014, series: 'M40', kk_number: '10328').save
@Enrollment103284 = Enrollment.new(user_id: @User10328.id, event_id: @Event4.id, time:10226)
@Enrollment103284.save
EnrollmentData.new(enrollment_id: @Enrollment103284.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103284.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
EnrollmentData.new(enrollment_id: @Enrollment103314.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103314.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103314.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103314.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103314.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
@User10332 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Pentti', last_name: 'Satama', username: 'user10332', email: 'user10332@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10332, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10332.save
Result.new(name: 'Pentti Satama', city: 'Helsinki', group: nil, year: 2014, series: 'M', kk_number: '10332').save
@Enrollment103324 = Enrollment.new(user_id: @User10332.id, event_id: @Event4.id, time:9937)
@Enrollment103324.save
EnrollmentData.new(enrollment_id: @Enrollment103324.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103324.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103324.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103324.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103324.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103324.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103344.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103344.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103344.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103344.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103344.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103364.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103364.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103364.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103364.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103364.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103384.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103384.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103384.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103384.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103384.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103404.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103404.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103404.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103404.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103404.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
@User10341 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Ulla', last_name: 'Yrjölä', username: 'user10341', email: 'user10341@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10341, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10341.save
Result.new(name: 'Ulla Yrjölä', city: 'Helsinki', group: nil, year: 2014, series: 'N', kk_number: '10341').save
@Enrollment103414 = Enrollment.new(user_id: @User10341.id, event_id: @Event4.id, time:10982)
@Enrollment103414.save
EnrollmentData.new(enrollment_id: @Enrollment103414.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103414.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103414.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103414.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103414.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103414.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103474.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103474.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103474.id, name: 'Parin sukupuoli', value: 'M', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103474.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103474.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
@User10352 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Lasse', last_name: 'LastuVuorori', username: 'user10352', email: 'user10352@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10352, birth_date: Date.today, gender: 'M', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10352.save
Result.new(name: 'Lasse LastuVuorori', city: 'Helsinki', group: nil, year: 2014, series: 'M65', kk_number: '10352').save
@Enrollment103524 = Enrollment.new(user_id: @User10352.id, event_id: @Event4.id, time:11864)
@Enrollment103524.save
EnrollmentData.new(enrollment_id: @Enrollment103524.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103524.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103524.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103524.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103524.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103524.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103544.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103544.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103544.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103544.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103544.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103572.id, name: 'Tyyli', value: 'Vapaa', attribute_index: 1).save
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
EnrollmentData.new(enrollment_id: @Enrollment103604.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103604.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103604.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103604.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103604.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103654.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103654.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103654.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103654.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103654.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103734.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103734.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103734.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103734.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103734.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
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
EnrollmentData.new(enrollment_id: @Enrollment103804.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
EnrollmentData.new(enrollment_id: @Enrollment103804.id, name: 'Parin nimi', value: 'tuntematon', attribute_index: 3).save
EnrollmentData.new(enrollment_id: @Enrollment103804.id, name: 'Parin sukupuoli', value: 'F', attribute_index: 4).save
EnrollmentData.new(enrollment_id: @Enrollment103804.id, name: 'Parin syntymävuosi', value: Date.today.year, attribute_index: 5).save
EnrollmentData.new(enrollment_id: @Enrollment103804.id, name: 'Onko pari kiertäjä', value: 'Ei', attribute_index: 6).save
@User10381 = User.new(postal_code: '00100', city: 'Helsinki', first_name: 'Katri', last_name: 'Suppula', username: 'user10381', email: 'user10381@test.com', phone_number: 12345, street_address: 'Katuosoite', kk_number: 10381, birth_date: Date.today, gender: 'N', admin: false, password: 'Salasana1', password_confirmation: 'Salasana1', active: true)
@User10381.save
Result.new(name: 'Katri Suppula', city: 'Helsinki', group: 'Selän sitkeät ruostumattomat', year: 2014, series: 'N45', kk_number: '10381').save
@Enrollment103814 = Enrollment.new(user_id: @User10381.id, event_id: @Event4.id, time:15297)
@Enrollment103814.save
EnrollmentData.new(enrollment_id: @Enrollment103814.id, name: 'Melonta', value: 'Soutu', attribute_index: 1).save
EnrollmentData.new(enrollment_id: @Enrollment103814.id, name: 'Tyyli', value: 'Yksin', attribute_index: 2).save
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
columns = [:kk_number, :user_id, :last_name, :first_name, :city, :birth_year, :six_events_completed_count,
           :five_events_completed_count, :four_events_completed_count, :total_events_completed,
           :pts_sum, :position, :p, :r, :a, :ap, :k, :v]

values = []
values.push [14062359, nil, 'Aalto','Antti','ESPOO',1949,0,0,1,4,1410,2738,nil,'R',0,nil,0,0]
values.push [1316489, nil, 'Aalto','Auli','Janakkala',1970,1,0,0,6,2117,2235,'P',nil,0,nil,0,0]
values.push [1300013, nil, 'Aalto','Eero','Lohja',1946,20,8,2,174,117667,27,nil,'R',252,nil,110,31]
values.push [14062368, nil, 'Aalto','Jorma','HELSINKI',1943,0,0,1,4,1032,2803,nil,'R',0,nil,0,0]
values.push [1328671, nil, 'Aalto','Marja-Leena','Rauma',1959,1,2,1,20,4413.5,1162,'P',nil,0,nil,0,0]
values.push [14062377, nil, 'Aalto','Matti','RAISIO',1955,6,0,0,36,23865,661,nil,'R',598,nil,0,0]
values.push [14062386, nil, 'Aalto','Mikko','VANTAA',1963,1,1,1,15,7564,1402,nil,'R',0,nil,0,0]
values.push [1327957, nil, 'Aaltola','Seppo','Rauma',1951,2,2,0,22,13452.5,1078,'P','R',0,nil,0,0]
values.push [14062395, nil, 'Aaltonen','Aaro','MÄNTTÄ',1956,5,0,0,30,22021,865,nil,'R',73,nil,0,0]
values.push [1300039, nil, 'Aaltonen','Reijo','Salo',1939,1,1,0,11,5247,1660,nil,'R',0,nil,0,0]
values.push [14062407, nil, 'Aaltonen','Risto','HOLLOLA',1956,1,1,1,15,9272,1387,nil,'R',0,nil,0,0]
values.push [1325742, nil, 'Aaltonen','Verneri','Kerava',1987,1,1,0,11,0,1698,'P',nil,0,nil,0,0]
values.push [14062416, nil, 'Aapro','Matti','ÄÄNEKOSKI',1945,1,1,0,11,5375,1656,nil,'R',0,nil,0,0]
values.push [1300042, nil, 'Aarni','Pekka','Perniö as',1935,9,1,4,75,28858,255,'P','R',343,nil,171,0]
values.push [14062425, nil, 'Aarnio','Kimmo','KAARINA',1962,2,1,0,17,8501,1298,nil,'R',0,nil,0,0]
values.push [1329531, nil, 'Aarrejoki','Heikki','Jyväskylä',1969,2,3,0,27,10656,978,'P',nil,0,nil,0,0]
values.push [1300055, nil, 'Adler','Matti','Vantaa',1947,2,3,3,39,19447,615,nil,'R',671,nil,0,0]
values.push [14062434, nil, 'Adolfsson','Fjalar','ESPOO',1933,0,0,1,4,1166,2781,nil,'R',0,nil,0,0]
values.push [1300068, nil, 'Ahlberg','Sakari','Kuopio',1950,4,1,2,37,26623,643,nil,'R',702,nil,0,0]
values.push [1300071, nil, 'Ahlgren','Antti','Espoo',1972,0,0,1,4,1736,2697,nil,'R',0,nil,0,0]
values.push [1330009, nil, 'Ahlqvist','Pekka','Vantaa',1946,3,2,3,46,26009,498,'P','R',793,nil,0,0]
values.push [1300084, nil, 'Ahlstedt','Eeva','Helsinki',1941,4,2,2,42,17567.5,562,'P','R',611,nil,0,0]
values.push [1332230, nil, 'Ahlström','Helena','Ylöjärvi',1957,1,0,0,6,1573.5,2283,'P',nil,0,nil,0,0]
values.push [14062443, nil, 'Aho','Mauri','HELSINKI',1934,1,0,0,6,4677,1966,nil,'R',0,nil,0,0]
values.push [1334322, nil, 'Ahokas','Ari','Pori',1956,1,1,0,11,3878,1677,'P',nil,0,nil,0,0]
values.push [1300097, nil, 'Ahokas','Arto','Pori',1954,5,1,4,51,22319,452,'P','R',0,'A047',0,0]
values.push [1326042, nil, 'Ahokas','Eija','Helsinki',1957,0,0,1,4,826,2833,'P',nil,0,nil,0,0]
values.push [14062452, nil, 'Ahokas','Pertti','RAUMA',1939,0,0,2,8,4797,1893,nil,nil,0,nil,0,0]
values.push [13132657, nil, 'Ahola','Annika','PORI',1975,0,0,1,4,1165,2782,'P',nil,0,nil,0,0]
values.push [14062461, nil, 'Ahola','Heikki','TAMPERE',1946,1,0,1,10,5295,1749,nil,'R',0,nil,0,0]
values.push [1300107, nil, 'Ahola','Joel','Pori',1976,2,3,1,31,19312,827,nil,'R',664,nil,0,0]
values.push [1300110, nil, 'Ahola','Joonas','Masala',1972,5,3,0,45,36769,503,nil,'R',747,nil,0,0]
values.push [14062470, nil, 'Ahola','Pirjo','HÄMEENLINNA',1954,2,0,0,12,6581,1540,nil,'R',0,nil,0,0]
values.push [14062489, nil, 'Ahola','Sulo','PORI',1947,3,2,1,32,16325,800,nil,'R',660,nil,0,0]
values.push [1300136, nil, 'Ahola','Timo','Uusikaupunki',1951,5,5,2,63,28822,348,nil,'R',717,nil,340,0]
values.push [14062498, nil, 'Ahola','Veikko','VAMMALA',1928,2,0,0,12,3545,1589,nil,nil,0,nil,0,0]
values.push [1300149, nil, 'Ahonen','Antti','Espoo',1943,7,7,6,101,32339.5,154,'P','R',326,nil,162,0]
values.push [1300152, nil, 'Ahonen','Jari','ESPOO',1963,7,2,1,56,46851,416,'P','R',546,nil,0,0]
values.push [1300165, nil, 'Ahonen','Jukka','Järvelä',1977,0,0,1,4,2200,2649,nil,'R',0,nil,0,0]
values.push [13132787, nil, 'Ahonen','Jukka','Kärkölä',1900,1,0,0,6,3863,2045,nil,'R',0,nil,0,0]
values.push [14062500, nil, 'Ahonen','Lasse','JANAKKALA',1947,7,0,0,42,30941,553,nil,'R',175,nil,0,0]
values.push [1300178, nil, 'Ahonen','Mikko','Oulu',1972,2,4,1,36,22905,663,nil,'R',726,nil,0,0]
values.push [14062519, nil, 'Ahonen','Olavi','TAMPERE',1948,1,0,0,7,2274,1936,'P','R',0,nil,0,0]
values.push [14062528, nil, 'Ahonen','Olli','NURMIJÄRVI',1946,9,1,1,63,40538,345,nil,'R',182,nil,95,0]
values.push [14062537, nil, 'Ahonen','Pertti','IKAALINEN',1951,0,0,1,4,1276,2762,nil,'R',0,nil,0,0]
values.push [1300181, nil, 'Ahonen','Teppo','Hämeenlinna',1965,0,0,1,4,1548,2721,'P',nil,0,nil,0,0]
values.push [14062546, nil, 'Ahonen','Unto','KIVIJÄRVI',1934,0,1,0,5,2171,2438,nil,nil,0,nil,0,0]
values.push [1307919, nil, 'Aho-Vinkka','Timo','Itäkylä',1954,0,1,1,9,5427,1827,nil,'R',0,nil,0,0]
values.push [1336304, nil, 'Ahtola','Jari','Nurmijärvi',1968,1,1,0,11,8581,1607,nil,'R',0,nil,0,0]
values.push [14062555, nil, 'Ahvonen','Erkki','JOUTSENO',1940,2,1,0,17,10142,1288,nil,'R',0,nil,0,0]
values.push [1335907, nil, 'Aittokallio','Esa','Hyvinkää',1967,2,0,0,12,3273,1592,'P',nil,0,nil,0,0]
values.push [14062564, nil, 'Aittola','Eero','LOHJA',1942,6,1,1,45,28920,508,nil,'R',200,nil,0,0]
values.push [14062573, nil, 'Aittomäki','Mauno','LOHJA',1923,0,1,0,5,1303,2516,nil,nil,0,nil,0,0]
values.push [14062582, nil, 'Aittomäki','Risto','ESPOO',1947,7,1,3,59,26495,404,nil,'R',92,nil,0,0]
values.push [14062591, nil, 'Ala-Lahti','Veli-Pekka','ALAVUS',1958,0,1,1,9,6725,1814,nil,'R',0,nil,0,0]
values.push [14062612, nil, 'Alaluusua','Pekka','RAISIO',1960,3,0,0,18,14010,1204,nil,'R',0,nil,0,0]
values.push [1300217, nil, 'Alanen','Hannu','Tampere',1957,1,0,1,10,4844,1757,nil,'R',0,nil,0,0]
values.push [1300220, nil, 'Alanko','Eila','Vantaa',1948,4,0,3,36,13812,675,'P','R',0,nil,0,0]
values.push [1300233, nil, 'Alanne','Jarkko','Turku',1972,1,0,0,6,2185,2228,'P',nil,0,nil,0,0]
values.push [1330070, nil, 'Alarautalahti','Toivo','Forssa',1977,1,0,0,6,3297,2115,nil,'R',0,nil,0,0]
values.push [1336906, nil, 'Alarvo','Esa','Kiiminki',1974,1,0,0,6,4136,2016,nil,'R',0,nil,0,0]
values.push [14062603, nil, 'Ala-Salmi','Reima','TÖYSÄ',1950,10,2,1,74,44595,260,nil,'R',263,nil,113,0]
values.push [14062621, nil, 'Alden','Björn','PORVOO',1964,1,0,1,10,8126,1702,nil,'R',0,nil,0,0]
values.push [14062630, nil, 'Alden','Börje','PORVOO',1937,1,0,0,6,4657,1968,nil,'R',0,nil,0,0]
values.push [14062649, nil, 'Alden','Jan','PORVOO',1963,2,0,0,12,10282,1487,nil,'R',0,nil,0,0]
values.push [14062658, nil, 'Alen','Veikko','SYSMÄ',1951,5,0,0,30,21069,868,nil,'R',77,nil,0,0]
values.push [14062667, nil, 'Alenius','Ernst','HELSINKI',1949,7,2,1,56,40559,417,nil,'R',32,nil,0,0]
values.push [1335525, nil, 'Alho','Ari','Kaarina',1970,1,1,0,11,6197,1643,'P','R',0,nil,0,0]
values.push [14062676, nil, 'Alho','Erho','JOUTSENO',1944,0,0,4,16,10354,1334,nil,'R',0,nil,0,0]
values.push [1300259, nil, 'Alhonnoro','Juha','Helsinki',1951,18,2,0,124,79357,86,'P','R',141,'A040T',68,0]
values.push [1300262, nil, 'Alin','Juha','Kuusisto',1953,0,1,0,5,3073,2373,nil,'R',0,nil,0,0]
values.push [14062685, nil, 'Alm','Aimo','VALKEAKOSKI',1936,1,1,2,19,5660,1184,nil,'R',0,nil,0,0]
values.push [14062694, nil, 'Andersson','Dan','HELSINKI',1946,0,1,0,5,1572,2486,nil,'R',0,nil,0,0]
values.push [1336757, nil, 'Andersson','Heikki','Nousiainen',1967,1,0,0,6,1994.5,2245,'P',nil,0,nil,0,0]
values.push [14062706, nil, 'Andresen','Kaj','YLÖJÄRVI',1946,2,3,2,35,17434,696,'P','R',463,nil,0,0]
values.push [1330643, nil, 'Ansala','Riitta','Riihimäki',1951,1,0,0,6,1457,2293,nil,'R',0,nil,0,0]
values.push [1300275, nil, 'Anthoni','Henrik','Helsinki',1930,24,5,3,181,95677,23,'P','R',27,nil,24,14]
values.push [1300288, nil, 'Antikainen','Hannu','helsinki',1955,0,0,1,4,3193,2565,nil,'R',0,nil,0,0]
values.push [14062715, nil, 'Antikainen','Marja-L','TUUSULA',1966,1,0,0,6,2968,2146,nil,'R',0,nil,0,0]
values.push [14062724, nil, 'Antikainen','Mauri','HELSINKI',1948,5,2,1,44,24011,529,nil,'R',323,nil,0,0]
values.push [1300291, nil, 'Antikainen','Tapio','Helsinki',1953,6,2,4,62,21459,363,nil,'R',346,nil,323,0]
values.push [1300301, nil, 'Antila','Tero','Kerava',1948,11,3,6,109,75363,125,nil,'R',597,nil,286,0]
values.push [14062733, nil, 'Antila','Timo','TAMPERE',1944,5,0,0,30,14868,899,nil,'R',381,nil,0,0]
values.push [14062742, nil, 'Antinheimo','Jussi','HELSINKI',1967,0,0,1,4,2998,2575,nil,'R',0,nil,0,0]
values.push [14062751, nil, 'Anttila','Eino','PÄLKÄNE',1941,0,1,0,5,3662,2331,nil,'R',0,nil,0,0]
values.push [1300314, nil, 'Anttila','Hannu','Kankaanpää',1967,7,2,4,74,40134,261,'P','R',0,'A046',0,0]
values.push [1300327, nil, 'Anttila','Heikki','Häntälä',1954,1,0,2,14,9761,1432,nil,'R',0,nil,0,0]
values.push [14062760, nil, 'Anttila','Jorma','SIILINJÄRVI',1949,0,1,0,5,3295,2359,nil,'R',0,nil,0,0]
values.push [14062779, nil, 'Anttila','Lasse','ALAVUS',1951,3,0,2,26,16906,983,nil,'R',0,nil,0,0]
values.push [1328309, nil, 'Anttila','Reijo','Rovaniemi',1971,1,1,0,11,4924,1666,'P','R',0,nil,0,0]
values.push [1300343, nil, 'Anttila','Sisko','Hollola',1957,11,0,1,70,40784.5,286,'P','R',714,nil,330,0]
values.push [14062788, nil, 'Anttonen','Heikki','IKAALINEN',1953,1,0,1,10,6918,1716,nil,'R',0,nil,0,0]
values.push [1300356, nil, 'Apaja','Urmas','Salo',1946,16,3,3,123,81762.5,89,'P','R',375,nil,173,0]
values.push [1300369, nil, 'Arasalo','Eero','Moisio',1950,4,3,1,43,21520,544,nil,'R',657,nil,0,0]
values.push [14062797, nil, 'Arbelius','Pauli','VANTAA',1943,3,0,0,18,14960,1194,nil,nil,0,nil,0,0]
values.push [1300372, nil, 'Arhomaa','Sami','Espoo',1900,0,0,1,4,3116,2568,nil,'R',0,nil,0,0]
values.push [14062809, nil, 'Arminen','Pirjo','ORIMATTILA',1960,1,0,0,6,2665,2175,nil,'R',0,nil,0,0]
values.push [1300385, nil, 'Aro','Matti','Hämeenlinna',1948,7,3,3,69,46799.5,295,'P','R',498,nil,238,0]
values.push [1300398, nil, 'Arponen','Kalle','Lappeenranta',1949,3,0,3,30,17468,886,nil,'R',643,nil,0,0]
values.push [1300408, nil, 'Asklöf','Tom','Jorvas',1969,5,0,0,30,26944,853,nil,'R',789,nil,0,0]
values.push [14062818, nil, 'Askonen','Alpo','KANGASALA',1929,11,0,3,78,28132,244,nil,'R',39,nil,30,0]
values.push [14062827, nil, 'Askonen','Ossi','KOUVOLA',1933,8,7,5,103,30682,144,'P','R',94,nil,67,0]
values.push [14062836, nil, 'Askonen','Veijo','HELSINKI',1931,9,2,1,68,30664,303,nil,'R',63,nil,44,0]
values.push [14062845, nil, 'Aspinen','Terho','LAPPEENRANT',1945,9,2,1,68,49875,301,nil,'R',225,nil,153,0]
values.push [1300411, nil, 'Asukas','Tauno','KANKAANPÄÄ',1950,2,7,5,67,35033,310,nil,'R',751,nil,351,0]
values.push [1331024, nil, 'Auer','Jari','Helsinki',1965,1,1,1,15,3651.5,1425,'P','R',0,nil,0,0]
values.push [14062854, nil, 'Aunula','Jukka','HELSINKI',1946,3,1,0,23,18733,1043,nil,'R',0,nil,0,0]
values.push [1300424, nil, 'Aurasmaa','Artti','Espoo 33',1975,1,4,1,30,17401.5,887,'P','R',0,nil,0,0]
values.push [1316654, nil, 'Aurasmaa','Eeva-Kaarina','Löytänä',1948,2,1,0,17,2975.5,1314,'P',nil,0,nil,0,0]
values.push [1300440, nil, 'Aurasmaa','Heikki','Espoo',1948,12,1,0,83,49107,211,nil,'R',746,nil,347,0]
values.push [1300453, nil, 'Aurasmaa','Juuso','Löytänä',1984,3,2,0,28,19142,948,'P','R',0,nil,0,0]
values.push [1330012, nil, 'Aurasmaa','Pyry','Helsinki',1987,0,0,2,8,4093,1901,'P','R',0,nil,0,0]
values.push [14062863, nil, 'Autio','Juha','HÄMEENLINNA',1950,1,0,0,6,2006,2243,nil,nil,0,nil,0,0]
values.push [14062872, nil, 'Autio','Markku','MYLLYKOSKI',1947,8,0,0,48,38063,468,nil,'R',276,nil,0,0]
values.push [14062881, nil, 'Autio','Mika','HELSINKI',1971,0,0,1,4,2233,2645,nil,'R',0,nil,0,0]
values.push [14062890, nil, 'Autio-Vilenius','Pau','PORVOO',1954,0,2,0,10,3785,1782,nil,'R',0,nil,0,0]
values.push [1339136, nil, 'Auvinen','Mikko','LEHMO',1982,0,0,1,4,3812,2550,nil,'R',0,nil,0,0]
values.push [14062902, nil, 'Auvinen','Raimo','IMATRA',1952,5,4,3,62,32708,357,nil,'R',443,nil,217,0]
values.push [14062911, nil, 'Auvinen','Sami','ESPOO',1968,1,1,0,11,5561,1653,nil,'R',0,nil,0,0]
values.push [14062920, nil, 'Back','Hans','ESPOO',1941,1,1,1,15,7553,1403,nil,'R',0,nil,0,0]
values.push [14062939, nil, 'Backman','Janne','HELSINKI',1968,0,1,1,9,5416,1828,nil,'R',0,nil,0,0]
values.push [14062948, nil, 'Bamberg','Oiva','JYVÄSKYLÄ',1945,1,0,0,6,3820,2054,nil,'R',0,nil,0,0]
values.push [14062957, nil, 'Barck','Juha','RAISIO',1900,0,0,1,4,3421,2558,nil,'R',0,nil,0,0]
values.push [1300466, nil, 'Behm','Kimmo','Nurmijärvi',1953,8,4,1,78,50075,234,nil,'R',730,nil,342,0]
values.push [1300479, nil, 'Berg','Petri','PÄLKÄNE',1967,3,2,0,28,16906,951,'P','R',0,nil,0,0]
values.push [14062966, nil, 'Berg','Tor Erik','MAXMO',1948,1,0,0,6,2993,2143,nil,'R',0,nil,0,0]
values.push [14062975, nil, 'Berghäll','Kaj','KANGASALA',1966,0,1,0,5,3035,2374,nil,'R',0,nil,0,0]
values.push [14062984, nil, 'Bergman','Christian','PORVOO',1947,0,1,0,5,3598,2336,nil,'R',0,nil,0,0]
values.push [14062993, nil, 'Björk','Ismo','VANTAA',1943,0,1,0,5,1125,2529,nil,'R',0,nil,0,0]
values.push [1300482, nil, 'Björkbacka','Pekka','Toholampi',1959,4,1,1,33,24694,750,nil,'R',761,nil,0,0]
values.push [1333585, nil, 'Blom','Harri','Nousiainen',1963,1,0,0,6,3782,2057,nil,'R',0,nil,0,0]
values.push [1300495, nil, 'Blomster','Rainer','Kerava',1937,34,0,1,214,108671,7,'P','R',13,nil,11,3]
values.push [1307731, nil, 'Boelen','Michael','Inkoo',1966,2,3,0,27,8122,981,'P','R',0,nil,0,0]
values.push [1338522, nil, 'Borgenström','Elina','Tuusula',1970,2,0,0,12,7069,1534,nil,'R',0,nil,0,0]
values.push [1336443, nil, 'Brandt','Eveliina','Turku',1986,1,0,0,6,2026,2241,'P',nil,0,nil,0,0]
values.push [14063002, nil, 'Brofeldt','Ari','HELSINKI',1949,0,0,1,4,2640,2610,nil,'R',0,nil,0,0]
values.push [14063011, nil, 'Broman','Janne','IMATRA',1969,1,2,2,24,13104,1028,nil,'R',0,nil,0,0]
values.push [14063020, nil, 'Broman','Juho','IMATRA',1952,0,0,2,8,3504,1912,nil,'R',0,nil,0,0]
values.push [14063039, nil, 'Broman','Kari','LUUMÄKI',1946,1,0,0,6,3563,2084,nil,nil,0,nil,0,0]
values.push [14063048, nil, 'Broman','Risto','IMATRA',1956,2,3,0,27,15981,973,nil,'R',0,nil,0,0]
values.push [1331914, nil, 'Broman','Timo','Kisko',1958,0,1,0,5,1495.5,2494,'P',nil,0,nil,0,0]
values.push [14063057, nil, 'Brunberg','Klas','PORVOO',1951,1,0,1,10,6059,1734,nil,'R',0,nil,0,0]
values.push [14063066, nil, 'Brännström','Jens','KOKKOLA',1956,1,0,0,6,4202,2009,nil,'R',0,nil,0,0]
values.push [14063075, nil, 'Bucht','Per-Erik','JUANKOSKI',1948,1,1,1,15,9881,1384,nil,'R',0,nil,0,0]
values.push [14063084, nil, 'Bussman','Mac','ESPOO',1939,4,1,1,33,15154,771,nil,'R',103,nil,0,0]
values.push [14063093, nil, 'Bäck','Viljo','TOIJALA',1948,2,0,0,12,9289,1497,nil,'R',0,nil,0,0]
values.push [1335884, nil, 'Bär','Vesa','TAMPERE',1967,0,0,1,4,1147,2787,'P',nil,0,nil,0,0]
values.push [1331781, nil, 'Cox','David','Helsinki',1951,0,0,1,4,1041.5,2802,'P',nil,0,nil,0,0]
values.push [14063105, nil, 'Dahlberg','Kurt','HELSINKI',1939,0,1,0,5,2419,2416,nil,nil,0,nil,0,0]
values.push [14063114, nil, 'Dannholm','Kurt','ESPOO',1945,1,0,0,6,5211,1948,nil,'R',0,nil,0,0]
values.push [1300518, nil, 'Degerth','Clas','Kauniainen',1948,9,4,0,74,50426.5,258,'P','R',469,nil,212,0]
values.push [1300521, nil, 'Degerth','Sinikka','Kauniainen',1953,2,2,2,30,11923.5,904,'P','R',0,nil,0,0]
values.push [1334063, nil, 'Donner','Jan','Espoo',1966,0,0,1,4,1828.5,2683,'P',nil,0,nil,0,0]
values.push [14063123, nil, 'Dufvelin','Kaj','VANTAA',1933,2,0,3,24,14233,1026,nil,'R',0,nil,0,0]
values.push [1300534, nil, 'Eerola','Jukka','Pieksämäki',1948,3,7,15,113,42402,114,'P','R',258,nil,129,0]
values.push [1300547, nil, 'Eerola','Matti','Koski Tl',1937,4,1,1,33,15549,770,nil,'R',707,nil,0,0]
values.push [14063132, nil, 'Eerola','Riitta','TAMPERE',1943,3,1,0,23,8742,1060,nil,'R',0,nil,0,0]
values.push [14063141, nil, 'Eistola','Viljo','HELSINKI',1932,0,4,1,24,15547,1023,nil,'R',0,nil,0,0]
values.push [1300550, nil, 'Ek','Esa','Kantvik',1942,2,1,0,17,6829,1302,'P','R',0,nil,0,0]
values.push [1300563, nil, 'Ek','Jari','Espoo',1966,0,1,0,5,2959,2382,nil,'R',0,nil,0,0]
values.push [1334034, nil, 'Ekko','Jouni','Turku',1977,0,1,0,5,2206.5,2435,'P',nil,0,nil,0,0]
values.push [1300576, nil, 'Ekman','Raimo','Lahti',1952,1,2,0,16,10397,1333,nil,'R',0,nil,0,0]
values.push [1334021, nil, 'Ekonen','Mika','Vaajakoski',1974,0,0,1,4,1852,2682,'P',nil,0,nil,0,0]
values.push [1300589, nil, 'Ellilä','Tero','RAISIO',1962,0,0,4,16,6869,1360,'P','R',0,nil,0,0]
values.push [1300592, nil, 'Elo','Jari','Masku',1960,2,3,1,31,17074,832,nil,'R',666,nil,0,0]
values.push [1337031, nil, 'Elomäki','Kari','Helsinki',1970,1,0,0,6,4041,2024,nil,'R',0,nil,0,0]
values.push [1334924, nil, 'Eloneva','Sanni','Espoo',1980,0,1,0,5,1496.5,2493,'P',nil,0,nil,0,0]
values.push [14063150, nil, 'Elonsalo','Raimo','KIRKKONUMMI',1930,7,3,1,61,26034,374,nil,'R',440,nil,198,0]
values.push [14063169, nil, 'Enberg','Anna-Liisa','LIPERI',1958,0,0,1,4,625,2848,nil,'R',0,nil,0,0]
values.push [1300602, nil, 'Enberg','Juhani','Turku',1943,0,11,14,111,31675,121,'P','R',475,nil,235,0]
values.push [13132666, nil, 'ENGBLOM','SUSAN','PUSULA',1976,0,1,1,9,2769,1871,'P',nil,0,nil,0,0]
values.push [1325360, nil, 'Enstedt','Santeri','Helsinki',1978,0,0,1,4,2754,2597,nil,'R',0,nil,0,0]
values.push [1300615, nil, 'Eriksson','Sven','Kokkola',1954,7,0,2,50,42396,457,nil,'R',612,nil,0,0]
values.push [1300628, nil, 'Erkinheimo','Erkki','Espoo',1935,4,3,1,43,17704.5,546,'P','R',0,nil,0,0]
values.push [1300631, nil, 'Erkinheimo','Jaakko','Espoo',1964,16,0,0,96,86583,164,nil,'R',333,nil,138,0]
values.push [1326987, nil, 'Erkkilä','Sari-Leena','Tampere',1968,2,0,0,12,5841.5,1554,'P','R',0,nil,0,0]
values.push [14063178, nil, 'Eronen','Ismo','PORVOO',1938,0,0,1,4,1097,2793,nil,'R',0,nil,0,0]
values.push [14063187, nil, 'Eronen','Martti','ESPOO',1941,1,1,1,15,7925,1397,nil,'R',0,nil,0,0]
values.push [1300644, nil, 'Eronen','Matti','HÄMEENLINNA',1949,7,1,0,47,31452,480,'P','R',692,nil,0,0]
values.push [1300657, nil, 'Eronen','Vesa','Hämeenlinna',1947,0,1,4,21,12997.5,1112,'P','R',0,nil,0,0]
values.push [1300660, nil, 'Erving','Pentti','Laihia',1952,0,0,1,4,2215,2648,nil,'R',0,nil,0,0]
values.push [1330546, nil, 'Erämaja','Antti','Tampere',1987,5,0,0,30,11911.5,905,'P',nil,0,'A081',0,0]
values.push [1330122, nil, 'Erämaja','Matti','Leppäkoski',1960,3,1,0,23,5691,1067,'P',nil,0,nil,0,0]
values.push [14063196, nil, 'Eskelin','Seppo','VANTAA',1947,0,0,1,4,1639,2708,nil,nil,0,nil,0,0]
values.push [14063208, nil, 'Eskelinen','Pauli','ESPOO',1939,0,1,0,5,2845,2390,nil,'R',0,nil,0,0]
values.push [1336362, nil, 'Eskelinen','Ville','Halikko',1975,3,1,0,29,20634,926,nil,'R',0,nil,0,0]
values.push [14063217, nil, 'Espo','Matti','ANJALANKOSK',1949,13,0,3,90,60800,185,nil,'R',151,nil,82,0]
values.push [14063226, nil, 'Espo','Mikko','ANJALANKOSK',1953,0,2,1,14,7801,1441,nil,'R',0,nil,0,0]
values.push [14063235, nil, 'Espo','Seppo','LAHTI',1939,1,0,0,6,1432,2294,nil,'R',0,nil,0,0]
values.push [14063244, nil, 'Eteläinen','Tenho','PORVOO',1957,2,1,0,17,14706,1268,nil,'R',0,nil,0,0]
values.push [14063253, nil, 'Etelälahti','Timo','HELSINKI',1943,1,0,0,6,4415,1986,nil,'R',0,nil,0,0]
values.push [1300673, nil, 'Etelämäki','Anne','Toholampi',1963,3,0,0,18,5299,1261,'P',nil,0,nil,0,0]
values.push [1300686, nil, 'Etelämäki','Keijo','Toholampi',1965,6,3,3,63,52280,343,nil,'R',565,nil,290,0]
values.push [1328972, nil, 'Etelämäki','Riku','Toholampi',1988,1,0,0,6,3898,2043,nil,'R',0,nil,0,0]
values.push [1300699, nil, 'Ettanen','Martti','Hollola',1949,8,12,4,124,73340,87,'P','R',153,nil,75,0]
values.push [1300709, nil, 'Fagerholm','Henrik','Espoo',1948,16,1,0,101,66816,150,nil,'R',520,nil,246,0]
values.push [1300712, nil, 'Fagerholm','Kari','Kerava',1959,7,0,3,54,37430,426,nil,'R',513,nil,0,0]
values.push [14063262, nil, 'Fagerlund','Markku','HÄMEENLINNA',1956,4,1,1,33,24660,751,nil,'R',259,nil,0,0]
values.push [14063271, nil, 'Fagerlund','Veikko','HÄMEENLINNA',1958,2,0,1,16,12616,1318,nil,'R',0,nil,0,0]
values.push [1300725, nil, 'Fagerström','Mikko','Espoo',1954,20,7,1,163,90973,36,'P','R',351,nil,148,39]
values.push [13132675, nil, 'Finnholm','Mauri','KAARINA',1957,1,0,0,6,2677.5,2172,'P',nil,0,nil,0,0]
values.push [1327384, nil, 'Flink','Mika','Espoo',1969,1,0,0,6,2754.5,2164,'P',nil,0,nil,0,0]
values.push [1327698, nil, 'Flinkman','Unto','Pieksämäki',1937,3,0,2,26,7753,988,'P',nil,0,nil,0,0]
values.push [1300738, nil, 'Forsen','Kaj','Terjärv',1947,0,2,2,18,10536,1225,nil,'R',0,nil,0,0]
values.push [1300741, nil, 'Forssell','Eero','Keuruu',1949,6,6,6,90,54793,186,'P','R',552,nil,273,0]
values.push [1316612, nil, 'Friman','Kaisa','Hyvinkää',1974,0,1,0,5,1390.5,2505,'P',nil,0,nil,0,0]
values.push [1333844, nil, 'Friman','Per','espoo 78',1964,0,0,1,4,0,2861,'P',nil,0,nil,0,0]
values.push [14063280, nil, 'Frisk','Antti','KIRKKONUMMI',1927,4,1,2,37,13928,652,nil,'R',31,nil,0,0]
values.push [14063299, nil, 'Frisk','Helmer','ESPOO',1945,5,2,1,44,24012,528,nil,'R',86,nil,0,0]
values.push [14063301, nil, 'Fryckman','Rolle','HELSINKI',1954,0,0,1,4,1290,2759,nil,'R',0,nil,0,0]
values.push [1329599, nil, 'Fyhr','Petri','Nastola',1973,2,0,0,12,8721,1503,nil,'R',0,nil,0,0]
values.push [1331503, nil, 'Granholm','Patric','Turku',1964,3,2,2,40,22957,591,nil,'R',803,nil,0,0]
values.push [1300754, nil, 'Grannabba','Guy','Terjärv',1944,9,1,4,75,48722,252,nil,'R',427,nil,213,0]
values.push [14063310, nil, 'Granqvist','Pekka','KOTKA',1944,0,3,1,19,8077,1176,nil,'R',0,nil,0,0]
values.push [14063329, nil, 'Greenlees','Charles','SKOTLANTI',1932,0,0,1,4,1171,2780,nil,nil,0,nil,0,0]
values.push [1307618, nil, 'Gros','Stefan','Mustasaari',1952,3,0,4,34,24550,715,nil,'R',697,nil,0,0]
values.push [14063338, nil, 'Gruzdaitis','Lasse','MYLLYKOSKI',1954,3,3,0,33,18172,767,nil,'R',559,nil,0,0]
values.push [14063347, nil, 'Gröndahl','Veikko','SAHALAHTI',1946,1,0,0,6,4060,2022,nil,nil,0,nil,0,0]
values.push [14063356, nil, 'Grönholm','Harri','FORSSA',1956,0,0,1,4,2965,2579,nil,'R',0,nil,0,0]
values.push [14063365, nil, 'Grönholm','Kaarlo','VANTAA',1940,5,0,0,30,17566,885,nil,'R',83,nil,0,0]
values.push [13132684, nil, 'Grönlund','Katja','PORI',1900,1,0,1,10,4317.5,1774,'P',nil,0,nil,0,0]
values.push [14063374, nil, 'Grönqvist','Kaj','KIRKKONUMMI',1961,3,0,0,18,12495,1212,nil,'R',0,nil,0,0]
values.push [14063383, nil, 'Gustafsson','Torbjör','ESPOO',1942,0,0,1,4,1079,2798,nil,nil,0,nil,0,0]
values.push [14063392, nil, 'Haakana','Antero','TÖYSÄ',1950,1,0,0,6,3539,2088,nil,'R',0,nil,0,0]
values.push [1300770, nil, 'Haapala','Pentti','Seinäjoki',1934,2,2,4,38,18925,634,nil,'R',90,nil,0,0]
values.push [14063404, nil, 'Haapala','Yrjö','TURKU',1949,5,0,1,34,16393,734,nil,'R',157,nil,0,0]
values.push [1328626, nil, 'Haapamäki','Kaija','Lahela',1957,3,0,2,26,6647,990,'P','R',0,nil,0,0]
values.push [14063413, nil, 'Haapanen','Antti','ASIKKALA',1952,0,1,0,5,3080,2372,nil,nil,0,nil,0,0]
values.push [14063422, nil, 'Haapanen','Mikko','ASIKKALA',1955,1,1,0,11,8661,1606,nil,nil,0,nil,0,0]
values.push [1334937, nil, 'Haapanen','Pirjo','RAISIO',1955,3,0,1,22,3777.5,1099,'P',nil,0,nil,0,0]
values.push [1330261, nil, 'Haapiainen','Janne','Nykälä',1988,2,1,1,21,6440.5,1135,'P',nil,0,nil,0,0]
values.push [1300783, nil, 'Haapiainen','Oiva','NYKÄLÄ',1958,9,4,3,86,27058,198,'P','R',0,'A025',0,0]
values.push [1334982, nil, 'Haapiainen','Susanna','NAARAJÄRVI',1987,2,2,1,26,4621,992,'P',nil,0,nil,0,0]
values.push [14063431, nil, 'Haarala','Markku','LAHTI',1949,0,0,1,4,1292,2755,nil,'R',0,nil,0,0]
values.push [14063440, nil, 'Haarala','Timo','TOIJALA',1952,6,2,0,46,35125,491,nil,'R',310,nil,0,0]
values.push [1300796, nil, 'Haarala','Vesa','LIPERI',1944,7,3,1,61,40530,368,nil,'R',704,nil,325,0]
values.push [14063459, nil, 'Haatainen','Aulis','KUOPIO',1937,1,0,0,6,3832,2051,nil,nil,0,nil,0,0]
values.push [1335211, nil, 'Haataja','Janne','Lepsämä',1966,3,0,0,18,14567,1197,nil,'R',0,nil,0,0]
values.push [14063468, nil, 'Haatio','Irma','VIHTI',1951,2,1,1,21,9279,1127,nil,'R',0,nil,0,0]
values.push [1326958, nil, 'Haavisto','Lasse','Salo',1953,0,1,0,5,1874,2459,'P',nil,0,nil,0,0]
values.push [14063477, nil, 'Hagman','Håkan','ESPOO',1939,0,0,2,8,3508,1911,nil,'R',0,nil,0,0]
values.push [14063486, nil, 'Haikonen','Eero','HYVINKÄÄ',1950,1,1,0,11,5262,1659,nil,'R',0,nil,0,0]
values.push [14063495, nil, 'Hailla','Raimo','MYLLYKOSKI',1936,6,7,0,71,35864,281,nil,'R',50,nil,38,0]
values.push [1339974, nil, 'Haimi','Hannu','Kouvola',1956,0,0,0,6,3348,2111,nil,'S',0,nil,0,0]
values.push [14063507, nil, 'Hakala','Esa','HÄMEENLINNA',1937,0,0,1,4,2648,2607,nil,nil,0,nil,0,0]
values.push [1340015, nil, 'Hakala','Heli','Jorvas',1975,0,0,0,5,2833,2391,nil,'S',0,nil,0,0]
values.push [14063516, nil, 'Hakala','Jarmo','KYLMÄKOSKI',1962,5,0,1,34,26367,710,nil,'R',374,nil,0,0]
values.push [14063525, nil, 'Hakala','Jukka','HELSINKI',1965,1,1,0,11,5048,1664,nil,'R',0,nil,0,0]
values.push [1304381, nil, 'Hakala','Merja','Salo',1971,2,1,3,29,12380.5,938,'P','R',0,nil,0,0]
values.push [1300806, nil, 'Hakala','Rauno','Halikko as',1967,12,2,0,88,82796,193,nil,'R',648,nil,303,0]
values.push [1333637, nil, 'Hakala','Sauli','Jurva',1955,1,2,2,24,7466.5,1040,'P',nil,0,nil,0,0]
values.push [14063534, nil, 'Hakala','Tapio','KUOPIO',1900,0,1,0,5,3396,2353,nil,'R',0,nil,0,0]
values.push [1330478, nil, 'Hakanen','Aarne','Rauma',1977,0,0,1,4,2705,2600,nil,'R',0,nil,0,0]
values.push [14063543, nil, 'Hakanen','Kari','VANTAA',1948,0,0,1,4,1647,2706,nil,'R',0,nil,0,0]
values.push [1300819, nil, 'Hakarinne','Tapio','Hämeenlinna',1947,0,1,2,13,3709.5,1477,'P',nil,0,nil,0,0]
values.push [1300822, nil, 'Hakasalo','Arto','Vaajakoski',1963,1,0,0,6,2342.5,2206,'P',nil,0,nil,0,0]
values.push [14063552, nil, 'Hakkarainen','Anja','ESPOO',1948,1,0,0,6,1482,2291,nil,nil,0,nil,0,0]
values.push [14063561, nil, 'Hakkarainen','Eero','HELSINKI',1949,4,1,1,33,21299,755,nil,'R',262,nil,0,0]
values.push [1328024, nil, 'Hakkarainen','Jouni','Espoo',1967,0,0,1,4,2645,2608,nil,'R',0,nil,0,0]
values.push [1330957, nil, 'Hakkarainen','Julius','Lieto',1984,1,1,3,23,6834,1065,'P','R',0,nil,0,0]
values.push [1329476, nil, 'Hakkarainen','Tuomas','Helsinki',1978,2,4,2,40,16682.5,596,'P','R',0,'A100',0,0]
values.push [1300835, nil, 'Hakomäki','Kirsi','Espoo',1957,3,1,3,35,16692.5,699,'P','R',0,nil,0,0]
values.push [1300848, nil, 'Hakuli','Seppo','Lappeenranta',1944,13,2,1,92,49960,181,nil,'R',191,nil,86,0]
values.push [1337125, nil, 'Hakuni','Jukka','Helsinki',1971,3,0,0,18,14487,1198,nil,'R',0,nil,0,0]
values.push [1325043, nil, 'Halenius','Jarmo','Klaukkala',1964,0,1,0,5,2515,2410,nil,'R',0,nil,0,0]
values.push [14063570, nil, 'Halkonen','Harri','VANTAA',1948,2,0,1,16,10920,1330,nil,'R',0,nil,0,0]
values.push [1328176, nil, 'Halkosaari','Simo','Vantaa',1965,0,2,1,14,6806,1445,nil,'R',0,nil,0,0]
values.push [1334597, nil, 'Hallikainen','Risto','Rautjärvi',1973,1,0,0,6,4285,2001,nil,'R',0,nil,0,0]
values.push [1327371, nil, 'Halme','Pekka','02120 Espoo',1966,0,0,1,4,1332.5,2750,'P',nil,0,nil,0,0]
values.push [1300851, nil, 'Halonen','Anja','Helsinki',1967,0,0,4,20,14175,1144,nil,'R',0,nil,0,0]
values.push [1300864, nil, 'Halonen','Jouko','Lahti',1933,13,3,2,101,60010,151,nil,'R',132,nil,83,0]
values.push [14063589, nil, 'Halonen','Juha','IMATRA',1952,1,0,0,6,4175,2012,nil,nil,0,nil,0,0]
values.push [1327193, nil, 'Halonen','Kyösti','Helsinki',1958,7,1,0,51,41763,444,nil,'R',781,nil,0,0]
values.push [14063598, nil, 'Halonen','Timo','TURKU',1967,1,1,3,23,9775.5,1057,'P','R',0,nil,0,0]
values.push [1337921, nil, 'Hammar','Petri','Kauniainen',1969,2,0,0,18,6721.5,1252,'P',nil,0,nil,0,0]
values.push [14063600, nil, 'Hammaren','Esa','KAUNIAINEN',1960,4,0,1,28,17698,950,nil,'R',0,nil,0,0]
values.push [14063619, nil, 'Hamunen','Markku','TAMPERE',1951,1,0,0,6,2086,2238,nil,nil,0,nil,0,0]
values.push [1300893, nil, 'Hankiola','Petri','HELSINKI',1969,0,4,2,28,15031,953,nil,'R',0,nil,0,0]
values.push [1335350, nil, 'Hannu','Maarit','Espoo',1968,2,0,2,20,5245.5,1160,'P',nil,0,nil,0,0]
values.push [14063628, nil, 'Hannuksela','Jarmo','ESPOO',1961,3,0,0,18,13734,1206,nil,'R',0,nil,0,0]
values.push [1340196, nil, 'Hannula','Petteri','Vantaa',1974,0,0,0,6,4271,2002,nil,'S',0,nil,0,0]
values.push [1300903, nil, 'Hannus','Reijo','Salo',1949,10,2,1,74,50607,257,nil,'R',607,nil,292,0]
values.push [14063637, nil, 'Hara','Erkki','HELSINKI',1914,3,2,2,36,7803,681,nil,'R',407,nil,0,0]
values.push [14063646, nil, 'Hara','Jaakko','HELSINKI',1949,1,0,0,6,4019,2028,nil,'R',0,nil,0,0]
values.push [14063655, nil, 'Hara','Risto','HELSINKI',1955,3,1,1,27,18693,970,nil,'R',0,nil,0,0]
values.push [14063664, nil, 'Harala','Esko','KUUSANKOSKI',1950,0,1,0,5,2186,2437,nil,'R',0,nil,0,0]
values.push [1300916, nil, 'Harju','Aulis','Jalasjärvi',1940,15,3,6,129,43719.5,76,'P','R',302,nil,127,0]
values.push [14063673, nil, 'Harju','Janne','VANTAA',1968,1,1,0,11,5273,1658,nil,'R',0,nil,0,0]
values.push [14063682, nil, 'Harju','Jari','ALAVUS',1961,3,0,1,22,11127,1084,nil,'R',0,nil,0,0]
values.push [14063691, nil, 'Harju','Juhani','HYVINKÄÄ',1937,1,1,1,15,4617,1423,nil,'R',0,nil,0,0]
values.push [1300929, nil, 'Harju','Terhi','Kangasniemi',1967,5,1,1,39,13593.5,618,'P','R',466,nil,0,0]
values.push [14063703, nil, 'Harju','Veikko','HELSINKI',1938,8,0,0,48,36717,470,nil,'R',115,nil,0,0]
values.push [1300932, nil, 'Harjula','Jorma','jyväskylä',1944,14,2,2,102,64438,147,nil,'R',435,nil,203,0]
values.push [1339123, nil, 'Harjuoja','Matti','ESPOO',1972,0,0,1,4,2670,2605,nil,'R',0,nil,0,0]
values.push [1300945, nil, 'Harkko','Antti','Hämeenlinna',1952,2,1,1,21,9336.5,1126,'P','R',0,nil,0,0]
values.push [14063712, nil, 'Harmaakorpi','Vesa','HELSINKI',1961,0,1,0,5,2003,2450,nil,'R',0,nil,0,0]
values.push [14063721, nil, 'Harmanen','Pentti','VANTAA',1942,2,0,0,12,3186,1593,nil,'R',0,nil,0,0]
values.push [14063730, nil, 'Harrila','Jouko','ESPOO',1946,0,2,0,10,6398,1723,nil,'R',0,nil,0,0]
values.push [14063749, nil, 'Harrila','Pekka','KOUVOLA',1948,3,2,1,32,17667,793,nil,'R',404,nil,0,0]
values.push [1333925, nil, 'Hartikainen','Jarmo','Leppävirta',1960,0,0,2,8,4258,1896,nil,'R',0,nil,0,0]
values.push [14063758, nil, 'Hartonen','Kimmo','KERAVA',1945,0,0,1,4,2344,2635,nil,nil,0,nil,0,0]
values.push [1300958, nil, 'Hartvik','Esko','Jukaja',1956,8,1,4,69,50003,293,nil,'R',698,nil,335,0]
values.push [14063767, nil, 'Harviainen','Pertti','TURKU',1946,0,0,1,4,931,2819,nil,'R',0,nil,0,0]
values.push [1300961, nil, 'Hasanen','Markku','Vantaa',1965,1,1,0,11,4399,1675,nil,'R',0,nil,0,0]
values.push [14063776, nil, 'Hatavara','Esko','TAMPERE',1946,5,1,1,39,28092,602,nil,'R',144,nil,0,0]
values.push [1300974, nil, 'Hauhia','Hannu','LAHTI',1950,29,0,0,174,91412,28,nil,'R',7,nil,9,4]
values.push [14063785, nil, 'Hautala','Leif','UUSIKAUPUNK',1941,1,0,1,10,2694,1796,nil,'R',0,nil,0,0]
values.push [1337057, nil, 'Hautamäki','Jukka','Kemi',1974,0,1,0,5,2980,2377,nil,'R',0,nil,0,0]
values.push [14063794, nil, 'Hautamäki','Jussi','KERAVA',1941,1,0,2,14,5346.5,1458,'P','R',0,nil,0,0]
values.push [1307799, nil, 'Hautamäki','Matti','Emäsalo',1949,2,0,5,32,14977,804,nil,'R',792,nil,0,0]
values.push [1300990, nil, 'Hautaniemi','Erkki','Tampere',1940,1,1,1,15,9039,1390,nil,'R',0,nil,0,0]
values.push [14063806, nil, 'Haverinen','Veikko','KANGASNIEMI',1941,1,0,0,6,2436,2198,nil,'R',0,nil,0,0]
values.push [14063815, nil, 'Havia','Samuli','TURKU',1965,6,1,0,41,26149,570,nil,'R',457,nil,0,0]
values.push [1301009, nil, 'Havia','Tapani','MUURLA',1937,11,12,2,139,52047.5,63,'P','R',447,nil,206,0]
values.push [1301012, nil, 'Havia-Kinnala','Helena','KAARINA',1967,15,2,2,108,44977.5,133,'P','R',439,'A029T',231,0]
values.push [1301025, nil, 'Havikari','Pentti','Tampere',1941,6,5,3,73,48239,266,nil,'R',320,nil,150,0]
values.push [14063824, nil, 'Heikinheimo','Matti','ESPOO',1942,1,0,0,6,3929,2040,nil,'R',0,nil,0,0]
values.push [1336566, nil, 'Heikkilä','Matti','PORVOO',1976,0,0,1,4,1175.5,2779,'P',nil,0,nil,0,0]
values.push [14063833, nil, 'Heikkilä','Olavi','LAVIA',1944,5,2,1,44,26929,525,nil,'R',464,nil,0,0]
values.push [1328752, nil, 'Heikkilä','Pirketta','hämeenlinna',1979,1,0,0,6,2104.5,2236,'P',nil,0,nil,0,0]
values.push [1335321, nil, 'Heikkilä','Rami','Kovelahti',1970,0,0,1,4,1267,2765,'P',nil,0,nil,0,0]
values.push [1338917, nil, 'Heikkilä','Riku','PIRKKALA',1974,1,0,0,6,4385,1991,nil,'R',0,nil,0,0]
values.push [14063842, nil, 'Heikkilä','Risto','VAMMALA',1933,0,1,0,5,923,2540,nil,nil,0,nil,0,0]
values.push [1334212, nil, 'Heikkilä','Tapio','Hauho',1949,5,0,0,35,15042.5,700,'P','R',0,nil,0,0]
values.push [1333608, nil, 'Heikkilä','Tommi','Turku',1977,0,2,0,10,2592.5,1800,'P',nil,0,nil,0,0]
values.push [14063851, nil, 'Heikkilä','Veijo','PORI',1956,0,0,1,4,481,2857,nil,nil,0,nil,0,0]
values.push [1301038, nil, 'Heikkilä','Veli-Matti','Hämeenlinna',1953,7,1,0,47,41003,478,'P','R',566,nil,0,0]
values.push [1301041, nil, 'Heikkinen','Antti','Vantaa',1969,1,1,0,11,7929,1616,nil,'R',0,nil,0,0]
values.push [1301054, nil, 'Heikkinen','Esko','Mustasaari',1960,14,1,3,101,72759,149,nil,'R',485,nil,224,0]
values.push [1301067, nil, 'Heikkinen','Juha','Mikkeli',1953,0,1,0,5,1600,2482,'P',nil,0,nil,0,0]
values.push [14063860, nil, 'Heikkinen','Juhani','MUURAME',1958,2,0,1,16,9580,1337,nil,'R',0,nil,0,0]
values.push [1301070, nil, 'Heikkinen','Jussi','Helsinki',1952,3,10,7,101,58782,152,nil,'R',574,nil,296,0]
values.push [14063879, nil, 'Heikkinen','Kauko','HYRYNSALMI',1952,0,0,1,4,2448,2628,nil,'R',0,nil,0,0]
values.push [1301083, nil, 'Heikkinen','Markku','Lempäälä',1966,1,4,3,38,25921,624,nil,'R',606,nil,0,0]
values.push [14063888, nil, 'Heikkinen','Niilo','KIRKKONUMMI',1939,1,0,2,14,6996,1444,nil,'R',0,nil,0,0]
values.push [1301096, nil, 'Heikkinen','Sakari','HELSINKI',1963,1,2,4,32,18639,788,nil,'R',635,nil,0,0]
values.push [14063897, nil, 'Heikkiniemi','Ari','KOKKOLA',1959,4,2,0,34,29239,705,nil,'R',524,nil,0,0]
values.push [1330863, nil, 'Heikkonen','Samuli','Jyväskylä',1979,1,0,0,6,1973.5,2249,'P',nil,0,nil,0,0]
values.push [14063909, nil, 'Heikkurinen','Arja','JOENSUU',1954,3,0,0,18,8369,1238,nil,'R',0,nil,0,0]
values.push [1301106, nil, 'Heimonen','Arja','Mäntyharju',1950,6,0,0,36,19323.5,668,'P','R',745,nil,0,0]
values.push [1301119, nil, 'Heimonen','Jorma','Kangasala',1954,3,4,0,38,25231,626,nil,'R',503,nil,0,0]
values.push [14063918, nil, 'Heininen','Jukka','RUSKO',1936,3,2,1,32,14173,806,nil,'R',362,nil,0,0]
values.push [14063927, nil, 'Heiniö','Risto','TOIJALA',1932,0,1,0,5,3812,2325,nil,'R',0,nil,0,0]
values.push [14063936, nil, 'Heino','Heikki','HÄMEENLINNA',1943,0,0,2,8,4783,1894,nil,'R',0,nil,0,0]
values.push [14063945, nil, 'Heino','Jouni','IMATRA',1962,3,0,1,22,19449,1069,nil,'R',0,nil,0,0]
values.push [1301122, nil, 'Heino','Jukka','Puuttuu',1954,1,0,1,10,6916,1717,nil,'R',0,nil,0,0]
values.push [1301135, nil, 'Heino','Marjo-Riitta','Lohja as',1957,3,3,1,37,16259,649,'P','R',0,nil,0,0]
values.push [1301148, nil, 'Heino','Martti','Lahti',1946,0,2,1,14,6112.5,1449,'P','R',0,nil,0,0]
values.push [1336977, nil, 'Heino','Olavi','Lohja',1960,2,1,0,21,12470,1115,nil,'R',0,nil,0,0]
values.push [1301151, nil, 'Heino','Pasi','Forssa',1967,1,0,0,6,3219,2124,nil,'R',0,nil,0,0]
values.push [1340594, nil, 'Heino','Teemu','Vantaa',1976,0,0,0,4,2696,2601,nil,'S',0,nil,0,0]
values.push [1316735, nil, 'Heino-Ellilä','Jaana','RAISIO',1966,0,0,1,4,801,2835,'P',nil,0,nil,0,0]
values.push [14063954, nil, 'Heinola','Tauno','ESPOO',1953,2,0,0,12,7378,1525,nil,'R',0,nil,0,0]
values.push [1335897, nil, 'Heinonen','Aki','Kylmäkoski',1986,1,0,0,6,4621,1972,nil,'R',0,nil,0,0]
values.push [14063963, nil, 'Heinonen','Hannu','JUANKOSKI',1954,0,1,0,5,2213,2433,nil,'R',0,nil,0,0]
values.push [14063972, nil, 'Heinonen','Jussi','KIURUVESI',1900,1,0,0,6,3732,2063,nil,'R',0,nil,0,0]
values.push [1301164, nil, 'Heinonen','Markku','HOLLOLA',1945,18,1,1,117,80150,99,'P','R',438,nil,191,0]
values.push [13132808, nil, 'Heinonen','Pekka','URJALA',1936,5,0,0,30,8952,910,nil,'R',432,nil,0,0]
values.push [1330973, nil, 'Heinonen','Pekka','HELSINKI',1963,1,0,0,6,2134,2234,nil,'R',0,nil,0,0]
values.push [14063981, nil, 'Heinonen','Reino','ESPOO',1937,2,2,0,22,15935,1075,nil,'R',0,nil,0,0]
values.push [14063990, nil, 'Heiskanen','Antero','LAHTI',1946,1,3,1,25,13890,997,nil,'R',0,nil,0,0]
values.push [1301177, nil, 'Heiskanen','Erkki','SIILINJÄRVI',1948,2,4,1,36,25501,656,nil,'R',663,nil,0,0]
values.push [1301180, nil, 'Heiskanen','Heikki','Pieksämäki',1952,1,4,7,54,28900,430,nil,'R',667,nil,0,0]
values.push [14064009, nil, 'Heiskanen','Juhani','VIHTI',1956,0,1,0,5,2677,2398,nil,'R',0,nil,0,0]
values.push [14064018, nil, 'Heiskanen','Lauri','PORVOO',1936,5,0,2,38,22171,631,nil,'R',84,nil,0,0]
values.push [1328354, nil, 'Heiskanen','Nina','Helsinki',1970,4,0,0,24,17549,1017,nil,'R',0,nil,0,0]
values.push [1335156, nil, 'Heiskanen','Viljo','Nurmes',1942,0,0,2,8,2276,1922,'P',nil,0,nil,0,0]
values.push [1301193, nil, 'Hekkala','Timo','Ulvila',1941,14,4,1,108,54700,132,'P','R',522,nil,248,0]
values.push [1327821, nil, 'Helavirta','Hanna','Salo',1978,0,0,1,4,1153,2785,'P',nil,0,nil,0,0]
values.push [1327180, nil, 'Helenius','Arto','TAMERE',1959,1,1,0,11,8395,1611,nil,'R',0,nil,0,0]
values.push [14064027, nil, 'Helin','Juha','SUOLAHTI',1956,1,0,1,10,6652,1720,nil,'R',0,nil,0,0]
values.push [1336760, nil, 'Heliste','Jouni','KORIA',1953,1,2,0,21,13001,1111,nil,'R',0,nil,0,0]
values.push [14064036, nil, 'Helisten','Kai','ESPOO',1963,2,0,0,12,6055,1549,nil,'R',0,nil,0,0]
values.push [14064045, nil, 'Helistö','Aaro','LOHJA',1962,0,0,1,4,1395,2739,nil,'R',0,nil,0,0]
values.push [14064054, nil, 'Hell','Anne','KERAVA',1963,4,0,0,24,15368,1024,nil,'R',0,nil,0,0]
values.push [14064063, nil, 'Hell','Eino','KERAVA',1940,2,0,2,20,11598,1150,nil,nil,0,nil,0,0]
values.push [14064072, nil, 'Hell','Niina','KERAVA',1962,1,0,0,6,2191,2227,nil,'R',0,nil,0,0]
values.push [14064081, nil, 'Hell','Rauno','SIPOO',1972,0,0,1,4,2555,2619,nil,'R',0,nil,0,0]
values.push [1301203, nil, 'Hellberg','Timo','Pertteli',1963,10,3,0,80,68058,225,nil,'R',741,nil,348,0]
values.push [1301216, nil, 'Hellman','Kari','Helsinki',1962,2,1,0,17,10857,1280,nil,'R',0,nil,0,0]
values.push [1329175, nil, 'Hellman','Sanna','Inkoon asema',1969,4,0,2,32,3310,817,'P',nil,0,'A077',0,0]
values.push [14064090, nil, 'Hellsten','Eino','KARKKILA',1947,4,0,0,24,14420,1025,nil,'R',0,nil,0,0]
values.push [1325823, nil, 'Hellström','Magnus','Espoo',1975,3,0,1,22,9210,1089,'P',nil,0,nil,0,0]
values.push [1301229, nil, 'Helminen','Erkki','Tuusula',1950,7,5,3,84,53504,206,nil,'R',709,nil,344,0]
values.push [1301232, nil, 'Helminen','Jaakko','Tuusula',1948,11,2,1,86,54432,197,nil,'R',736,nil,343,0]
values.push [1307689, nil, 'Helo','Paavo','FORSSA',1943,4,1,1,33,19822,760,nil,'R',557,nil,0,0]
values.push [1327423, nil, 'Helve','Jaakko','Espoo',1976,0,1,0,5,2267,2426,'P',nil,0,nil,0,0]
values.push [1307993, nil, 'Henriksson','Matti','Helsinki',1964,5,0,0,30,16765,891,nil,'R',758,nil,0,0]
values.push [1329997, nil, 'Henriksson','Pasi','Turku',1973,0,0,1,4,1376.5,2746,'P',nil,0,nil,0,0]
values.push [14064102, nil, 'Hepoluhti','Heikki','VIHTI',1946,2,0,0,12,4641,1573,nil,'R',0,nil,0,0]
values.push [1301245, nil, 'Hernetkoski','Soini','Puuttuu',1938,2,0,1,16,8656.5,1347,'P','R',0,nil,0,0]
values.push [14064111, nil, 'Herrala','Juhani','KOTKA',1950,1,1,1,15,7132,1404,nil,'R',0,nil,0,0]
values.push [14064120, nil, 'Herranen','Mika','MÄNTYHARJU',1948,0,0,1,4,3471,2555,nil,nil,0,nil,0,0]
values.push [1301258, nil, 'Hesso','Jaakko','Lavia',1941,15,9,1,139,57952.5,62,'P','R',352,'A045T',149,0]
values.push [1331147, nil, 'Hevonoja','Jani','Akaa',1974,5,1,0,41,35652,565,nil,'R',804,nil,0,0]
values.push [14064139, nil, 'Hietaharju','Matti','TAMPERE',1944,1,3,3,33,11876,775,nil,'R',319,nil,0,0]
values.push [1301261, nil, 'Hietala','Markku','Nurmijärvi',1967,5,1,2,43,28058,540,nil,'R',760,nil,0,0]
values.push [14064148, nil, 'Hietaniemi','Tapio','TUUSULA',1948,1,1,5,31,14753,836,nil,'R',508,nil,0,0]
values.push [1338742, nil, 'Hiljanen','Kirsi','X Palokka',1961,0,0,2,8,3628,1907,'P','R',0,nil,0,0]
values.push [1333734, nil, 'Hilola','Mikko','Savonlinna',1985,3,0,0,18,8225,1240,'P',nil,0,nil,0,0]
values.push [1301287, nil, 'Hilska','Asta','ORIMATTILA',1939,12,14,3,154,35257,50,'P','R',251,nil,116,40]
values.push [14064157, nil, 'Hiltunen','Ari','NURMO',1970,0,1,1,9,6490,1815,nil,'R',0,nil,0,0]
values.push [1307809, nil, 'Hiltunen','Vesa','Kouvola',1959,0,0,1,4,2066,2664,nil,'R',0,nil,0,0]
values.push [14064166, nil, 'Himanen','Kari','TUUSULA',1951,0,0,1,4,1965,2674,nil,nil,0,nil,0,0]
values.push [14064175, nil, 'Himanen','Matti','LAHTI',1948,1,1,0,11,7338,1624,nil,'R',0,nil,0,0]
values.push [14064184, nil, 'Himmanen','Reijo','VANTAA',1940,4,5,4,65,45916,321,nil,'R',47,nil,46,0]
values.push [1331697, nil, 'Hinkkanen','Heikki','SIMPELE',1959,0,0,1,4,1199.5,2773,'P',nil,0,nil,0,0]
values.push [1301300, nil, 'Hintsanen','Lauri','Vartsala',1935,2,7,8,79,40258,231,'P','R',499,nil,259,0]
values.push [14064193, nil, 'Hintukainen','Keijo','TURKU',1952,0,0,1,4,3097,2571,nil,'R',0,nil,0,0]
values.push [1301313, nil, 'Hippeläinen','Hannu','Lahti',1951,4,0,0,24,17304,1020,'P','R',0,nil,0,0]
values.push [14064205, nil, 'Hippeläinen','Kari','HOLLOLA',1956,0,2,1,14,7972,1439,nil,'R',0,nil,0,0]
values.push [14064214, nil, 'Hirsimäki','Eino','TAMMELA',1948,4,0,1,28,12363,958,nil,'R',0,nil,0,0]
values.push [14064223, nil, 'Hirva','Erkki','LOHJA',1948,1,0,0,6,1821,2261,nil,nil,0,nil,0,0]
values.push [14064232, nil, 'Hirvinen','Mauno','KUUSANKOSKI',1949,5,0,0,30,15211,896,nil,'R',298,nil,0,0]
values.push [1301326, nil, 'Hirvonen','Markku','Varkaus',1953,13,6,6,136,78152.5,66,'P','R',354,'A095T',155,0]
values.push [14064241, nil, 'Hirvonen','Onerva','HELSINKI',1945,0,0,1,4,1429,2734,nil,'R',0,nil,0,0]
values.push [1301339, nil, 'Hjelt','Juha','Joroinen',1970,0,0,1,4,2195,2652,nil,'R',0,nil,0,0]
values.push [1335347, nil, 'Hjelt','Mari','Espoo',1968,1,1,1,15,2953.5,1428,'P',nil,0,nil,0,0]
values.push [1328765, nil, 'Hofmann','Sari','Helsinki',1972,0,1,0,5,1325.5,2513,'P',nil,0,nil,0,0]
values.push [14064250, nil, 'Hoikkala','Tatu','RAUMA',1942,0,0,1,4,1684,2704,nil,nil,0,nil,0,0]
values.push [14064269, nil, 'Hoikkanen','Kalevi','KONNEVESI',1927,1,0,0,6,2171,2232,nil,nil,0,nil,0,0]
values.push [14064278, nil, 'Hokkanen','Heikki','JOKIOINEN',1950,1,0,1,10,3686,1784,nil,'R',0,nil,0,0]
values.push [1301342, nil, 'Hokkanen','Kalevi','Hki',1931,18,8,0,148,62626,55,'P','R',156,'A034T',74,0]
values.push [14064287, nil, 'Hokkanen','Teuvo','NASTOLA',1942,1,1,2,19,6621,1178,nil,'R',0,nil,0,0]
values.push [1301355, nil, 'Holma','Pekka','Tuusula',1967,2,1,1,21,11812,1119,nil,'R',0,nil,0,0]
values.push [1329942, nil, 'Holmalahti','Jussi','Vantaa',1965,0,2,0,10,5586,1742,nil,'R',0,nil,0,0]
values.push [1328723, nil, 'Holmberg','Timo','Mikkeli',1969,0,1,0,5,2215,2432,nil,'R',0,nil,0,0]
values.push [14064296, nil, 'Holopainen','Jorma','KOUVOLA',1942,1,0,0,6,1580,2282,nil,nil,0,nil,0,0]
values.push [1330601, nil, 'Holopainen','Juha','Nurmes',1970,2,1,0,17,10296,1287,nil,'R',0,nil,0,0]
values.push [1301368, nil, 'Holopainen','Marja','Joensuu',1955,9,0,2,62,41867,355,nil,'R',675,nil,320,0]
values.push [14064308, nil, 'Honka','Juhani','HÄMEENLINNA',1945,1,0,1,10,8961,1699,nil,nil,0,nil,0,0]
values.push [14064317, nil, 'Honkamäki','Jyrki','HELSINKI',1955,0,0,1,4,2227,2647,nil,'R',0,nil,0,0]
values.push [14064326, nil, 'Honkanen','Erkki','ESPOO',1953,1,0,0,6,2561,2186,nil,'R',0,nil,0,0]
values.push [1301371, nil, 'Honkanen','Jorma','Siilinjärvi',1958,4,0,0,24,21388,1008,nil,'R',0,nil,0,0]
values.push [1301384, nil, 'Honkanen','Raimo','Taipalsaari',1946,0,1,5,25,14149,994,nil,'R',0,nil,0,0]
values.push [13132826, nil, 'Honkanen','Raimo','NASTOLA',1949,1,1,1,15,8882,1393,nil,nil,0,nil,0,0]
values.push [13132817, nil, 'Honkanen','Raimo','RIIHIMÄKI',1954,3,2,1,32,18157,789,nil,'R',360,nil,0,0]
values.push [14064335, nil, 'Honkanen','Teijo','MIKKELI',1953,2,1,0,17,5826,1306,nil,'R',0,nil,0,0]
values.push [14064344, nil, 'Honkasalo','Ossi','KERAVA',1945,1,2,5,36,13416,676,nil,'R',214,nil,0,0]
values.push [1325153, nil, 'Honkonen','Antti','VANTAA',1945,3,4,1,42,21286,560,'P','R',777,nil,0,0]
values.push [14064353, nil, 'Honkonen','Marko','RIIHIMÄKI',1966,1,0,0,6,2486,2195,nil,'R',0,nil,0,0]
values.push [14064362, nil, 'Hopeasaari','Erkki','HELSINKI',1932,5,0,0,30,16905,889,nil,'R',85,nil,0,0]
values.push [1301397, nil, 'Hotokka','Tuomo','Vaskio',1947,12,4,3,104,45482.5,143,'P','R',491,nil,232,0]
values.push [1301407, nil, 'Hovi','Martti','Hyvinkää',1931,6,0,5,56,18725,422,'P','R',449,nil,0,0]
values.push [1301410, nil, 'Hovikorpi','Aarno','Naantali',1941,1,1,1,15,6885,1406,'P','R',0,nil,0,0]
values.push [1301423, nil, 'Hovikorpi','Auli','Naantali',1963,4,1,2,37,26385,644,nil,'R',703,nil,0,0]
values.push [14064371, nil, 'Hovila','Olavi','HÄMEENLINNA',1949,0,1,0,5,3083,2371,nil,'R',0,nil,0,0]
values.push [1301436, nil, 'Huhtala','Erkki','Helsinki',1958,8,1,0,53,32015.5,437,'P','R',729,nil,0,0]
values.push [1331082, nil, 'Huhtala','Timo','Äänekoski',1971,1,0,0,6,5778,1940,nil,'R',0,nil,0,0]
values.push [14064380, nil, 'Huhtanen','Vesa','RAUMA',1958,0,0,1,4,1581,2715,nil,nil,0,nil,0,0]
values.push [14064399, nil, 'Huikko','Timo','IMATRA',1951,1,0,0,6,4713,1964,nil,'R',0,nil,0,0]
values.push [1301449, nil, 'Huita','Mika','Ruto',1967,1,0,0,6,4784,1961,nil,'R',0,nil,0,0]
values.push [14064401, nil, 'Hujanen','Hannu','HELSINKI',1947,0,1,1,9,4489,1843,nil,'R',0,nil,0,0]
values.push [14064410, nil, 'Hujanen','Lauri','KONNEVESI',1947,1,0,0,6,4472,1978,nil,'R',0,nil,0,0]
values.push [1325690, nil, 'Hujanen','Pekka','Kuusankoski',1960,0,0,1,4,1032,2804,'P',nil,0,nil,0,0]
values.push [1333653, nil, 'Hujo','Mika','Kuopio',1972,1,0,1,10,5980,1738,nil,'R',0,nil,0,0]
values.push [1339194, nil, 'Humppi','Susan','Mänttä',1976,0,0,1,4,915,2825,'P',nil,0,nil,0,0]
values.push [1301452, nil, 'Huotari','Eija','Hyvinkää',1948,2,0,1,16,0,1373,'P',nil,0,nil,0,0]
values.push [1316515, nil, 'Huotari','Katja','Helsinki',1900,1,1,0,17,10824,1281,nil,'R',0,nil,0,0]
values.push [1301465, nil, 'Huotari','Markku','Helsinki',1969,5,2,2,48,29074,472,'P','R',763,nil,0,0]
values.push [1301478, nil, 'Huotari','Matti','Hyvinkää 8',1948,15,6,1,124,84607,85,'P','R',58,nil,43,0]
values.push [13132835, nil, 'Huotari','Matti','SODANKYLÄ',1943,1,0,0,6,1569,2284,nil,'R',0,nil,0,0]
values.push [14064429, nil, 'Huotari','Teuvo','TAMPERE',1947,2,0,0,12,4582,1574,nil,'R',0,nil,0,0]
values.push [1326071, nil, 'Huovila','Kari','espoo',1959,5,2,1,50,34063,458,'P','R',802,nil,0,0]
values.push [14064438, nil, 'Huovila','Timo','KARKKILA',1949,1,0,0,6,4180,2011,nil,'R',0,nil,0,0]
values.push [14064447, nil, 'Hurmerinta','Hannu','ESPOO',1948,5,3,0,45,31969,505,nil,'R',29,nil,0,0]
values.push [1336524, nil, 'Husu','Heikki','Salo',1981,3,1,0,29,12709.5,936,'P',nil,0,nil,0,0]
values.push [1301481, nil, 'Husu','Jari','Puumala',1963,1,0,0,6,4925,1957,nil,'R',0,nil,0,0]
values.push [1338205, nil, 'Huttunen','Jarmo','Kankaanpää',1965,0,2,0,16,6737.5,1361,'P',nil,0,nil,0,0]
values.push [14064456, nil, 'Huttunen','Jorma','HYVINKÄÄ',1951,1,1,0,11,6638,1636,nil,'R',0,nil,0,0]
values.push [1331817, nil, 'Huttunen','Maija','ENONKOSKI',1990,0,1,0,5,1422.5,2500,'P',nil,0,nil,0,0]
values.push [1331121, nil, 'Huttunen','Risto','ENONKOSKI',1954,1,0,0,6,5060,1952,nil,'R',0,nil,0,0]
values.push [1328396, nil, 'Huuhka','Jouko','Kankaanpää',1964,6,2,4,62,33583.5,356,'P','R',0,'A073',0,0]
values.push [1336249, nil, 'Huunan-Seppälä','Liisa','Helsinki',1951,1,1,0,11,3862,1678,nil,'R',0,nil,0,0]
values.push [1336252, nil, 'Huunan-Seppälä','Matti','Helsinki',1946,2,1,1,21,7044,1133,nil,'R',0,nil,0,0]
values.push [14064465, nil, 'Huuska','Veikko','IKAALINEN',1951,0,0,1,4,1015,2806,nil,nil,0,nil,0,0]
values.push [1339547, nil, 'Huusko','Antero','Turku',1931,1,0,0,6,1560,2286,nil,'R',0,nil,0,0]
values.push [14064474, nil, 'Huusko','Esa','JÄRVENPÄÄ',1953,3,0,0,18,9870,1228,nil,'R',0,nil,0,0]
values.push [14064483, nil, 'Hynninen','Risto','HEINOLA',1949,1,2,1,20,12677,1146,nil,'R',0,nil,0,0]
values.push [1328325, nil, 'Hyppänen','Olli','Espoo',1966,1,0,0,10,3120,1789,'P',nil,0,nil,0,0]
values.push [1330313, nil, 'Hyppönen','Tauno','Tuusula',1944,0,1,6,33,11982,774,'P','R',0,nil,0,0]
values.push [1338836, nil, 'Hyrkäs','Kari','Vantaa',1953,0,1,0,11,5463,1655,'P',nil,0,nil,0,0]
values.push [1331231, nil, 'Hyttinen','Anita','Leppävirta',1961,3,0,0,18,5705.5,1258,'P',nil,0,nil,0,0]
values.push [1301494, nil, 'Hyttinen','Jouko','Seinäjoki',1954,10,0,4,76,61089,247,nil,'R',568,nil,279,0]
values.push [14064492, nil, 'Hyttinen','Juhani','KERAVA',1945,9,1,0,59,41509,399,nil,'R',36,nil,0,0]
values.push [1328888, nil, 'Hyvärinen','Reino','Espoo',1970,0,1,0,5,1853,2461,'P',nil,0,nil,0,0]
values.push [1301517, nil, 'Hyvönen','Antti','Helsinki',1969,0,0,1,4,2619,2612,nil,'R',0,nil,0,0]
values.push [1301520, nil, 'Hyvönen','Heikki','Tammisaari',1964,1,0,0,6,4539,1976,nil,'R',0,nil,0,0]
values.push [1334885, nil, 'Hyvönen','Kari','Jyväskylä',1955,2,0,1,16,12427,1321,nil,'R',0,nil,0,0]
values.push [1329670, nil, 'Hyvönen','Raimo','Salo',1940,1,1,1,15,3243.5,1427,'P',nil,0,nil,0,0]
values.push [1325247, nil, 'Hyvönen','Timo','Helsinki',1968,1,0,0,6,1871,2257,'P',nil,0,nil,0,0]
values.push [14064504, nil, 'Hyyrynen','Jouko','TURKU',1940,6,4,1,60,29655,390,nil,'R',89,nil,66,0]
values.push [1316405, nil, 'Hyytiä','Teemu','Hämeenlinna',1900,1,0,0,6,2496,2193,'P',nil,0,nil,0,0]
values.push [14064513, nil, 'Hyytiäinen','Markku','VIHTI',1961,1,0,1,10,5984,1737,nil,'R',0,nil,0,0]
values.push [14064522, nil, 'Hyytiäinen','Pentti','ESPOO',1944,3,0,0,18,7257,1247,nil,'R',0,nil,0,0]
values.push [1307870, nil, 'Hägg','Toni','LOHJA',1957,2,3,6,56,23751,420,nil,'R',788,nil,0,0]
values.push [14064531, nil, 'Häiväläinen','Seppo','SIILINJÄRVI',1900,0,0,1,4,1706,2699,nil,'R',0,nil,0,0]
values.push [1330355, nil, 'Häkkinen','Ari','HYVINKÄÄ',1954,4,0,1,28,5723.5,963,'P',nil,0,nil,0,0]
values.push [14064540, nil, 'Häkkinen','Ilpo','HÄMEENLINNA',1940,7,2,3,64,23715,342,nil,'R',242,nil,188,0]
values.push [1330397, nil, 'Häkkinen','Pekka','Espoo',1961,0,0,1,4,1082,2797,'P',nil,0,nil,0,0]
values.push [1330368, nil, 'Häkkinen','Saila','HYVINKÄÄ',1955,3,1,1,27,12995,975,'P','R',0,nil,0,0]
values.push [14064559, nil, 'Häkkinen','Veijo','HELSINKI',1933,9,1,2,67,24359,311,nil,'R',304,nil,136,0]
values.push [1335606, nil, 'Hämäläinen','Antti','Pertteli',1978,1,0,0,6,2043.5,2240,'P',nil,0,nil,0,0]
values.push [1301533, nil, 'Hämäläinen','Arvo','Lahti',1939,5,5,4,71,48304.5,280,'P','R',411,nil,193,0]
values.push [14064568, nil, 'Hämäläinen','Eero','HELSINKI',1950,3,2,1,32,23091,783,nil,'R',402,nil,0,0]
values.push [14064577, nil, 'Hämäläinen','Erkki','ESPOO',1945,1,1,0,11,5983,1647,nil,nil,0,nil,0,0]
values.push [1301546, nil, 'Hämäläinen','Heikki','Hämeenlinna',1983,0,0,2,8,2007,1928,'P',nil,0,nil,0,0]
values.push [1333527, nil, 'Hämäläinen','Juha','kallislahti',1955,7,0,1,46,33371,492,nil,'R',283,nil,0,0]
values.push [1301559, nil, 'Hämäläinen','Jukka-Pekka','Hämeenlinna',1953,6,2,1,50,18475.5,464,'P','R',629,nil,0,0]
values.push [14064586, nil, 'Hämäläinen','Kari','VANTAA',1943,2,3,1,31,14216,838,nil,'R',365,nil,0,0]
values.push [1331846, nil, 'Hämäläinen','Olli','Perniö',1980,2,0,0,12,8693,1504,nil,'R',0,nil,0,0]
values.push [1301562, nil, 'Hämäläinen','Raimo','Vantaa',1948,10,4,0,86,59558,196,nil,'R',733,nil,341,0]
values.push [1335392, nil, 'Hämäläinen','Sami-Jukka','Valkeala',1970,3,1,0,29,25888,918,nil,'R',0,nil,0,0]
values.push [14064595, nil, 'Hämäläinen','Sauli','KERAVA',1940,2,0,3,24,17262,1021,nil,'R',0,nil,0,0]
values.push [1337293, nil, 'Hämäläinen','Teemu','KOUVOLA',1985,0,1,1,9,2638.5,1874,'P',nil,0,nil,0,0]
values.push [1316751, nil, 'Hämäläinen','Veikko','Espoo',1951,0,1,1,9,2249.5,1875,'P',nil,0,nil,0,0]
values.push [1337206, nil, 'Hämäläinen','Vesa','KOUVOLA',1947,10,1,0,65,32554,329,'P','R',233,nil,0,0]
values.push [1301575, nil, 'Hänninen','Jukka','Imatra',1955,9,1,5,79,58673,229,nil,'R',571,nil,268,0]
values.push [14064607, nil, 'Hänninen','Paavo','HELSINKI',1900,0,2,0,10,2995,1792,nil,nil,0,nil,0,0]
values.push [14064616, nil, 'Hänninen','Seppo','TOIJALA',1963,2,0,0,12,9094,1498,nil,'R',0,nil,0,0]
values.push [1329777, nil, 'Härkönen','Antti','Tampere',1965,1,1,1,15,6524,1409,nil,'R',0,nil,0,0]
values.push [1301588, nil, 'Härkönen','Leena','PIEKSÄMÄKI',1948,1,4,4,42,13053.5,564,'P',nil,0,'A024',0,0]
values.push [1333514, nil, 'Härkönen','Marja-Leena','Mikkeli',1969,0,1,0,5,1671,2474,nil,'R',0,nil,0,0]
values.push [1301591, nil, 'Härkönen','Pekka','Salo',1948,5,1,2,43,27130,541,'P','R',686,nil,0,0]
values.push [1326411, nil, 'Härkönen','Raimo','pieksämäki',1943,0,1,5,25,8299.5,1003,'P',nil,0,nil,0,0]
values.push [1301601, nil, 'Härkönen','Reima','JOROINEN',1968,1,2,2,24,19377,1013,nil,'R',0,nil,0,0]
values.push [1301614, nil, 'Hätönen','Seppo','Espoo',1952,15,2,0,100,69291,156,'P','R',419,nil,223,0]
values.push [14064625, nil, 'Häärä','Jarmo','ESPOO',1962,1,0,0,6,4593,1973,nil,'R',0,nil,0,0]
values.push [1301627, nil, 'Högbacka','Matti','Kuusamo',1943,14,8,3,136,70777,67,nil,'R',301,nil,125,36]
values.push [1340400, nil, 'Högblom','Juuso','Yliskulma',1994,0,0,0,4,2449,2627,nil,'S',0,nil,0,0]
values.push [14064634, nil, 'Höglund','Peter','VAASA',1951,0,1,0,5,2672,2399,nil,nil,0,nil,0,0]
values.push [14064643, nil, 'Höglund','Risto','SAVONLINNA',1955,3,2,1,32,23248,781,nil,'R',163,nil,0,0]
values.push [1301630, nil, 'Höijer','Markku','Lappeenranta',1947,11,1,0,71,52044,278,'P','R',453,nil,256,0]
values.push [14064652, nil, 'Hölsä','Rauno','SULKAVA',1964,0,0,1,4,2379,2631,nil,'R',0,nil,0,0]
values.push [14064661, nil, 'Hölttä','Harri','HELSINKI',1952,1,1,0,11,8003,1614,nil,nil,0,nil,0,0]
values.push [14064670, nil, 'Hölttä','Seppo','HELSINKI',1962,3,0,0,18,11615,1217,nil,'R',0,nil,0,0]
values.push [14064689, nil, 'Höyhtyä','Riitta','JOENSUU',1966,0,1,0,5,2542,2408,nil,'R',0,nil,0,0]
values.push [14064698, nil, 'Höykinpuro','Jouni','KOKKOLA',1952,2,1,1,21,15536,1103,nil,'R',0,nil,0,0]
values.push [14064700, nil, 'Ignatius','Risto','SEINÄJOKI',1934,1,1,1,15,9074,1388,nil,'R',0,nil,0,0]
values.push [14064719, nil, 'Ihalainen','Jarmo','KOKKOLA',1963,5,0,0,30,23165,861,nil,'R',569,nil,0,0]
values.push [1301643, nil, 'Ihalainen','Jukka','Espoo',1952,7,1,1,51,40178,445,nil,'R',537,nil,0,0]
values.push [1336980, nil, 'Ihantoja','Matti','HUITTINEN',1983,0,1,0,5,3130,2368,nil,'R',0,nil,0,0]
values.push [14064728, nil, 'Iisakkila','Lauri','HELSINKI',1925,9,4,5,94,44214,174,'P','R',108,nil,72,0]
values.push [14064737, nil, 'Iitti','Aino','NAANTALI',1950,0,0,2,8,3625,1908,nil,nil,0,nil,0,0]
values.push [1329340, nil, 'Iitti','Jukka','Jyväskylä',1967,8,0,2,62,46153,354,nil,'R',748,nil,0,0]
values.push [14064746, nil, 'Iitti','Kyösti','NAANTALI',1948,0,1,2,13,8346,1467,nil,nil,0,nil,0,0]
values.push [14064755, nil, 'Iitti','Pekka','JYVÄSKYLÄ',1964,0,1,0,5,2616,2404,nil,'R',0,nil,0,0]
values.push [14064764, nil, 'Iivanainen','Pentti','MIKKELI',1951,5,1,0,35,25212,686,nil,'R',226,nil,0,0]
values.push [1316719, nil, 'Iivari','Ilkka','Hämeenlinna',1957,2,0,2,20,8452,1156,'P','R',0,nil,0,0]
values.push [1331192, nil, 'Ijäs','Aki','Tampere',1981,1,0,0,6,5895,1938,nil,'R',0,nil,0,0]
values.push [14064773, nil, 'Ijäs','Esa','NOKIA',1948,0,0,1,4,1574,2716,nil,nil,0,nil,0,0]
values.push [1301656, nil, 'Ikola','Timo','Vantaa',1974,4,2,3,46,21416,502,'P','R',0,'A059',0,0]
values.push [14064782, nil, 'Ikonen','Aimo','TUUSULA',1943,6,0,1,40,28987,586,nil,'R',76,nil,0,0]
values.push [1327287, nil, 'Ikonen','Juha','ESPOO',1970,0,1,1,9,3375,1859,'P',nil,0,nil,0,0]
values.push [1301669, nil, 'Ikonen','Jyrki','Joroinen',1964,1,2,7,44,32346,520,nil,'R',590,nil,0,0]
values.push [1301672, nil, 'Ikonen','Minna','Nurmes',1969,1,4,2,34,13522,740,'P','R',0,nil,0,0]
values.push [1335075, nil, 'Ikuli','Janne','turku',1975,0,0,1,4,1069,2800,'P',nil,0,nil,0,0]
values.push [14064791, nil, 'Ikäheimonen','Alpi','YLÖJÄRVI',1950,3,0,0,18,3642,1266,nil,'R',0,nil,0,0]
values.push [1301685, nil, 'Ikävalko','Petri','ESPOO',1961,4,0,0,24,21000,1010,nil,'R',0,nil,0,0]
values.push [1340497, nil, 'Ilmarinen','Markus','TURKU',1984,0,0,0,6,5193,1949,nil,'S',0,nil,0,0]
values.push [14064803, nil, 'Ilmavirta','Risto','HÄMEENLINNA',1949,7,2,2,60,43269,380,nil,'R',275,nil,182,0]
values.push [1331008, nil, 'Ilola','Ari','Ypäjä',1967,4,1,1,39,32389,599,nil,'R',800,nil,0,0]
values.push [14064812, nil, 'Ilomäki','Petri','TOIJALA',1961,4,0,1,28,24163,944,nil,'R',0,nil,0,0]
values.push [1301698, nil, 'Ilonen','Ismo','Eteläinen',1960,9,1,3,71,55122.5,277,'P','R',586,nil,291,0]
values.push [1332188, nil, 'Ilves','Outi','Jyväskylä',1983,0,1,1,9,2192.5,1878,'P',nil,0,nil,0,0]
values.push [1328192, nil, 'Ilves','Risto','Helsinki',1969,4,0,0,24,7854,1039,'P',nil,0,nil,0,0]
values.push [1328095, nil, 'Immonen','Jari','nastola',1964,2,0,0,12,11725,1483,nil,'R',0,nil,0,0]
values.push [14064821, nil, 'Immonen','Juhani','KOTKA',1945,1,1,1,15,12280,1376,nil,'R',0,nil,0,0]
values.push [1301708, nil, 'Immonen','Jussi','ESPOO',1973,1,2,4,32,17087,794,'P','R',0,nil,0,0]
values.push [14064830, nil, 'Immonen','Paavo','SULKAVA',1947,5,3,1,49,36575,465,nil,'R',43,nil,0,0]
values.push [1336045, nil, 'Immonen','Satu','Joroinen',1970,1,0,0,6,3678,2071,nil,'R',0,nil,0,0]
values.push [1327274, nil, 'Inkeroinen','Matti','Heinola',1968,1,0,0,6,1984.5,2247,'P',nil,0,nil,0,0]
values.push [14064849, nil, 'Inkinen','Seppo','VALKEAKOSKI',1946,1,0,0,6,3073,2136,nil,'R',0,nil,0,0]
values.push [1301737, nil, 'Isokangas','Mikko','Nummela',1965,1,0,3,22,18264,1070,nil,'R',0,nil,0,0]
values.push [1301724, nil, 'Iso-Kuortti','Jouko','Kuortti',1957,2,5,1,41,21770,573,nil,'R',682,nil,0,0]
values.push [1301740, nil, 'Isopahkala','Sulevi','Toholampi',1946,1,0,1,10,5371,1747,nil,'R',0,nil,0,0]
values.push [1327229, nil, 'Isoviita','Helena','Pori',1959,0,1,2,13,2143,1480,'P',nil,0,nil,0,0]
values.push [1316463, nil, 'Isoviita','Olli','Venesjärvi',1948,4,0,1,28,8656.5,960,'P',nil,0,nil,0,0]
values.push [1324976, nil, 'Isoviita','Vesa','Pori',1969,4,1,0,29,21117,925,nil,'R',0,nil,0,0]
values.push [14064858, nil, 'Itkonen','Heikki','HÄMEENLINNA',1944,0,0,1,4,2850,2587,nil,nil,0,nil,0,0]
values.push [14064867, nil, 'Ivanoff','Väinö','HELSINKI',1940,1,0,0,6,3844,2048,nil,nil,0,nil,0,0]
values.push [1301766, nil, 'Jaakkola','Jari','Raisio',1966,1,0,0,6,5792,1939,nil,'R',0,nil,0,0]
values.push [1338878, nil, 'Jaakkola','Raine','VANTAA',1963,0,0,1,10,3426,1787,'P',nil,0,nil,0,0]
values.push [1301779, nil, 'Jaakkola','Teuvo','Pori',1950,7,6,3,84,48338.5,207,'P','R',650,nil,312,0]
values.push [14064876, nil, 'Jaakkonen','Juha-Pekka','ESPOO',1962,2,0,0,12,5520,1562,nil,'R',0,nil,0,0]
values.push [1301782, nil, 'Jaaksi','Pekka','Laihia',1955,5,0,4,46,22808,500,nil,'R',647,nil,0,0]
values.push [14064885, nil, 'Jaamanen','Jaakko','TAMPERE',1947,1,0,0,6,2437,2197,nil,'R',0,nil,0,0]
values.push [14064894, nil, 'Jaatinen','Alpo','HELSINKI',1941,1,1,0,11,8921,1603,nil,'R',0,nil,0,0]
values.push [14064906, nil, 'Jaatinen','Anssi','NAANTALI',1940,1,0,0,6,3476,2093,nil,nil,0,nil,0,0]
values.push [1301795, nil, 'Jaatinen','Jari','TURKU',1953,12,0,2,80,35813,228,'P','R',626,nil,322,0]
values.push [1329667, nil, 'Jaatinen','Marko','Muurla',1970,3,1,0,23,13571,1054,'P','R',0,nil,0,0]
values.push [1329722, nil, 'Jaatinen','Satu','Muurla',1970,3,0,0,18,6359,1254,'P',nil,0,nil,0,0]
values.push [14064915, nil, 'Jalamo','Timo','HELSINKI',1962,3,0,0,18,11241,1220,nil,'R',0,nil,0,0]
values.push [1301805, nil, 'Jalkanen','Pertti','Joensuu',1949,11,1,1,75,58588,251,nil,'R',148,nil,69,0]
values.push [1301818, nil, 'Jalonen','Antti','Hyvinkää',1936,7,2,3,64,23925.5,341,'P','R',530,nil,255,0]
values.push [14064924, nil, 'Jalonen','Matti','JYVÄSKYLÄ',1953,0,1,7,33,4807,780,nil,'R',266,nil,0,0]
values.push [14064933, nil, 'Jansson','Kurt','KAUNIAINEN',1928,0,0,1,4,2977,2576,nil,nil,0,nil,0,0]
values.push [1337947, nil, 'Jansson','Petra','ESPOO',1973,1,1,0,11,4853,1667,'P','R',0,nil,0,0]
values.push [1327012, nil, 'Japisson','Teemu','Helsinki',1966,2,1,1,21,13923,1106,nil,'R',0,nil,0,0]
values.push [14064942, nil, 'Jauhiainen','Pasi','IMATRA',1958,1,0,0,6,3893,2044,nil,'R',0,nil,0,0]
values.push [1301821, nil, 'Jaunila','Timo','Lohja',1973,0,0,2,8,5924,1887,nil,'R',0,nil,0,0]
values.push [1307582, nil, 'Javanainen','Mikko','Heinola',1973,1,0,1,10,7237,1711,nil,'R',0,nil,0,0]
values.push [14064951, nil, 'Jensen','Thorvald','ESPOO',1938,1,0,0,6,3421,2100,nil,nil,0,nil,0,0]
values.push [1301834, nil, 'Jetsonen','Voitto','Valkeakoski',1953,19,2,0,124,107291,84,nil,'R',95,nil,108,0]
values.push [1329968, nil, 'Joensuu','Kirsi','Kuortane',1970,3,0,0,18,6046.5,1257,'P',nil,0,nil,0,0]
values.push [1328480, nil, 'Joentausta','Marko','NASTOLA',1969,0,2,2,18,8726,1234,'P','R',0,nil,0,0]
values.push [14064960, nil, 'Johansson','Helge','POHJA',1921,0,0,1,4,1468,2730,nil,nil,0,nil,0,0]
values.push [1331260, nil, 'Johansson','Jari','Valkeakoski',1974,0,0,1,9,4252,1849,'P',nil,0,nil,0,0]
values.push [1339343, nil, 'Johansson','Jussi','valkeakoski',1983,0,0,1,9,4528,1840,'P',nil,0,nil,0,0]
values.push [14064979, nil, 'Johansson','Kalevi','SALO',1952,2,0,1,16,9154,1345,nil,'R',0,nil,0,0]
values.push [1301847, nil, 'Johansson','Rauli','Kajaani',1951,2,3,5,47,17139,489,'P','R',382,nil,0,0]
values.push [1338234, nil, 'Jokela','Arto','Vanhalinna',1959,0,2,0,16,6932.5,1359,'P',nil,0,nil,0,0]
values.push [14064988, nil, 'Jokela','Matti','SAHALAHTI',1945,5,0,1,34,18919,731,nil,'R',489,nil,0,0]
values.push [1301850, nil, 'Jokela','Sanna','Helsinki',1969,1,1,1,15,7875,1398,nil,'R',0,nil,0,0]
values.push [14064997, nil, 'Jokinen','Erkki','KIRKKONUMMI',1944,6,3,0,51,36610,447,nil,'R',143,nil,0,0]
values.push [1301863, nil, 'Jokinen','Jukka','pori',1950,6,6,1,70,41731.5,285,'P','R',724,nil,337,0]
values.push [14065006, nil, 'Jokinen','Kari','HELSINKI',1966,2,0,0,12,8101,1511,nil,'R',0,nil,0,0]
values.push [14065015, nil, 'Jokinen','Leo','KOKKOLA',1947,1,0,0,6,4654,1969,nil,'R',0,nil,0,0]
values.push [1301876, nil, 'Jokinen','Mikko','Lahti',1954,0,1,1,9,5659,1824,nil,'R',0,nil,0,0]
values.push [14065024, nil, 'Jokinen','Pentti','LOIMAA',1952,9,2,1,68,40426,302,nil,'R',296,nil,132,0]
values.push [14065033, nil, 'Jokinen','Väinö','YPÄJÄ',1936,2,4,0,32,18153,790,nil,'R',164,nil,0,0]
values.push [1301889, nil, 'Jokipelto','Seppo','Hollola',1940,16,2,1,110,76885,122,'P','R',353,nil,154,0]
values.push [14065042, nil, 'Jokipii','Antti','LAHTI',1948,1,1,0,11,3854,1679,nil,'R',0,nil,0,0]
values.push [14065051, nil, 'Jokiranta','Aimo','KUUSAMO',1953,2,0,0,12,10504,1486,nil,'R',0,nil,0,0]
values.push [14065060, nil, 'Jokiranta','Asko','KASKINEN',1950,1,0,0,6,4173,2013,nil,'R',0,nil,0,0]
values.push [1301892, nil, 'Jokiranta','Juhani','Tuulos',1954,12,4,2,100,84788,155,'P','R',273,nil,130,0]
values.push [14065079, nil, 'Jokiranta','Voitto','HELSINKI',1942,2,1,0,17,10768,1282,nil,'R',0,nil,0,0]
values.push [1335473, nil, 'Jokisuu','Tiina','Nummela',1961,0,1,0,5,1154,2528,'P',nil,0,nil,0,0]
values.push [1335486, nil, 'Jokisuu','Timo','Nummela',1949,3,0,1,22,13291,1079,'P','R',0,nil,0,0]
values.push [1327928, nil, 'Jokitalo','Liisa','Helsinki',1956,3,1,0,23,4173.5,1068,'P',nil,0,nil,0,0]
values.push [1301902, nil, 'Joonas','Risto','Turku',1936,4,2,0,34,22202,721,nil,'R',700,nil,0,0]
values.push [1338975, nil, 'Jormanainen','Mika','LOHJA',1977,1,0,0,6,2961,2147,nil,'R',0,nil,0,0]
values.push [14065088, nil, 'Jormanainen','Rainer','TUUSULA',1957,0,1,0,5,2239,2428,nil,'R',0,nil,0,0]
values.push [14065097, nil, 'Joronen','Jari','HELSINKI',1955,3,1,2,31,24958,820,nil,'R',506,nil,0,0]
values.push [1301915, nil, 'Joutsenniemi','Juhani','Kerava',1943,26,3,4,193,124409,19,'P','R',72,'A062T',48,24]
values.push [14065109, nil, 'Joutti','Juhani','KERAVA',1938,2,0,0,12,9545,1494,nil,nil,0,nil,0,0]
values.push [1301928, nil, 'Jukarainen','Osmo','PIEKSÄMÄKI',1931,18,11,4,179,87356.5,25,'P','R',44,'A054T',33,18]
values.push [14065118, nil, 'Julku','Markku','TÖYSÄ',1961,1,0,0,6,3362,2107,nil,'R',0,nil,0,0]
values.push [1338195, nil, 'Julkunen','Kari','KUOPIO',1968,0,1,0,5,1725.5,2469,'P',nil,0,nil,0,0]
values.push [1330119, nil, 'Julkunen','Pasi','Juva',1966,1,1,0,11,5769.5,1651,'P','R',0,nil,0,0]
values.push [1337484, nil, 'Junna','Marita','Helsinki',1957,0,0,1,4,835,2831,'P',nil,0,nil,0,0]
values.push [1325519, nil, 'Junnikkala','Pekka','Vainikkala',1975,3,0,0,18,10576,1223,nil,'R',0,nil,0,0]
values.push [1337633, nil, 'Junttanen','Jari','KUOPIO',1964,1,0,0,6,2607.5,2181,'P',nil,0,nil,0,0]
values.push [1301931, nil, 'Junttila','Jari','Tammela',1963,10,1,0,65,44760,322,nil,'R',672,nil,313,0]
values.push [14065127, nil, 'Juntunen','Esko K','SOTKAMO',1952,2,0,1,16,7338,1356,nil,'R',0,nil,0,0]
values.push [14065136, nil, 'Juopperi','Markku','HELSINKI',1944,6,4,3,68,23114,306,nil,'R',69,nil,55,0]
values.push [13132693, nil, 'Jurvakainen','Tuija','SOTKAMO',1962,0,0,1,4,1189,2776,'P',nil,0,nil,0,0]
values.push [1301957, nil, 'Jurvanen','Taisto','Hämeenlinna',1945,12,8,9,154,100440.5,48,'P','R',176,nil,94,33]
values.push [14065145, nil, 'Jussila','Aimo','LAHTI',1952,1,0,1,10,4798,1760,nil,'R',0,nil,0,0]
values.push [1301960, nil, 'Jussila','Ari','Lampikangas',1960,1,0,1,10,6677.5,1719,'P','R',0,nil,0,0]
values.push [14065154, nil, 'Jussila','Pekka','KEURUU',1950,3,3,3,45,23527,510,nil,'R',544,nil,0,0]
values.push [1326398, nil, 'Juurinen','Petri','Orimattila',1981,0,1,0,5,2320.5,2421,'P',nil,0,nil,0,0]
values.push [1307540, nil, 'Juusti','Timo','Mellilä',1965,5,1,0,35,34039,683,nil,'R',770,nil,0,0]
values.push [1301973, nil, 'Juuti','Kati','Helsinki',1952,5,3,5,65,33382,328,'P','R',673,nil,345,0]
values.push [14065163, nil, 'Juvonen','Jouko','HELSINKI',1943,9,2,5,84,70086,204,nil,'R',42,nil,36,0]
values.push [14065172, nil, 'Jylhä','Harri','JUVA',1965,1,0,0,6,4953,1955,nil,'R',0,nil,0,0]
values.push [1301986, nil, 'Jylhä','Kari','JOENSUU',1953,3,0,0,18,14360,1199,nil,'R',0,nil,0,0]
values.push [14065181, nil, 'Jyräs','Seppo','NASTOLA',1937,1,0,1,10,3185,1788,nil,'R',0,nil,0,0]
values.push [1333789, nil, 'Jämsinen','Arja','Varkaus',1969,1,0,0,6,1391,2297,'P',nil,0,nil,0,0]
values.push [14065190, nil, 'Jämsä','Leo','PAIMIO',1945,3,2,1,32,16415,799,nil,'R',324,nil,0,0]
values.push [1301999, nil, 'Jänisoja','Heikki','Laihia',1959,3,2,2,36,21499,666,nil,'R',680,nil,0,0]
values.push [1302008, nil, 'Jänkä','Erkki','Vuorentausta',1934,4,4,4,60,28118,393,nil,'R',325,nil,245,0]
values.push [14065202, nil, 'Jäntti','Sakari','LAHTI',1933,5,0,0,30,19491,872,nil,'R',128,nil,0,0]
values.push [1336582, nil, 'Jäppinen','Airi','PIEKSÄMÄKI',1950,1,3,5,41,11480.5,578,'P','R',0,nil,0,0]
values.push [1302011, nil, 'Jäppinen','Hannu','Pieksämäki',1954,8,4,4,84,58865,205,nil,'R',669,nil,329,0]
values.push [14065211, nil, 'Järvelä','Reino','NAANTALI',1947,2,1,2,25,6738,1006,nil,'R',0,nil,0,0]
values.push [14065220, nil, 'Järveläinen','Seppo','ESPOO',1942,0,2,1,14,5581,1454,nil,'R',0,nil,0,0]
values.push [14065239, nil, 'Järvenpää','Heikki','LAPPEENRANT',1948,1,1,0,11,6405,1639,nil,'R',0,nil,0,0]
values.push [1337824, nil, 'Järvenpää','Marko','URJALA AS.',1966,2,0,0,12,7998,1516,nil,'R',0,nil,0,0]
values.push [14065248, nil, 'Järvinen','Aimo','TURKU',1949,3,1,2,31,21212,823,nil,'R',170,nil,0,0]
values.push [1302024, nil, 'Järvinen','Erno','Helsinki',1972,2,0,0,12,9918,1490,nil,'R',0,nil,0,0]
values.push [14065257, nil, 'Järvinen','Hannu','RAISIO',1947,1,2,2,24,9639,1032,'P','R',0,nil,0,0]
values.push [1325768, nil, 'Järvinen','Jaakko','Kerava',1988,0,1,0,5,1819.5,2465,'P',nil,0,nil,0,0]
values.push [1330148, nil, 'Järvinen','Janne','Espoo',1971,1,0,0,6,2185,2229,'P',nil,0,nil,0,0]
values.push [1328532, nil, 'Järvinen','Jukka-Pekka','Muurame',1971,2,1,0,17,9773,1291,'P','R',0,nil,0,0]
values.push [1326495, nil, 'Järvinen','Samuli','Helsinki',1972,1,0,0,6,2875,2155,nil,'R',0,nil,0,0]
values.push [14065266, nil, 'Järvisalo','Kauko','TURKU',1944,1,0,0,6,3571,2081,nil,'R',0,nil,0,0]
values.push [1336029, nil, 'Jääskeläinen','Henri','Varkaus',1983,1,0,0,6,2742.5,2165,'P',nil,0,nil,0,0]
values.push [1336236, nil, 'Jääskeläinen','Olli','Tampere',1977,1,0,0,6,3242,2120,nil,'R',0,nil,0,0]
values.push [14065275, nil, 'Jääskeläinen','Toivo','LOHJA',1933,1,0,0,6,1985,2246,nil,nil,0,nil,0,0]
values.push [1338810, nil, 'Kaaja','Mika','TURKU',1971,0,0,1,4,1909,2678,nil,'R',0,nil,0,0]
values.push [14065284, nil, 'Kaakkolahti','Eino','LAUKAA',1950,1,1,0,11,8218,1613,nil,'R',0,nil,0,0]
values.push [14065293, nil, 'Kaamanen','Simo','RAISIO',1946,0,0,1,4,1790,2691,nil,'R',0,nil,0,0]
values.push [14065305, nil, 'Kaaro','Kimmo','HELSINKI',1955,0,0,1,4,1645,2707,nil,'R',0,nil,0,0]
values.push [1328406, nil, 'Kaartama','Kimmo','Rajamäki',1976,0,0,1,4,1628,2710,nil,'R',0,nil,0,0]
values.push [1302037, nil, 'Kaartinen','Markku','Perniö',1963,8,0,0,48,44757,467,nil,'R',739,nil,0,0]
values.push [1307854, nil, 'Kaasalainen','Hannu','TURKU',1956,2,0,0,12,8095,1512,nil,'R',0,nil,0,0]
values.push [14065314, nil, 'Kaasalainen','Pertti','YLÖJÄRVI',1947,1,0,3,18,8922,1232,nil,'R',0,nil,0,0]
values.push [1325593, nil, 'Kaasinen','Kari','Kokkola',1963,1,1,1,15,9591,1385,nil,'R',0,nil,0,0]
values.push [14065323, nil, 'Kaikkonen','Jari','SIPOO',1956,0,1,0,5,1681,2473,nil,'R',0,nil,0,0]
values.push [14065332, nil, 'Kaila','Seppo','HÄMEENLINNA',1939,5,0,0,30,25846,855,nil,'R',173,nil,0,0]
values.push [14065341, nil, 'Kainila','Raimo','NURMIJÄRVI',1935,0,0,1,4,470,2858,nil,nil,0,nil,0,0]
values.push [1327339, nil, 'Kainulainen','Heikki','Helsinki',1961,0,0,1,4,2339,2636,nil,'R',0,nil,0,0]
values.push [1302040, nil, 'Kainulainen','Jarmo','Kerava',1962,0,0,1,4,1153,2786,'P',nil,0,nil,0,0]
values.push [1302053, nil, 'Kainulainen','Martti','Kuopio',1956,12,5,5,117,68029,101,nil,'R',500,nil,242,0]
values.push [1335376, nil, 'Kainulainen','Valtteri','Kuopio',1989,0,0,1,4,1390.5,2741,'P',nil,0,nil,0,0]
values.push [14065350, nil, 'Kainulainen','Vesa','SAVONLINNA',1972,3,0,0,18,14033,1203,nil,'R',0,nil,0,0]
values.push [1302066, nil, 'Kaipanen','Hannu','Jokela',1956,0,2,1,14,9100,1436,nil,'R',0,nil,0,0]
values.push [14065369, nil, 'Kaiponen','Matti','IMATRA',1945,4,0,0,24,10239,1031,nil,'R',0,nil,0,0]
values.push [1307948, nil, 'Kairemo','Kalevi','Helsinki',1955,1,0,0,6,2024,2242,nil,'R',0,nil,0,0]
values.push [1330818, nil, 'Kairisalo','Minna','Vantaa',1980,1,1,0,11,2641,1691,'P','R',0,nil,0,0]
values.push [14065378, nil, 'Kaitainen','Juha','SAVONLINNA',1957,2,2,0,22,16403,1073,nil,'R',0,nil,0,0]
values.push [14065387, nil, 'Kaivola','Jouko','JOUTSENO',1951,5,3,5,65,42950,323,nil,'R',210,nil,120,0]
values.push [14065396, nil, 'Kaivola','Matti','JOUTSENO',1952,10,1,1,69,40801,296,nil,'R',197,nil,91,0]
values.push [14065408, nil, 'Kajander','Mikko','LAHTI',1939,1,0,0,6,3348,2112,nil,nil,0,nil,0,0]
values.push [14065417, nil, 'Kakko','Jorma','ESPOO',1940,0,1,1,9,3323,1860,nil,'R',0,nil,0,0]
values.push [1327232, nil, 'Kakkonen','Kari','Helsinki',1972,1,1,0,11,3454,1682,'P',nil,0,nil,0,0]
values.push [14065426, nil, 'Kalajainen','Kalervo','VANTAA',1938,0,1,1,9,3923,1854,nil,nil,0,nil,0,0]
values.push [14065435, nil, 'Kalajainen','Seppo','HELSINKI',1959,2,0,0,12,6536,1542,nil,nil,0,nil,0,0]
values.push [1302079, nil, 'Kalermo','Risto','Heinola',1958,0,0,1,4,1266,2766,'P',nil,0,nil,0,0]
values.push [14065444, nil, 'Kalhola','Jorma','VANTAA',1947,4,0,1,28,18786,949,nil,'R',0,nil,0,0]
values.push [1336951, nil, 'Kaljunen','Jani','Huittinen',1982,1,0,0,11,5877,1648,nil,'R',0,nil,0,0]
values.push [1340552, nil, 'Kalla','Veera','Lahti',1986,0,0,0,5,1752,2467,nil,'S',0,nil,0,0]
values.push [14065453, nil, 'Kallasmaa','Juha','HÄMEENLINNA',1949,1,0,0,6,2096,2237,nil,'R',0,nil,0,0]
values.push [1302082, nil, 'Kallio','Heikki','turku',1956,1,1,8,43,13812,550,'P','R',616,nil,0,0]
values.push [14065462, nil, 'Kallio','Jari','IMATRA',1958,1,1,1,15,8816,1394,nil,'R',0,nil,0,0]
values.push [1302095, nil, 'Kallio','Kaj','KERAVA',1942,8,5,9,109,49227,127,'P','R',345,nil,145,0]
values.push [1328008, nil, 'Kallio','Katariina','Heinola',1974,1,4,1,30,8246,913,'P',nil,0,'A068',0,0]
values.push [1326039, nil, 'Kallio','Leo','hattula',1962,3,0,0,18,7383.5,1245,'P',nil,0,nil,0,0]
values.push [14065471, nil, 'Kallio','Mauri','HÄMEENLINNA',1950,5,1,0,35,22487,690,nil,'R',187,nil,0,0]
values.push [1302105, nil, 'Kallio','Mika','Jakkula',1967,0,1,3,17,9376,1294,nil,'R',0,nil,0,0]
values.push [14065480, nil, 'Kallio','Pauli','HATTULA',1945,0,0,1,4,2127,2659,nil,'R',0,nil,0,0]
values.push [14065499, nil, 'Kallio','Samuli','KEURUU',1952,1,0,0,6,2836,2157,nil,'R',0,nil,0,0]
values.push [1340374, nil, 'Kalliokoski','Juha','Rauma',1972,0,0,0,4,2188,2654,nil,'S',0,nil,0,0]
values.push [14065501, nil, 'Kalliokoski','Pentti','KANKAANPÄÄ',1953,1,0,0,6,1460,2292,nil,nil,0,nil,0,0]
values.push [1335648, nil, 'Kallioniemi','Ville','Tervajoki',1977,1,0,0,6,1187.5,2306,'P',nil,0,nil,0,0]
values.push [14065510, nil, 'Kalliosuo','Kauko','ESPOO',1944,2,0,0,12,7762,1518,nil,'R',0,nil,0,0]
values.push [1326194, nil, 'Kallonen','Aimo','IMATRA',1939,0,1,0,5,1947,2455,'P',nil,0,nil,0,0]
values.push [14065529, nil, 'Kaltio','Markku','KANGASALA',1949,5,1,1,39,26938,606,nil,'R',196,nil,0,0]
values.push [14065538, nil, 'Kamppila','Juha','ASIKKALA',1953,0,2,2,18,8643,1235,nil,'R',0,nil,0,0]
values.push [14065547, nil, 'Kamppinen','Jorma','KANKAANPÄÄ',1925,0,1,0,5,1417,2502,nil,nil,0,nil,0,0]
values.push [1327481, nil, 'Kanerva','Anita','?',1953,0,1,2,13,1294.5,1481,'P',nil,0,nil,0,0]
values.push [14065556, nil, 'Kanerva','Reino','JÄRVENPÄÄ',1939,4,1,0,29,17517,929,nil,'R',0,nil,0,0]
values.push [14065565, nil, 'Kangas','Eero','LAPPEENRANT',1953,1,0,0,6,2674,2174,nil,'R',0,nil,0,0]
values.push [14065574, nil, 'Kangas','Kari','SEINÄJOKI',1946,1,0,0,6,1513,2288,nil,nil,0,nil,0,0]
values.push [14065583, nil, 'Kangasmaa','Timo','ESPOO',1962,0,1,0,5,2290,2423,nil,'R',0,nil,0,0]
values.push [1331419, nil, 'Kankaanpää','Timo','Espoo',1979,0,1,1,9,3020,1865,'P',nil,0,nil,0,0]
values.push [1330216, nil, 'Kankaanpää','Vesa','Veikkola',1973,3,0,0,18,8103.5,1241,'P',nil,0,nil,0,0]
values.push [1337248, nil, 'kankare','lasse','Klaukkala',1966,1,1,1,15,3315,1426,'P',nil,0,nil,0,0]
values.push [1302121, nil, 'Kankkio','Teijo','Masku',1950,5,1,0,35,23366,688,nil,'R',694,nil,0,0]
values.push [14065592, nil, 'Kankkunen','Ari','SULKAVA',1957,5,1,0,35,31714,684,nil,'R',57,nil,0,0]
values.push [1337963, nil, 'Kantola','Etti','Lappeenranta',1978,1,0,0,12,5130,1569,'P',nil,0,nil,0,0]
values.push [1334513, nil, 'Kantola','Markus','Tuusula',1965,4,0,0,29,12574,937,'P',nil,0,nil,0,0]
values.push [14065604, nil, 'Kantola','Pentti','KUUSANKOSKI',1948,1,0,3,18,13294,1208,nil,'R',0,nil,0,0]
values.push [1337183, nil, 'Kantsila','Minna','Tampere',1974,0,0,0,5,1607,2480,nil,'S',0,nil,0,0]
values.push [1331079, nil, 'Kapanen','Sami','vantaa',1972,0,0,1,4,2349,2634,nil,'R',0,nil,0,0]
values.push [1316706, nil, 'Kaplas','Mervi','Helsinki',1900,1,1,0,11,2138.5,1695,'P',nil,0,nil,0,0]
values.push [14065613, nil, 'Kares','Kullervo','NAKKILA',1935,2,1,2,25,10881,999,nil,'R',0,nil,0,0]
values.push [1302150, nil, 'Karevaara','Timo','Hämeenlinna',1946,2,1,3,29,16328,932,'P','R',0,nil,0,0]
values.push [1337853, nil, 'Karhima','Juha','Voikkaa',1964,1,1,0,17,14183,1269,nil,'R',0,nil,0,0]
values.push [1325263, nil, 'Karhunen','Jukka','Isorehto',1970,1,1,1,15,8960.5,1391,'P','R',0,nil,0,0]
values.push [1337303, nil, 'Karhunen','Katri','Isorehto',1969,1,0,0,6,1160.5,2307,'P',nil,0,nil,0,0]
values.push [14065622, nil, 'Kari','Pekka','TOIJALA',1952,1,1,0,11,6945,1633,nil,'R',0,nil,0,0]
values.push [1302163, nil, 'Kari','Veijo','TAMPERE',1946,14,4,6,128,90468,77,'P','R',347,nil,147,0]
values.push [1302176, nil, 'Karjala','Tapani','Ylistaro',1938,7,6,7,100,47366,160,nil,'R',158,nil,87,0]
values.push [1339097, nil, 'Karjalainen','Erkka','Tampere',1985,0,0,0,4,2852,2585,nil,'S',0,nil,0,0]
values.push [1326330, nil, 'Karjalainen','Heimo','Rahula',1950,0,1,1,9,3843,1856,'P',nil,0,nil,0,0]
values.push [1302189, nil, 'Karjalainen','Kirsti','Tampere',1946,7,0,1,46,28913,497,nil,'R',622,nil,0,0]
values.push [1302192, nil, 'Karjalainen','Martti','Hämeenlinna',1949,13,0,1,82,63373,214,nil,'R',540,nil,269,0]
values.push [1334607, nil, 'Karjalainen','Ossi','PIISPANRISTI',1955,4,2,0,39,13812.5,617,'P',nil,0,'A088',0,0]
values.push [1338357, nil, 'Karjalainen','Sanna','Kausala',1984,0,0,1,4,1158.5,2783,'P',nil,0,nil,0,0]
values.push [1331710, nil, 'Karjaluoto','Antti','Tampere',1976,1,1,0,11,8520,1608,nil,'R',0,nil,0,0]
values.push [14065631, nil, 'Karnaattu','Mauri','ANJALANKOSK',1939,0,1,0,5,2696,2396,nil,'R',0,nil,0,0]
values.push [14065640, nil, 'Karppela','Vallu','KUUSANKOSKI',1927,1,1,2,19,5797,1182,nil,nil,0,nil,0,0]
values.push [1302215, nil, 'Karppinen','Jarmo','Vantaa',1960,2,1,4,33,18359,766,nil,'R',725,nil,0,0]
values.push [13132844, nil, 'Karppinen','Juha','HELSINKI',1978,1,0,0,6,3619,2076,nil,'R',0,nil,0,0]
values.push [1326738, nil, 'Karppinen','Juha','HELSINKI',1962,1,0,0,6,4469,1979,nil,'R',0,nil,0,0]
values.push [14065659, nil, 'Karvinen','Esa','ESPOO',1945,1,0,0,6,3189,2125,nil,'R',0,nil,0,0]
values.push [1302228, nil, 'Karvonen','Kirsi','Somero',1977,3,2,1,32,7523,815,'P',nil,0,'A076',0,0]
values.push [1302231, nil, 'Karvonen','Markku','HÄMEENLINNA',1951,4,3,11,83,33787.5,213,'P','R',636,'A058T',0,0]
values.push [1302244, nil, 'Karvonen','Pirjo','Somero',1952,10,0,2,68,17965,307,'P','R',517,'A026T',0,0]
values.push [1302257, nil, 'Karvonen','Raimo','Somero',1944,14,1,2,97,72379.5,163,'P','R',509,nil,274,0]
values.push [1302260, nil, 'Karvonen','Tiina','LOIMAA',1980,13,0,1,82,27246.5,221,'P',nil,0,'A010',0,0]
values.push [1302273, nil, 'Karvonen','Ville','Somero',1985,3,2,4,44,15382,533,'P',nil,0,'A041',0,0]
values.push [1302286, nil, 'Kaski','Esko','Salo',1950,3,1,4,39,26163,608,'P','R',721,nil,0,0]
values.push [1302299, nil, 'Kaski','Pirjo','Salo',1951,2,2,4,38,16042.5,637,'P','R',0,nil,0,0]
values.push [1302309, nil, 'Kasurinen','Pasi','Mäntsälä',1969,4,1,0,29,23422,922,nil,'R',0,nil,0,0]
values.push [14065668, nil, 'Katainen','Lauri','SIILINJÄRVI',1950,3,0,0,18,11530,1218,nil,'R',0,nil,0,0]
values.push [1337727, nil, 'Katainen','Mervi','Espoo',1978,1,0,0,6,1125,2309,'P',nil,0,nil,0,0]
values.push [14065677, nil, 'Katajamäki','Seppo','HELSINKI',1945,1,0,0,6,1747,2271,nil,'R',0,nil,0,0]
values.push [1332502, nil, 'Kattilakoski','Kaj','Tampere',1966,0,1,0,5,1022,2534,'P',nil,0,nil,0,0]
values.push [14065686, nil, 'Kauhanen','Raimo','HELSINKI',1940,1,1,1,15,6036,1414,nil,'R',0,nil,0,0]
values.push [1302312, nil, 'Kaukkila','Mika','Rauma',1966,3,1,2,31,11463,845,'P',nil,0,'A020',0,0]
values.push [1302325, nil, 'Kaukokari','Laura','Vantaa',1964,6,0,0,36,24447,660,nil,'R',596,nil,0,0]
values.push [1316531, nil, 'Kaukokari','Sirkka-Liisa','Hämeenlinna',1944,9,0,0,54,22422.5,431,'P','R',601,nil,0,0]
values.push [1327465, nil, 'Kaukola','Jukka','Kuopio',1964,1,0,0,6,4286,2000,nil,'R',0,nil,0,0]
values.push [1302341, nil, 'Kaukomaa','Hannu','Hki 61',1945,7,2,11,96,58637,166,'P','R',313,nil,157,0]
values.push [1302354, nil, 'Kaunismäki','Arto','Jakkula',1959,2,1,1,21,13025,1109,nil,'R',0,nil,0,0]
values.push [1326990, nil, 'Kaunismäki','Jyrki','Rauma',1974,2,2,0,22,8650,1091,'P',nil,0,nil,0,0]
values.push [1334872, nil, 'Kauppi','Aaro','Helsinki',1970,0,0,1,4,1287.5,2760,'P',nil,0,nil,0,0]
values.push [14065695, nil, 'Kauppila','Pentti','HELSINKI',1926,3,4,7,66,28833,317,nil,'R',38,nil,45,0]
values.push [1335787, nil, 'Kauppinen','Hannu','Alapitkä',1953,1,0,0,6,2361,2204,'P',nil,0,nil,0,0]
values.push [14065707, nil, 'Kauppinen','Matti','VANTAA',1945,0,1,1,9,4486,1844,nil,'R',0,nil,0,0]
values.push [1330889, nil, 'Kauppinen','Sami','HALMENIEMI',1974,2,1,1,21,17148,1100,nil,'R',0,nil,0,0]
values.push [14065716, nil, 'Kauppinen','Tapio','VIHTI',1944,0,0,1,4,1631,2709,nil,'R',0,nil,0,0]
values.push [14065725, nil, 'Kaurola','Kari','JOUTSENO',1963,0,0,1,4,1427,2735,nil,'R',0,nil,0,0]
values.push [14065734, nil, 'Kaven','Taisto','LOHJA',1945,2,1,0,17,12485,1274,nil,'R',0,nil,0,0]
values.push [1329829, nil, 'Keijonen','Esko','Käsämä',1943,0,1,0,5,1625.5,2478,'P',nil,0,nil,0,0]
values.push [14065743, nil, 'Keinänen','Unto','SUONENJOKI',1945,3,3,0,33,24272,752,nil,'R',203,nil,0,0]
values.push [1302367, nil, 'Kekoniemi','Hanna','Lappeenranta',1977,2,0,0,12,8077,1513,nil,'R',0,nil,0,0]
values.push [1302370, nil, 'Kekoniemi','Ulla','Lappeenranta',1946,2,0,0,12,6913,1535,nil,'R',0,nil,0,0]
values.push [14065752, nil, 'Kekäläinen','Harri','KUOPIO',1962,0,0,1,4,2089,2660,nil,'R',0,nil,0,0]
values.push [1328574, nil, 'Kemiläinen','Risto','Perniö as',1950,0,0,3,12,7164,1532,nil,'R',0,nil,0,0]
values.push [1327630, nil, 'Kemppi','Ilkka','Hytti',1964,3,0,0,18,6333,1255,'P',nil,0,nil,0,0]
values.push [14065761, nil, 'Kerkkänen','Ritva','LIPERI',1955,0,1,1,9,4900,1834,nil,'R',0,nil,0,0]
values.push [14065770, nil, 'Kerälä','Erkki','HATTULA',1945,0,3,4,31,20914,825,nil,'R',481,nil,0,0]
values.push [1338263, nil, 'Keränen','Juha-Pekka','Kajaani',1962,1,0,1,16,12516,1319,nil,'R',0,nil,0,0]
values.push [1331901, nil, 'Keränen','Minna','Salo',1968,2,0,0,12,1587.5,1598,'P',nil,0,nil,0,0]
values.push [1302396, nil, 'Keski-Honkola','Kaija','hyvinkää',1951,0,0,3,12,4046.5,1582,'P','R',0,nil,0,0]
values.push [1302406, nil, 'Keski-Honkola','Pertti','Hyvinkää',1950,5,0,6,58,28182,407,'P','R',600,nil,0,0]
values.push [14065798, nil, 'Keskinen','Matti','TÖYSÄ',1946,1,0,1,10,4927,1754,nil,'R',0,nil,0,0]
values.push [1302419, nil, 'Keskinen','Pertti','Turku',1954,10,3,0,75,39465.5,253,'P','R',715,nil,333,0]
values.push [1339893, nil, 'Keskisaari','Anna','Lappeenranta',1984,0,0,0,6,3911,2041,nil,'S',0,nil,0,0]
values.push [1327795, nil, 'Keskitalo','Juha','Vinkkilä',1958,1,0,0,6,3137,2131,nil,'R',0,nil,0,0]
values.push [1336210, nil, 'Kesseli','Raimo','Riihimäki',1965,1,0,0,6,3568,2082,nil,'R',0,nil,0,0]
values.push [1340361, nil, 'Kesti','Tuomas','Riihimäki',1975,0,0,0,5,3469,2345,nil,'S',0,nil,0,0]
values.push [1302422, nil, 'Keto','Jouko','Laihia',1939,2,3,5,47,22307,487,'P','R',691,nil,0,0]
values.push [14065819, nil, 'Ketola','Juhani','LOPPI',1958,3,1,0,23,15070,1052,nil,'R',0,nil,0,0]
values.push [1332049, nil, 'Ketola','Samuli','Espoo',1975,0,0,1,4,2663,2606,nil,'R',0,nil,0,0]
values.push [14065800, nil, 'Keto-Oja','Juhani','HELSINKI',1947,1,0,0,6,2624,2179,nil,nil,0,nil,0,0]
values.push [14065828, nil, 'Kettunen','Esa','JUANKOSKI',1962,1,0,0,6,4236,2005,nil,'R',0,nil,0,0]
values.push [1302435, nil, 'Kettunen','Jerry','LOHJA',1968,2,3,1,31,12009.5,843,'P','R',0,nil,0,0]
values.push [14065837, nil, 'Kettunen','Jukka','KUOPIO',1961,2,0,0,12,9415,1496,nil,'R',0,nil,0,0]
values.push [1302448, nil, 'Kettunen','Jyrki','Helsinki 73',1958,0,1,3,17,7265,1301,nil,'R',0,nil,0,0]
values.push [1302451, nil, 'Kettunen','Markku','Hämeenlinna',1944,12,6,7,130,69255.5,74,'P','R',82,nil,56,0]
values.push [14065846, nil, 'Kettunen','Mauno','KERAVA',1954,3,0,0,18,15864,1189,nil,'R',0,nil,0,0]
values.push [14065855, nil, 'Kettunen','Pasi','HELSINKI',1958,1,0,0,6,3719,2069,nil,'R',0,nil,0,0]
values.push [13132853, nil, 'Kettunen','Pertti','JOENSUU',1963,2,0,3,24,18270,1016,nil,'R',0,nil,0,0]
values.push [1302464, nil, 'Kettunen','Pertti','Lehmo',1946,0,0,1,4,2548,2621,nil,'R',0,nil,0,0]
values.push [1329502, nil, 'Kettunen','Pyry','Espoo',1981,1,5,0,35,17051.5,697,'P',nil,0,'A094',0,0]
values.push [1302477, nil, 'Kettunen','Seppo','Ilomantsi',1956,1,1,0,11,7494,1620,nil,'R',0,nil,0,0]
values.push [1329609, nil, 'Kiander','Marja','HEINOLA',1961,0,0,1,4,772.5,2837,'P',nil,0,nil,0,0]
values.push [1328464, nil, 'Kiilholma','Johanna','Helsinki',1972,0,0,1,4,925.5,2821,'P',nil,0,nil,0,0]
values.push [1335868, nil, 'Kiili','Annemari','Vaasa',1980,0,1,0,5,1382.5,2506,'P',nil,0,nil,0,0]
values.push [1335871, nil, 'Kiili','Petteri','Jyväskylä',1978,0,1,0,5,1606.5,2481,'P',nil,0,nil,0,0]
values.push [1331011, nil, 'Kiiski','Anssi','Kerava',1967,0,0,1,4,656.5,2846,'P',nil,0,nil,0,0]
values.push [1302480, nil, 'Kiiski','Eira','Hirsjärvi',1944,7,3,1,61,26744,373,nil,'R',564,nil,265,0]
values.push [1302493, nil, 'Kiiski','Osmo','Hirsjärvi',1942,23,0,2,151,101565,51,nil,'R',468,nil,210,48]
values.push [1329780, nil, 'Kiiskinen','Ari','Helsinki',1972,1,0,0,6,1538.5,2287,'P',nil,0,nil,0,0]
values.push [14065864, nil, 'Kiiskinen','Kari','SUOLAHTI',1965,0,0,1,4,2813,2592,nil,'R',0,nil,0,0]
values.push [14065873, nil, 'Kiiskinen','Matti','LIEKSA',1959,0,0,1,4,1254,2770,nil,'R',0,nil,0,0]
values.push [1302503, nil, 'Kiiskinen','Sulo','Paihola',1959,3,0,1,22,11511,1082,nil,'R',0,nil,0,0]
values.push [1336197, nil, 'Kiiveri','Timo','VEIKKOLA',1967,3,0,1,22,8193.5,1093,'P',nil,0,nil,0,0]
values.push [1302516, nil, 'Kiljala','Eija','Pihtipudas',1955,0,1,0,5,692,2546,'P',nil,0,nil,0,0]
values.push [1302529, nil, 'Kiljala','Väinö','Pihtipudas',1940,1,1,2,19,11398,1169,nil,'R',0,nil,0,0]
values.push [14065882, nil, 'Kilpeläinen','Erkki','KERAVA',1948,0,1,3,17,8595,1297,nil,'R',0,nil,0,0]
values.push [1302532, nil, 'Kilpeläinen','Matti','NURMIJÄRVI',1943,17,4,4,138,75447.5,64,'P','R',135,'A075T',142,0]
values.push [1327119, nil, 'Kilpeläinen','Mika','Loimaa',1968,3,1,0,23,19867,1042,nil,'R',0,nil,0,0]
values.push [1338179, nil, 'Kilpeläinen','Tuija','Palokka',1969,2,0,0,12,3592,1588,'P',nil,0,nil,0,0]
values.push [1302545, nil, 'Kilpi','Kalevi','HÄMEENLINNA',1955,4,6,5,74,31933,263,'P','R',355,nil,0,0]
values.push [1302558, nil, 'Kilpikari','Jyrki','Hyvinkää',1955,2,0,1,16,4862,1368,nil,'R',0,nil,0,0]
values.push [14065891, nil, 'Kilpiäinen','Pekka','KAUNIAINEN',1953,0,0,1,4,1793,2689,nil,'R',0,nil,0,0]
values.push [1325674, nil, 'Kilpiäinen','Pentti','Oitmäki',1951,4,1,1,33,8139,779,'P',nil,0,'A035',0,0]
values.push [14065903, nil, 'Kilponen','Timo','KERAVA',1946,1,0,0,6,4039,2025,nil,'R',0,nil,0,0]
values.push [14065912, nil, 'Kinnarinen','Matti','LIPERI',1952,2,3,4,43,24192,543,nil,'R',452,nil,0,0]
values.push [14065921, nil, 'Kinnula','Christian','ESPOO',1947,0,3,1,19,7045,1177,nil,'R',0,nil,0,0]
values.push [1333501, nil, 'Kinnunen','Anne','Valko',1970,1,0,0,6,1826,2260,nil,'R',0,nil,0,0]
values.push [14065930, nil, 'Kinnunen','Ari','OULU',1969,1,0,0,6,3297,2116,nil,'R',0,nil,0,0]
values.push [14065949, nil, 'Kinnunen','Esko','ESPOO',1945,3,4,6,62,30572,359,nil,'R',49,nil,58,0]
values.push [1328684, nil, 'Kinnunen','Harri','Helsinki',1964,1,0,0,6,1787,2266,nil,'R',0,nil,0,0]
values.push [1302561, nil, 'Kinnunen','Johanna','Helsinki',1979,1,0,0,6,1808,2263,'P',nil,0,nil,0,0]
values.push [1331189, nil, 'Kinnunen','Kari','VARKAUS',1960,6,0,1,40,31535,584,nil,'R',794,nil,0,0]
values.push [14065958, nil, 'Kinnunen','Pekka','HÄMEENKOSKI',1948,0,1,0,5,1407,2504,nil,'R',0,nil,0,0]
values.push [1337264, nil, 'Kinnunen','Timo','PARKUMÄKI',1968,1,0,0,6,3353,2110,nil,'R',0,nil,0,0]
values.push [14065967, nil, 'Kinnunen','Tuomo','KERIMÄKI',1943,9,2,0,64,44135,334,nil,'R',20,nil,22,0]
values.push [1330575, nil, 'Kinnunen','Virpi','PARKUMÄKI',1966,2,1,0,17,10445,1285,nil,'R',0,nil,0,0]
values.push [14065976, nil, 'Kirjala','Juha','NURMO',1965,6,0,1,40,33801,583,nil,'R',550,nil,0,0]
values.push [14065985, nil, 'Kirjavainen','Elja','HÄMEENLINNA',1974,0,1,0,5,3739,2327,nil,'R',0,nil,0,0]
values.push [14065994, nil, 'Kirjonen','Teemu','ESPOO',1952,1,0,2,14,5810,1450,nil,'R',0,nil,0,0]
values.push [14066003, nil, 'Kirvesmies','Juha','HOLLOLA',1962,1,0,0,6,5135,1950,nil,'R',0,nil,0,0]
values.push [1328215, nil, 'Kitunen','Matti','Anjalankoski',1944,4,1,1,33,10229,777,nil,'R',806,nil,0,0]
values.push [14066012, nil, 'Kiuru','Hannes','FORSSA',1936,1,2,4,32,22585,784,nil,'R',66,nil,0,0]
values.push [14066021, nil, 'Kiuru','Uljas','LAMMI',1927,0,0,1,4,1758,2694,nil,nil,0,nil,0,0]
values.push [1302587, nil, 'Kivelä','Jari','HIMANKA',1964,5,0,0,30,24824,859,nil,'R',668,nil,0,0]
values.push [14066030, nil, 'Kivelä','Markku','KERAVA',1944,0,2,6,34,23917,716,nil,'R',120,nil,0,0]
values.push [14066049, nil, 'Kivelä','Sulo','VANTAA',1927,1,1,1,15,8314,1395,nil,'R',0,nil,0,0]
values.push [1302590, nil, 'Kivi','Ilkka','Pirkkala',1953,12,6,0,108,65485,131,nil,'R',654,nil,305,0]
values.push [14066058, nil, 'Kiviharju','Kaija','VANTAA',1952,4,2,0,34,17739,732,nil,'R',605,nil,0,0]
values.push [1302600, nil, 'Kiviharju','Pekka','Hämeenlinna',1946,17,4,2,130,94760,73,nil,'R',119,nil,71,0]
values.push [1330533, nil, 'Kiviluoma','Keijo','Espoo',1958,1,0,0,6,4131,2018,nil,'R',0,nil,0,0]
values.push [1324905, nil, 'Kivimäki','Perttu','Tampere',1975,2,0,0,12,7715,1520,'P','R',0,nil,0,0]
values.push [14066067, nil, 'Kivimäki','Tarmo','ESPOO',1938,1,4,2,34,21385,724,nil,'R',131,nil,0,0]
values.push [14066076, nil, 'Kivinen','Martti','KOKKOLA',1951,4,1,1,33,20238,758,nil,'R',609,nil,0,0]
values.push [1337170, nil, 'Kivinen','Visa','Espoo',1969,0,1,0,5,3615,2335,nil,'R',0,nil,0,0]
values.push [14066085, nil, 'Kiviniemi','Hannu','JOUTSENO',1963,1,1,0,11,7245,1626,nil,'R',0,nil,0,0]
values.push [14066094, nil, 'Kiviniemi','Pauli','JOUTSENO',1939,1,0,0,6,3674,2072,nil,nil,0,nil,0,0]
values.push [1302613, nil, 'Kivioja','Elina','MÄRYNUMMI',1978,4,0,0,24,13670,1027,nil,'R',0,nil,0,0]
values.push [14066106, nil, 'Kivioja','Heikki','SALO',1954,1,0,0,6,4408,1988,nil,'R',0,nil,0,0]
values.push [1302626, nil, 'Kivioja','Jaakko','Märynummi',1952,10,2,2,78,60095,232,nil,'R',373,nil,179,0]
values.push [14066115, nil, 'Kivipelto','Tuomo','SEINÄJOKI',1949,0,1,0,5,2971,2378,nil,nil,0,nil,0,0]
values.push [14066124, nil, 'Kjellbäck','Arvi','ALAJÄRVI',1946,2,1,0,17,10061,1289,nil,'R',0,nil,0,0]
values.push [1302639, nil, 'Knutar','Paula','Kokkola',1959,0,2,4,26,6067,991,'P',nil,0,nil,0,0]
values.push [14066133, nil, 'Knuutila','Heikki','TOIJALA',1957,1,0,0,6,3121,2134,nil,'R',0,nil,0,0]
values.push [14066142, nil, 'Knuuttila','Kauko','RAUMA',1936,0,0,3,12,8758,1502,nil,nil,0,nil,0,0]
values.push [14066151, nil, 'Knuuttila','Mauri','HÄMEENLINNA',1940,0,1,0,5,3753,2326,nil,nil,0,nil,0,0]
values.push [14066160, nil, 'Koikkalainen','Pertti','SAVONLINNA',1959,4,1,1,33,25310,748,nil,'R',160,nil,0,0]
values.push [14066179, nil, 'Koistinen','Keijo','KARJALOHJA',1964,0,0,1,4,2590,2617,nil,'R',0,nil,0,0]
values.push [14066188, nil, 'Koistinen','Mikko','JYVÄSKYLÄ',1940,1,0,0,6,3949,2037,nil,nil,0,nil,0,0]
values.push [1302642, nil, 'Koistinen','Pasi','Nastola',1965,3,1,1,27,23025,965,nil,'R',0,nil,0,0]
values.push [1302668, nil, 'Koistinen','Pentti','Joensuu',1949,6,0,0,36,19266,669,nil,'R',379,nil,0,0]
values.push [14066197, nil, 'Koistinen','Seppo','VANTAA',1955,7,3,1,61,40360,369,nil,'R',337,nil,163,0]
values.push [14066209, nil, 'Koivisto','Reino','HÄMEENKYRÖ',1947,5,3,6,69,16566,298,nil,'R',34,nil,35,0]
values.push [1302684, nil, 'Koivu','Reijo','Hyvinkää',1947,2,0,1,16,7572,1355,'P','R',0,nil,0,0]
values.push [14066218, nil, 'Koivu','Veli-Pekka','KOKKOLA',1952,3,0,0,18,12622,1211,nil,'R',0,nil,0,0]
values.push [1325580, nil, 'Koivula','Keijo','Vantaa',1943,1,1,0,11,3663,1680,'P',nil,0,nil,0,0]
values.push [14066227, nil, 'Koivula','Mikko','LOPPI',1951,4,1,1,33,17257,769,nil,'R',264,nil,0,0]
values.push [1331435, nil, 'Koivulahti','Katja','Hämeenlinna',1970,1,0,0,12,7547,1523,nil,'R',0,nil,0,0]
values.push [14066236, nil, 'Koivumaa','Veikko','ESPOO',1956,1,0,0,6,3666,2073,nil,'R',0,nil,0,0]
values.push [14066245, nil, 'Koivumäki','Erkki','KARKKILA',1958,1,1,2,19,12566,1166,nil,'R',0,nil,0,0]
values.push [1329353, nil, 'Koivumäki','Taisto','Kantvik',1957,1,1,0,11,5731,1652,nil,'R',0,nil,0,0]
values.push [1302697, nil, 'Koivunen','Pertti','Turku',1959,6,5,1,65,23822.5,331,'P','R',465,nil,233,0]
values.push [14066254, nil, 'Koivuniemi','Sakari','PORI',1944,1,0,1,10,5196,1751,nil,'R',0,nil,0,0]
values.push [1325056, nil, 'Kojo','Juha','vantaa',1969,0,1,0,5,2226,2429,nil,'R',0,nil,0,0]
values.push [1302707, nil, 'Kokko','Juha','Akaa',1950,7,3,2,71,51264,279,'P','R',785,nil,0,0]
values.push [14066263, nil, 'Kokko','Seppo','JOUTSENO',1946,6,0,0,36,24745,658,nil,'R',285,nil,0,0]
values.push [1302710, nil, 'Kokkonen','Juhani','Helsinki',1941,17,2,4,128,64258.5,80,'P','R',231,nil,114,0]
values.push [1302723, nil, 'Kokkonen','Terhi','jyväskylä',1947,0,0,2,8,4056,1902,nil,'R',0,nil,0,0]
values.push [1302736, nil, 'Kolehmainen','Ilmo','Helsinki',1955,2,0,0,12,7737,1519,nil,'R',0,nil,0,0]
values.push [14066272, nil, 'Kolehmainen','Jouko','VARKAUS',1945,3,2,2,36,16890,671,nil,'R',413,nil,0,0]
values.push [14066281, nil, 'Koliseva','Esko','TUUSULA',1947,5,0,0,30,25695,856,nil,'R',274,nil,0,0]
values.push [14066290, nil, 'Koljonen','Pentti J','LAHTI',1937,5,1,0,35,21964,691,nil,'R',127,nil,0,0]
values.push [14066302, nil, 'Komppa','Petteri','LAHTI',1967,1,0,0,6,2548,2188,nil,'R',0,nil,0,0]
values.push [1333488, nil, 'Komsa','Jouko','Nurmes',1963,1,0,0,6,3723,2067,nil,'R',0,nil,0,0]
values.push [14066311, nil, 'Komsi','Jari','TUULOS',1962,0,1,0,5,2965,2381,nil,'R',0,nil,0,0]
values.push [14066320, nil, 'Komssi','Jarmo','NURMIJÄRVI',1953,2,0,2,20,17602,1140,nil,'R',0,nil,0,0]
values.push [1335017, nil, 'Komulainen','Jouni','Nummela',1966,1,0,0,6,1715,2272,'P',nil,0,nil,0,0]
values.push [1325577, nil, 'Kontkanen','Pasi','Espoo',1963,5,2,1,50,24579,463,'P','R',0,nil,0,0]
values.push [14066339, nil, 'Kontro','Pentti','IMATRA',1942,1,0,0,6,1879,2256,nil,'R',0,nil,0,0]
values.push [14066348, nil, 'Koponen','Anita','RAISIO',1961,0,1,0,5,2850,2389,nil,'R',0,nil,0,0]
values.push [1333815, nil, 'Koponen','Pasi','Lahti',1975,0,1,0,5,2945,2383,nil,'R',0,nil,0,0]
values.push [1331804, nil, 'Kopra','Jarmo','Turenki',1954,3,1,0,23,20150,1041,nil,'R',0,nil,0,0]
values.push [14066357, nil, 'Kopra','Jorma','KUUSANKOSKI',1949,1,0,0,6,4145,2015,nil,'R',0,nil,0,0]
values.push [14066366, nil, 'Kopra','Jyrki','HÄMEENLINNA',1965,5,0,0,30,25124,858,nil,'R',483,nil,0,0]
values.push [1302752, nil, 'Kopra','Lassi','Hämeenlinna',1938,4,1,4,45,18298,512,'P','R',0,'A008',0,0]
values.push [14066375, nil, 'Korhonen','Aino','HELSINKI',1966,1,1,1,15,6503.5,1410,'P','R',0,nil,0,0]
values.push [14066384, nil, 'Korhonen','Anu','JYVÄSKYLÄ',1960,1,0,0,6,3722,2068,nil,'R',0,nil,0,0]
values.push [1337536, nil, 'Korhonen','Hanna','Ristijärvi',1971,0,1,1,9,6192,1819,nil,'R',0,nil,0,0]
values.push [1333967, nil, 'Korhonen','Hannu','Mikkeli',1968,0,1,0,5,3390,2354,nil,'R',0,nil,0,0]
values.push [13132862, nil, 'Korhonen','Hannu','SIILINJÄRVI',1958,0,1,0,5,3403,2352,nil,'R',0,nil,0,0]
values.push [1302765, nil, 'Korhonen','Henri','Espoo',1976,8,1,1,63,22575,350,'P','R',786,nil,0,0]
values.push [14066393, nil, 'Korhonen','Jouni','JYVÄSKYLÄ',1953,1,0,0,6,2546,2189,nil,'R',0,nil,0,0]
values.push [1307786, nil, 'Korhonen','Jukka','Lahela',1900,0,0,1,4,922,2823,'P',nil,0,nil,0,0]
values.push [1302778, nil, 'Korhonen','Jussi','Vantaa',1966,1,1,1,15,10513.5,1382,'P','R',0,nil,0,0]
values.push [14066405, nil, 'Korhonen','Kalevi','JOUTSENO',1948,5,0,1,34,28171,706,nil,'R',97,nil,0,0]
values.push [14066414, nil, 'Korhonen','Kalle','TURKU',1972,0,0,1,4,1901,2680,nil,'R',0,nil,0,0]
values.push [1327559, nil, 'Korhonen','Kati','Espoo',1972,2,2,0,22,9942.5,1087,'P','R',0,nil,0,0]
values.push [1339042, nil, 'Korhonen','Katri','JOENSUU',1983,0,0,1,4,1543,2722,nil,'R',0,nil,0,0]
values.push [1325852, nil, 'Korhonen','Mika','Vantaa',1974,0,1,1,9,2142.5,1879,'P',nil,0,nil,0,0]
values.push [14066423, nil, 'Korhonen','Olavi','KAARINA',1936,0,0,1,4,1588,2714,nil,'R',0,nil,0,0]
values.push [1329641, nil, 'Korhonen','Pekka','Lahela',1962,2,0,1,16,9211,1343,nil,'R',0,nil,0,0]
values.push [14066432, nil, 'Korhonen','Veijo','SUOLAHTI',1954,5,0,0,30,16802,890,nil,'R',294,nil,0,0]
values.push [1329573, nil, 'Korkeakangas','Antti','Hyllykallio',1980,5,1,1,45,25850,509,'P','R',0,nil,0,0]
values.push [14066441, nil, 'Korkiakoski','Pekka','LAPPEENRANT',1947,0,1,0,5,2496,2413,nil,'R',0,nil,0,0]
values.push [1335062, nil, 'Korpela','Antero','Hämeenlinna',1974,3,2,0,33,19971.5,759,'P','R',0,nil,0,0]
values.push [1331480, nil, 'Korpela','Hannu','tampere',1967,2,0,0,12,7234,1531,nil,'R',0,nil,0,0]
values.push [1329858, nil, 'Korpela','Ilkka','Rauma',1962,0,1,0,5,1666.5,2475,'P',nil,0,nil,0,0]
values.push [14066450, nil, 'Korpela','Marita','HYVINKÄÄ',1951,1,0,0,6,2221,2219,nil,'R',0,nil,0,0]
values.push [1316670, nil, 'Korpela','Pekka','Turku',1954,0,3,1,19,5793,1183,'P',nil,0,nil,0,0]
values.push [1302781, nil, 'Korpela','Raimo','Hyvinkää',1945,12,7,10,151,73346,52,'P','R',295,'A019T',123,0]
values.push [14066469, nil, 'Korpela','Raine','HELSINKI',1949,1,1,2,19,9075,1174,nil,'R',0,nil,0,0]
values.push [1327452, nil, 'Korpinen','Arto','Salo',1964,2,1,2,31,13088.5,841,'P',nil,0,nil,0,0]
values.push [1302794, nil, 'Korsi','Eino','Rauma',1963,4,2,0,34,10825,742,'P',nil,0,'A016',0,0]
values.push [1333721, nil, 'Kortelainen','Pekka','Helsinki',1965,0,0,1,4,924.5,2822,'P',nil,0,nil,0,0]
values.push [1335538, nil, 'Kortesmaa','Mika','Hevonpää',1972,4,1,0,35,18971,694,'P','R',0,nil,0,0]
values.push [14066478, nil, 'Kortteenperä','Jukka','VETELI',1971,0,0,2,8,6353,1886,nil,'R',0,nil,0,0]
values.push [1302804, nil, 'Korvenmaa','Juhani','Kauniainen',1926,10,6,4,106,18575,138,'P','R',35,nil,29,0]
values.push [1336540, nil, 'Korventausta','Heidi','Espoo',1965,3,1,0,29,9178,943,'P',nil,0,nil,0,0]
values.push [14066487, nil, 'Koskela','Kalevi','KERAVA',1946,1,2,1,20,7681,1157,nil,'R',0,nil,0,0]
values.push [1333420, nil, 'Koskela','Markku','Seinäjoki',1952,0,0,1,4,580.5,2853,'P',nil,0,nil,0,0]
values.push [14066496, nil, 'Koskenlaakso','Ilpo','NURMIJÄRVI',1941,1,0,0,6,3035,2141,nil,'R',0,nil,0,0]
values.push [1338085, nil, 'Koskenranta','Hilkka','Helsinki',1976,0,1,0,5,1351,2511,'P',nil,0,nil,0,0]
values.push [1326204, nil, 'Koskenvuo','Juha','TURKU',1972,0,0,1,4,1697,2701,nil,'R',0,nil,0,0]
values.push [1302820, nil, 'Koskenvuo','Leo','Espoo',1972,3,2,1,32,19636,787,nil,'R',752,nil,0,0]
values.push [1302833, nil, 'Koskenvuo','Ville','Espoo',1979,1,0,1,10,6189,1731,nil,'R',0,nil,0,0]
values.push [14066508, nil, 'Koski','Mikko','TAMPERE',1925,1,1,1,15,8053,1396,nil,'R',0,nil,0,0]
values.push [1302846, nil, 'Koski','Onni','Lohja',1952,2,3,5,47,29982,482,nil,'R',488,nil,0,0]
values.push [14066517, nil, 'Koski','Sirpa','KUHMO',1947,3,0,0,18,7782,1243,nil,'R',0,nil,0,0]
values.push [1335033, nil, 'Koski-Laulaja','Tiina','Hollola',1958,4,1,0,34,7272,744,'P',nil,0,nil,0,0]
values.push [1302862, nil, 'Koskinen','Heikki','Lappeenranta',1949,0,10,5,70,35272,289,nil,'R',706,nil,346,0]
values.push [1328590, nil, 'Koskinen','Juha','Lappeenranta',1963,0,1,0,5,1636.5,2477,'P',nil,0,nil,0,0]
values.push [1336100, nil, 'Koskinen','Juho','Tervakoski',1973,0,0,3,16,7965.5,1353,'P',nil,0,nil,0,0]
values.push [14066526, nil, 'Koskinen','Jussi','TAMPERE',1941,2,2,2,30,17976,882,nil,'R',134,nil,0,0]
values.push [1302875, nil, 'Koskinen','Maarit','Kuopio',1955,2,1,1,21,8422.5,1128,'P','R',0,nil,0,0]
values.push [1326424, nil, 'Koskinen','Oiva','Helsinki',1944,0,1,2,13,4500.5,1475,'P',nil,0,nil,0,0]
values.push [14066535, nil, 'Koskinen','Pekka','ESPOO',1961,1,1,3,23,15158,1051,nil,'R',0,nil,0,0]
values.push [1302888, nil, 'Kosonen','Eeva','Espoo',1971,0,0,1,4,801,2836,'P',nil,0,nil,0,0]
values.push [14066544, nil, 'Kosonen','Hannu','SAVONLINNA',1958,2,1,0,17,13297,1270,nil,'R',0,nil,0,0]
values.push [1302891, nil, 'Kosonen','Harri','Espoo',1975,4,1,1,33,18483.5,765,'P','R',0,nil,0,0]
values.push [14066553, nil, 'Kosonen','Juha','KIRKKONUMMI',1946,2,1,1,21,11943,1118,nil,'R',0,nil,0,0]
values.push [1302901, nil, 'Kosonen','Jyrki','SAIMAANHARJU',1960,1,0,0,6,3902,2042,nil,'R',0,nil,0,0]
values.push [14066562, nil, 'Kosonen','Keijo','SAVONLINNA',1945,5,1,0,35,25619,685,nil,'R',249,nil,0,0]
values.push [1302914, nil, 'Kosonen','Lauri','Savonlinna',1948,2,2,0,22,8387.5,1092,'P',nil,0,nil,0,0]
values.push [14066571, nil, 'Kosonen','Liisa','KIRKKONUMMI',1951,1,0,0,6,933,2311,nil,'R',0,nil,0,0]
values.push [1330685, nil, 'Kosonen','Paavo','Espoo',1974,1,0,0,6,4037,2027,nil,'R',0,nil,0,0]
values.push [14066580, nil, 'Kosonen','Pertti','ESPOO',1945,0,1,0,5,1977,2453,nil,'R',0,nil,0,0]
values.push [1302927, nil, 'Kosonen','Taisto','SOMERO',1941,13,2,1,92,56479,178,nil,'R',710,nil,321,0]
values.push [1305432, nil, 'Kossila','Hanna','Salo',1960,10,2,2,78,42438,238,nil,'R',690,nil,326,0]
values.push [1302930, nil, 'Kossila','Olavi','Salo',1957,3,4,4,54,31380,428,nil,'R',753,nil,0,0]
values.push [14066599, nil, 'Kostiainen','Aatos','SAVONLINNA',1940,3,3,2,41,24005,572,nil,'R',106,nil,0,0]
values.push [14066601, nil, 'Kostiainen','Jukka','PÄLKÄNE',1945,1,0,0,6,3563,2085,nil,'R',0,nil,0,0]
values.push [14066610, nil, 'Kostiainen','Leo','ESPOO',1941,1,1,0,11,5080,1663,nil,'R',0,nil,0,0]
values.push [14066629, nil, 'Kostiainen','Veikko','TUUSULA',1942,0,3,4,31,18570,829,nil,'R',507,nil,0,0]
values.push [1302943, nil, 'Kota-Aho','Harri','Paimio',1956,0,0,1,4,2190,2653,nil,'R',0,nil,0,0]
values.push [14066638, nil, 'Kotamäki','Markku','JYVÄSKYLÄ',1958,1,0,1,10,7952,1703,nil,'R',0,nil,0,0]
values.push [1337387, nil, 'Kotila','Minna','Toholampi',1980,3,3,1,41,13769.5,576,'P','R',807,nil,0,0]
values.push [14066647, nil, 'Kotilainen','Matti','SYSMÄ',1956,3,0,0,18,15906,1188,nil,nil,0,nil,0,0]
values.push [14066656, nil, 'Kotimaa','Esko','KUOPIO',1951,0,0,2,8,4107,1900,nil,'R',0,nil,0,0]
values.push [1302956, nil, 'Kotimaa','Timo','Helsinki',1944,12,11,9,163,88574.5,38,'P','R',150,'A015T',90,0]
values.push [1337002, nil, 'Kotola','Mikko','Helsinki',1979,1,1,0,11,7191,1628,nil,'R',0,nil,0,0]
values.push [1302969, nil, 'Kouhia','Markku','Rautajärvi',1956,1,2,10,56,32189,418,nil,'R',727,nil,0,0]
values.push [1325292, nil, 'Koukkula','Risto','Hämeenlinna',1959,5,1,1,39,29571,601,nil,'R',772,nil,0,0]
values.push [1333640, nil, 'Kouru','Auli','Lammi',1960,2,0,0,12,7153,1533,nil,'R',0,nil,0,0]
values.push [1302972, nil, 'Kovanen','Eino','Pieksämäki',1931,15,4,5,130,67565,75,nil,'R',45,nil,32,0]
values.push [14066665, nil, 'Kovanen','Kari','HELSINKI',1958,1,0,1,10,7353,1709,nil,'R',0,nil,0,0]
values.push [14066674, nil, 'Kovanen','Kauko','PIEKSÄMÄKI',1929,6,6,4,82,47533,217,nil,'R',105,nil,65,0]
values.push [1334102, nil, 'Kröger','Hannu','LOHJA',1968,3,1,0,29,14891,933,'P','R',0,nil,0,0]
values.push [1316667, nil, 'Kuha','Kari','Salo',1968,1,0,1,10,2860.5,1794,'P',nil,0,nil,0,0]
values.push [1325250, nil, 'Kuhanen','Liisa','Pertunmaa',1964,1,2,1,20,10251,1153,nil,'R',0,nil,0,0]
values.push [14066683, nil, 'Kuhmonen','Jussi','IKAALINEN',1938,1,0,0,6,1940,2252,nil,'R',0,nil,0,0]
values.push [1331532, nil, 'Kuhmonen','Kari','Ristiina',1961,0,1,0,5,1871,2460,'P',nil,0,nil,0,0]
values.push [1328927, nil, 'Kuhmonen','Mauno','Mikkeli',1946,3,5,1,47,31310,481,nil,'R',211,nil,0,0]
values.push [14066692, nil, 'Kuikka','Juhani','HELSINKI',1926,0,2,6,34,9010,743,nil,'R',384,nil,0,0]
values.push [14066704, nil, 'Kuisma','Päivi','HEINOLA',1957,0,1,1,9,3065,1864,nil,'R',0,nil,0,0]
values.push [1329214, nil, 'Kuisma','Timo','Kauniainen',1957,3,1,0,23,8534.5,1061,'P',nil,0,nil,0,0]
values.push [1334908, nil, 'Kuittinen','Katja','Tuusula',1971,0,0,1,4,762.5,2838,'P',nil,0,nil,0,0]
values.push [14066713, nil, 'Kuittinen','Tapani','VANTAA',1952,0,0,1,4,2084,2661,nil,'R',0,nil,0,0]
values.push [1328066, nil, 'Kuittinen','Tarja','Liperi',1969,1,0,0,6,1678,2274,'P',nil,0,nil,0,0]
values.push [1337701, nil, 'Kuittinen','Vesa','Helsinki',1972,1,0,0,6,1620.5,2279,'P',nil,0,nil,0,0]
values.push [14066722, nil, 'Kuitunen','Henri','HELSINKI',1958,0,1,0,5,1572,2487,nil,'R',0,nil,0,0]
values.push [1335554, nil, 'Kuitunen','Martti','Mieskonmäki',1966,5,0,0,36,26116,655,nil,'R',808,nil,0,0]
values.push [14066731, nil, 'Kujala','Antero','HEINOLA',1956,0,0,2,8,3794,1905,nil,'R',0,nil,0,0]
values.push [1325564, nil, 'Kujala','Jaakko','Itäkylä',1966,1,0,3,18,7009,1250,nil,'R',0,nil,0,0]
values.push [1307964, nil, 'Kujala','Juuso','Espoo',1973,5,0,0,30,14966,897,nil,'R',759,nil,0,0]
values.push [1308002, nil, 'Kujala','Pauliina','Vaasa',1969,1,1,0,11,5118,1662,nil,'R',0,nil,0,0]
values.push [1303007, nil, 'Kujala','Veli-Pekka','SÄRKILÄ',1966,3,1,2,31,23424,822,nil,'R',661,nil,0,0]
values.push [1303010, nil, 'Kujansuu','Eero','Lieto',1965,3,2,0,93,44571,176,'P','R',0,'A011',0,0]
values.push [1303023, nil, 'Kujansuu','Erkki','Kankaanpää',1966,4,1,1,33,18604,764,'P','R',0,nil,0,0]
values.push [1340044, nil, 'Kujansuu','Ida','Lieto',1994,0,0,0,6,3354,2109,nil,'S',0,nil,0,0]
values.push [1335334, nil, 'Kujansuu','Marjut','Lieto',1968,5,0,0,36,11059,679,'P',nil,0,'A103',0,0]
values.push [1303036, nil, 'Kujansuu','Olli','Kankaanpää',1963,17,6,1,142,69410,58,'P','R',496,'A014T',282,0]
values.push [14066740, nil, 'Kukko','Antti','HATTULA',1937,0,0,1,4,1265,2767,nil,'R',0,nil,0,0]
values.push [14066759, nil, 'Kukkonen','Jukka','HELSINKI',1962,2,0,1,16,9283,1341,nil,'R',0,nil,0,0]
values.push [14066768, nil, 'Kukkonen','Martti','KERAVA',1946,2,1,0,17,4289,1313,nil,'R',0,nil,0,0]
values.push [1328121, nil, 'Kukkonen-Niinistö','Jaana','Salo',1961,4,1,4,45,10665.5,515,'P',nil,0,'A055',0,0]
values.push [1335680, nil, 'Kuljukka','Antti','Helsinki',1961,0,0,1,4,2235,2643,nil,'R',0,nil,0,0]
values.push [1330258, nil, 'Kuljukka','Veikko','Pieksämäki',1934,0,1,2,13,3066.5,1479,'P',nil,0,nil,0,0]
values.push [14066777, nil, 'Kulmala','Jukka-Pekka','TAMMELA',1957,1,0,0,6,2949,2148,nil,'R',0,nil,0,0]
values.push [1303049, nil, 'Kulmala','Matti','TUUSULA',1941,9,5,8,111,43811,120,'P','R',529,'A070T',270,0]
values.push [1303052, nil, 'Kumpula','Alpo','Tuusula',1956,15,5,6,145,95040,56,nil,'R',461,nil,227,46]
values.push [1339903, nil, 'Kumpulainen','Anna','Vantaa',1981,0,0,0,4,1931,2677,nil,'S',0,nil,0,0]
values.push [14066786, nil, 'Kunnas','Juha','HELSINKI',1945,0,1,0,5,1935,2457,nil,'R',0,nil,0,0]
values.push [1303065, nil, 'Kunttu','Pauli','Lohja',1936,19,2,0,124,73224.5,88,'P','R',539,nil,254,0]
values.push [1303081, nil, 'Kuopanportti','Juha','Vantaa',1965,0,1,0,5,2533,2409,nil,'R',0,nil,0,0]
values.push [1338001, nil, 'Kuoppala','Anne-Mari','Tampere',1983,2,0,0,18,4326.5,1265,'P',nil,0,nil,0,0]
values.push [14066795, nil, 'Kuoppala','Martti','YLISTARO',1934,1,1,5,31,13883,839,nil,'R',217,nil,0,0]
values.push [1303094, nil, 'Kuoppala','Matti','Orimattila',1952,2,1,1,21,12685,1114,'P','R',0,nil,0,0]
values.push [1325205, nil, 'Kuoppala','Seppo','ruorasmäki',1954,9,1,0,65,50526,320,nil,'R',771,nil,0,0]
values.push [14066807, nil, 'Kuortti','Hannu','HATTULA',1941,2,2,2,30,22626,863,nil,'R',223,nil,0,0]
values.push [1327850, nil, 'Kuosmanen','Martti','tampere',1933,12,2,2,90,25950,189,'P','R',194,nil,88,0]
values.push [1326152, nil, 'Kuosmanen','Matti','Nilsiä',1964,1,1,0,11,5823,1650,nil,'R',0,nil,0,0]
values.push [1303117, nil, 'Kupela','Kalevi','Poikko',1937,7,2,3,64,38234,336,nil,'R',581,nil,285,0]
values.push [1336278, nil, 'Kurki','Hannu','SAVONLINNA',1967,2,1,0,17,5807.5,1308,'P',nil,0,nil,0,0]
values.push [13132705, nil, 'Kurki','Taisto','HELSINKI',1962,0,0,1,4,1127.5,2789,'P',nil,0,nil,0,0]
values.push [14066816, nil, 'Kurki','Tuomo','KOUVOLA',1954,0,0,2,8,3909,1903,nil,'R',0,nil,0,0]
values.push [1303120, nil, 'Kurkijärvi','Kalevi','Naantali',1952,3,1,1,27,13666,974,nil,'R',0,nil,0,0]
values.push [1330737, nil, 'Kurppa','Heikki','Helsinki 18',1961,1,0,0,6,2212,2223,nil,'R',0,nil,0,0]
values.push [1326165, nil, 'Kurvinen','Mikko','Helsinki',1964,1,0,0,6,2373.5,2202,'P',nil,0,nil,0,0]
values.push [1303133, nil, 'Kutvonen','Anne','Espoo',1971,0,0,2,8,2088,1926,'P',nil,0,nil,0,0]
values.push [1303146, nil, 'Kutvonen','Hannu','Joroinen',1946,22,4,1,162,69841,40,nil,'R',397,nil,178,42]
values.push [1338797, nil, 'Kuuluvainen','Ilkka','Turku',1958,0,1,0,5,1577.5,2485,'P',nil,0,nil,0,0]
values.push [1339084, nil, 'Kuusela','Juha','ESPOO',1980,0,0,1,4,1706,2700,nil,'R',0,nil,0,0]
values.push [14066825, nil, 'Kuusela','Matti','VESILAHTI',1938,2,1,4,33,13615,772,nil,'R',501,nil,0,0]
values.push [1329450, nil, 'Kuusela','Risto','Helsinki',1973,0,0,1,4,2359,2633,nil,'R',0,nil,0,0]
values.push [14066834, nil, 'Kuusela','Viljo','ESPOO',1946,0,2,0,10,1780,1808,nil,'R',0,nil,0,0]
values.push [1303159, nil, 'Kuusenmäki','Aaro','Joensuu',1933,2,0,1,16,8586,1348,nil,'R',0,nil,0,0]
values.push [1303162, nil, 'Kuusi','Klaus','Espoo',1946,34,2,0,220,172376,5,nil,'R',6,nil,3,9]
values.push [1303175, nil, 'Kuusiniemi','Harri','Kankaanpää',1967,9,1,1,63,41541,344,nil,'R',553,nil,275,0]
values.push [1303188, nil, 'Kuusisto','Arto','Espoo',1969,1,0,1,10,7812,1704,nil,'R',0,nil,0,0]
values.push [14066843, nil, 'Kuusisto','Esa','NOKIA',1947,0,0,1,4,1826,2684,nil,nil,0,nil,0,0]
values.push [14066852, nil, 'Kuusisto','Jari','SALO',1967,0,1,1,9,6036,1820,nil,'R',0,nil,0,0]
values.push [1303191, nil, 'Kuusisto','Juha','HIMANKA',1969,2,2,3,34,27365,708,nil,'R',653,nil,0,0]
values.push [1303201, nil, 'Kuusisto','Raimo','PIEKSÄMÄKI',1949,24,1,2,157,69625.5,44,'P','R',380,'A069T',170,0]
values.push [1303214, nil, 'Kuusisto','Ulla-Maija','Rauma',1944,0,0,2,8,1599.5,1932,'P',nil,0,nil,0,0]
values.push [14066861, nil, 'Kuusivaara','Juhani','RENKO',1951,1,1,2,19,9967,1171,nil,nil,0,nil,0,0]
values.push [1339987, nil, 'Kuusniemi','Harri','Helsinki',1972,0,0,0,6,4129,2019,nil,'S',0,nil,0,0]
values.push [1336825, nil, 'Kuuspalo','Asta','Nummela',1963,0,0,1,4,1097,2794,'P',nil,0,nil,0,0]
values.push [14066870, nil, 'Kuutti','Pentti','LAPPEENRANT',1944,10,1,1,69,51100,292,nil,'R',281,nil,117,0]
values.push [14066889, nil, 'Kuva','Heikki','HARTOLA',1943,2,0,0,12,6476,1544,nil,'R',0,nil,0,0]
values.push [14066898, nil, 'Kuva','Mirja','HARTOLA',1944,0,1,1,9,2225,1876,nil,'R',0,nil,0,0]
values.push [1303227, nil, 'Kuvaja','Jukka','Hämeenlinna',1953,3,0,3,30,26881,854,nil,'R',740,nil,0,0]
values.push [1303230, nil, 'Kuvaja','Martti','Nummela',1945,4,4,4,60,34163,388,nil,'R',681,nil,331,0]
values.push [1303243, nil, 'Kuvaja','Reino','Kinkomaa',1939,6,3,0,51,29819,449,nil,'R',651,nil,0,0]
values.push [14066900, nil, 'Kvist','Hans-Henry','LOHJA',1952,1,4,2,34,15425,736,nil,'R',492,nil,0,0]
values.push [1331639, nil, 'Kyheröinen','Pasi','ESPOO',1972,3,0,0,24,17369,1019,nil,'R',0,nil,0,0]
values.push [1327025, nil, 'Kyllästinen','Jyri','Rauma',1973,2,0,1,16,6419,1363,'P',nil,0,nil,0,0]
values.push [1335622, nil, 'Kyllönen','Timo','Varkaus',1980,0,0,1,4,1668.5,2705,'P',nil,0,nil,0,0]
values.push [14066919, nil, 'Kylä-Utsuri','Jouko','LOIMAA',1900,1,0,0,6,4813,1960,nil,'R',0,nil,0,0]
values.push [14066928, nil, 'Kyttälä','Pertti','KIRKKONUMMI',1950,4,2,1,38,27111,623,nil,'R',67,nil,0,0]
values.push [14066937, nil, 'Kyttälä','Risto','ESPOO',1947,7,0,0,42,30424,554,nil,'R',52,nil,0,0]
values.push [1303256, nil, 'Kyyrä','Reijo','Hämeenlinna',1946,7,2,2,60,29365,391,nil,'R',431,nil,205,0]
values.push [1329544, nil, 'Kyyrönen','Samuli','Helsinki',1970,0,0,1,4,1825,2685,'P',nil,0,nil,0,0]
values.push [1303340, nil, 'Kåla','Steve','Kokkola',1958,1,1,0,11,6998,1631,nil,'R',0,nil,0,0]
values.push [14066946, nil, 'Kähönen','Martti','JUANKOSKI',1947,2,1,0,17,11143,1278,nil,'R',0,nil,0,0]
values.push [14066955, nil, 'Käkönen','Antti','JÄRVENPÄÄ',1957,1,0,0,6,4734,1963,nil,'R',0,nil,0,0]
values.push [14066964, nil, 'Kämi','Kalle','HÄMEENLINNA',1943,0,0,1,4,1955,2676,nil,'R',0,nil,0,0]
values.push [1303269, nil, 'Kämppi','Timo','Pertunmaa',1956,2,0,0,12,6375,1545,nil,'R',0,nil,0,0]
values.push [14066973, nil, 'Kämäräinen','Airi','SULKAVA',1957,6,0,0,36,18123,670,nil,'R',54,nil,0,0]
values.push [1303272, nil, 'Känninen','Lauri','Kuopio',1935,28,2,1,182,113437,22,'P','R',8,nil,6,2]
values.push [14066982, nil, 'Kärki','Hannu','KAARINA',1954,4,1,1,33,18890,763,nil,'R',101,nil,0,0]
values.push [1329463, nil, 'Kärki','Tomi','Turku',1976,0,1,0,5,1498,2492,'P',nil,0,nil,0,0]
values.push [1303285, nil, 'Kärkkäinen','Aatos','TURKU',1951,0,1,0,5,2056,2448,nil,'R',0,nil,0,0]
values.push [1303298, nil, 'Kärkkäinen','Anneli','Tampere',1939,14,3,3,111,57439,118,nil,'R',444,nil,195,0]
values.push [14066991, nil, 'Kärkkäinen','Eero-T','VAAJAKOSKI',1968,1,0,1,10,7013,1714,nil,'R',0,nil,0,0]
values.push [1303308, nil, 'Kärkkäinen','Martti','Tampere',1939,17,1,2,115,54981,108,nil,'R',430,nil,185,0]
values.push [1303311, nil, 'Kärkäs','Juhani','Karkkila',1945,12,1,6,101,35224,153,nil,'R',146,nil,101,0]
values.push [1303324, nil, 'Kärsämä','Väinö','Turku 32',1947,16,1,0,107,55420.5,136,'P','R',641,'A067T',301,0]
values.push [1328668, nil, 'Kääntee','Taina','Rauma',1958,2,4,0,32,8409,813,'P',nil,0,'A056',0,0]
values.push [1303337, nil, 'Kääpä','Lasse','Tampere',1950,21,0,0,132,95632.5,71,'P','R',570,nil,267,0]
values.push [1326314, nil, 'Kääriäinen','Viljo','PAROLA',1946,14,0,2,92,52896.5,180,'P','R',470,nil,211,0]
values.push [14067000, nil, 'Kömi','Tauno','ORIPÄÄ',1949,0,0,1,4,1296,2754,nil,nil,0,nil,0,0]
values.push [14067019, nil, 'Köninki','Antero','PIEKSÄMÄKI',1956,2,1,0,17,12542,1273,nil,'R',0,nil,0,0]
values.push [1303353, nil, 'Köninki','Kari','pieksämäki',1957,26,0,0,162,131261,39,nil,'R',421,nil,181,45]
values.push [1307595, nil, 'Köykkä','Ilari','Kankaanpää',1965,0,0,1,4,3285,2563,nil,'R',0,nil,0,0]
values.push [14067028, nil, 'Köyvönen','Olli','TURKU',1931,0,1,0,5,3945,2324,nil,'R',0,nil,0,0]
values.push [1328134, nil, 'Laakkio','Irma','SALO',1959,3,1,2,31,6853,851,'P',nil,0,'A096',0,0]
values.push [14067037, nil, 'Laakkonen','Pasi','HEINOLA',1963,0,1,0,5,2030,2449,nil,'R',0,nil,0,0]
values.push [14067046, nil, 'Laakkonen','Tuomo','ESPOO',1948,0,0,2,8,5463,1888,nil,'R',0,nil,0,0]
values.push [1328794, nil, 'Laakso','Heikki','Lohja',1961,0,2,1,14,4459,1460,'P',nil,0,nil,0,0]
values.push [1303366, nil, 'Laakso','Helena','Tervakoski',1949,2,2,3,34,13372,741,nil,'R',630,nil,0,0]
values.push [14067055, nil, 'Laakso','Janne','TOIJALA',1968,0,0,1,4,2977,2577,nil,'R',0,nil,0,0]
values.push [14067064, nil, 'Laakso','Kalevi','PORVOO',1937,2,2,3,34,15161,738,nil,'R',138,nil,0,0]
values.push [14067073, nil, 'Laakso','Lauri','JYVÄSKYLÄ',1947,2,2,2,30,15645,894,nil,'R',576,nil,0,0]
values.push [1303382, nil, 'Laakso','Olavi','Tervakoski',1947,12,4,3,104,80763,140,nil,'R',199,nil,99,0]
values.push [1303395, nil, 'Laakso','Pertti','Ylöjärvi',1945,11,0,0,66,54973,313,nil,'R',51,nil,37,0]
values.push [1328600, nil, 'Laakso','Sanna','Rauma',1966,0,0,2,8,2016,1927,'P',nil,0,nil,0,0]
values.push [14067082, nil, 'Laakso','Timo','TUUSULA',1969,2,1,0,17,10728,1283,nil,'R',0,nil,0,0]
values.push [1303405, nil, 'Laaksonen','Auvo','Turku',1938,7,1,3,59,43249.5,398,'P','R',372,nil,0,0]
values.push [1329706, nil, 'Laaksonen','Lasse','Sammatti',1955,1,0,0,6,2373,2203,'P',nil,0,nil,0,0]
values.push [1337468, nil, 'Laaksonen','Marika','Helsinki',1970,0,1,0,5,1657,2476,'P',nil,0,nil,0,0]
values.push [1335664, nil, 'Laaksonen','Mika','Ilmarinen',1968,0,1,0,5,1513.5,2490,'P',nil,0,nil,0,0]
values.push [14067091, nil, 'Laaksonen','Olavi','KOKEMÄKI',1948,1,0,0,6,3384,2105,nil,'R',0,nil,0,0]
values.push [1303418, nil, 'Laaksonen','Tapani','Raisio',1945,4,9,12,117,32209,104,'P','R',357,'A072T',169,0]
values.push [1331066, nil, 'Laaksonen','Timo','RAUMA',1965,0,1,0,5,3410,2351,nil,'R',0,nil,0,0]
values.push [1303421, nil, 'Laaninen','Kari','Ylämylly',1952,5,7,13,117,62231,103,nil,'R',429,nil,222,47]
values.push [1303434, nil, 'Laaninen','Leena','Ylämylly',1958,0,1,9,41,11181.5,580,'P','R',0,'A066',0,0]
values.push [1336168, nil, 'Laatikainen','Reijo','Puuttuu',1900,0,0,1,4,871,2829,'P',nil,0,nil,0,0]
values.push [1325386, nil, 'Lahdelma','Pertti','Pertunmaa',1960,3,0,0,18,16000,1187,nil,'R',0,nil,0,0]
values.push [1329094, nil, 'Lahdelma','Ritva','PERTUNMAA',1960,0,1,0,5,788,2544,'P',nil,0,nil,0,0]
values.push [1303447, nil, 'Lahdenmäki','Ansa','Alavus',1955,5,2,2,48,23069,475,nil,'R',603,nil,0,0]
values.push [14067103, nil, 'Lahdenniemi','Heikki','SAHALAHTI',1948,1,0,0,6,4414,1987,nil,nil,0,nil,0,0]
values.push [14067112, nil, 'Lahti','Esko','VANTAA',1944,1,0,0,6,3446,2097,nil,nil,0,nil,0,0]
values.push [1327164, nil, 'Lahti','Mikko','Espoo',1963,3,2,0,28,20000.5,947,'P','R',0,nil,0,0]
values.push [1303450, nil, 'Lahti','Rauno','Hämeenlinna',1960,1,2,9,57,29322,411,'P','R',767,nil,0,0]
values.push [14067121, nil, 'Lahti','Risto','TAMPERE',1945,0,0,1,4,1120,2790,nil,nil,0,nil,0,0]
values.push [14067130, nil, 'Lahtinen','Antti','TAMPERE',1933,8,2,1,62,27425,362,nil,'R',265,nil,160,0]
values.push [1333475, nil, 'Lahtinen','Reijo','Ala-Särkilahti',1946,3,1,0,23,10640,1056,'P','R',0,nil,0,0]
values.push [14067149, nil, 'Lahtinen','Seppo','HOLLOLA',1946,0,1,0,5,1828,2464,nil,'R',0,nil,0,0]
values.push [1332036, nil, 'Lahtonen','Janne','Vantaa',1962,4,0,0,24,8603.5,1036,'P',nil,0,nil,0,0]
values.push [14067158, nil, 'Lahtonen','Kari','MÄNTYHARJU',1944,5,1,1,39,23362,610,nil,'R',81,nil,0,0]
values.push [1303463, nil, 'Lahtovaara','Reijo','Halikko',1959,8,1,3,65,37606,327,nil,'R',625,nil,309,0]
values.push [14067167, nil, 'Laine','Eino','HELSINKI',1945,1,1,1,15,6902,1405,nil,'R',0,nil,0,0]
values.push [14067176, nil, 'Laine','Hannu','HELSINKI',1937,0,1,0,5,457,2549,nil,'R',0,nil,0,0]
values.push [1330559, nil, 'Laine','Jarko','Espoo',1963,1,1,0,11,6034,1646,nil,'R',0,nil,0,0]
values.push [1331105, nil, 'Laine','Kati','Espoo',1971,0,1,0,5,2626,2403,nil,'R',0,nil,0,0]
values.push [14067185, nil, 'Laine','Kimmo','TAMPERE',1941,1,1,0,11,9584,1599,nil,nil,0,nil,0,0]
values.push [1338072, nil, 'Laine','Olli','Turku',1964,0,0,2,8,5203,1891,nil,'R',0,nil,0,0]
values.push [14067194, nil, 'Laine','Tero','HELSINKI',1952,2,1,1,21,5903,1137,nil,'R',0,nil,0,0]
values.push [1338360, nil, 'Lainekivi','Jenni','HELSINKI',1986,1,1,0,11,1889.5,1696,'P',nil,0,nil,0,0]
values.push [14067206, nil, 'Lainpelto','Veikko','HYVINKÄÄ',1946,1,0,0,6,2766,2163,nil,'R',0,nil,0,0]
values.push [1329104, nil, 'Laios','Kaj','Riihimäki',1941,0,0,1,4,570.5,2854,'P',nil,0,nil,0,0]
values.push [14067215, nil, 'Laitakari','Ilpo','ALAVUS',1951,5,0,3,42,28858,556,nil,'R',424,nil,0,0]
values.push [1316586, nil, 'Laitinen','Eero','Lahti 11',1948,2,1,1,21,7101.5,1132,'P','R',0,nil,0,0]
values.push [1303476, nil, 'Laitinen','Gita','Espoo',1951,2,0,1,16,8462,1350,nil,'R',0,nil,0,0]
values.push [14067224, nil, 'Laitinen','Jouni','PIEKSÄMÄKI',1958,0,1,1,9,2836,1870,nil,'R',0,nil,0,0]
values.push [1303489, nil, 'Laitinen','Matti','Siilinjärvi',1959,1,1,2,19,12994,1165,nil,'R',0,nil,0,0]
values.push [14067233, nil, 'Laitinen','Raimo','SEINÄJOKI',1939,1,0,0,6,2591,2184,nil,'R',0,nil,0,0]
values.push [14067242, nil, 'Laitinen','Tuomo','RANTASALMI',1950,1,0,0,6,3701,2070,nil,'R',0,nil,0,0]
values.push [1340510, nil, 'Laitsaari','Matti','Mikkeli',1958,0,0,0,5,2663,2400,nil,'S',0,nil,0,0]
values.push [1329191, nil, 'Lajunen','Heimo','Jyväskylä',1954,1,1,0,11,3581.5,1681,'P',nil,0,nil,0,0]
values.push [1334131, nil, 'Lajunen','Jarmo','Tampere',1955,0,0,2,8,2562,1918,'P',nil,0,nil,0,0]
values.push [1334144, nil, 'Lajunen','Samppa','Jyväskylä',1979,0,1,1,9,2684,1872,'P',nil,0,nil,0,0]
values.push [1303492, nil, 'Lakiasuo','Jukka','Keuruu',1950,5,3,3,57,25888,412,nil,'R',589,nil,0,0]
values.push [1303515, nil, 'Lakso','Kullervo','Ylivieska',1959,1,0,0,6,4111,2020,nil,'R',0,nil,0,0]
values.push [1330300, nil, 'Lamberg','Juha','Tervakoski',1956,3,1,0,23,16813,1047,nil,'R',0,nil,0,0]
values.push [14067251, nil, 'Lamberg','Raimo','ESPOO',1937,1,0,0,6,2637,2178,nil,'R',0,nil,0,0]
values.push [14067260, nil, 'Lamminen','Matti','HYVINKÄÄ',1958,2,0,1,16,9259,1342,nil,'R',0,nil,0,0]
values.push [1303528, nil, 'Lamminen','Pentti','Hämeenlinna',1942,3,4,8,70,29359,291,'P','R',363,nil,207,0]
values.push [1336207, nil, 'Lamminmäki','Seppo','Espoo',1961,3,0,0,18,15172,1192,nil,'R',0,nil,0,0]
values.push [1334306, nil, 'Lamminpää','Mikko','Hollola',1964,0,1,0,5,3460,2346,nil,'R',0,nil,0,0]
values.push [1303531, nil, 'Lampinen','Ismo','Klaukkala',1964,1,0,0,6,4664,1967,nil,'R',0,nil,0,0]
values.push [13132714, nil, 'LAMPIO','ILKKA','KERAVA',1988,0,1,0,5,1726,2468,'P',nil,0,nil,0,0]
values.push [14067279, nil, 'Lamponen','Otto','MÄNTYHARJU',1929,0,0,1,4,2455,2626,nil,nil,0,nil,0,0]
values.push [1337523, nil, 'Lankila','Tanja','Espoo',1966,0,0,1,4,1120,2791,'P',nil,0,nil,0,0]
values.push [14067288, nil, 'Lantta','Timo','HELSINKI',1950,6,4,1,60,37564,385,nil,'R',321,nil,141,0]
values.push [14067297, nil, 'Lapinleimu','Markku','KYLMÄKOSKI',1946,1,0,0,6,752,2314,nil,'R',0,nil,0,0]
values.push [1340002, nil, 'Lappala','Helena','Järvenpää',1971,0,0,0,4,1574,2717,nil,'S',0,nil,0,0]
values.push [1303557, nil, 'Lappalainen','Hannu','Helsinki 96',1949,19,5,1,149,109601,53,nil,'R',476,nil,221,49]
values.push [1303560, nil, 'Lappalainen','Leo','Iisalmi',1932,9,4,4,90,50144,187,'P','R',442,nil,204,0]
values.push [1307715, nil, 'Lappalainen','Martti','Mikkeli',1951,1,0,0,6,3397,2102,nil,'R',0,nil,0,0]
values.push [14067309, nil, 'Lappalainen','Timo','NURMIJÄRVI',1958,1,0,0,6,4305,1999,nil,'R',0,nil,0,0]
values.push [14067318, nil, 'Lappi','Eero','PIEKSÄMÄKI',1953,1,1,0,11,8252,1612,nil,'R',0,nil,0,0]
values.push [1340332, nil, 'Lappi','Timo','Espoo',1972,0,0,0,6,3591,2078,nil,'S',0,nil,0,0]
values.push [1303573, nil, 'Larjanne','Pentti','Orimattila',1934,6,2,2,54,31270,429,nil,'R',460,nil,0,0]
values.push [14067327, nil, 'Larkas','Esko','HELSINKI',1948,0,0,1,4,1085,2795,nil,'R',0,nil,0,0]
values.push [14067336, nil, 'Larsson','Lars','LAHTI',1929,0,0,4,16,3838,1370,nil,'R',0,nil,0,0]
values.push [1325739, nil, 'Lassila','Jari','Lahti',1968,1,1,0,11,4617,1670,'P','R',0,nil,0,0]
values.push [1303586, nil, 'Lastuvuori','Lasse','HYVINKÄÄ',1948,9,4,1,78,49982,235,nil,'R',695,nil,319,0]
values.push [1303599, nil, 'Lastuvuori','Merja','HYVINKÄÄ',1953,10,4,1,84,43288,208,nil,'R',659,nil,307,0]
values.push [13132723, nil, 'Latva','Mervi','RIIHIMÄKI',1959,0,0,1,4,951,2817,'P',nil,0,nil,0,0]
values.push [1303609, nil, 'Latvala','Matti','Seinäjoki',1941,12,1,3,89,65026,190,nil,'R',418,nil,220,0]
values.push [1316340, nil, 'Latvasalo','Heimo','Mustasaari',1948,2,0,0,12,7670,1522,nil,'R',0,nil,0,0]
values.push [14067345, nil, 'Lauhasmaa','Jarmo','TOIJALA',1953,3,1,2,31,26804,819,nil,'R',408,nil,0,0]
values.push [1303612, nil, 'Laukkanen','Kirsti','Hämeenlinna',1953,10,0,1,64,31849,340,nil,'R',602,nil,288,0]
values.push [14067354, nil, 'Laukkanen','Leo','LAHTI',1946,0,1,0,5,2113,2440,nil,nil,0,nil,0,0]
values.push [14067363, nil, 'Laukkanen','Matti','SIILINJÄRVI',1949,1,0,1,10,6377,1724,nil,'R',0,nil,0,0]
values.push [14067372, nil, 'Laukkanen','Mirjami','LAPPEENRANT',1950,7,0,1,46,32039,494,nil,'R',312,nil,0,0]
values.push [14067381, nil, 'Laukkanen','Terho','LAHTI',1949,5,0,0,30,20563,869,nil,'R',184,nil,0,0]
values.push [1334869, nil, 'Laulajainen','Tero','Espoo',1964,1,0,0,6,2002.5,2244,'P',nil,0,nil,0,0]
values.push [1340565, nil, 'Laurikainen','Jyrki','Espoo',1965,0,0,0,6,3961,2035,nil,'S',0,nil,0,0]
values.push [1325836, nil, 'Laurila','Jaakko','Helsinki',1975,0,0,1,4,984,2810,'P',nil,0,nil,0,0]
values.push [1329065, nil, 'Lautamäki','Asko','Tervakoski',1968,3,0,4,34,25927,711,'P','R',0,nil,0,0]
values.push [14067390, nil, 'Lavonen','Seppo','HELSINKI',1934,10,0,0,60,32641,389,nil,'R',88,nil,50,0]
values.push [1336511, nil, 'Lehdonmäki','Vesa','Röykkä',1965,0,1,0,5,1103.5,2530,'P',nil,0,nil,0,0]
values.push [1303625, nil, 'Lehmus','Mikko','Imatra',1974,4,0,0,24,21199,1009,nil,'R',0,nil,0,0]
values.push [14067402, nil, 'Lehmus','Reijo','KERAVA',1941,0,0,1,4,596,2851,nil,nil,0,nil,0,0]
values.push [1339301, nil, 'Lehmuskoski','Jani','Espoo',1976,1,0,0,12,5312,1567,'P',nil,0,nil,0,0]
values.push [1336692, nil, 'Lehmusmetsä','Jari','Kouvola',1983,0,0,1,4,1191,2775,'P',nil,0,nil,0,0]
values.push [1303638, nil, 'Lehosmaa','Raimo','Tikkakoski',1956,3,0,1,22,16211,1074,nil,'R',0,nil,0,0]
values.push [14067411, nil, 'Lehti','Antti','HÄMEENLINNA',1964,0,0,1,4,3503,2553,nil,'R',0,nil,0,0]
values.push [1327669, nil, 'Lehtilä','Riku','Alastaro',1974,0,1,1,9,7345,1813,nil,'R',0,nil,0,0]
values.push [1303654, nil, 'Lehtimäki','Harri','Hämeenlinna',1972,9,2,2,78,49145.5,236,'P','R',711,'A089T',0,0]
values.push [1338218, nil, 'Lehtimäki','Leo','Lappeenranta',1973,1,0,0,12,5425,1566,'P',nil,0,nil,0,0]
values.push [1303667, nil, 'Lehtimäki','Pasi','Tampere',1980,5,0,1,38,24705,628,'P','R',756,nil,0,0]
values.push [1330135, nil, 'Lehtimäki','Reijo','Raisio',1952,0,1,4,21,9369,1125,nil,'R',0,nil,0,0]
values.push [1328817, nil, 'Lehtinen','Esa','Kolla',1951,2,2,2,30,15849,893,nil,'R',791,nil,0,0]
values.push [1325784, nil, 'Lehtinen','Jan','Åbo',1977,0,0,1,4,1717.5,2698,'P',nil,0,nil,0,0]
values.push [14067420, nil, 'Lehtinen','Jorma','HEINOLA',1944,2,0,0,12,8499,1506,nil,nil,0,nil,0,0]
values.push [1337837, nil, 'Lehtinen','Juha','Rauma',1975,1,0,0,6,4166,2014,nil,'R',0,nil,0,0]
values.push [14067439, nil, 'Lehtinen','Katri','HELSINKI',1955,0,0,1,4,954,2815,nil,'R',0,nil,0,0]
values.push [1303670, nil, 'Lehtinen','Matti','Himanka',1900,1,0,0,6,5296,1945,nil,'R',0,nil,0,0]
values.push [14067448, nil, 'Lehtinen','Pentti','SYSMÄ',1945,10,1,0,65,52261,318,nil,'R',2,nil,2,0]
values.push [1303683, nil, 'Lehtinen','Teuvo','Orimattila',1948,19,0,2,128,84056,78,'P','R',567,'A027T',266,0]
values.push [14067457, nil, 'Lehtisola','Pekka','YLISTARO',1953,2,3,1,31,17426,831,nil,'R',171,nil,0,0]
values.push [1303696, nil, 'Lehto','Juhani','Turku',1948,9,7,7,117,79895.5,100,'P','R',423,nil,202,0]
values.push [14067466, nil, 'Lehto','Kyösti','HELSINKI',1954,0,1,0,5,2662,2401,nil,nil,0,nil,0,0]
values.push [14067475, nil, 'Lehto','Olli','KANGASALA',1940,4,1,4,45,28980,507,nil,'R',261,nil,0,0]
values.push [14067484, nil, 'Lehto','Pentti','VANTAA',1937,0,2,3,22,13897,1077,nil,'R',0,nil,0,0]
values.push [1340219, nil, 'Lehto','Raine','Halikko as',1959,0,0,0,6,4445,1983,nil,'S',0,nil,0,0]
values.push [14067493, nil, 'Lehto','Seppo','TUUSULA',1942,0,1,0,5,1760,2466,nil,'R',0,nil,0,0]
values.push [14067505, nil, 'Lehtola','Asko','KOTKA',1954,5,0,0,30,18937,876,nil,'R',229,nil,0,0]
values.push [1328639, nil, 'Lehtola','Salla','Espoo',1962,1,2,0,16,3291,1372,'P',nil,0,nil,0,0]
values.push [14067514, nil, 'Lehtomäki','Marja-Leena','KOKKOLA',1945,1,0,0,6,1888,2255,nil,'R',0,nil,0,0]
values.push [14067523, nil, 'Lehtonen','Antti','HÄMEENLINNA',1959,1,1,0,11,7464,1622,nil,'R',0,nil,0,0]
values.push [14067532, nil, 'Lehtonen','Ari','TUUSULA',1963,0,1,0,5,979,2539,nil,nil,0,nil,0,0]
values.push [13132871, nil, 'Lehtonen','Erkki','Parola',1944,2,0,1,16,7067,1358,nil,'R',0,nil,0,0]
values.push [1303706, nil, 'Lehtonen','Erkki','Parola',1955,13,1,0,89,54839.5,192,'P','R',595,'A085T',0,0]
values.push [1303719, nil, 'Lehtonen','Heikki','HML',1954,11,6,0,100,61808.5,158,'P','R',518,'A086T',249,0]
values.push [14067541, nil, 'Lehtonen','Jaakko','JOUTSENO',1947,10,1,0,65,39211,324,nil,'R',21,nil,16,0]
values.push [1303722, nil, 'Lehtonen','Juha','Paippinen',1973,16,0,1,106,93845,137,nil,'R',674,nil,314,0]
values.push [1339288, nil, 'Lehtonen','Jukka','Turku',1961,0,0,0,4,2850,2588,nil,'S',0,nil,0,0]
values.push [1303735, nil, 'Lehtonen','Marjatta','HELSINKI',1945,23,5,0,163,89558,37,nil,'R',342,nil,144,38]
values.push [14067550, nil, 'Lehtonen','Martti','VANTAA',1936,4,1,0,29,18014,928,nil,'R',0,nil,0,0]
values.push [1303748, nil, 'Lehtonen','Mika','Vantaa',1969,17,3,2,130,107133,72,nil,'R',551,nil,264,0]
values.push [1303751, nil, 'Lehtonen','Olli','joutseno',1970,1,0,1,14,6467.5,1447,'P',nil,0,nil,0,0]
values.push [14067569, nil, 'Lehtonen','Tuomo','ESPOO',1933,1,0,2,14,7395,1442,nil,'R',0,nil,0,0]
values.push [1327685, nil, 'Lehtonen','Ville','Halikko As',1976,0,2,0,10,6338,1726,nil,'R',0,nil,0,0]
values.push [14067578, nil, 'Lehtosaari','Esa','HELSINKI',1943,13,5,3,115,58861,107,'P','R',30,nil,27,0]
values.push [1327708, nil, 'Lehtovirta','Jaana','Helsinki',1968,0,0,1,4,527,2856,'P',nil,0,nil,0,0]
values.push [1339039, nil, 'Leinikka','Harri','INKOO',1974,0,1,0,9,3811,1857,'P',nil,0,nil,0,0]
values.push [14067587, nil, 'Leino','Kimmo','HELSINKI',1961,0,1,0,5,2208,2434,nil,'R',0,nil,0,0]
values.push [14067596, nil, 'Leino','Reijo','JYVÄSKYLÄ',1951,9,1,0,59,27378,403,nil,'R',56,nil,0,0]
values.push [1326217, nil, 'Leinonen','Ari-Matti','Ruona',1962,5,2,0,40,26445,587,'P','R',538,nil,0,0]
values.push [14067608, nil, 'Leinonen','Aulis','KAARINA',1950,5,0,0,30,8109,914,nil,'R',246,nil,0,0]
values.push [1329816, nil, 'Leinonen','Esa','Lieto',1964,0,0,1,4,887.5,2826,'P',nil,0,nil,0,0]
values.push [14067617, nil, 'Leinonen','Esko','IMATRA',1945,0,2,0,10,6192,1729,nil,'R',0,nil,0,0]
values.push [14067626, nil, 'Leinonen','Lauri','JYVÄSKYLÄ',1939,1,0,0,6,3960,2036,nil,'R',0,nil,0,0]
values.push [14067644, nil, 'Leinonen','Markku','LAHTI',1950,1,0,0,6,2350,2205,nil,'R',0,nil,0,0]
values.push [14067635, nil, 'Leinonen','Markku','VANTAA',1950,1,0,0,6,2183,2230,nil,'R',0,nil,0,0]
values.push [1338823, nil, 'Leinonen','Tuulia','JOENSUU',1974,0,0,1,4,2234,2644,nil,'R',0,nil,0,0]
values.push [14067653, nil, 'Leiskamo','Pekka','HELSINKI',1954,1,0,0,6,2218,2220,nil,'R',0,nil,0,0]
values.push [1335541, nil, 'Leivonen','Kari','Vantaa',1964,0,1,0,5,3363,2356,nil,'R',0,nil,0,0]
values.push [1303764, nil, 'Lempinen','Risto','Raisio',1949,5,1,2,43,28241,539,nil,'R',670,nil,0,0]
values.push [1331406, nil, 'Lentonen','Mika','Rajamäki',1968,1,2,1,20,8733.5,1154,'P','R',0,nil,0,0]
values.push [1303777, nil, 'Lepistö','Jukka','Laihia',1961,0,2,0,10,7134,1713,nil,'R',0,nil,0,0]
values.push [14067662, nil, 'Leppänen','Antti','ESPOO',1938,0,1,0,5,3284,2361,nil,'R',0,nil,0,0]
values.push [14067671, nil, 'Leppänen','Arvo','HELSINKI',1939,0,0,2,8,4221,1897,nil,'R',0,nil,0,0]
values.push [1331859, nil, 'Leppänen','Heikki','Tampere',1980,1,0,0,6,4999,1954,nil,'R',0,nil,0,0]
values.push [14067680, nil, 'Leppänen','Kalle','SUOLAHTI',1934,5,0,0,30,22083,864,nil,'R',278,nil,0,0]
values.push [1303780, nil, 'Leppäniemi','Jani','Pulkkinen',1973,1,0,0,6,4234,2006,nil,'R',0,nil,0,0]
values.push [14067699, nil, 'Leppäranta','Jukka','TURKU',1957,2,0,0,12,7315,1528,nil,'R',0,nil,0,0]
values.push [14067701, nil, 'Leskinen','Maija','HELSINKI',1954,3,2,1,32,10788,812,nil,'R',215,nil,0,0]
values.push [1337840, nil, 'Leskinen','Mika','Kuusa',1967,0,1,0,5,1525,2489,'P',nil,0,nil,0,0]
values.push [1338108, nil, 'Leskinen','Pirjo','Joensuu',1959,0,1,1,13,3591.5,1478,'P',nil,0,nil,0,0]
values.push [1337280, nil, 'Levanen','Markku','LAHTI',1968,3,0,0,18,13198,1209,nil,'R',0,nil,0,0]
values.push [1303793, nil, 'Levonen','Yrjö','Reijola',1958,2,1,7,45,36315,504,nil,'R',554,nil,0,0]
values.push [1339110, nil, 'Levänen','Jari','HYVINKÄÄ',1968,1,0,0,6,3488,2090,nil,'R',0,nil,0,0]
values.push [14067710, nil, 'Levänen','Taisto','HÄMEENLINNA',1944,3,0,3,30,17588,884,nil,'R',293,nil,0,0]
values.push [1336896, nil, 'Liekola','Hannu','Myllykoski',1968,1,1,0,11,4666,1669,'P',nil,0,nil,0,0]
values.push [1327656, nil, 'Lietola','Jorma','Helsinki',1948,0,2,0,10,2083,1804,'P',nil,0,nil,0,0]
values.push [1336993, nil, 'Lifflander','Päivi','Jyväskylä',1961,1,0,1,10,2696,1795,'P',nil,0,nil,0,0]
values.push [14067729, nil, 'Liias-Heikkinen','Si','MUURAME',1958,1,1,1,15,4731,1421,nil,'R',0,nil,0,0]
values.push [1326149, nil, 'Liikanen','Jyrki','NIVALA',1963,1,2,0,16,8187,1351,nil,'R',0,nil,0,0]
values.push [1303803, nil, 'Liikonen','Petteri','Hämeenlinna',1962,0,0,1,4,2941,2580,nil,'R',0,nil,0,0]
values.push [1332023, nil, 'Liimatta','Vesa','Askola',1964,0,0,1,4,2185,2655,nil,'R',0,nil,0,0]
values.push [1328503, nil, 'Liisanantti','Hanna','Järvenpää',1979,2,1,1,21,5405.5,1138,'P',nil,0,nil,0,0]
values.push [1307634, nil, 'Lilja','Mikko','Forssa',1964,1,0,0,6,4350,1997,nil,'R',0,nil,0,0]
values.push [14067738, nil, 'Lillhonga','Stig','KOKKOLA',1946,2,0,1,16,9940,1335,nil,'R',0,nil,0,0]
values.push [14067747, nil, 'Lillqvist','Tom','KOKKOLA',1955,4,2,0,34,26904,709,nil,'R',387,nil,0,0]
values.push [1325645, nil, 'Lindberg','Paul','helsinki',1951,3,1,2,31,6991.5,850,'P',nil,0,'A037',0,0]
values.push [1331927, nil, 'Lindblom','Petteri','Muurla',1967,3,0,0,18,8402,1237,'P','R',0,nil,0,0]
values.push [14067756, nil, 'Lindeman','Gunnel','HELSINKI',1942,0,6,2,38,11739,639,nil,'R',356,nil,0,0]
values.push [14067765, nil, 'Lindeman','Osmo','HELSINKI',1941,1,1,8,43,16779,547,nil,'R',331,nil,0,0]
values.push [14067774, nil, 'Linden','Ralf','LOVIISA',1952,3,1,1,27,22756,966,nil,'R',0,nil,0,0]
values.push [14067783, nil, 'Linden','Tom','LOVIISA',1961,0,0,1,4,2897,2583,nil,'R',0,nil,0,0]
values.push [14067792, nil, 'Linden','Unto','HÄMEENLINNA',1941,0,1,0,5,2074,2443,nil,nil,0,nil,0,0]
values.push [14067804, nil, 'Lindfors','Tapani','VANTAA',1955,1,2,1,20,15554,1142,nil,'R',0,nil,0,0]
values.push [14067813, nil, 'Lindgren','Björn','HELSINKI',1929,1,1,0,11,6863,1634,nil,'R',0,nil,0,0]
values.push [14067822, nil, 'Lindgren','Pentti','TAMPERE',1940,6,0,6,60,37680,384,nil,'R',79,nil,104,0]
values.push [14067831, nil, 'Lindh','Mona','RUOTSI',1946,1,0,0,6,2559,2187,nil,'R',0,nil,0,0]
values.push [1303829, nil, 'Lindholm','Esa','Kokkola',1948,4,1,4,45,29888,506,nil,'R',532,nil,0,0]
values.push [14067840, nil, 'Lindholm','Kari','VALKEALA',1957,4,0,1,28,12919,957,nil,'R',0,nil,0,0]
values.push [14067859, nil, 'Lindholm','Uffe','PORVOO',1956,0,1,0,5,2874,2388,nil,'R',0,nil,0,0]
values.push [14067868, nil, 'Lindqvist','Anneli','HELSINKI',1954,7,3,1,61,29465,371,nil,'R',46,nil,34,0]
values.push [14067877, nil, 'Lindqvist','Pertti','HELSINKI',1942,11,1,2,79,51317,230,nil,'R',26,nil,23,0]
values.push [14067886, nil, 'Lindqvist','Raimo','KERAVA',1952,4,1,1,33,19468,762,nil,'R',161,nil,0,0]
values.push [14067895, nil, 'Lindqvist','Sven','HELSINKI',1926,20,0,0,120,43287,93,nil,'R',18,nil,14,0]
values.push [14067907, nil, 'Lindqvist','Tapio','HELSINKI',1975,0,0,1,4,236,2860,nil,'R',0,nil,0,0]
values.push [14067916, nil, 'Lindqvist','Titta','HELSINKI',1973,0,1,1,9,1084,1884,nil,'R',0,nil,0,0]
values.push [14067925, nil, 'Lindroos','Reino','LAHTI',1940,1,0,0,6,3161,2128,nil,nil,0,nil,0,0]
values.push [1303832, nil, 'Lindstedt','Esa','Kankaanpää',1954,2,2,1,26,12119,986,'P','R',0,nil,0,0]
values.push [1303845, nil, 'Lindström','Anders','RAUMA',1957,8,1,0,53,33747,435,'P','R',744,nil,0,0]
values.push [1303858, nil, 'Lindström','Kari','Turku',1946,3,1,2,31,13342,840,'P','R',0,nil,0,0]
values.push [1303861, nil, 'Lindström','Mikael','Kotka',1950,14,3,2,113,62029,112,nil,'R',627,nil,298,0]
values.push [1303874, nil, 'Linko','Rita','Helsinki',1961,1,0,0,6,2279,2213,'P',nil,0,nil,0,0]
values.push [1328260, nil, 'Linnakoski','Asko','Ikkala',1989,1,0,0,6,1667,2276,'P',nil,0,nil,0,0]
values.push [1329696, nil, 'Linnakoski','Keijo','Salo',1935,3,0,0,18,10699.5,1221,'P','R',0,nil,0,0]
values.push [1339330, nil, 'Linnaluoma','Olli','LAHTI',1960,0,0,1,4,1276,2763,'P',nil,0,nil,0,0]
values.push [14067934, nil, 'Linnanen','Heimo','KIVIJÄRVI',1950,1,0,0,6,3833,2050,nil,nil,0,nil,0,0]
values.push [1327601, nil, 'Linnoaro','Martti','Helsinki',1945,6,0,0,36,21343,667,nil,'R',188,nil,0,0]
values.push [14067943, nil, 'Lintunen','Arto','JOENSUU',1958,1,1,2,19,12019,1168,nil,'R',0,nil,0,0]
values.push [1338098, nil, 'Liponkoski','Jukka','Helsinki',1973,0,1,0,5,1419,2501,'P',nil,0,nil,0,0]
values.push [1303887, nil, 'Litja','Esa','Vihti',1954,4,3,6,63,20357.5,351,'P','R',516,nil,0,0]
values.push [1316476, nil, 'Litja','Karri','Vihti',1985,1,2,0,16,3549,1371,'P',nil,0,nil,0,0]
values.push [1303890, nil, 'Liukko','Ilmo','SULKAVA',1942,31,1,1,200,93894,15,nil,'R',102,nil,57,20]
values.push [14067952, nil, 'Liukkonen','Heimo','TAMPERE',1955,1,0,3,18,12108,1216,nil,'R',0,nil,0,0]
values.push [1303900, nil, 'Liukkonen','Jari','HEINOLA',1962,5,1,0,35,18577.5,695,'P','R',757,nil,0,0]
values.push [1303913, nil, 'Liukkonen','Raimo','Tampere',1949,23,5,0,169,112453.5,33,'P','R',335,nil,139,37]
values.push [1303926, nil, 'Liukku','Seppo','Seinäjoki',1940,3,2,5,48,26555,473,nil,'R',615,nil,0,0]
values.push [1303939, nil, 'Loimaranta','Antero','Kouvola',1945,24,4,2,172,108373,32,nil,'R',11,nil,15,10]
values.push [14067961, nil, 'Loimulahti','Timo','KUOPIO',1952,1,0,1,10,6598,1721,nil,'R',0,nil,0,0]
values.push [14067970, nil, 'Loippo','Matti','KUHMOINEN',1944,0,0,1,4,2795,2594,nil,'R',0,nil,0,0]
values.push [1303942, nil, 'Loponen','Kimmo','Järvenpää',1965,6,2,1,50,27419,462,nil,'R',591,nil,0,0]
values.push [14067989, nil, 'Loponen','Taisto','TAMPERE',1940,5,0,1,34,19189,730,nil,'R',154,nil,0,0]
values.push [14067998, nil, 'Lottanen','Erkki','VANTAA',1935,1,0,2,14,5592,1453,nil,'R',0,nil,0,0]
values.push [1303955, nil, 'Lottanen','Esa','Tuulos',1961,4,1,1,33,29331,746,nil,'R',585,nil,0,0]
values.push [1332007, nil, 'Lukkarinen','Ari','Tuusula',1970,2,3,0,27,19469,968,nil,'R',0,nil,0,0]
values.push [14068007, nil, 'Lukkarinen','Lassi','JÄRVENPÄÄ',1940,1,1,0,11,6623,1637,nil,nil,0,nil,0,0]
values.push [14068016, nil, 'Lukkarinen','Reijo','VANTAA',1928,4,0,0,24,9298,1035,nil,nil,0,nil,0,0]
values.push [1329162, nil, 'Lukkarinen','Sanna','Espoo',1977,1,0,1,10,2166,1803,'P',nil,0,nil,0,0]
values.push [1333491, nil, 'Lukkarinen-Komsa','Marketta','Nurmes',1967,1,0,0,6,2063,2239,nil,'R',0,nil,0,0]
values.push [1337604, nil, 'Lumme','Antti','Pertteli',1982,0,1,0,5,4329,2316,nil,'R',0,nil,0,0]
values.push [14068025, nil, 'Lumme','Esa','KERAVA',1963,2,0,0,12,6864,1537,nil,'R',0,nil,0,0]
values.push [14068034, nil, 'Lumme','Mauri','KERAVA',1950,1,1,0,11,5530,1654,nil,'R',0,nil,0,0]
values.push [14068043, nil, 'Lunden','Marcus','HELSINKI',1955,1,0,1,10,5104,1752,nil,'R',0,nil,0,0]
values.push [14068052, nil, 'Lunden','Risto','ASIKKALA',1954,0,0,1,4,2840,2589,nil,nil,0,nil,0,0]
values.push [14068061, nil, 'Luojumäki','Reijo','LAHTI',1953,0,0,1,4,2672,2604,nil,'R',0,nil,0,0]
values.push [14068070, nil, 'Luojus','Simo','ULVILA',1944,0,0,1,4,1688,2703,nil,'R',0,nil,0,0]
values.push [14068089, nil, 'Luoma','Erkki','HYVINKÄÄ',1941,1,6,3,48,19026,477,nil,'R',139,nil,0,0]
values.push [14068098, nil, 'Luoma','Hannu','JYVÄSKYLÄ',1955,2,0,0,12,8136,1510,nil,'R',0,nil,0,0]
values.push [14068100, nil, 'Luoma','Heikki','HELSINKI',1930,2,3,1,31,11601,844,nil,'R',272,nil,0,0]
values.push [1303968, nil, 'Luomahaara','Timo','Turku',1946,5,0,2,38,20057,633,nil,'R',655,nil,0,0]
values.push [14068119, nil, 'Luomala','Pauli','VALKEAKOSKI',1945,1,1,0,11,7039,1630,nil,'R',0,nil,0,0]
values.push [14068128, nil, 'Luomanen','Seppo','KANGASALA',1945,0,1,1,9,3159,1862,nil,'R',0,nil,0,0]
values.push [1303971, nil, 'Luostarinen','Jukka','PILKANMAA',1955,4,1,1,33,25035,749,nil,'R',701,nil,0,0]
values.push [1324947, nil, 'Luoto','Markku','Mietoinen',1948,11,0,0,72,38436,274,'P','R',768,nil,354,0]
values.push [1330054, nil, 'Luukkanen','Tapio','Savonlinna',1957,2,1,0,17,10442,1286,nil,'R',0,nil,0,0]
values.push [1326246, nil, 'Luukkanen','Timo','savonlinna',1946,6,4,3,68,27308,305,nil,'R',110,nil,161,0]
values.push [14068137, nil, 'Luukkonen','Janne','LAPPEENRANT',1969,1,1,0,11,6619,1638,nil,'R',0,nil,0,0]
values.push [14068146, nil, 'Luukkonen','Jukka','LAPPEENRANT',1943,0,0,1,4,1503,2724,nil,'R',0,nil,0,0]
values.push [14068155, nil, 'Luukkonen','Paavo','JYVÄSKYLÄ',1948,1,0,0,6,2692,2169,nil,nil,0,nil,0,0]
values.push [1303984, nil, 'Lyly','Raimo','Somero',1951,0,0,1,4,1228.5,2771,'P',nil,0,nil,0,0]
values.push [14068164, nil, 'Lyytinen','Markus','PORVOO',1937,1,0,2,14,10901,1430,nil,'R',0,nil,0,0]
values.push [1325496, nil, 'Lyytinen','Mikko','Helsinki',1967,0,0,1,4,1556,2720,nil,'R',0,nil,0,0]
values.push [1304035, nil, 'Långbacka','Harry','Terjärv',1950,1,4,9,62,29236,360,nil,'R',358,nil,218,0]
values.push [1327300, nil, 'Långbacka','Jan','Espoo',1968,0,2,0,10,2904,1793,'P',nil,0,nil,0,0]
values.push [1304048, nil, 'Långbacka','Krister','Terjärv',1952,1,7,5,61,47737,365,nil,'R',334,nil,219,0]
values.push [14068173, nil, 'Långbacka','Nils-Er','KRUUNUPYY',1946,0,0,1,4,3048,2574,nil,'R',0,nil,0,0]
values.push [1326929, nil, 'Långström','Annamari','Hämeenlinna',1958,0,2,3,22,5148,1097,'P',nil,0,nil,0,0]
values.push [1304051, nil, 'Långström','Veikko','Hämeenlinna',1953,7,8,3,100,59698,159,'P','R',587,'A099T',287,0]
values.push [14068182, nil, 'Läderberg','Pentti','LAHTI',1942,11,1,1,75,34170,254,nil,'R',201,nil,93,0]
values.push [14068191, nil, 'Lähde','Teuvo','PORVOO',1948,0,0,1,4,3385,2560,nil,'R',0,nil,0,0]
values.push [1303997, nil, 'Lähdekorpi','Kauko','Raisio',1949,21,2,3,148,92835,54,nil,'R',62,nil,42,17]
values.push [14068203, nil, 'Lähdesmäki','Veli-M','SEINÄJOKI',1960,8,3,3,75,58729,250,nil,'R',494,nil,240,0]
values.push [1333747, nil, 'Lähetkangas','Arto','Joensuu',1962,1,0,0,6,3470,2094,nil,'R',0,nil,0,0]
values.push [14068212, nil, 'Lähteenmäki','Esko','IKAALINEN',1946,2,3,4,43,11606,552,nil,'R',247,nil,0,0]
values.push [1304019, nil, 'Lähteenmäki','Hannu','Hämeenlinna',1955,6,1,3,53,18788,438,'P',nil,0,'A006',0,0]
values.push [1335677, nil, 'Länsikallio','Jirka','Ilmarinen',1977,0,1,0,5,1837.5,2462,'P',nil,0,nil,0,0]
values.push [14068221, nil, 'Löfqvist','Markku','VANTAA',1959,1,0,0,6,2781,2162,nil,'R',0,nil,0,0]
values.push [1327591, nil, 'Löfström','Martin','Vantaa',1942,10,6,0,96,48531.5,168,'P','R',122,'A063T',0,0]
values.push [1304064, nil, 'Lönnström','Harry','Helsinki',1953,1,2,5,36,13014,678,nil,'R',683,nil,0,0]
values.push [1304077, nil, 'Lösönen','Eero','Helsinki',1951,9,3,4,85,57522,202,nil,'R',253,nil,112,0]
values.push [14068230, nil, 'Löytty','Keijo','VANTAA',1941,4,1,1,33,21107,756,nil,'R',100,nil,0,0]
values.push [1304080, nil, 'Löyttyniemi','Jorma','Tervakoski',1940,16,3,1,121,68267,91,nil,'R',599,nil,295,0]
values.push [1304093, nil, 'Löytynoja','Reijo','TURENKI',1957,3,2,3,40,24533,590,nil,'R',623,nil,0,0]
values.push [1338276, nil, 'Maanpää','Elli','Helsinki',1985,1,0,0,6,958.5,2310,'P',nil,0,nil,0,0]
values.push [1338289, nil, 'Maanpää','Juho','ESPOO',1983,0,1,0,5,1371.5,2508,'P',nil,0,nil,0,0]
values.push [1304103, nil, 'Maanpää','Maritta','TURKU',1951,10,7,4,115,33292.5,109,'P','R',592,'A079T',289,0]
values.push [1304116, nil, 'Maanpää','Sauli','TURKU',1950,19,6,2,156,94242.5,45,'P','R',388,'A071T',176,0]
values.push [1304129, nil, 'Maanpää','Ville','Turku',1975,0,2,0,10,4012.5,1779,'P','R',0,nil,0,0]
values.push [14068249, nil, 'Maijala','Oula','ESPOO',1962,1,0,0,6,3224,2122,nil,'R',0,nil,0,0]
values.push [14068258, nil, 'Maijala','Timo','KOUVOLA',1958,1,0,0,6,3180,2127,nil,'R',0,nil,0,0]
values.push [14068267, nil, 'Maikku','Vilho','KUUSAMO',1953,4,0,0,24,18798,1014,nil,'R',0,nil,0,0]
values.push [1335143, nil, 'Majasaari','Kari','JURVA',1950,0,4,0,20,7659.5,1158,'P',nil,0,nil,0,0]
values.push [1336841, nil, 'Majuri','Jarmo','Hyvinkää',1960,0,0,1,4,1195.5,2774,'P',nil,0,nil,0,0]
values.push [1307977, nil, 'Majuri','Pekka','Helsinki',1949,1,0,1,10,3910,1781,nil,'R',0,nil,0,0]
values.push [14068276, nil, 'Makkonen','Esa','VANTAA',1949,4,1,2,37,22159,646,nil,'R',395,nil,0,0]
values.push [14068285, nil, 'Makkonen','Martti','KEURUU',1949,10,0,0,60,42055,382,nil,'R',487,nil,225,0]
values.push [14068294, nil, 'Makkonen','Oiva','JOUTSENO',1953,3,0,0,18,12125,1215,nil,'R',0,nil,0,0]
values.push [14068306, nil, 'Makkonen','Toivo','KUOPIO',1941,3,0,0,18,14186,1201,nil,nil,0,nil,0,0]
values.push [14068315, nil, 'Makkonen','Vesa Pekka','HELSINKI',1959,1,0,0,6,2592,2183,nil,'R',0,nil,0,0]
values.push [14068324, nil, 'Malinen','Hannu','NURMIJÄRVI',1958,1,1,0,11,6321,1641,nil,'R',0,nil,0,0]
values.push [14068333, nil, 'Malinen','Pertti','VAASA',1947,1,0,0,6,3131,2132,nil,nil,0,nil,0,0]
values.push [14068342, nil, 'Malinen','Reijo','PORVOO',1955,1,0,1,10,7762,1705,nil,'R',0,nil,0,0]
values.push [1304145, nil, 'Maljanen','Reijo','Helsinki',1952,2,1,5,37,31163,641,nil,'R',561,nil,0,0]
values.push [1304158, nil, 'Malkamäki','Simo','Turku',1943,4,2,3,46,21516,501,'P','R',645,nil,0,0]
values.push [1324895, nil, 'Malmi','Ilkka','Vantaa',1974,1,0,0,6,3779,2058,nil,'R',0,nil,0,0]
values.push [14068351, nil, 'Malmi','Pentti','VIROLAHTI',1936,1,3,11,65,37607,326,nil,'R',68,nil,168,0]
values.push [1304161, nil, 'Malmikumpu','Leo','Espoo',1935,3,8,6,82,42304.5,220,'P','R',317,nil,229,0]
values.push [1338920, nil, 'Mamia','Kari','LOHJA',1967,1,0,0,12,5127.5,1570,'P',nil,0,nil,0,0]
values.push [1304174, nil, 'Manner','Helena','Hämeenlinna',1941,1,3,5,41,11371.5,579,'P','R',633,nil,0,0]
values.push [1304187, nil, 'Mannevuo','Pertti','Rymättylä',1947,19,3,0,135,57946.5,68,'P','R',490,'A044T',257,0]
values.push [1331053, nil, 'Mannila','Tuomo','Espoo',1979,0,1,0,5,1481,2498,'P',nil,0,nil,0,0]
values.push [1328778, nil, 'Manninen','Ilkka','Mikkeli',1955,0,1,1,9,3866.5,1855,'P',nil,0,nil,0,0]
values.push [14068360, nil, 'Manninen','Jouko','HELSINKI',1950,3,2,2,36,13081,677,nil,'R',268,nil,0,0]
values.push [1333831, nil, 'Manninen','Kari','kuopio',1956,1,1,1,15,6526,1408,'P','R',0,nil,0,0]
values.push [1304190, nil, 'Manninen','Mauno','Hollola',1948,13,2,1,92,56368,179,nil,'R',495,nil,234,0]
values.push [14068379, nil, 'Manninen','Tapani','MIKKELI',1945,2,1,1,21,15890,1102,nil,'R',0,nil,0,0]
values.push [1332395, nil, 'Manninen','Viljo','Hämeenlinna',1965,2,0,1,16,5247,1367,'P',nil,0,nil,0,0]
values.push [14068388, nil, 'Mansikkamäki','Raimo','JÄMIJÄRVI',1963,4,1,1,33,12854,773,nil,'R',398,nil,0,0]
values.push [1337442, nil, 'Mantere','Markku','Kristiinankaupunki',1956,1,0,0,6,4361,1996,nil,'R',0,nil,0,0]
values.push [14068397, nil, 'Mantere','Pekka','HELSINKI',1957,0,0,2,8,2432,1920,nil,'R',0,nil,0,0]
values.push [1333446, nil, 'Marila','Erkki','Kiukainen',1950,4,2,0,40,14069.5,598,'P','R',0,nil,0,0]
values.push [1334995, nil, 'Marila','Simo','Espoo',1985,0,1,0,5,2067,2444,'P',nil,0,nil,0,0]
values.push [14068409, nil, 'Marin','Aulis','TUUSULA',1961,0,0,1,4,2740,2598,nil,'R',0,nil,0,0]
values.push [1304200, nil, 'Marjamaa','Juhani','nokia',1945,25,2,2,173,90185,31,nil,'R',190,nil,85,26]
values.push [1336650, nil, 'Markelin','Lauri','Espoo',1976,3,1,0,28,10374,959,'P',nil,0,nil,0,0]
values.push [14068418, nil, 'Markkula','Arja','LOIMAA',1951,1,0,1,10,3988,1780,nil,'R',0,nil,0,0]
values.push [1328082, nil, 'Markkula','Jaakko','Tampere',1957,0,0,1,4,976,2812,nil,'R',0,nil,0,0]
values.push [14068427, nil, 'Markkula','Jouko','LOIMAA',1948,2,1,1,21,13062,1108,nil,'R',0,nil,0,0]
values.push [14068436, nil, 'Markoff','Rudolf','LAPPEENRANT',1928,1,4,1,30,6117,916,nil,'R',433,nil,0,0]
values.push [1304213, nil, 'Martenson-Nummela','Ruut','Helsinki',1951,3,2,7,56,21222,421,nil,'R',437,nil,0,0]
values.push [14068445, nil, 'Martikainen','Leevi','LAHTI',1939,1,6,6,60,28509,392,nil,'R',366,nil,186,0]
values.push [1304226, nil, 'Martikainen','Väinö','imatra',1947,2,1,6,41,26843,569,'P','R',737,nil,0,0]
values.push [14068454, nil, 'Martikkala','Ossi','NURMO',1940,0,4,3,32,14856,805,nil,'R',213,nil,0,0]
values.push [1304239, nil, 'Marttila','Jarmo','Karhula',1956,10,1,1,69,38245,297,'P','R',582,nil,278,0]
values.push [14068463, nil, 'Marttinen','Ilkka','LAPPEENRANT',1962,1,2,4,32,16832,795,nil,'R',531,nil,0,0]
values.push [14068472, nil, 'Marttinen','Jorma','KAUHAVA',1950,3,2,1,32,16516,798,nil,'R',563,nil,0,0]
values.push [1307867, nil, 'Marttinen','Teija','Heinola',1967,1,0,0,6,3281,2117,nil,'R',0,nil,0,0]
values.push [1307676, nil, 'Marttinen','Timo','Heinola',1966,1,0,0,6,4392,1990,nil,'R',0,nil,0,0]
values.push [14068481, nil, 'Matikainen','Heli','PIIKKIÖ',1969,1,0,0,6,3188,2126,nil,'R',0,nil,0,0]
values.push [1316502, nil, 'Matikka','Jukka','Espoo',1956,0,1,0,5,1239,2522,'P',nil,0,nil,0,0]
values.push [1307838, nil, 'Matikka','Raimo','Lahti',1900,0,0,1,4,720,2842,'P',nil,0,nil,0,0]
values.push [1328422, nil, 'Matilainen','Ari','Mikkeli',1970,0,1,0,5,3122,2369,nil,'R',0,nil,0,0]
values.push [1337219, nil, 'Matilainen','Eeva','ORIMATTILA',1953,0,0,2,8,0,1935,'P',nil,0,nil,0,0]
values.push [1304255, nil, 'Matilainen','Urpo','Hämeenlinna',1939,0,2,7,38,18103,636,'P','R',584,nil,0,0]
values.push [1338441, nil, 'Mattila','Elina','Nousiainen',1973,1,1,0,11,3159.5,1685,'P',nil,0,nil,0,0]
values.push [14068490, nil, 'Mattila','Heikki','TUUSULA',1947,2,4,2,40,18448,595,nil,'R',237,nil,0,0]
values.push [1331163, nil, 'Mattila','Jenni','Hämeenlinna',1977,1,0,0,6,4646,1970,nil,'R',0,nil,0,0]
values.push [1304268, nil, 'Mattila','Kalervo','Pori',1942,1,0,0,6,3567,2083,nil,'R',0,nil,0,0]
values.push [14068502, nil, 'Mattila','Marja','HAUSJÄRVI',1966,0,0,2,8,4136,1899,nil,'R',0,nil,0,0]
values.push [14068511, nil, 'Mattila','Mikko','ESPOO',1934,2,2,3,34,23859,717,nil,'R',78,nil,0,0]
values.push [1304271, nil, 'Mattila','Riku','Helsinki',1966,0,1,0,5,3345,2357,nil,'R',0,nil,0,0]
values.push [14068520, nil, 'Mattila','Seppo','KUOPIO',1954,2,1,2,25,14545,993,nil,'R',0,nil,0,0]
values.push [14068539, nil, 'Mattila','Simo','TAMPERE',1935,15,1,0,95,67761,169,nil,'R',180,nil,89,0]
values.push [14068548, nil, 'Maukonen','Teuvo','KYYJÄRVI',1955,0,1,0,5,4008,2322,nil,'R',0,nil,0,0]
values.push [1332285, nil, 'Maukonen','Timo','Suolahti',1979,0,0,1,4,2937,2581,nil,'R',0,nil,0,0]
values.push [14068557, nil, 'Melamies','Pertti','ESPOO',1953,0,0,1,4,1386,2742,nil,'R',0,nil,0,0]
values.push [1335253, nil, 'Melkko','Ville','Helsinki',1972,2,1,2,29,9638,942,'P',nil,0,nil,0,0]
values.push [1335389, nil, 'Mellanen','Markku','Espoo',1973,1,3,0,21,6126,1136,'P',nil,0,nil,0,0]
values.push [1304284, nil, 'Melleri','Tauno','Tampere',1938,13,6,3,120,65183,92,nil,'R',65,nil,54,0]
values.push [1328516, nil, 'Merisaari','Mikko','Turku',1976,0,0,1,4,1378.5,2744,'P',nil,0,nil,0,0]
values.push [1340387, nil, 'Meronen','Juha','Espoo',1972,0,0,0,6,3735,2062,nil,'S',0,nil,0,0]
values.push [1339521, nil, 'Meronen','Petri','Numminen',1966,0,0,1,4,752,2839,'P',nil,0,nil,0,0]
values.push [14068566, nil, 'Metsä','Aarni','LAPPEENRANT',1941,10,0,0,60,34693,386,nil,'R',232,nil,105,0]
values.push [1316418, nil, 'Metsä','Touko','Helsinki',1948,5,0,1,34,20222,728,nil,'R',389,nil,0,0]
values.push [14068575, nil, 'Metsäaro','Tuomo','HELSINKI',1959,0,0,1,4,2696,2602,nil,'R',0,nil,0,0]
values.push [1304297, nil, 'Metsälä','Hannu','Vaasa',1960,0,1,3,17,8299,1299,'P','R',0,nil,0,0]
values.push [14068584, nil, 'Metsälä','Tarja-Riitta','LAMMI',1959,1,0,1,10,4265,1775,nil,'R',0,nil,0,0]
values.push [1333705, nil, 'Metsänheimo','Vesa','LAHTI',1982,0,1,0,5,3188,2366,nil,'R',0,nil,0,0]
values.push [14068593, nil, 'Metsätähti','Markku','VESANTO',1953,1,0,0,6,2501,2192,nil,'R',0,nil,0,0]
values.push [1304307, nil, 'Miettinen','Aapo','Kuopio',1935,15,1,0,95,62481,170,nil,'R',434,nil,190,0]
values.push [1334351, nil, 'Miettinen','Jouni','Varkaus',1973,4,0,1,34,23819,718,'P','R',0,nil,0,0]
values.push [14068605, nil, 'Miettinen','Raimo','RAISIO',1932,0,0,1,4,1292,2756,nil,nil,0,nil,0,0]
values.push [1335415, nil, 'Miettinen','Tatu','Nummela',1967,0,0,1,4,1156,2784,'P',nil,0,nil,0,0]
values.push [1335088, nil, 'Miettinen','Tuomo','Vanfaa',1961,0,0,2,8,2476.5,1919,'P',nil,0,nil,0,0]
values.push [1307980, nil, 'Miinin','Aija','Ylämylly',1961,3,0,5,38,18622.5,635,'P','R',769,nil,0,0]
values.push [1325195, nil, 'Miinin','Jarmo','Ylämylly',1956,1,0,0,6,1950.5,2251,'P',nil,0,nil,0,0]
values.push [1336391, nil, 'Mikkelsson','Lasse','Lahti',1957,1,1,1,20,8628.5,1155,'P',nil,0,nil,0,0]
values.push [14068614, nil, 'Mikkilä','Sakari','VANTAA',1942,0,0,1,4,1053,2801,nil,nil,0,nil,0,0]
values.push [1331529, nil, 'Mikkola','Jussi','somero',1987,4,0,0,24,8459,1037,'P',nil,0,nil,0,0]
values.push [14068623, nil, 'Mikkola','Matti','LAHTI',1940,0,0,1,4,2012,2669,nil,nil,0,nil,0,0]
values.push [1331516, nil, 'Mikkola','Miia','Ylöpirtti',1984,0,1,0,5,997.5,2536,'P',nil,0,nil,0,0]
values.push [14068632, nil, 'Mikkola','Pertti','TUUSULA',1936,1,2,4,32,13774,807,nil,'R',505,nil,0,0]
values.push [14068641, nil, 'Mikkonen','Liisa','TURKU',1951,3,1,3,35,14359,702,nil,'R',523,nil,0,0]
values.push [14068650, nil, 'Mikkonen','Reijo','TUUSULA',1946,2,0,0,12,5790,1556,nil,'R',0,nil,0,0]
values.push [14068669, nil, 'Minkkilä','Timo','SAVONLINNA',1960,1,1,0,11,5860,1649,nil,'R',0,nil,0,0]
values.push [1331820, nil, 'Moilanen','Erkki','Pirkkala',1958,7,0,0,48,32549,471,nil,'R',795,nil,0,0]
values.push [1336320, nil, 'Moilanen','Jari','HELSINKI',1961,1,0,0,6,4039,2026,nil,'R',0,nil,0,0]
values.push [14068678, nil, 'Moilanen','Martti','KOSTAMUS',1948,1,0,0,6,3339,2113,nil,nil,0,nil,0,0]
values.push [1340316, nil, 'Moisio','Tapio','Espoo',1966,0,0,0,4,1979,2672,nil,'S',0,nil,0,0]
values.push [1328299, nil, 'Mononen','Jyrki','Kerava',1968,0,1,0,5,1683,2472,'P',nil,0,nil,0,0]
values.push [14068687, nil, 'Mononen','Kari','JOENSUU',1949,4,0,2,32,17740,792,nil,'R',361,nil,0,0]
values.push [1340073, nil, 'Monto','Jouni','ESPOO',1965,0,0,0,4,2200,2650,nil,'S',0,nil,0,0]
values.push [1335596, nil, 'Montonen','Jyrki','lappeenranta',1989,2,0,0,12,4117,1580,'P',nil,0,nil,0,0]
values.push [1304323, nil, 'Montonen','Outi','heinola',1958,10,2,0,70,30892.5,290,'P','R',652,'A102T',0,0]
values.push [14068696, nil, 'Morelius','Kenneth','NURMIJÄRVI',1961,0,0,3,12,6263,1546,nil,'R',0,nil,0,0]
values.push [14068708, nil, 'Moser','Christian','HELSINKI',1959,0,2,0,10,6278,1728,nil,'R',0,nil,0,0]
values.push [14068717, nil, 'Motturi','Heikki','LAHTI',1947,1,2,0,16,9343,1340,nil,'R',0,nil,0,0]
values.push [14068726, nil, 'Muhonen','Jukka','OULU',1969,1,0,0,6,3480,2091,nil,'R',0,nil,0,0]
values.push [1330795, nil, 'Muhonen','Timo','Espoo',1960,1,1,0,11,5212,1661,nil,'R',0,nil,0,0]
values.push [14068735, nil, 'Muhonen','Ulla','SAVONLINNA',1960,2,1,2,25,9521,1002,nil,'R',0,nil,0,0]
values.push [1338946, nil, 'Muilu','Matti','Ylöjärvi',1951,0,1,0,5,2921,2386,nil,'R',0,nil,0,0]
values.push [1335402, nil, 'Muje','Timo','savonlinna',1967,0,0,1,4,1377,2745,'P',nil,0,nil,0,0]
values.push [14068744, nil, 'Mujunen','Antti','HELSINKI',1948,1,0,0,6,3542,2087,nil,'R',0,nil,0,0]
values.push [14068753, nil, 'Mujunen','Juhani','LAHTI',1940,1,0,0,6,3725,2066,nil,nil,0,nil,0,0]
values.push [1304336, nil, 'Mujunen','Paavo','Sajaniemi',1968,1,2,3,28,13526,956,'P','R',0,nil,0,0]
values.push [1304349, nil, 'Mujunen','Pekka','Muurla',1970,2,3,6,51,23651,451,'P','R',778,nil,0,0]
values.push [14068762, nil, 'Multanen','Pekka','HÄMEENLINNA',1944,0,0,2,8,6870,1885,nil,'R',0,nil,0,0]
values.push [1327588, nil, 'Muona','Jukka','KUOPIO',1964,1,0,0,6,3253,2119,nil,'R',0,nil,0,0]
values.push [14068771, nil, 'Mustakallio','Kullervo','HELSINKI',1950,4,0,2,32,15329,803,nil,'R',480,nil,0,0]
values.push [1335978, nil, 'Mustonen','Aki','Nousiainen',1968,2,0,0,12,9538,1495,nil,'R',0,nil,0,0]
values.push [14068780, nil, 'Mustonen','Jorma','KUORTANE',1952,2,0,0,12,5890,1552,nil,'R',0,nil,0,0]
values.push [14068799, nil, 'Mustonen','Matti','HELSINKI',1939,1,0,3,18,12242,1214,nil,nil,0,nil,0,0]
values.push [1328202, nil, 'Mustonen','Reijo','Anjalankoski',1941,0,0,1,4,2552,2620,nil,'R',0,nil,0,0]
values.push [14068801, nil, 'Mustonen','Sauli','PORVOO',1934,0,1,3,17,7364,1300,nil,'R',0,nil,0,0]
values.push [1326181, nil, 'Mutanen','Harri','Reijola',1955,0,1,0,5,1932.5,2458,'P',nil,0,nil,0,0]
values.push [14068810, nil, 'Mutikainen','Juha','KEURUU',1951,0,0,1,4,2135,2658,nil,'R',0,nil,0,0]
values.push [14068829, nil, 'Muukkonen','Pekka','TUUSULA',1951,3,0,0,18,16333,1185,nil,'R',0,nil,0,0]
values.push [1304352, nil, 'Myllylä','Matti','VARKAUS',1940,7,5,4,83,36078.5,212,'P','R',656,nil,0,0]
values.push [1331464, nil, 'Myllylä','Tiina','Kouvola',1967,2,0,0,12,3840.5,1586,'P',nil,0,nil,0,0]
values.push [14068838, nil, 'Myllymaa','Altti','VAMMALA',1930,1,1,0,11,2482,1693,nil,nil,0,nil,0,0]
values.push [1304365, nil, 'Myllymäki','Matti','Kokkola',1946,1,0,0,6,3223,2123,nil,'R',0,nil,0,0]
values.push [14068847, nil, 'Myllynen','Lauri','VIITASAARI',1948,3,0,0,18,14328,1200,nil,'R',0,nil,0,0]
values.push [1328545, nil, 'Myllyperkiö','Veikko','Degerby Inkoo',1946,2,1,0,17,2894.5,1315,'P',nil,0,nil,0,0]
values.push [1304378, nil, 'Myrskylä','Pekka','Helsinki',1946,6,3,1,55,27845.5,424,'P','R',297,nil,0,0]
values.push [1336647, nil, 'Mäenpää','Juha','Kustavi',1960,0,0,2,12,2543,1596,'P',nil,0,nil,0,0]
values.push [14068856, nil, 'Mäenpää','Juhani','HELSINKI',1948,0,1,0,5,2680,2397,nil,'R',0,nil,0,0]
values.push [1316337, nil, 'Mäenpää','Lasse','Hämeenlinna',1900,0,0,1,4,2617,2613,nil,'R',0,nil,0,0]
values.push [1340109, nil, 'Mäenpää','Mikko','Tampere',1974,0,0,0,6,4195,2010,nil,'S',0,nil,0,0]
values.push [14068865, nil, 'Mäentaka','Kalervo','HELSINKI',1948,2,2,0,22,12301,1080,nil,'R',0,nil,0,0]
values.push [14068874, nil, 'Mäkelä','Aimo','VARKAUS',1954,0,1,1,9,2906,1867,nil,nil,0,nil,0,0]
values.push [14068883, nil, 'Mäkelä','Helena','VANTAA',1965,1,1,2,19,9451,1173,nil,'R',0,nil,0,0]
values.push [1304404, nil, 'Mäkelä','Jari','Tampere',1964,1,0,0,6,3827,2053,nil,'R',0,nil,0,0]
values.push [1304417, nil, 'Mäkelä','Jarkko','HIMANKA',1975,4,0,0,24,20985,1011,nil,'R',0,nil,0,0]
values.push [14068892, nil, 'Mäkelä','Jarmo','ESPOO',1968,1,0,0,6,4368,1994,nil,'R',0,nil,0,0]
values.push [14068904, nil, 'Mäkelä','Juha','KUUSANKOSKI',1956,5,0,0,30,18888,877,nil,'R',230,nil,0,0]
values.push [1304420, nil, 'Mäkelä','Marja-Leena','Hyvinkää',1956,1,1,1,15,5967,1415,nil,'R',0,nil,0,0]
values.push [14068913, nil, 'Mäkelä','Markku','HYVINKÄÄ',1950,6,0,1,40,31342,585,nil,'R',277,nil,0,0]
values.push [1329418, nil, 'Mäkelä','Matti','Lappajärvi',1954,0,0,1,4,1445,2733,nil,'R',0,nil,0,0]
values.push [1337374, nil, 'Mäkelä','Perttu','Espoo',1972,0,0,1,4,1808,2686,'P',nil,0,nil,0,0]
values.push [1304433, nil, 'Mäkelä','Seppo','SALO',1945,2,2,3,34,20579,726,nil,'R',765,nil,0,0]
values.push [14068922, nil, 'Mäkelä','Teuvo','TURKU',1929,0,3,4,31,12310,842,nil,'R',367,nil,0,0]
values.push [14068931, nil, 'Mäki','Hannu','KANGASALA',1933,1,1,1,15,5278,1418,nil,nil,0,nil,0,0]
values.push [1325425, nil, 'Mäki','Jarmo','Nummela',1976,0,0,2,8,2099,1925,'P',nil,0,nil,0,0]
values.push [14068940, nil, 'Mäki','Kalevi','ESPOO',1946,6,1,0,41,27740,568,nil,'R',123,nil,0,0]
values.push [14068959, nil, 'Mäki','Lasse','TAMPERE',1950,0,0,1,4,2288,2639,nil,'R',0,nil,0,0]
values.push [14068968, nil, 'Mäki','Olavi','SAVONLINNA',1944,0,1,0,5,3268,2362,nil,'R',0,nil,0,0]
values.push [14068977, nil, 'Mäki','Raimo A','JYVÄSKYLÄ',1943,1,1,0,11,7406,1623,nil,'R',0,nil,0,0]
values.push [1304446, nil, 'Mäki','Reino','Rauma',1952,5,1,5,55,26226,425,nil,'R',728,nil,0,0]
values.push [1330782, nil, 'Mäki-Hallila','Heikki','Järvenpää',1962,0,1,0,5,1343.5,2512,'P',nil,0,nil,0,0]
values.push [14068986, nil, 'Mäki-Lahna','Antti','TÖYSÄ',1947,5,0,0,30,8386,912,nil,'R',245,nil,0,0]
values.push [1327737, nil, 'Mäkinen','Airi','Salo',1948,5,2,3,58,13893,408,'P',nil,0,'A051',0,0]
values.push [14068995, nil, 'Mäkinen','Eero','VAMMALA',1930,0,1,1,9,4918,1833,nil,nil,0,nil,0,0]
values.push [1334432, nil, 'Mäkinen','Eija','Salo',1967,3,2,1,36,7173,682,'P',nil,0,'A093',0,0]
values.push [1330698, nil, 'Mäkinen','Jari','Hämeenlinna',1965,2,0,2,20,12492,1147,'P','R',0,nil,0,0]
values.push [14069004, nil, 'Mäkinen','Jouko','LAHTI',1948,1,0,0,6,3397,2103,nil,nil,0,nil,0,0]
values.push [14069013, nil, 'Mäkinen','Martti','TURKU',1945,2,0,0,12,7316,1527,nil,'R',0,nil,0,0]
values.push [1304459, nil, 'Mäkinen','Tapani','Helsinki',1954,0,1,1,9,4599,1839,nil,'R',0,nil,0,0]
values.push [1304462, nil, 'Mäkipelto','Eero','Keuruu',1955,10,6,2,104,83272,139,nil,'R',639,nil,304,0]
values.push [1327245, nil, 'Mäkipelto','Jani','Tampere',1986,2,1,2,25,10781,1000,'P',nil,0,nil,0,0]
values.push [1328451, nil, 'Mäkipelto','Joonas','Keuruu',1988,1,1,1,15,6315,1412,'P',nil,0,nil,0,0]
values.push [1327779, nil, 'Mäkipere','Heikki','Kiukainen',1959,1,1,1,15,11230,1378,nil,'R',0,nil,0,0]
values.push [14069022, nil, 'Mäkiranta','Jorma','ALAVUS',1956,2,0,1,16,12376,1322,nil,'R',0,nil,0,0]
values.push [14069031, nil, 'Mäkirinta','Hannu','NURMO',1949,2,0,0,12,11397,1484,nil,'R',0,nil,0,0]
values.push [14069040, nil, 'Mäkirinta','Jaana','NURMO',1959,2,0,0,12,8409,1507,nil,'R',0,nil,0,0]
values.push [14069059, nil, 'Mäkitalo','Mika','TAMPERE',1957,9,1,0,59,48745,397,nil,'R',221,nil,0,0]
values.push [14069068, nil, 'Mäkitalo','Veikko','TAMPERE',1928,5,1,0,35,19678,693,nil,'R',349,nil,0,0]
values.push [14069077, nil, 'Mäklin','Kari','KUOPIO',1965,1,0,0,6,3763,2059,nil,'R',0,nil,0,0]
values.push [14069086, nil, 'Männikkö','Olavi','HELSINKI',1920,7,3,1,61,16867,375,nil,'R',64,nil,47,0]
values.push [14069095, nil, 'Mänttäri','Ulla','HELSINKI',1964,0,1,0,5,3725,2328,nil,'R',0,nil,0,0]
values.push [1338852, nil, 'Mäntynen','Antti','Söderkulla',1966,0,1,0,11,4932,1665,'P',nil,0,nil,0,0]
values.push [14069107, nil, 'Määttä','Asko','ELIMÄKI',1951,2,0,0,12,9985,1488,nil,nil,0,nil,0,0]
values.push [14069116, nil, 'Määttä','Jouni','LOPPI',1948,2,0,0,12,5586,1558,nil,'R',0,nil,0,0]
values.push [1340413, nil, 'Määttä','Jyrki','Paimio',1969,0,0,0,5,3582,2337,nil,'S',0,nil,0,0]
values.push [1332081, nil, 'Määttänen','Heikki','Kuopio',1958,1,1,1,15,9385,1386,nil,'R',0,nil,0,0]
values.push [1339013, nil, 'Määttänen','Jori','LAHTI',1980,0,0,1,4,1137.5,2788,'P',nil,0,nil,0,0]
values.push [1304475, nil, 'Mörsky','Jorma','Loimaa',1958,4,1,0,29,25309,920,nil,'R',0,nil,0,0]
values.push [1304488, nil, 'Mörsky','Pertti','Loimaa',1957,5,3,2,53,39258,433,nil,'R',678,nil,0,0]
values.push [1304491, nil, 'Mörsky','Reijo','KAARO',1954,10,3,2,83,63396.5,209,'P','R',536,nil,271,0]
values.push [14069125, nil, 'Mörä-Leino','Anneli','JYVÄSKYLÄ',1956,5,0,3,42,16535,563,nil,'R',243,nil,0,0]
values.push [1335774, nil, 'Möykkynen','Veikko','Iisalmi',1950,3,1,0,23,16322.5,1048,'P','R',0,nil,0,0]
values.push [1339259, nil, 'Nappu','Juha','Turku',1967,1,0,0,12,5956,1551,'P',nil,0,nil,0,0]
values.push [14069134, nil, 'Nenonen','Kari','JÄRVENPÄÄ',1947,3,0,1,22,18036,1071,nil,'R',0,nil,0,0]
values.push [1334005, nil, 'Nenonen','Tuula','Hämeenlinna',1971,2,0,0,12,3020,1594,'P',nil,0,nil,0,0]
values.push [14069143, nil, 'Nepponen','Arto','VANTAA',1958,2,1,0,17,9870,1290,nil,'R',0,nil,0,0]
values.push [1304514, nil, 'Nerg','Jouko','Vantaa',1938,8,7,9,119,45087,96,'P','R',239,'A017T',158,0]
values.push [14069152, nil, 'Neste','Jussi','HELSINKI',1947,1,0,0,6,3005,2142,nil,'R',0,nil,0,0]
values.push [1326482, nil, 'Neste','Sampo','Turku',1976,2,0,0,12,6236,1547,nil,'R',0,nil,0,0]
values.push [14069161, nil, 'Neuvonen','Kari','SAVITAIPALE',1957,0,1,0,5,3529,2343,nil,'R',0,nil,0,0]
values.push [1327368, nil, 'Neuvonen','Timo','Turku',1945,1,1,2,19,6373,1179,'P','R',0,nil,0,0]
values.push [14069170, nil, 'Nevala','Heikki','TOIJALA',1948,1,0,0,6,1612,2280,nil,'R',0,nil,0,0]
values.push [14069189, nil, 'Nevalainen','Keijo','IMATRA',1958,0,0,1,4,1967,2673,nil,'R',0,nil,0,0]
values.push [1304527, nil, 'Nevalainen','Kyösti','Kouvola',1941,1,0,0,6,2798,2160,nil,'R',0,nil,0,0]
values.push [14069198, nil, 'Niemelä','Jouko','JÄMSÄ',1945,1,0,0,6,3489,2089,nil,'R',0,nil,0,0]
values.push [14069200, nil, 'Niemi','Ilkka','ESPOO',1951,1,0,0,6,1846,2259,nil,'R',0,nil,0,0]
values.push [1304530, nil, 'Niemi','Leena','Orimattila',1955,1,0,3,18,4519,1264,nil,'R',0,nil,0,0]
values.push [14069219, nil, 'Niemi','Martti','ANJALANKOSK',1949,0,1,0,5,1379,2507,nil,'R',0,nil,0,0]
values.push [1338661, nil, 'Niemi','Pekka','Kuopio',1939,2,1,0,17,6548,1304,nil,'R',0,nil,0,0]
values.push [14069228, nil, 'Niemi','Pertti','LAHTI',1946,1,0,0,6,2137,2233,nil,nil,0,nil,0,0]
values.push [1304543, nil, 'Niemi','Risto','NAHKELA',1945,0,2,0,10,2622,1798,'P',nil,0,nil,0,0]
values.push [14069237, nil, 'Niemi','Seppo','JANAKKALA',1941,1,1,0,11,7480,1621,nil,'R',0,nil,0,0]
values.push [14069246, nil, 'Niemi','Seppo Kj','VANTAA',1946,1,2,1,20,10252,1152,nil,'R',0,nil,0,0]
values.push [1304556, nil, 'Niemikoski','Olavi','NUKARI',1936,2,8,16,116,52115.5,106,'P','R',399,nil,196,44]
values.push [14069264, nil, 'Nieminen','Arto','TAMPERE',1958,1,0,0,6,1511,2289,nil,'R',0,nil,0,0]
values.push [1337895, nil, 'Nieminen','Erik','Palokka',1965,0,1,1,9,3009,1866,'P',nil,0,nil,0,0]
values.push [14069273, nil, 'Nieminen','Kari','RIIHIMÄKI',1962,0,1,0,5,2326,2420,nil,'R',0,nil,0,0]
values.push [1304569, nil, 'Nieminen','Kari','RIIHIMÄKI',1955,5,2,1,50,28030.5,461,'P','R',0,nil,0,0]
values.push [14069282, nil, 'Nieminen','Keijo','KORIA',1952,2,0,0,12,4065,1581,nil,nil,0,nil,0,0]
values.push [14069291, nil, 'Nieminen','Kimmo','SYSMÄ',1955,1,0,0,6,3385,2104,nil,nil,0,nil,0,0]
values.push [1331969, nil, 'Nieminen','Markku','Puuttuu',1973,0,0,4,16,10681.5,1331,'P','R',0,nil,0,0]
values.push [1304572, nil, 'Nieminen','Matti','ESPOO',1941,30,6,0,210,100872,8,'P','R',22,'A090T',17,11]
values.push [1304585, nil, 'Nieminen','Mika','Inkoo As',1971,4,3,1,43,15835.5,548,'P',nil,0,'A023',0,0]
values.push [1304598, nil, 'Nieminen','Mikko','Espoo',1970,1,2,7,44,31102.5,522,'P','R',640,nil,0,0]
values.push [1330850, nil, 'Nieminen','Panu','Mäntsälä',1963,1,1,0,11,4674,1668,'P','R',0,nil,0,0]
values.push [14069303, nil, 'Nieminen','Pauli','KORIA',1948,2,0,0,12,4565,1576,nil,nil,0,nil,0,0]
values.push [14069255, nil, 'Niemi-Pynttäri','Päi','ALAJÄRVI',1933,0,1,0,5,3441,2347,nil,nil,0,nil,0,0]
values.push [14069312, nil, 'Niemistö','Raimo','HELSINKI',1941,1,0,0,6,2217,2221,nil,'R',0,nil,0,0]
values.push [14069321, nil, 'Niikkula','Matti','HÄMEENLINNA',1944,0,2,8,42,26963,557,nil,'R',152,nil,0,0]
values.push [14069330, nil, 'Niilonen','Veijo','KUOPIO',1926,0,0,1,4,1695,2702,nil,'R',0,nil,0,0]
values.push [1340523, nil, 'Niinimaa','Mika','KAARINA',1964,0,0,0,4,3072,2572,nil,'S',0,nil,0,0]
values.push [1328163, nil, 'Niinistö','Kari','Salo',1946,2,2,2,30,9734,907,'P',nil,0,'A101',0,0]
values.push [14069349, nil, 'Niiranen','Kari','SAVONLINNA',1954,0,1,1,9,3726,1858,nil,'R',0,nil,0,0]
values.push [1334474, nil, 'Niiranen','Toni','Helsinki',1972,2,1,0,17,12567,1272,nil,'R',0,nil,0,0]
values.push [14069358, nil, 'Nikamaa','Arto','ROVANIEMI',1944,3,2,2,36,14169,674,nil,'R',167,nil,0,0]
values.push [1326437, nil, 'Nikander','Raimo','Salo',1957,1,0,2,14,5443,1457,'P',nil,0,nil,0,0]
values.push [1304608, nil, 'Nikkanen','Aulis','Salo',1947,26,5,5,205,155664,11,nil,'R',25,nil,21,12]
values.push [14069367, nil, 'Nikkanen','Martti','HELSINKI',1953,3,0,2,26,18142,982,nil,'R',0,nil,0,0]
values.push [14069376, nil, 'Nikkanen','Yrjö','VANTAA',1960,3,1,5,43,28889,538,'P','R',195,nil,0,0]
values.push [1338030, nil, 'Nikki','Markku','Sysmä',1969,0,1,0,5,3635,2333,nil,'R',0,nil,0,0]
values.push [1304611, nil, 'Nikkinen','Kari','Imatra',1943,6,2,7,74,47014,259,nil,'R',377,nil,226,0]
values.push [1339929, nil, 'Nikkola','Antti','Ilmajoki',1958,0,0,0,4,1906,2679,nil,'S',0,nil,0,0]
values.push [1304624, nil, 'Nikkola','Hannu','HYLLYKALLIO',1975,2,1,1,21,14606,1105,'P','R',0,nil,0,0]
values.push [14069385, nil, 'Nilsson','Sven','PIETARSAARI',1938,1,0,0,6,3940,2038,nil,nil,0,nil,0,0]
values.push [14069394, nil, 'Nimander','Arto','JÄRVENPÄÄ',1964,0,0,2,8,2959,1915,nil,'R',0,nil,0,0]
values.push [14069406, nil, 'Nippala','Juhani','TURKU',1949,0,1,0,5,3210,2364,nil,nil,0,nil,0,0]
values.push [1304637, nil, 'Niskanen','Jorma','Jokela',1943,35,0,1,218,146243,6,nil,'R',10,nil,8,1]
values.push [1304640, nil, 'Niskanen','Sirkka-Liisa','Kokkola',1946,1,0,0,6,1278.5,2302,'P',nil,0,nil,0,0]
values.push [14069415, nil, 'Nissi','Jaakko','VANTAA',1941,2,0,0,12,5569,1561,nil,nil,0,nil,0,0]
values.push [14069424, nil, 'Nissilä','Isto','TURKU',1933,0,0,1,4,1101,2792,nil,'R',0,nil,0,0]
values.push [1330834, nil, 'Nissinen','Arto','Vanha-Ulvila',1964,3,0,0,18,16207,1186,nil,'R',0,nil,0,0]
values.push [1330847, nil, 'Nissinen','Ulla','Vanha-Ulvila',1970,0,2,0,10,4337.5,1772,'P','R',0,nil,0,0]
values.push [1329861, nil, 'Nisula','Jaakko','ESPOO',1959,0,1,0,5,1284,2519,'P',nil,0,nil,0,0]
values.push [14069433, nil, 'Nojomaa','Timo','HELSINKI',1952,0,1,0,5,1829,2463,nil,'R',0,nil,0,0]
values.push [1328367, nil, 'Nordenswan','Nina','Anjalankoski',1974,0,1,0,5,2059,2446,nil,'R',0,nil,0,0]
values.push [1325797, nil, 'Nordman','Mikael','Turku',1971,0,0,1,4,1462.5,2731,'P',nil,0,nil,0,0]
values.push [1304653, nil, 'Nortamo','Juha-Pekka','Vantaa',1972,0,2,1,14,10006,1431,nil,'R',0,nil,0,0]
values.push [1304666, nil, 'Nortamo','Tommi','Vantaa',1966,0,2,1,14,8127,1438,nil,'R',0,nil,0,0]
values.push [1307951, nil, 'Nuikka','Pekka','Helsinki',1960,3,0,1,22,10578,1086,nil,'R',0,nil,0,0]
values.push [1325441, nil, 'Nummela','Jyrki','LOHJA',1963,3,3,0,33,20790,757,nil,'R',775,nil,0,0]
values.push [14069442, nil, 'Nummela','Lasse','HELSINKI',1952,1,0,4,22,7066,1095,nil,'R',0,nil,0,0]
values.push [14069451, nil, 'Numminen','Antti','JANAKKALA',1941,1,0,0,6,4374,1992,nil,'R',0,nil,0,0]
values.push [1328998, nil, 'Nuorteva','Tuula','Lusi',1955,1,2,3,28,7579,961,'P',nil,0,nil,0,0]
values.push [1304679, nil, 'Nuotio','Simo','espoo',1939,17,3,5,137,87868,65,nil,'R',292,nil,137,35]
values.push [14069460, nil, 'Nupponen','Heikki','KANGASALA',1940,0,0,1,4,1747,2695,nil,'R',0,nil,0,0]
values.push [14069479, nil, 'Nupponen','Juhani','HELSINKI',1948,4,0,0,24,15554,1022,nil,'R',0,nil,0,0]
values.push [14069488, nil, 'Nupponen','Risto','TUUSULA',1969,1,1,1,15,8945,1392,nil,'R',0,nil,0,0]
values.push [1337154, nil, 'Nurmela','Juha','Vantaa',1978,3,0,0,24,9324,1034,'P',nil,0,nil,0,0]
values.push [1304682, nil, 'Nurmi','Anne','Riihimäki',1900,0,1,0,5,1070,2533,'P',nil,0,nil,0,0]
values.push [1304695, nil, 'Nurmi','Esko','Pöytyä',1936,0,12,7,88,35159,194,nil,'R',414,nil,199,0]
values.push [1329926, nil, 'Nurmi','Juha','ESPOO',1965,5,0,2,38,21842,632,nil,'R',799,nil,0,0]
values.push [14069497, nil, 'Nurmi','Kari','VANTAA',1961,1,1,1,15,12965,1374,nil,'R',0,nil,0,0]
values.push [14069509, nil, 'Nurmi','Markku','JÄRVENPÄÄ',1956,0,1,0,5,1998,2452,nil,nil,0,nil,0,0]
values.push [1304705, nil, 'Nurmi','Seppo','Salo',1946,7,2,7,80,55407,226,'P','R',455,nil,237,0]
values.push [14069518, nil, 'Nurmi','Tapio','VANTAA',1960,0,1,1,9,7888,1812,nil,'R',0,nil,0,0]
values.push [14069527, nil, 'Nurmijoki','Raimo','TAMMELA',1951,1,0,0,6,2573,2185,nil,'R',0,nil,0,0]
values.push [1324963, nil, 'Nurmilaukas','Ville','Helsinki',1976,1,0,0,6,4884,1958,nil,'R',0,nil,0,0]
values.push [14069536, nil, 'Nurminen','Eelis','HYVINKÄÄ',1948,0,1,1,9,4776,1836,nil,'R',0,nil,0,0]
values.push [13132880, nil, 'Nurminen','Hannu','MÄNTSÄLÄ',1900,0,0,1,4,2558,2618,nil,'R',0,nil,0,0]
values.push [1304718, nil, 'Nurminen','Hannu','Laihia',1948,1,0,1,10,4703,1763,nil,'R',0,nil,0,0]
values.push [1304721, nil, 'Nurminen','Jaakko','HELSINKI',1980,8,6,1,82,43843,219,'P','R',0,'A004',0,0]
values.push [1304734, nil, 'Nurminen','Jouni','LOHJA',1964,17,1,0,107,90539,134,nil,'R',618,nil,297,0]
values.push [1329078, nil, 'Nurminen','Juha','Kajaani',1959,3,1,1,27,20037,967,nil,'R',0,nil,0,0]
values.push [14069545, nil, 'Nurminen','Kari','LAUKAA',1940,0,1,1,9,3943,1853,nil,'R',0,nil,0,0]
values.push [14069554, nil, 'Nurminen','Kimmo','SYSMÄ',1951,1,0,0,6,3972,2033,nil,nil,0,nil,0,0]
values.push [1336472, nil, 'Nurminen','Pekka','Kouvola',1966,2,0,0,12,4717,1572,'P',nil,0,nil,0,0]
values.push [1327067, nil, 'Nurminen','Pirjo','SALO',1950,7,2,1,56,10951,423,'P',nil,0,'A043',0,0]
values.push [14069563, nil, 'Nuutinen','Juha','JOROINEN',1950,10,1,2,73,52160,265,nil,'R',118,nil,92,0]
values.push [14069572, nil, 'Nuutinen','Kari','JYVÄSKYLÄ',1948,3,1,3,35,22855,689,nil,'R',270,nil,0,0]
values.push [1304747, nil, 'Nuutinen','Vilho','Joensuu',1942,4,3,1,43,25411,542,nil,'R',723,nil,0,0]
values.push [14069581, nil, 'Nybacka','Taisto','LAMMI',1955,1,0,0,6,2307,2211,nil,nil,0,nil,0,0]
values.push [1329227, nil, 'Nyberg','Crister','HELSINKI',1971,1,1,1,15,5551,1416,'P',nil,0,nil,0,0]
values.push [14069590, nil, 'Nyberg','Oliver','POHJA',1943,2,0,0,12,5582,1560,nil,'R',0,nil,0,0]
values.push [1304750, nil, 'Nyberg','Pertti','LAHTI',1943,1,1,1,15,6041,1413,'P',nil,0,nil,0,0]
values.push [1329308, nil, 'Nyberg','Petri','Helsinki',1966,0,0,1,4,936.5,2818,'P',nil,0,nil,0,0]
values.push [1304763, nil, 'Nygård','Mirja','Kokkola',1961,0,0,1,4,1028,2805,'P',nil,0,nil,0,0]
values.push [1304776, nil, 'Nyhä','Eero','Koski Tl',1933,0,0,1,4,1963,2675,nil,'R',0,nil,0,0]
values.push [1304789, nil, 'Nykänen','Antti','Veteli',1950,1,1,3,23,18302,1045,nil,'R',0,nil,0,0]
values.push [14069602, nil, 'Nykänen','Erkki','HELSINKI',1951,0,0,1,4,2329,2637,nil,'R',0,nil,0,0]
values.push [1327313, nil, 'Nykänen','Janne','ESPOO',1970,1,1,0,11,3383,1683,'P',nil,0,nil,0,0]
values.push [1328655, nil, 'Nykänen','Jari','Kuopio',1975,0,0,1,4,1617.5,2713,'P',nil,0,nil,0,0]
values.push [14069611, nil, 'Nykänen','Jukka','VETELI',1973,2,0,1,16,10976,1329,nil,'R',0,nil,0,0]
values.push [14069620, nil, 'Nykänen','Matti','VETELI',1970,4,0,2,32,23123,782,nil,'R',502,nil,0,0]
values.push [1325409, nil, 'Nykänen','Petri','Kuusankoski',1959,0,0,2,8,4144,1898,nil,'R',0,nil,0,0]
values.push [1334681, nil, 'Nylund','Jussi','Pekola',1900,0,2,2,18,8989,1231,'P','R',0,nil,0,0]
values.push [1304792, nil, 'Nyman','Frank','Kokkola',1960,6,2,4,62,50578,353,nil,'R',525,nil,294,0]
values.push [1339246, nil, 'Nyman','Niklas','Ekenäs',1977,0,0,1,4,1474.5,2728,'P',nil,0,nil,0,0]
values.push [13132732, nil, 'Nyman','Raija','HYVINKÄÄ',1957,0,0,1,4,869.5,2830,'P',nil,0,nil,0,0]
values.push [14069639, nil, 'Nyman','Riitta','LOHJA',1966,1,0,0,6,3726,2065,nil,'R',0,nil,0,0]
values.push [14069648, nil, 'Nyman','Sirkka-Liisa','KARKKILA',1949,1,0,0,6,3040,2140,nil,'R',0,nil,0,0]
values.push [14069657, nil, 'Nyrönen','Veijo','JOKIOINEN',1954,2,0,1,16,11310,1325,nil,'R',0,nil,0,0]
values.push [1304802, nil, 'Näpänkangas','Mika','Jyväskylä',1971,3,1,0,23,16028,1050,nil,'R',0,nil,0,0]
values.push [1337620, nil, 'Närhi','Jorma','Kouvola',1959,2,0,0,17,9265,1296,'P',nil,0,nil,0,0]
values.push [14069666, nil, 'Ohtamaa','Jaakko','KUOPIO',1952,0,1,1,9,2639,1873,nil,'R',0,nil,0,0]
values.push [1304815, nil, 'Oikarinen','Jouni','Klaukkala',1961,6,0,1,40,24849.5,589,'P','R',0,nil,0,0]
values.push [14069675, nil, 'Oikarinen','Mikko','JUVA',1952,0,0,1,4,2795,2595,nil,'R',0,nil,0,0]
values.push [14069684, nil, 'Oinonen','Allan','IMATRA',1939,1,1,1,15,7686,1399,nil,nil,0,nil,0,0]
values.push [1326343, nil, 'Oinonen','Markku','Savonlinna',1956,3,0,3,30,18156,881,nil,'R',766,nil,0,0]
values.push [1304828, nil, 'Oinonen','Pirjo','Valtimo',1959,0,2,1,14,6782,1446,nil,'R',0,nil,0,0]
values.push [14069693, nil, 'Oinonen','Timo','KUOPIO',1949,12,0,0,72,64557,268,nil,'R',111,nil,77,0]
values.push [14069705, nil, 'Ojala','Aarne','RENKO',1944,5,4,2,58,33587,406,nil,'R',61,nil,0,0]
values.push [1334199, nil, 'Ojala','Antti','turenki',1949,2,3,0,31,11226.5,846,'P',nil,0,nil,0,0]
values.push [1338069, nil, 'Ojala','Ari-Pekka','hämeenlinna',1968,1,1,0,16,8909.5,1346,'P',nil,0,nil,0,0]
values.push [1304831, nil, 'Ojala','Eero','Kerava',1940,10,0,0,60,42496,381,nil,'R',422,nil,253,0]
values.push [1325218, nil, 'Ojala','Erkki','Pertunmaa',1953,3,6,1,52,26636.5,440,'P','R',776,nil,0,0]
values.push [14069714, nil, 'Ojala','Juha','HÄMEENLINNA',1965,6,0,0,36,30797,653,nil,'R',593,nil,0,0]
values.push [14069723, nil, 'Ojala','Kalevi','HATTULA',1942,2,0,1,16,11891,1323,nil,'R',0,nil,0,0]
values.push [14069732, nil, 'Ojala','Kari','VALKEAKOSKI',1957,0,2,0,10,5415,1745,nil,'R',0,nil,0,0]
values.push [1340138, nil, 'Ojala','Oliver','Espoo',1991,0,0,0,6,4364,1995,nil,'S',0,nil,0,0]
values.push [1329201, nil, 'Ojala','Osmo','Helsinki',1956,5,1,0,41,18778.5,575,'P',nil,0,'A084',0,0]
values.push [14069741, nil, 'Ojala','Ossi','KERAVA',1938,1,1,0,11,7844,1617,nil,nil,0,nil,0,0]
values.push [1304844, nil, 'Ojala','Timo','Vihti',1963,0,0,2,8,5132,1892,nil,'R',0,nil,0,0]
values.push [1304857, nil, 'Ojanen','Esa','HYVINKÄÄ',1948,26,4,1,186,108226,20,'P','R',179,'A092T',80,27]
values.push [1328875, nil, 'Ojanen','Jenni','Turku',1979,0,1,0,5,782,2545,'P',nil,0,nil,0,0]
values.push [14069750, nil, 'Ojanen','Markus','LEPPÄVIRTA',1928,1,0,0,6,2457,2196,nil,nil,0,nil,0,0]
values.push [1304860, nil, 'Ojanen','Matti','Tervakoski',1947,2,2,3,34,17372.5,733,'P','R',0,nil,0,0]
values.push [14069769, nil, 'Okkonen','Hannu','NURMES',1950,1,0,0,6,4000,2031,nil,'R',0,nil,0,0]
values.push [1335761, nil, 'Oksa','Risto','Lohja',1949,0,1,0,5,1234.5,2523,'P',nil,0,nil,0,0]
values.push [1316599, nil, 'Oksa','Tommi','Kuusjoki',1968,1,0,1,10,3039.5,1790,'P',nil,0,nil,0,0]
values.push [1304873, nil, 'Oksa','Tuula','HML',1942,10,3,4,91,30389.5,183,'P','R',604,'A022T',0,0]
values.push [14069778, nil, 'Oksanen','Arvi','LAHTI',1943,2,1,1,21,12177,1117,nil,'R',0,nil,0,0]
values.push [14069787, nil, 'Oksanen','Sirkka-Liisa','LAHTI',1942,4,1,0,29,11970,939,nil,'R',0,nil,0,0]
values.push [1333530, nil, 'Oksman','Kalle','Varkaus',1969,0,1,1,9,2199,1877,'P',nil,0,nil,0,0]
values.push [1304886, nil, 'Ollikainen','Marko','Lahti',1975,8,0,0,48,20283,476,'P',nil,0,'A002',0,0]
values.push [14069796, nil, 'Ollikainen','Oiva','SIILINJÄRVI',1952,1,0,0,6,3480,2092,nil,'R',0,nil,0,0]
values.push [1304899, nil, 'Ollikainen','Veijo','Lahti',1953,0,0,2,8,3315.5,1913,'P',nil,0,nil,0,0]
values.push [1331752, nil, 'Ollikka','Kimmo','Helsinki',1975,0,1,0,5,4134,2320,nil,'R',0,nil,0,0]
values.push [14069808, nil, 'Ollila','Tero','KOUVOLA',1936,0,0,1,4,3192,2566,nil,nil,0,nil,0,0]
values.push [14069817, nil, 'Olsen','Jens','KIRKKONUMMI',1946,3,0,2,26,16833,984,nil,'R',0,nil,0,0]
values.push [14069826, nil, 'Orpana','Eero','VANTAA',1948,0,0,1,4,2233,2646,nil,'R',0,nil,0,0]
values.push [14069835, nil, 'Orrensalo','Reijo','TURKU',1945,1,1,0,11,6668,1635,nil,'R',0,nil,0,0]
values.push [14069844, nil, 'Ovaska','Matti','ROVANIEMI',1935,1,0,0,6,1131,2308,nil,nil,0,nil,0,0]
values.push [14069853, nil, 'Ovaska','Tuomo','KANGASALA',1944,1,2,2,24,12604,1029,nil,'R',0,nil,0,0]
values.push [14069862, nil, 'Ovaskainen','Kari','VANTAA',1946,1,0,0,6,2285,2212,nil,'R',0,nil,0,0]
values.push [14069871, nil, 'Paajanen','Rauno','ESPOO',1949,1,0,0,6,1636,2278,nil,'R',0,nil,0,0]
values.push [14069880, nil, 'Paananen','Eino','RUOVESI',1928,0,0,1,4,2489,2624,nil,'R',0,nil,0,0]
values.push [14069899, nil, 'Paananen','Hannu','HELSINKI',1950,3,0,2,26,8189,987,nil,'R',0,nil,0,0]
values.push [14069901, nil, 'Paananen','Seppo','TURKU',1953,1,0,0,6,2688,2171,nil,'R',0,nil,0,0]
values.push [1304909, nil, 'Paananen','Teemu','Tervakoski',1971,6,3,0,51,44104,443,nil,'R',649,nil,0,0]
values.push [14069910, nil, 'Paavola','Tapio','LEHTIMÄKI',1943,1,0,0,6,4205,2008,nil,'R',0,nil,0,0]
values.push [1304912, nil, 'Packalén','Paul','LOHJA',1946,18,7,3,155,45924.5,47,'P','R',303,'A005T',146,0]
values.push [14069938, nil, 'Pajari','Sakari','RUOKOLAHTI',1941,5,0,0,30,19155,874,nil,'R',228,nil,0,0]
values.push [1304925, nil, 'Pakarinen','Aimo','Heinola',1950,5,5,3,67,42411,309,nil,'R',412,nil,192,0]
values.push [14069947, nil, 'Pakarinen','Pentti','HELSINKI',1924,4,3,0,39,7070,622,nil,'R',99,nil,0,0]
values.push [14069956, nil, 'Pakarinen','Raimo','HELSINKI',1960,2,4,0,32,7247,816,nil,'R',169,nil,0,0]
values.push [1337332, nil, 'Pakarinen','Taija','Myllykoski',1970,1,0,1,10,1896,1807,'P',nil,0,nil,0,0]
values.push [1336676, nil, 'Pakarinen','Tomi','Myllykoski',1969,1,2,0,16,8568,1349,nil,'R',0,nil,0,0]
values.push [14069965, nil, 'Pakkanen','Leo','HELSINKI',1932,0,2,2,18,7103,1249,nil,'R',0,nil,0,0]
values.push [1304938, nil, 'Pakkanen','Olli','Mäntsälä',1973,3,0,1,22,11408.5,1083,'P','R',0,nil,0,0]
values.push [1336498, nil, 'Pakkanen','Pekka','Lahti',1954,2,0,0,18,9083,1230,'P',nil,0,nil,0,0]
values.push [1325373, nil, 'Pakkasmaa','Juhana','Saukkola',1972,6,3,2,65,51122,319,nil,'R',773,nil,0,0]
values.push [14069974, nil, 'Palen','Tapani','TAMMELA',1952,0,1,0,5,3095,2370,nil,'R',0,nil,0,0]
values.push [14069983, nil, 'Palimo','Erkki','VANTAA',1938,1,0,0,6,3269,2118,nil,'R',0,nil,0,0]
values.push [14069992, nil, 'Pallari','Erkki','ROVANIEMI',1955,0,1,0,5,2649,2402,nil,'R',0,nil,0,0]
values.push [14070000, nil, 'Pallaspuro','Pirjo','KOKKOLA',1956,2,0,0,12,4382,1579,nil,'R',0,nil,0,0]
values.push [14070019, nil, 'Pallaspuro','Simo','KOKKOLA',1954,11,1,0,71,59434,276,nil,'R',174,nil,102,0]
values.push [1316777, nil, 'Palmen','Henrik','Espoo',1968,0,0,1,4,1379,2743,'P',nil,0,nil,0,0]
values.push [14070028, nil, 'Palmgren','Timo','KOUVOLA',1954,0,1,0,5,3145,2367,nil,'R',0,nil,0,0]
values.push [1328833, nil, 'Palmu','Liisa','Espoo',1972,0,0,1,4,738.5,2841,'P',nil,0,nil,0,0]
values.push [14070037, nil, 'Palo','Ari','HOLLOLA',1966,0,0,1,4,3387,2559,nil,'R',0,nil,0,0]
values.push [14070046, nil, 'Palo','Mikko','HELSINKI',1959,1,0,1,10,5262,1750,nil,'R',0,nil,0,0]
values.push [1304941, nil, 'Palo','Pertti','Lahti',1936,11,8,2,120,39289,94,'P','R',560,nil,262,0]
values.push [1338373, nil, 'Palohonka','Kirsi','SALO',1978,1,0,0,6,1767.5,2268,'P',nil,0,nil,0,0]
values.push [14070055, nil, 'Palokangas','Paavo','KAARINA',1936,1,1,0,11,4517,1671,'P','R',0,nil,0,0]
values.push [14070064, nil, 'Palolampi','Lauri','ESPOO',1969,0,0,1,4,2244,2641,nil,'R',0,nil,0,0]
values.push [1327876, nil, 'Paltta','Jan','Järvenpää',1963,3,1,1,27,17923,971,nil,'R',0,nil,0,0]
values.push [13132741, nil, 'Palviainen','Jari','HELSINKI',1967,0,1,0,5,1161,2526,'P',nil,0,nil,0,0]
values.push [14070073, nil, 'Panhelainen','Keijo','LAHTI',1933,0,0,1,4,1184,2778,nil,'R',0,nil,0,0]
values.push [14070082, nil, 'Papinsaari','Juha','HÄMEENLINNA',1965,0,0,1,4,3474,2554,nil,'R',0,nil,0,0]
values.push [1332117, nil, 'Pappinen','Hannu','syvänniemi',1953,5,3,1,49,36061,466,nil,'R',393,nil,0,0]
values.push [1325315, nil, 'Parantainen','Rauni','ÄÄNEKOSKI',1970,1,0,0,6,4094,2021,nil,'R',0,nil,0,0]
values.push [14070091, nil, 'Parkkonen','Reima','TUUSULA',1950,3,0,0,18,14080,1202,nil,'R',0,nil,0,0]
values.push [14070103, nil, 'Paronen','Erkki','HÄMEENLINNA',1937,1,1,0,11,8445,1610,nil,'R',0,nil,0,0]
values.push [1337361, nil, 'Partanen','Jouni','Kouvola',1961,2,0,1,22,10786.5,1085,'P','R',0,nil,0,0]
values.push [1337358, nil, 'Partanen','Mari','Kouvola',1968,1,1,0,11,2289.5,1694,'P',nil,0,nil,0,0]
values.push [14070112, nil, 'Partanen','Matti','NAANTALI',1949,2,1,3,29,10039,941,nil,'R',0,nil,0,0]
values.push [14070121, nil, 'Partanen','Mikko','HELSINKI',1964,1,0,1,10,6948,1715,nil,'R',0,nil,0,0]
values.push [14070130, nil, 'Partanen','Pauli','JOUTSENO',1943,1,0,0,6,3470,2095,nil,nil,0,nil,0,0]
values.push [1338124, nil, 'Parviainen','Juha','LIEVESTUORE',1945,0,2,1,14,9250,1434,nil,'R',0,nil,0,0]
values.push [1336812, nil, 'Parviainen','Pentti','Joensuu',1945,0,1,0,5,1074,2532,'P',nil,0,nil,0,0]
values.push [1333404, nil, 'Pasanen','Antti','Espoo',1980,1,1,1,21,17067,1101,nil,'R',0,nil,0,0]
values.push [1334898, nil, 'Pasanen','Eero','Kuusankoski',1951,5,6,0,65,38355.5,325,'P','R',204,nil,0,0]
values.push [14070149, nil, 'Pasanen','Jari','LAPPEENRANT',1955,0,1,0,5,2790,2393,nil,'R',0,nil,0,0]
values.push [1304970, nil, 'Pasanen','Jouni','Pihtipudas',1982,0,1,0,5,2168.5,2439,'P',nil,0,nil,0,0]
values.push [1316803, nil, 'Pasanen','Kaija','Raisio',1963,0,0,1,4,832.5,2832,'P',nil,0,nil,0,0]
values.push [1327436, nil, 'Pasanen','Teemu','Espoo',1975,0,0,1,4,1804,2687,'P',nil,0,nil,0,0]
values.push [1331477, nil, 'Pasonen','Mika','VEIKKOLA',1965,1,1,1,15,6332.5,1411,'P',nil,0,nil,0,0]
values.push [14070158, nil, 'Patama','Väinö','JOUTSENO',1948,2,0,0,12,10904,1485,nil,'R',0,nil,0,0]
values.push [1301944, nil, 'Patronen-Jurvanen','Laila','Hämeenlinna',1947,11,6,10,141,36817,60,'P','R',315,'A021T',152,0]
values.push [1304983, nil, 'Paukkunen','Sirkku','Lappeenranta',1963,2,0,2,24,8390,1038,'P','R',0,nil,0,0]
values.push [14070176, nil, 'Paunonen','Seppo','SULKAVA',1952,5,0,0,30,19635,870,nil,'R',287,nil,0,0]
values.push [14070185, nil, 'Pehkonen','Heikki','HELSINKI',1947,0,1,1,9,4323,1848,nil,'R',0,nil,0,0]
values.push [1304996, nil, 'Pehkonen','Pauli','Kuopio',1953,12,0,0,72,61556,269,nil,'R',417,nil,200,0]
values.push [1331558, nil, 'Peipinen','Jouko','Forssa',1955,1,0,1,15,10830,1381,nil,'R',0,nil,0,0]
values.push [1305005, nil, 'Peippo','Kari','kauttua',1950,18,1,0,113,77439.5,111,'P','R',284,nil,118,0]
values.push [14070194, nil, 'Peippola','Veikko','LAMMI',1916,5,2,3,52,10910,442,nil,'R',40,nil,0,0]
values.push [1329803, nil, 'Pekkala','Eero','Helsinki',1952,5,0,1,34,22130,722,nil,'R',512,nil,0,0]
values.push [1337426, nil, 'Pekkala','Eeva','Akaa',1959,0,1,0,5,1017,2535,'P',nil,0,nil,0,0]
values.push [1337413, nil, 'Pekkala','Tapio','Akaa',1958,0,1,0,5,1226.5,2524,'P',nil,0,nil,0,0]
values.push [14070206, nil, 'Pekkala','Timo','PIEKSÄMÄKI',1958,3,1,2,31,24407,821,nil,'R',409,nil,0,0]
values.push [14070215, nil, 'Pekkarinen','Eila','KERAVA',1937,5,0,0,30,14338,900,nil,'R',137,nil,0,0]
values.push [1305021, nil, 'Pekkonen','Pekka','Espoo',1944,4,1,7,57,22020,413,nil,'R',330,nil,0,0]
values.push [14070224, nil, 'Pelanne','Ilpo','VANTAA',1953,2,0,0,12,5811,1555,nil,'R',0,nil,0,0]
values.push [14070233, nil, 'Pelkonen','Minna','LAPPEENRANT',1966,1,0,0,6,3461,2096,nil,'R',0,nil,0,0]
values.push [14070242, nil, 'Pelkonen','Veikko','HYVINKÄÄ',1954,5,0,1,34,25323,714,nil,'R',279,nil,0,0]
values.push [1328053, nil, 'Pelli','Jarmo','Liperi',1962,2,3,2,35,9306.5,703,'P',nil,0,'A057',0,0]
values.push [1324950, nil, 'Pelto','Tarmo','Vantaa',1957,0,0,3,12,5586,1559,nil,'R',0,nil,0,0]
values.push [1335460, nil, 'Peltola','Hannu','Nummela',1955,0,0,1,4,1323.5,2752,'P',nil,0,nil,0,0]
values.push [14070251, nil, 'Peltola','Karri','PIEKSÄMÄKI',1957,0,1,1,9,4434,1847,nil,'R',0,nil,0,0]
values.push [1329036, nil, 'Peltola','Markus','Espoo',1955,3,1,0,23,7380.5,1062,'P',nil,0,nil,0,0]
values.push [1325438, nil, 'Peltola','Pasi','JÄRVENPÄÄ',1963,0,0,1,4,1858,2681,nil,'R',0,nil,0,0]
values.push [1328419, nil, 'Peltomaa','Pirjo','Heinola kk',1964,8,1,0,59,19099.5,405,'P',nil,0,'A052',0,0]
values.push [14070260, nil, 'Peltometsä','Teijo','NURMIJÄRVI',1952,0,1,1,9,8178,1809,nil,'R',0,nil,0,0]
values.push [1305034, nil, 'Peltonen','Esko','Imatra',1933,6,1,6,65,25248.5,330,'P','R',720,nil,0,0]
values.push [1329489, nil, 'Peltonen','Jukka','helsinki',1962,0,0,3,12,6560,1541,nil,'R',0,nil,0,0]
values.push [1333873, nil, 'Peltoniemi','Antti','Seinäjoki',1956,1,0,0,6,1230.5,2304,'P',nil,0,nil,0,0]
values.push [1330986, nil, 'Peltoniemi','Johanna','Teuva',1965,2,0,0,12,1744,1597,'P',nil,0,nil,0,0]
values.push [14070279, nil, 'Peltoniemi','Markku','HELSINKI',1946,0,1,1,9,6242,1818,nil,'R',0,nil,0,0]
values.push [1305047, nil, 'Peltoniemi','Mikko','HORO',1962,4,3,3,51,29957.5,448,'P','R',679,nil,0,0]
values.push [1305050, nil, 'Peltoniemi','Sauli','Kokkola',1960,11,0,0,66,59929,312,nil,'R',369,nil,165,0]
values.push [1305063, nil, 'Peltoniemi','Sisko','Kokkola',1959,0,2,5,30,6598,915,nil,'R',732,nil,0,0]
values.push [1333556, nil, 'Pennala','Pirkko','Joensuu',1969,11,0,1,70,45516,284,nil,'R',687,nil,339,0]
values.push [14070288, nil, 'Pentikäinen','Veijo','HAMINA',1957,0,1,0,5,3534,2342,nil,'R',0,nil,0,0]
values.push [1331273, nil, 'Penttilä','Jukka','Tuusula',1956,1,0,0,6,4012,2029,nil,'R',0,nil,0,0]
values.push [14070297, nil, 'Penttilä','Liisa','SOMERO',1952,1,1,0,11,3181,1684,nil,'R',0,nil,0,0]
values.push [14070309, nil, 'Penttilä','Pekka','SOMERO',1944,4,2,0,34,19775,729,nil,'R',527,nil,0,0]
values.push [1305076, nil, 'Penttilä','Tapani','Helsinki',1944,11,2,6,100,61811,157,nil,'R',289,nil,119,0]
values.push [14070318, nil, 'Penttinen','Arja','PIEKSÄMÄKI',1953,1,1,0,11,2752,1689,nil,'R',0,nil,0,0]
values.push [1305089, nil, 'Penttinen','Jaakko','Mäntyharju',1960,8,2,10,102,71917,146,nil,'R',533,nil,280,0]
values.push [1305092, nil, 'Perkamo','Osmo','Helsinki',1943,25,5,5,201,130512,14,nil,'R',24,nil,20,13]
values.push [1305102, nil, 'Perkiö','Ari','Riihimäki',1960,0,0,1,4,2266,2640,nil,'R',0,nil,0,0]
values.push [14070327, nil, 'Perkkola','Matti','LAITILA',1945,1,0,0,6,1300,2300,nil,'R',0,nil,0,0]
values.push [14070336, nil, 'Pero','Touko','TAMPERE',1930,13,6,1,112,44790,116,nil,'R',33,nil,28,0]
values.push [1316816, nil, 'Perttilä','Marjatta','Pukkila',1939,0,0,2,8,1007,1934,'P','R',0,nil,0,0]
values.push [1335305, nil, 'Perttola','Sami','Kotka',1966,3,0,1,22,6890.5,1096,'P',nil,0,nil,0,0]
values.push [14070345, nil, 'Perttunen','Raimo','TOIJALA',1960,1,0,0,6,932,2312,nil,'R',0,nil,0,0]
values.push [1329751, nil, 'Perälä','Anja','Lohja',1953,0,1,0,5,1101.5,2531,'P',nil,0,nil,0,0]
values.push [1325166, nil, 'Perälä','Ismo','Kokkola',1964,1,0,1,10,4418,1771,nil,'R',0,nil,0,0]
values.push [1329890, nil, 'Perälä','Jorma','Lohja',1954,1,0,0,6,1670,2275,'P',nil,0,nil,0,0]
values.push [1325179, nil, 'Perälä','Kaisa-Leena','Kokkola',1963,0,1,1,9,2865,1868,nil,'R',0,nil,0,0]
values.push [14070354, nil, 'Pesonen','Antero','HÄMEENLINNA',1955,2,0,2,20,12132,1149,nil,'R',0,nil,0,0]
values.push [1329748, nil, 'Pesonen','Eija','Järvenpää',1953,0,0,1,4,585,2852,'P',nil,0,nil,0,0]
values.push [1305115, nil, 'Pesonen','Erkki','Ylämylly',1952,4,4,7,72,38487,273,'P','R',705,nil,336,0]
values.push [14070363, nil, 'Pesonen','Hannu','KUUSANKOSKI',1951,3,1,0,23,16235,1049,nil,'R',0,nil,0,0]
values.push [1305128, nil, 'Pesonen','Kaija','Ylämylly',1955,0,2,11,54,15258,432,'P','R',0,'A036',0,0]
values.push [1305131, nil, 'Pesonen','Olavi','Helsinki',1935,7,2,5,72,40574,272,'P','R',339,nil,184,0]
values.push [1307702, nil, 'Pesonen','Pauli','Turku',1954,0,1,0,5,4148,2319,nil,'R',0,nil,0,0]
values.push [14070372, nil, 'Pesu','Markku','TOIVAKKA',1949,5,0,0,30,22739,862,nil,'R',222,nil,0,0]
values.push [14070381, nil, 'Peterson','Jukka','KOUVOLA',1960,0,0,1,4,2543,2622,nil,'R',0,nil,0,0]
values.push [14070390, nil, 'Petrasuo','Lenny','RUOTSINPYHT',1956,3,1,0,23,17627,1046,nil,'R',0,nil,0,0]
values.push [1327135, nil, 'Pettersson','Staffan','Kirkkonummi',1954,1,0,0,6,2676,2173,nil,'R',0,nil,0,0]
values.push [1305144, nil, 'Pettilä','Kirsi','Helsinki',1966,0,0,2,8,1345.5,1933,'P','R',0,nil,0,0]
values.push [1329612, nil, 'Pettinen','Ossi','Hyvinkää',1944,1,1,1,15,5277,1419,'P','R',0,nil,0,0]
values.push [1334393, nil, 'Pfister-Peltola','Terese','NUMMELA',1957,0,1,0,5,635.5,2547,'P',nil,0,nil,0,0]
values.push [1337934, nil, 'Piesanen','Antti','Helsinki',1990,1,0,0,12,5655,1557,'P',nil,0,nil,0,0]
values.push [1327203, nil, 'Piesanen','Tapio','Jyväskylä',1961,0,1,1,9,8148,1810,nil,'R',0,nil,0,0]
values.push [1335279, nil, 'Pietikäinen','Tero','ESPOO',1970,0,4,0,20,5138,1161,'P',nil,0,nil,0,0]
values.push [14070402, nil, 'Pietilä','Esko','VAMMALA',1928,0,0,1,4,1333,2749,nil,nil,0,nil,0,0]
values.push [14070411, nil, 'Pietilä','Matti','PORVOO',1939,1,0,0,6,1484,2290,nil,'R',0,nil,0,0]
values.push [14070420, nil, 'Pietilä','Rainer','VANTAA',1962,1,0,1,10,7716,1706,nil,'R',0,nil,0,0]
values.push [1334128, nil, 'Pietilä','Siiri','Tampere',1991,2,1,2,30,5739,917,'P',nil,0,nil,0,0]
values.push [1305157, nil, 'Pietilä','Tarmo','Tammela',1959,11,5,5,117,64834,102,nil,'R',583,nil,283,0]
values.push [14070439, nil, 'Pietilä','Terttu','PORVOO',1943,0,1,0,5,986,2537,nil,'R',0,nil,0,0]
values.push [1316450, nil, 'Pietiläinen','Miro','Kerava',1985,1,1,0,11,4434,1674,'P',nil,0,nil,0,0]
values.push [14070448, nil, 'Pihkoluoma','Keijo','IKAALINEN',1950,0,1,0,5,2969,2379,nil,nil,0,nil,0,0]
values.push [1305160, nil, 'Pihl','Trygve','Skinnarby',1934,3,0,0,18,8542,1236,nil,'R',0,nil,0,0]
values.push [14070457, nil, 'Pihlaja','Juhani','KRISTIINANK',1961,0,1,0,5,2511,2411,nil,'R',0,nil,0,0]
values.push [1340057, nil, 'Pihlajamäki','Jari','Espoo',1950,0,0,0,5,804,2543,nil,'S',0,nil,0,0]
values.push [14070466, nil, 'Piippo','Markku','PORVOO',1948,3,0,0,18,13908,1205,nil,'R',0,nil,0,0]
values.push [1305173, nil, 'Piipponen','Eero','Tampere',1946,6,2,6,70,38510,287,nil,'R',631,nil,306,0]
values.push [14070475, nil, 'Piipponen','Mauno','KUHMO',1930,4,3,0,39,11833,620,nil,'R',202,nil,0,0]
values.push [14070484, nil, 'Piirainen','Jukka','TUUSULA',1953,0,2,1,14,9760,1433,nil,'R',0,nil,0,0]
values.push [1335635, nil, 'Piiroinen','Heikki','ROUKALAHTI',1951,6,0,6,60,38659,383,nil,'R',425,nil,357,0]
values.push [14070493, nil, 'Piispanen','Jukka','LOHJA',1942,3,0,0,18,15221,1191,nil,nil,0,nil,0,0]
values.push [14070505, nil, 'Piispanen','Raimo','ESPOO',1958,0,0,1,4,2802,2593,nil,nil,0,nil,0,0]
values.push [14070514, nil, 'Pikkarainen','Armas','HELSINKI',1949,4,0,2,32,16679,796,nil,'R',445,nil,0,0]
values.push [14070523, nil, 'Pikkarainen','Juhani','SEINÄJOKI',1945,3,0,0,18,15742,1190,nil,'R',0,nil,0,0]
values.push [1338014, nil, 'Pikkarainen','Toni','Espoo',1977,1,1,0,17,15820,1267,nil,'R',0,nil,0,0]
values.push [14070532, nil, 'Pimenoff','Lauri','ESPOO',1969,0,1,0,5,1487,2497,nil,'R',0,nil,0,0]
values.push [1305199, nil, 'Pimenoff','Sandy','Kauniainen',1937,4,1,1,33,9983,778,'P','R',0,nil,0,0]
values.push [14070541, nil, 'Pirhonen','Raimo','ESPOO',1953,1,2,5,36,21578,665,nil,'R',359,nil,0,0]
values.push [1305209, nil, 'Pirinen','Jussi','Helsinki',1978,10,6,2,104,70410,141,nil,'R',665,nil,316,0]
values.push [1305212, nil, 'Pirinen','Petteri','HELSINKI',1956,13,4,3,116,75596,105,nil,'R',579,nil,276,0]
values.push [14070550, nil, 'Pirkkalainen','Eino','KONNEVESI',1938,5,0,0,30,19056,875,nil,'R',288,nil,0,0]
values.push [14070569, nil, 'Pitkä','Keijo','ESPOO',1936,10,2,1,74,25639,264,nil,'R',383,nil,174,0]
values.push [14070578, nil, 'Pitkänen','Erkki','HELSINKI',1946,3,0,1,22,7383,1094,nil,'R',0,nil,0,0]
values.push [14070587, nil, 'Pitkänen','Pertti','SIILINJÄRVI',1953,1,3,0,21,14903,1104,nil,'R',0,nil,0,0]
values.push [1330520, nil, 'Piuhola','Heikki','HELSINKI 17',1961,1,0,0,6,3799,2055,nil,'R',0,nil,0,0]
values.push [14070596, nil, 'Platan','Ismo','HELSINKI',1953,1,0,0,6,3856,2046,nil,'R',0,nil,0,0]
values.push [14070608, nil, 'Pohja','Tatu','VAMMALA',1912,1,0,0,6,1424,2295,nil,nil,0,nil,0,0]
values.push [14070617, nil, 'Pohjakallio','Lauri','FORSSA',1944,1,0,0,6,2948,2149,nil,'R',0,nil,0,0]
values.push [14070626, nil, 'Pohjola','Ari','HELSINKI',1900,1,0,0,6,1894,2254,nil,'R',0,nil,0,0]
values.push [1305225, nil, 'Pohjola','Ilpo','Joensuu',1962,6,2,1,50,30631,459,nil,'R',521,nil,0,0]
values.push [1333828, nil, 'Pohjola','Mikko','Kuopio',1975,0,1,1,9,5032,1832,nil,'R',0,nil,0,0]
values.push [1329379, nil, 'Pohjola','Olli-Pekka','Tampere',1972,6,0,0,42,19585.5,561,'P',nil,0,'A080',0,0]
values.push [1305238, nil, 'Pohjola','Päivikki','Joensuu',1967,5,3,4,61,28903,372,nil,'R',696,nil,327,0]
values.push [14070635, nil, 'Pohjonen','Harri','ESPOO',1964,1,0,1,10,4796,1761,nil,'R',0,nil,0,0]
values.push [14070644, nil, 'Pohjonen','Heikki','HEINOLA',1962,3,0,0,18,10569,1224,nil,'R',0,nil,0,0]
values.push [14070653, nil, 'Pohjonen','Juha','KUHMOINEN',1957,6,0,0,36,24730,659,nil,'R',181,nil,0,0]
values.push [14070662, nil, 'Pohjonen','Tapani','ESPOO',1963,2,1,0,17,10968,1279,nil,'R',0,nil,0,0]
values.push [14070671, nil, 'Poikolainen','Jarkko','PIEKSÄMÄKI',1946,0,1,1,9,5794,1822,nil,'R',0,nil,0,0]
values.push [1330517, nil, 'Poikonen','Jari','NUMMELA',1962,1,0,0,6,2731,2166,nil,'R',0,nil,0,0]
values.push [14070680, nil, 'Polas','Osmo','JYVÄSKYLÄ',1962,1,0,2,14,12027,1429,nil,'R',0,nil,0,0]
values.push [14070699, nil, 'Polso','Jukka','KOKKOLA',1961,5,0,0,30,24249,860,nil,'R',619,nil,0,0]
values.push [14070701, nil, 'Ponto','Yrjö','KUOPIO',1925,2,2,3,34,15727,735,nil,'R',545,nil,0,0]
values.push [14070710, nil, 'Porvali','Ilkka','ORIMATTILA',1937,0,1,0,5,2268,2425,nil,nil,0,nil,0,0]
values.push [1305241, nil, 'Poutanen','Jussi','Paattinen',1900,0,1,0,5,2471,2415,nil,'R',0,nil,0,0]
values.push [1305254, nil, 'Poutiainen','Kari','Kuopio',1952,3,1,1,27,12653.5,976,'P','R',0,nil,0,0]
values.push [1327106, nil, 'Priha','Matti','Helsinki',1959,0,0,1,4,3071,2573,nil,'R',0,nil,0,0]
values.push [1305267, nil, 'Prittinen','Juha','Hämeenlinna',1968,8,3,2,77,65004.5,245,'P','R',685,nil,355,0]
values.push [1328493, nil, 'Puhakainen','Petri','ESPOO',1965,0,1,0,5,3319,2358,nil,'R',0,nil,0,0]
values.push [14070729, nil, 'Puhakka','Seppo','KORIA',1940,1,1,1,15,9062,1389,nil,'R',0,nil,0,0]
values.push [1316696, nil, 'Pukki','Anu','Mikkeli',1967,3,1,1,27,8471,980,'P',nil,0,nil,0,0]
values.push [1305270, nil, 'Pukki','Ari','SALO',1968,5,6,3,78,39598.5,239,'P','R',676,nil,0,0]
values.push [14070738, nil, 'Pulakka','Jukka','TOIJALA',1954,1,2,1,20,16315,1141,nil,'R',0,nil,0,0]
values.push [1305283, nil, 'Pulkkinen','Hannu','Leppäkaarre',1949,7,2,2,60,34417,387,nil,'R',472,nil,228,0]
values.push [14070747, nil, 'Pulkkinen','Jarmo','NASTOLA',1965,1,1,0,11,9054,1602,nil,'R',0,nil,0,0]
values.push [14070756, nil, 'Pulkkinen','Jorma','HEINOLA',1950,0,1,0,5,3288,2360,nil,'R',0,nil,0,0]
values.push [1335512, nil, 'Pulkkinen','Markku','KERAVA',1954,0,1,2,13,3998.5,1476,'P',nil,0,nil,0,0]
values.push [1326835, nil, 'Pulkkinen','Pasi','espoo',1966,0,1,0,5,3433,2348,nil,'R',0,nil,0,0]
values.push [1307579, nil, 'Pulkkinen','Pertti','Jyväskylä',1979,1,1,0,11,7936,1615,nil,'R',0,nil,0,0]
values.push [14070765, nil, 'Pulliainen','Antti','ESPOO',1947,2,0,0,12,5958,1550,nil,nil,0,nil,0,0]
values.push [1338849, nil, 'Punavaara','Marko','HEINOLA',1969,1,0,0,6,2512,2191,'P',nil,0,nil,0,0]
values.push [14070774, nil, 'Puntila','Olli','ESPOO',1939,6,0,2,44,30563,523,nil,'R',74,nil,0,0]
values.push [1338535, nil, 'Puntila','Päivi','Espoo',1969,1,0,0,6,1348,2298,'P',nil,0,nil,0,0]
values.push [14070783, nil, 'Puolakka','Matti','TURKU',1948,1,0,0,6,3589,2080,nil,'R',0,nil,0,0]
values.push [1305296, nil, 'Puolakka','Pekka','Honkakoski',1949,1,0,1,10,6087,1733,nil,'R',0,nil,0,0]
values.push [1305306, nil, 'Puolakka','Päivi','Honkakoski',1954,1,0,1,10,4650,1764,nil,'R',0,nil,0,0]
values.push [14070792, nil, 'Pura','Juha','FORSSA',1957,1,0,0,6,4226,2007,nil,'R',0,nil,0,0]
values.push [14070804, nil, 'Puranen','Tero','KUUSANKOSKI',1959,0,1,0,5,3541,2340,nil,'R',0,nil,0,0]
values.push [1305319, nil, 'Puromies','Merja','Espoo',1958,3,1,1,27,16262.5,972,'P','R',0,nil,0,0]
values.push [1330614, nil, 'Pursiainen','Terhi','Vuorela',1981,1,0,0,6,3738,2061,nil,'R',0,nil,0,0]
values.push [14070813, nil, 'Pusa','Kimmo','VANTAA',1936,1,1,0,11,9174,1600,nil,'R',0,nil,0,0]
values.push [14070822, nil, 'Puska','Mauri','LAIHIA',1954,3,0,0,18,6426,1253,nil,'R',0,nil,0,0]
values.push [14070831, nil, 'Putkonen','Heino','PIEKSÄMÄKI',1942,0,0,1,4,2820,2591,nil,'R',0,nil,0,0]
values.push [14070840, nil, 'Puumala','Leo','LAUKAA',1934,5,0,0,30,12198,903,nil,'R',140,nil,0,0]
values.push [1330928, nil, 'Puumala','Sari','Jyväskylä',1966,2,0,1,16,11532,1324,nil,'R',0,nil,0,0]
values.push [14070859, nil, 'Puupponen','Erkki','HYVINKÄÄ',1933,5,0,0,30,19190,873,nil,'R',428,nil,0,0]
values.push [14070868, nil, 'Puurtinen','Reino','TAMPERE',1941,0,0,2,8,5257,1890,nil,'R',0,nil,0,0]
values.push [14070877, nil, 'Puusola','Marita','LAHTI',1935,16,3,0,111,52980,119,nil,'R',59,nil,40,0]
values.push [14070886, nil, 'Puustinen','Kalevi','VANTAA',1947,1,0,0,6,3933,2039,nil,nil,0,nil,0,0]
values.push [1328846, nil, 'Puustinen','Markku','Espoo',1962,0,1,0,5,2060,2445,nil,'R',0,nil,0,0]
values.push [14070895, nil, 'Puustinen','Raimo','IMATRA',1946,4,2,0,34,22286,720,nil,'R',471,nil,0,0]
values.push [14070907, nil, 'Puustinen','Raimo K','HELSINKI',1939,5,0,0,30,18339,880,nil,'R',459,nil,0,0]
values.push [1328820, nil, 'Pylkkänen','Aaro','Mikkeli',1933,6,2,8,78,34559,241,nil,'R',48,nil,51,0]
values.push [14070925, nil, 'Pylkkänen','Ari','LIEKSA',1958,0,0,1,4,979,2811,nil,'R',0,nil,0,0]
values.push [14070916, nil, 'Pylkkänen','Ari','RANTASALMI',1960,1,0,0,6,2210,2226,nil,'R',0,nil,0,0]
values.push [1327805, nil, 'Pylsy','Risto','Joutsa',1960,1,1,0,11,7819,1618,nil,'R',0,nil,0,0]
values.push [1329117, nil, 'Pynninen','Jari','RAUMA',1967,0,1,3,17,5825,1307,'P','R',0,nil,0,0]
values.push [1305322, nil, 'Pyrhönen','Jukka','Hyvinkää',1959,0,1,0,5,906,2542,nil,'R',0,nil,0,0]
values.push [14070934, nil, 'Pyykki','Antero','LAPPEENRANT',1936,2,3,1,31,10713,847,nil,'R',368,nil,0,0]
values.push [14070943, nil, 'Pyykönen','Pentti','VANTAA',1946,2,0,0,12,7923,1517,nil,'R',0,nil,0,0]
values.push [14070952, nil, 'Pyöriä','Harri','VALKEALA',1953,2,0,0,12,8552,1505,nil,'R',0,nil,0,0]
values.push [14070961, nil, 'Pyöriä','Helge','VALKEALA',1956,1,0,0,6,3236,2121,nil,'R',0,nil,0,0]
values.push [14070970, nil, 'Pyöriä','Mauri','VALKEALA',1963,1,0,0,6,4237,2004,nil,'R',0,nil,0,0]
values.push [14070989, nil, 'Päivinen','Jaakko','JOUTSENO',1952,4,0,0,24,17398,1018,nil,'R',0,nil,0,0]
values.push [1326110, nil, 'Päiväniemi','Tuomo','valkeakoski',1951,2,0,0,12,6509,1543,'P','R',0,nil,0,0]
values.push [1305335, nil, 'Päivärinta','Heikki','Hämeenlinna',1947,1,0,1,10,4176.5,1776,'P',nil,0,nil,0,0]
values.push [14070998, nil, 'Päivärinta','Jaakko','LAHTI',1945,0,1,2,13,6905,1469,nil,'R',0,nil,0,0]
values.push [1337552, nil, 'Päivärinta','Juha','Somero',1975,0,0,1,4,3291,2562,nil,'R',0,nil,0,0]
values.push [1305348, nil, 'Pärssinen','Jaakko','Tervakoski',1951,11,9,6,141,84947,59,'P','R',420,'A050T',215,0]
values.push [1328862, nil, 'Pärssinen','Olli-Pekka','Espoo',1971,0,0,1,4,2066,2665,nil,'R',0,nil,0,0]
values.push [14071007, nil, 'Pöllänen','Jorma','SAVONLINNA',1962,0,1,0,5,3568,2338,nil,'R',0,nil,0,0]
values.push [14071016, nil, 'Pölönen','Pekka','KIRKKONUMMI',1945,0,2,1,14,6999,1443,nil,'R',0,nil,0,0]
values.push [14071025, nil, 'Pöntinen','Mauri','KARSTULA',1952,0,1,0,5,1321,2514,nil,nil,0,nil,0,0]
values.push [14071034, nil, 'Pöntinen','Ossi','HIRVENSALMI',1952,5,1,1,39,26422,607,nil,'R',348,nil,0,0]
values.push [14071043, nil, 'Pöyhönen','Jorma','RAISIO',1931,1,0,0,6,1296,2301,nil,nil,0,nil,0,0]
values.push [14071052, nil, 'Pöyry','Heikki','HIRVENSALMI',1962,2,0,0,12,3855,1585,nil,'R',0,nil,0,0]
values.push [14071061, nil, 'Pöyry','Jari','HIRVENSALMI',1964,1,3,0,21,10259,1122,nil,'R',0,nil,0,0]
values.push [1305377, nil, 'Pöyry','Jorma','Hollola',1958,26,3,1,180,122816,24,nil,'R',256,nil,111,30]
values.push [14071070, nil, 'Pöytälaakso','Jaakko','SEINÄJOKI',1936,1,0,0,6,3059,2138,nil,'R',0,nil,0,0]
values.push [1305380, nil, 'Raatikainen','Aimo','Pieksämäki',1941,0,1,2,13,9494,1465,nil,'R',0,nil,0,0]
values.push [1326369, nil, 'Raatikainen','Paula','SALO',1962,6,2,1,50,29190,460,'P','R',787,nil,0,0]
values.push [1305393, nil, 'Raevaara','Teuri','Tampere',1924,14,2,0,94,45819,173,nil,'R',350,nil,151,0]
values.push [14071089, nil, 'Rahikkala','Teuvo','TAMPERE',1945,0,1,1,9,4609,1838,nil,'R',0,nil,0,0]
values.push [14071098, nil, 'Rahkonen','Erkki','VALKEALA',1948,6,0,1,40,25202,588,nil,'R',186,nil,0,0]
values.push [14071100, nil, 'Rahunen','Sulo','JYVÄSKYLÄ',1938,1,0,0,6,3652,2074,nil,nil,0,nil,0,0]
values.push [1329764, nil, 'Raikunen','Anne','Rauma',1959,3,0,0,18,4939,1263,'P',nil,0,nil,0,0]
values.push [14071119, nil, 'Railimo','Matti','LAHTI',1948,0,0,1,4,2770,2596,nil,nil,0,nil,0,0]
values.push [1329311, nil, 'Rainio','Timo','Tampere',1967,0,1,0,5,1161,2527,'P',nil,0,nil,0,0]
values.push [1330821, nil, 'Raitanen','Markku','Helsinki',1966,0,1,1,9,4887,1835,nil,'R',0,nil,0,0]
values.push [14071128, nil, 'Raitimo','Markku','ESPOO',1949,3,0,0,18,13487,1207,nil,'R',0,nil,0,0]
values.push [14071137, nil, 'Raitio','Jorma','JYVÄSKYLÄ',1941,1,0,0,6,2661,2176,nil,nil,0,nil,0,0]
values.push [14071146, nil, 'Raja-Ahde','Tapio','TUULOS',1957,0,0,1,4,2628,2611,nil,'R',0,nil,0,0]
values.push [1316421, nil, 'Raja-Ahde','Timo','Sairiala',1963,2,2,3,34,23647,719,'P','R',572,nil,0,0]
values.push [1305403, nil, 'Rajahalme','Reijo','Kankaanpää',1960,24,1,4,165,123746,34,nil,'R',189,nil,81,29]
values.push [1334539, nil, 'Rajaheimo','Aila','ESPOO',1978,0,1,1,9,1748.5,1880,'P',nil,0,nil,0,0]
values.push [14071155, nil, 'Rajala','Aatos','SAHALAHTI',1941,4,1,0,29,13750,935,nil,'R',0,nil,0,0]
values.push [14071164, nil, 'Rajala','Eino','LAIHIA',1954,3,0,0,18,12260,1213,nil,'R',0,nil,0,0]
values.push [14071173, nil, 'Rajala','Jukka','VANTAA',1965,0,0,2,8,3809,1904,nil,'R',0,nil,0,0]
values.push [14071182, nil, 'Rajala','Matti','TURKU',1947,0,1,0,5,1721,2470,nil,'R',0,nil,0,0]
values.push [1326372, nil, 'Rajalin','Heli','Salo',1967,0,3,2,23,7258,1063,'P','R',0,nil,0,0]
values.push [1305416, nil, 'Rajamäki','Mauno','Espoo',1939,12,5,6,121,73066,90,'P','R',60,nil,41,0]
values.push [1305429, nil, 'Rajasaari','Matti','Halikko',1943,11,7,2,109,54861.5,126,'P','R',462,nil,208,0]
values.push [1307812, nil, 'Ranki','Jussi','Savonlinna',1967,0,0,1,4,2594,2616,nil,'R',0,nil,0,0]
values.push [1316557, nil, 'Ranki','Matti','Joutseno',1940,1,0,1,10,4615.5,1765,'P',nil,0,nil,0,0]
values.push [14071191, nil, 'Ranta','Erkki','TÖYSÄ',1933,7,0,0,42,24185,559,nil,'R',378,nil,0,0]
values.push [1331600, nil, 'Ranta','Heikki','Tammela',1961,0,0,1,4,1982,2671,nil,'R',0,nil,0,0]
values.push [14071203, nil, 'Ranta','Jaakko','HELSINKI',1949,0,1,0,5,1937,2456,nil,'R',0,nil,0,0]
values.push [14071212, nil, 'Ranta','Jouko','FORSSA',1948,4,1,3,41,25515.5,571,'P','R',562,nil,0,0]
values.push [1305445, nil, 'Ranta','Marketta','Forssa',1950,9,1,1,63,37215,346,nil,'R',543,nil,277,0]
values.push [1305458, nil, 'Ranta','Pälvi','Tampere',1973,2,0,1,16,6368,1364,'P',nil,0,nil,0,0]
values.push [14071221, nil, 'Ranta-Aho','Risto','ESPOO',1946,1,1,3,23,7078,1064,nil,'R',0,nil,0,0]
values.push [1305461, nil, 'Rantala','Esa','ESPOO',1960,0,0,1,4,3104,2569,nil,'R',0,nil,0,0]
values.push [14071230, nil, 'Rantala','Esa','ESPOO',1954,0,0,1,4,3104,2570,nil,'R',0,nil,0,0]
values.push [1305474, nil, 'Rantala','Jukka','Turenki',1966,0,0,1,4,3266,2564,nil,'R',0,nil,0,0]
values.push [1305487, nil, 'Rantala','Mika','Somero',1967,1,0,0,6,4373,1993,nil,'R',0,nil,0,0]
values.push [1340277, nil, 'Rantala','Samuli','Kuopio',1992,0,0,0,5,4304,2317,nil,'S',0,nil,0,0]
values.push [1326288, nil, 'Rantanen','Esko','Uusikylä',1951,1,1,1,15,11440,1377,nil,'R',0,nil,0,0]
values.push [1326026, nil, 'Rantanen','Janne','Hämeenlinna',1982,1,0,0,6,2692,2170,'P',nil,0,nil,0,0]
values.push [1328781, nil, 'Rantanen','Juha','Tampere',1987,2,0,1,21,9908.5,1123,'P',nil,0,nil,0,0]
values.push [1305500, nil, 'Rantanen','Paavo','HELSINKI',1945,7,3,1,61,39162,370,nil,'R',608,nil,308,0]
values.push [1305513, nil, 'Rantanen','Pauli','Hauho',1954,8,4,5,93,54223.5,175,'P','R',556,'A060T',0,0]
values.push [14071249, nil, 'Rantanen','Pekka','VAMMALA',1935,1,0,0,6,3590,2079,nil,nil,0,nil,0,0]
values.push [1331354, nil, 'Rantanen','Pertti','Turenki',1958,3,1,2,31,7749.5,849,'P',nil,0,'A078',0,0]
values.push [13132750, nil, 'Rantanen','Raimo','HÄMEENLINNA',1900,0,1,0,5,2001,2451,'P',nil,0,nil,0,0]
values.push [1337565, nil, 'Rantanen','Sanna','Vantaa',1984,0,1,1,9,1587.5,1882,'P',nil,0,nil,0,0]
values.push [14071258, nil, 'Rantanen','Seppo','HELSINKI',1949,1,0,1,10,1952,1805,nil,nil,0,nil,0,0]
values.push [1339398, nil, 'Rantoja','Kaija','HELSINKI',1983,1,0,0,6,3404,2101,nil,'R',0,nil,0,0]
values.push [1327070, nil, 'Rasilainen','Anni','Halikko',1956,0,0,1,4,714.5,2843,'P',nil,0,nil,0,0]
values.push [1340235, nil, 'Rasku','Anne','Vantaa',1966,0,0,0,6,4134,2017,nil,'S',0,nil,0,0]
values.push [1326796, nil, 'Raudus','Timo','Nurmijärvi',1965,2,0,1,16,5968.5,1365,'P',nil,0,nil,0,0]
values.push [1328710, nil, 'Rauhala','Timo','Jämsä',1967,1,0,0,6,4776,1962,nil,'R',0,nil,0,0]
values.push [1305526, nil, 'Raunio','Matti','Pieksämäki',1951,5,1,2,47,22951,486,nil,'R',755,nil,0,0]
values.push [14071267, nil, 'Rautakallio','Mikko','VAMMALA',1929,1,0,1,10,4736,1762,nil,'R',0,nil,0,0]
values.push [1327863, nil, 'Rautanen','Erkki','Lavia',1960,7,1,1,51,16522,455,'P','R',0,'A042',0,0]
values.push [1335318, nil, 'Rautanen','Pauli','Järvenpää',1950,2,0,1,16,9936.5,1336,'P','R',0,nil,0,0]
values.push [14071276, nil, 'Rautasola','Harri','HELSINKI',1966,0,1,0,5,2408,2417,nil,'R',0,nil,0,0]
values.push [14071285, nil, 'Rautasola','Olli','HELSINKI',1942,0,0,1,4,1349,2747,nil,'R',0,nil,0,0]
values.push [14071294, nil, 'Rautiainen','Esko','PIEKSÄMÄKI',1939,0,0,1,4,2687,2603,nil,nil,0,nil,0,0]
values.push [1305539, nil, 'Rautiainen','Marja','Äänekoski',1948,17,0,2,110,61277.5,123,'P','R',235,nil,106,0]
values.push [1305542, nil, 'Rautiainen','Seppo','Heinola',1945,9,3,5,89,58929,191,nil,'R',183,nil,100,0]
values.push [1305555, nil, 'Rautiainen','Veli','Pori',1948,10,2,1,74,35764.5,262,'P','R',716,nil,332,0]
values.push [14071306, nil, 'Regina','Heikki','LAPPEENRANT',1933,2,0,2,20,14262,1143,nil,'R',0,nil,0,0]
values.push [1305568, nil, 'Reinikainen','Pirjo','Helsinki',1948,2,1,2,25,8216,1004,'P','R',0,nil,0,0]
values.push [13132769, nil, 'REINIKARI','PIRKKO','TURKU',1953,0,1,1,9,1713.5,1881,'P',nil,0,nil,0,0]
values.push [1329188, nil, 'Rekola','Suvi','Inkoon asema',1976,1,0,2,14,1718.5,1463,'P',nil,0,nil,0,0]
values.push [1326136, nil, 'Remes','Arto','Hämeenlinna',1971,3,2,5,52,21277,441,'P','R',0,'A087',0,0]
values.push [14071315, nil, 'Renko','Eila','TAMPERE',1941,1,1,0,11,1751,1697,nil,nil,0,nil,0,0]
values.push [1329421, nil, 'Renvall','Ari','Tikkakoski',1963,1,0,0,6,2322,2208,'P',nil,0,nil,0,0]
values.push [14071324, nil, 'Repo','Esa','SULKAVA',1957,2,0,1,16,12974,1317,nil,'R',0,nil,0,0]
values.push [1305571, nil, 'Repo','Oiva','SÖÖRMARKKU',1946,28,1,0,173,139652,29,nil,'R',113,nil,59,21]
values.push [1330944, nil, 'Reunanen','Kaisa','MIKKELI',1965,5,0,1,40,16238.5,597,'P','R',0,nil,0,0]
values.push [14071333, nil, 'Reunanen','Markku','KERAVA',1945,0,0,1,4,747,2840,nil,'R',0,nil,0,0]
values.push [14071342, nil, 'Riihinen','Mika','KUOPIO',1964,1,1,0,11,6189,1644,nil,'R',0,nil,0,0]
values.push [14071351, nil, 'Riihonen','Taisto','KAUHAJOKI',1939,0,1,1,9,4226,1850,nil,'R',0,nil,0,0]
values.push [1328189, nil, 'Riikonen','Ilkka','Leppävesi',1954,1,0,1,10,5898,1739,nil,'R',0,nil,0,0]
values.push [14071360, nil, 'Riikonen','Juhani','VANTAA',1945,0,0,1,4,1480,2727,nil,'R',0,nil,0,0]
values.push [14071379, nil, 'Riikonen','Martti','HELSINKI',1962,1,1,0,11,7057,1629,nil,'R',0,nil,0,0]
values.push [14071388, nil, 'Riikonen','Pentti','LAHTI',1938,0,0,1,4,2611,2615,nil,nil,0,nil,0,0]
values.push [1326356, nil, 'Riikonen','Sirkku','SALO',1965,4,1,2,37,15362.5,650,'P','R',0,nil,0,0]
values.push [1335965, nil, 'Riippi','Hannu','Tampere',1973,0,0,2,8,3733,1906,nil,'R',0,nil,0,0]
values.push [1305584, nil, 'Riisiö','Liisa','Kauhava',1948,1,1,2,19,9738,1172,nil,'R',0,nil,0,0]
values.push [14071397, nil, 'Riitoja','Matti','ESPOO',1942,0,1,0,5,1600,2483,nil,nil,0,nil,0,0]
values.push [1337015, nil, 'Rikula','Kaisa','Kajaani',1970,2,0,0,12,7702,1521,nil,'R',0,nil,0,0]
values.push [14071409, nil, 'Rimpiläinen','Ari','HYVINKÄÄ',1959,0,0,1,4,2425,2629,nil,'R',0,nil,0,0]
values.push [1305607, nil, 'Rinne','Kaj','Helsinki',1972,0,1,0,5,3494,2344,nil,'R',0,nil,0,0]
values.push [14071418, nil, 'Rinne','Timo','HELSINKI',1966,5,1,1,39,27003,605,nil,'R',511,nil,0,0]
values.push [1305623, nil, 'Rinta-Keturi','Mika','Seinäjoki',1968,1,1,0,11,8788,1604,nil,'R',0,nil,0,0]
values.push [14071427, nil, 'Rintala','Ahto','NOKIA',1934,2,0,0,12,5877,1553,nil,'R',0,nil,0,0]
values.push [14071436, nil, 'Rintala','Antero','KAUNIAINEN',1944,2,0,0,12,5300,1568,nil,'R',0,nil,0,0]
values.push [14071445, nil, 'Rintala','Juha','SEINÄJOKI',1967,3,0,1,22,16424,1072,nil,'R',0,nil,0,0]
values.push [14071454, nil, 'Rintala','Kyösti','NOKIA',1963,1,0,0,6,2889,2152,nil,'R',0,nil,0,0]
values.push [14071463, nil, 'Rintamäki','Vesa','ESPOO',1938,0,0,1,4,1779,2692,nil,nil,0,nil,0,0]
values.push [1305636, nil, 'Riska','Börje','KARLEBY',1953,7,3,1,61,43139,366,nil,'R',578,nil,284,0]
values.push [14071472, nil, 'Rissanen','Toivo','VANTAA',1943,2,0,1,16,9191,1344,nil,'R',0,nil,0,0]
values.push [1338933, nil, 'Rissanen','Tomi','Lohja',1963,1,0,0,6,3636,2075,nil,'R',0,nil,0,0]
values.push [14071481, nil, 'Rissanen','Veijo','NILSIÄ',1950,1,0,0,6,3357,2108,nil,'R',0,nil,0,0]
values.push [14071490, nil, 'Ristilä','Raimo','SEINÄJOKI',1946,1,0,0,6,2608,2180,nil,'R',0,nil,0,0]
values.push [14071502, nil, 'Ristimäki','Erkki','SEINÄJOKI',1947,0,2,0,10,5010,1753,nil,'R',0,nil,0,0]
values.push [1330672, nil, 'Ristimäki','Matti','Tampere',1983,0,0,1,4,1187,2777,'P',nil,0,nil,0,0]
values.push [1326178, nil, 'Ristola','Esa-Matti','JÄRVENPÄÄ',1950,3,3,2,41,19737,574,'P','R',790,nil,0,0]
values.push [14071511, nil, 'Ristolainen','Martti','TAMPERE',1938,0,1,1,9,1369,1883,nil,'R',0,nil,0,0]
values.push [14071520, nil, 'Ritakorpi','Tiina','KANKAANPÄÄ',1963,5,1,2,43,15195,549,nil,'R',309,nil,0,0]
values.push [1305649, nil, 'Ritanotko','Markku','Turku',1953,15,0,0,90,71529,184,nil,'R',454,nil,201,0]
values.push [14071539, nil, 'Roisko','Seppo','HÄMEENLINNA',1958,0,0,1,4,3443,2556,nil,'R',0,nil,0,0]
values.push [1336948, nil, 'Roivanen','Jorma','TURKHAUTA',1951,0,2,1,14,2388.5,1462,'P',nil,0,nil,0,0]
values.push [14071548, nil, 'Rolin','Göran','KIRKKONUMMI',1952,1,0,0,6,4644,1971,nil,'R',0,nil,0,0]
values.push [1305652, nil, 'Romu','Jouko','Raisio',1943,21,0,0,126,88347,81,'P','R',338,nil,140,0]
values.push [1305665, nil, 'Ropponen','Pekka','Helsinki',1948,33,0,0,204,102263,12,nil,'R',91,nil,52,19]
values.push [14071557, nil, 'Rosenqvist','Kalervo','TUUSULA',1941,7,1,1,51,39812,446,nil,'R',306,nil,0,0]
values.push [14071566, nil, 'Rossi','Pekka','JYVÄSKYLÄ',1900,1,0,1,10,6092,1732,nil,'R',0,nil,0,0]
values.push [14071575, nil, 'Rossi','Ville','JOUTSENO',1952,2,0,0,12,9926,1489,nil,nil,0,nil,0,0]
values.push [1316683, nil, 'Roth','Riitta','Alavus',1964,1,0,0,6,1759.5,2269,'P',nil,0,nil,0,0]
values.push [14071584, nil, 'Rouhe','Esa','HELSINKI',1959,0,1,0,5,2058,2447,nil,'R',0,nil,0,0]
values.push [14071593, nil, 'Rouhiainen','Pasi','NOKIA',1959,0,1,0,5,2710,2394,nil,'R',0,nil,0,0]
values.push [1305678, nil, 'Rouvali','Ari-Pekka','LOHJA',1964,2,2,4,42,24627.5,558,'P','R',0,nil,0,0]
values.push [14071605, nil, 'Rovio','Kari','KANGASALA',1945,9,1,0,59,35450,400,nil,'R',80,nil,0,0]
values.push [14071614, nil, 'Ruiskari','Heikki','HELSINKI',1935,1,0,0,6,3060,2137,nil,nil,0,nil,0,0]
values.push [1335363, nil, 'Runtti','Kimmo','Espoo',1969,0,1,4,21,5241,1139,'P',nil,0,nil,0,0]
values.push [14071623, nil, 'Ruoho','Markku','KARKKILA',1948,2,0,1,16,11022,1327,nil,'R',0,nil,0,0]
values.push [1305694, nil, 'Ruohomaa','Hannu','Pori',1949,9,1,2,67,42558,308,'P','R',519,nil,252,0]
values.push [1305704, nil, 'Ruohomaa','Sirpa','Pori',1951,7,1,1,51,29016,450,nil,'R',548,nil,0,0]
values.push [14071632, nil, 'Ruohonen','Seppo','HYVINKÄÄ',1941,11,0,1,70,56678,282,nil,'R',4,nil,4,0]
values.push [14071641, nil, 'Ruohoniemi','Aimo','ESPOO',1953,2,0,1,16,6702,1362,nil,'R',0,nil,0,0]
values.push [1327999, nil, 'Ruohtula','Kirsi','Heinola kk',1966,0,0,1,4,1007,2808,'P',nil,0,nil,0,0]
values.push [14071650, nil, 'Ruokonen','Ilkka','KOUVOLA',1961,1,0,0,6,2382,2201,nil,'R',0,nil,0,0]
values.push [14071669, nil, 'Ruokonen','Petri','ESPOO',1956,0,1,0,5,2222,2430,nil,'R',0,nil,0,0]
values.push [14071678, nil, 'Ruonamaa','Olli','ROVANIEMI',1942,4,3,0,39,13465,619,nil,'R',257,nil,0,0]
values.push [1331684, nil, 'Ruosaari','Salla','HELSINKI',1976,0,2,1,14,8489,1437,nil,'R',0,nil,0,0]
values.push [14071687, nil, 'Ruotsalainen','Juhani','KUUSANKOSKI',1952,1,0,0,6,3791,2056,nil,'R',0,nil,0,0]
values.push [1334649, nil, 'Ruotsalainen','Jukka','Helsinki',1964,0,0,1,4,1412,2737,'P',nil,0,nil,0,0]
values.push [1305717, nil, 'Ruotsalainen','Kaija','Helsinki',1963,0,2,0,10,2376.5,1802,'P',nil,0,nil,0,0]
values.push [14071696, nil, 'Ruotsalainen','Viljo','HELSINKI',1944,1,1,1,15,5330,1417,nil,'R',0,nil,0,0]
values.push [1336427, nil, 'Ruotsalainen-Piippo','Tuula','Kiuruvesi',1972,2,1,1,25,2164,1007,'P',nil,0,nil,0,0]
values.push [1333996, nil, 'Ruponen','Jari','Helsinki',1965,0,1,2,13,8337.5,1468,'P','R',0,nil,0,0]
values.push [14071708, nil, 'Rutanen','Matti','ESPOO',1931,4,3,3,51,19890,454,nil,'R',37,nil,0,0]
values.push [14071717, nil, 'Rutila','Jukka','ARTJÄRVI',1958,2,3,1,31,17945,830,nil,'R',534,nil,0,0]
values.push [1333598, nil, 'Ruusila','Jukka','Tampere',1964,1,0,1,10,4834,1758,nil,'R',0,nil,0,0]
values.push [1327818, nil, 'Ruuska','Tommi','Espoo',1972,0,1,1,9,5140,1831,nil,'R',0,nil,0,0]
values.push [1307553, nil, 'Ruuska','Vesa','Kangasala',1968,4,0,1,34,29344,704,nil,'R',0,nil,0,0]
values.push [1338409, nil, 'Ruuskanen','Antti','ESPOO',1986,0,1,1,9,4193,1851,'P',nil,0,nil,0,0]
values.push [14071726, nil, 'Ruuskanen','Jouko','HELSINKI',1959,0,0,1,4,2715,2599,nil,'R',0,nil,0,0]
values.push [1305720, nil, 'Rytkönen','Antti','Kathmandu. Nepal',1946,10,2,4,92,63169,177,nil,'R',693,nil,324,0]
values.push [1305733, nil, 'Rytkönen','Tuomo','Pieksämäki',1956,8,0,4,64,46782,333,nil,'R',713,nil,338,0]
values.push [1305746, nil, 'Ryynänen','Pertti','Västersgok',1949,4,4,8,76,37547,248,'P','R',526,'A039T',0,0]
values.push [14071735, nil, 'Ryyppö','Juha','HÄMEENLINNA',1953,1,0,0,6,2835,2158,nil,'R',0,nil,0,0]
values.push [1339990, nil, 'Räihä','Heidi','Lapinjärvi',1975,0,0,0,5,2307,2422,nil,'S',0,nil,0,0]
values.push [1305759, nil, 'Räihälä','Tapio','Mynämäki',1969,1,1,1,15,12882,1375,nil,'R',0,nil,0,0]
values.push [14071744, nil, 'Räikkönen','Markku','LAPPEENRANT',1946,0,2,2,18,8322,1239,nil,'R',0,nil,0,0]
values.push [14071753, nil, 'Räisänen','Joel','HELSINKI',1936,0,0,2,8,1950,1929,nil,'R',0,nil,0,0]
values.push [14071762, nil, 'Räisänen','Kari','VANTAA',1965,0,1,1,9,4679,1837,nil,'R',0,nil,0,0]
values.push [14071771, nil, 'Räsänen','Asko','HELSINKI',1957,0,0,2,8,3518,1909,nil,'R',0,nil,0,0]
values.push [1305762, nil, 'Räsänen','Taija','Ilomantsi',1961,3,0,0,18,7351,1246,'P','R',0,nil,0,0]
values.push [1339408, nil, 'Räty','Janne','HELSINKI',1979,1,0,0,6,4847,1959,nil,'R',0,nil,0,0]
values.push [1334445, nil, 'Räty','Simo','Espoo',1968,0,1,1,9,5503,1826,nil,'R',0,nil,0,0]
values.push [14071780, nil, 'Rögård','Magnus','NURMIJÄRVI',1944,16,2,1,110,58254,124,nil,'R',28,nil,25,0]
values.push [1307692, nil, 'Rönkkö','Antti','Espoo',1974,2,1,0,17,9481,1293,nil,'R',0,nil,0,0]
values.push [1325357, nil, 'Rönkkö','Paavo','Espoo',1945,1,0,2,14,7913,1440,nil,'R',0,nil,0,0]
values.push [14071799, nil, 'Rönnholm','Jukka','KEURUU',1940,3,0,2,26,16344,985,nil,'R',0,nil,0,0]
values.push [14071801, nil, 'Röytiö','Eero','HELSINKI',1957,0,0,1,4,952,2816,nil,'R',0,nil,0,0]
values.push [14071810, nil, 'Röytiö','Raimo','VANTAA',1935,6,0,2,44,19873,532,nil,'R',15,nil,0,0]
values.push [1305775, nil, 'Saapunki','Ari','Kellokoski',1961,7,0,1,46,33160,493,nil,'R',734,nil,0,0]
values.push [14071829, nil, 'Saarela','Sami','LAPPEENRANT',1961,0,0,1,4,2368,2632,nil,'R',0,nil,0,0]
values.push [1335745, nil, 'Saarelainen','Mikko','Hyvinkää',1972,1,0,0,6,2857.5,2156,'P',nil,0,nil,0,0]
values.push [14071838, nil, 'Saarelainen','Pekka','HELSINKI',1948,1,0,2,14,5469,1456,nil,'R',0,nil,0,0]
values.push [14071847, nil, 'Saarenkoski','Sinikka','HEINOLA',1953,4,0,0,24,12208,1030,nil,'R',0,nil,0,0]
values.push [14071856, nil, 'Saarenpää','Markku','TUUSULA',1969,1,0,1,10,7296,1710,nil,'R',0,nil,0,0]
values.push [1330960, nil, 'Saari','Anja','Oulainen',1963,0,2,0,10,2490.5,1801,'P',nil,0,nil,0,0]
values.push [14071865, nil, 'Saari','Jussi','TUUSULA',1941,0,1,2,13,9138,1466,nil,'R',0,nil,0,0]
values.push [14071874, nil, 'Saari','Marja','HÄMEENLINNA',1969,2,1,1,21,12698,1113,nil,'R',0,nil,0,0]
values.push [14071883, nil, 'Saari','Teija','VANTAA',1960,3,0,1,22,11679,1081,nil,'R',0,nil,0,0]
values.push [1335457, nil, 'Saarijärvi','Petri','SEINÄJOKI',1983,0,1,1,9,3094,1863,'P',nil,0,nil,0,0]
values.push [14071892, nil, 'Saarikoski','Ville','ESPOO',1960,2,0,1,16,8162,1352,nil,'R',0,nil,0,0]
values.push [14071904, nil, 'Saarilampi','Erkki','LUUMÄKI',1945,1,0,1,10,5997,1736,nil,'R',0,nil,0,0]
values.push [14071913, nil, 'Saarinen','Ari','HELSINKI',1963,0,0,1,4,2148,2657,nil,nil,0,nil,0,0]
values.push [14071922, nil, 'Saarinen','Ari-Jussi','HELSINKI',1954,1,0,0,6,1793,2265,nil,'R',0,nil,0,0]
values.push [14071931, nil, 'Saarinen','Eino','SYSMÄ',1938,4,0,1,28,22519,946,nil,nil,0,nil,0,0]
values.push [1305788, nil, 'Saarinen','Hannu','Hyvinkää',1947,4,4,7,78,33977.5,242,'P','R',328,'A065T',0,0]
values.push [1336854, nil, 'Saarinen','Hannu','Hyvinkää',1962,1,0,0,6,3306,2114,nil,nil,0,nil,0,0]
values.push [1305791, nil, 'Saarinen','Helge','Hämeenlinna',1950,3,2,5,48,24387,474,nil,'R',575,nil,0,0]
values.push [1305801, nil, 'Saarinen','Jukka','Espoo',1969,3,2,1,32,21774,786,nil,'R',762,nil,0,0]
values.push [1305814, nil, 'Saarinen','Markku','Tampere',1948,2,3,8,59,34316,402,nil,'R',403,nil,0,0]
values.push [14071940, nil, 'Saarinen','Matti','IMATRA',1950,3,0,0,18,15046,1193,nil,'R',0,nil,0,0]
values.push [1305827, nil, 'Saarinen','Mauri','Riihimäki',1946,7,5,10,107,67658,135,'P','R',441,nil,194,0]
values.push [14071959, nil, 'Saarinen','Seppo','ESPOO',1947,3,2,4,44,25144,526,nil,'R',107,nil,0,0]
values.push [1332078, nil, 'Saarivaara','Jyrki','Jyväskylä',1962,0,0,1,4,3338,2561,nil,'R',0,nil,0,0]
values.push [1330779, nil, 'Saartama','Tommi','Helsinki',1973,0,0,1,4,1072.5,2799,'P',nil,0,nil,0,0]
values.push [14071968, nil, 'Saastamoinen','Eino','ESPOO',1938,0,0,1,4,2392,2630,nil,nil,0,nil,0,0]
values.push [1332463, nil, 'Saastamoinen','Harri','Hämeenlinna',1964,2,1,1,21,7854.5,1130,'P',nil,0,nil,0,0]
values.push [14071977, nil, 'Saastamoinen','Kari','KIURUVESI',1958,1,0,0,6,5276,1947,nil,'R',0,nil,0,0]
values.push [1334827, nil, 'Saastamoinen','Tuija','Hämeenlinna',1967,2,1,1,21,6441,1134,'P',nil,0,nil,0,0]
values.push [1339204, nil, 'Saavalainen','Liisu','HELSINKI',1971,0,0,1,4,1013.5,2807,'P',nil,0,nil,0,0]
values.push [14071986, nil, 'Sahila','Jouko','ORIVESI',1952,3,0,0,18,14661,1196,nil,nil,0,nil,0,0]
values.push [14071995, nil, 'Sahuri','Matti','TAMMELA',1935,0,2,0,10,4830,1759,nil,'R',0,nil,0,0]
values.push [1327960, nil, 'Saikkonen','Toivo','OULU',1942,6,1,1,45,23475.5,511,'P','R',644,nil,0,0]
values.push [1334050, nil, 'Sainio','Harry','Espoo',1962,0,0,1,4,1564,2718,'P',nil,0,nil,0,0]
values.push [1305843, nil, 'Sainio','Pertti','haarajoki',1954,3,1,3,35,20790.5,692,'P','R',738,nil,0,0]
values.push [1331312, nil, 'Sainio','Santtu','haarajoki',1990,0,0,1,4,1263.5,2769,'P',nil,0,nil,0,0]
values.push [14072004, nil, 'Sainio','Sven','ESPOO',1940,4,3,0,39,21472,612,nil,'R',155,nil,0,0]
values.push [1305856, nil, 'Sairanen','Timo','Imatra',1964,0,0,1,4,3537,2552,nil,'R',0,nil,0,0]
values.push [1330562, nil, 'Sairasalo','Marko','NUMMI',1978,2,1,0,17,9360,1295,nil,'R',0,nil,0,0]
values.push [1316722, nil, 'Sajomaa','Marja','Helsinki',1972,1,0,0,6,1278,2303,'P',nil,0,nil,0,0]
values.push [1305869, nil, 'Sajomaa','Matti','Helsinki',1946,11,7,5,125,84037,82,nil,'R',209,nil,109,0]
values.push [14072013, nil, 'Sakki','Jari','LIPERI',1958,3,0,1,22,14022,1076,nil,'R',0,nil,0,0]
values.push [1328529, nil, 'Sakslin','Aarre','Helsinki',1927,15,5,1,119,42507.5,97,'P','R',344,'A013T',164,0]
values.push [1305885, nil, 'Sallinen','Pentti','Eno',1950,1,5,3,43,33104,534,nil,'R',712,nil,0,0]
values.push [14072022, nil, 'Sallinen','Tuomo','LAHTI',1950,1,0,0,6,3150,2129,nil,'R',0,nil,0,0]
values.push [14072031, nil, 'Salmela','Lauri','LAMMI',1941,1,0,3,18,7528,1244,nil,nil,0,nil,0,0]
values.push [14072040, nil, 'Salmelainen','Tapio','VANTAA',1941,0,0,1,4,1561,2719,nil,nil,0,nil,0,0]
values.push [14072059, nil, 'Salmelin','Robert','ESPOO',1940,1,0,1,10,3669,1785,nil,'R',0,nil,0,0]
values.push [1305898, nil, 'Salmenkylä','Sinikka','Helsinki',1963,0,1,0,5,1474,2499,'P',nil,0,nil,0,0]
values.push [1329845, nil, 'Salmi','Heikki','Espoo',1963,3,1,0,23,12502,1055,nil,'R',0,nil,0,0]
values.push [14072068, nil, 'Salmi','Maija-Leena','HYVINKÄÄ',1900,0,1,0,5,919,2541,nil,'R',0,nil,0,0]
values.push [1330902, nil, 'Salmi','Pekka','Tuusula',1973,1,0,0,6,4003,2030,nil,'R',0,nil,0,0]
values.push [1339932, nil, 'Salminen','Arttu','Viiala',1992,0,0,0,5,4298,2318,nil,'S',0,nil,0,0]
values.push [14072077, nil, 'Salminen','Hannu','VALKEAKOSKI',1947,0,1,0,5,3626,2334,nil,'R',0,nil,0,0]
values.push [14072095, nil, 'Salminen','Kari','IMATRA',1941,5,0,0,30,15904,892,nil,'R',341,nil,0,0]
values.push [14072086, nil, 'Salminen','Kari','VANTAA',1941,0,0,3,12,7513,1524,nil,nil,0,nil,0,0]
values.push [1316382, nil, 'Salminen','Kimmo','Kouvola',1963,0,0,1,4,2240,2642,nil,'R',0,nil,0,0]
values.push [1334911, nil, 'Salminen','Laura','Tampere',1976,2,0,0,12,8997,1499,nil,'R',0,nil,0,0]
values.push [14072107, nil, 'Salminen','Matti J','HELSINKI',1941,4,0,1,28,14571,954,nil,'R',0,nil,0,0]
values.push [14072116, nil, 'Salminen','Olli','JYVÄSKYLÄ',1966,1,0,0,6,4934,1956,nil,'R',0,nil,0,0]
values.push [14072125, nil, 'Salminen','Simo','HELSINKI',1951,0,1,1,9,5961,1821,nil,nil,0,nil,0,0]
values.push [1333802, nil, 'Salminen','Tommi','Koria',1969,1,2,0,16,9451,1339,nil,'R',0,nil,0,0]
values.push [1339291, nil, 'Salminen','Topi-Tapio','Tampere',1984,1,1,0,17,11548,1277,'P','R',0,nil,0,0]
values.push [1328558, nil, 'Salmivaara','Virva','Helsinki',1900,0,0,1,4,703.5,2844,'P',nil,0,nil,0,0]
values.push [14072143, nil, 'Salo','Raikko','HÄMEENLINNA',1944,1,0,1,10,4500,1769,nil,'R',0,nil,0,0]
values.push [14072152, nil, 'Salokoski','Antero','HELSINKI',1948,2,1,1,21,9872,1124,nil,'R',0,nil,0,0]
values.push [14072161, nil, 'Salonen','Aarre','KUOPIO',1962,1,0,0,6,3981,2032,nil,'R',0,nil,0,0]
values.push [14072170, nil, 'Salonen','Eino','ALASTARO',1945,10,0,3,72,25845,275,nil,'R',305,nil,128,0]
values.push [1305911, nil, 'Salonen','Esa','Heinola',1947,21,5,4,173,93367,30,nil,'R',206,nil,97,32]
values.push [1305924, nil, 'Salonen','Hannu','Tervakoski',1951,3,5,0,43,31367,536,nil,'R',662,nil,0,0]
values.push [14072189, nil, 'Salonen','Jari','LAHTI',1961,0,0,1,4,1001,2809,nil,'R',0,nil,0,0]
values.push [1329735, nil, 'Salonen','Juha','Tampere',1949,1,0,1,10,5408,1746,nil,'R',0,nil,0,0]
values.push [14072198, nil, 'Salonen','Kalevi','HÄMEENLINNA',1946,3,4,1,42,29679,555,nil,'R',260,nil,0,0]
values.push [1305937, nil, 'Salonen','Marita','Hyvinkää',1950,2,5,5,57,19748,414,'P','R',535,nil,0,0]
values.push [1305940, nil, 'Salonen','Marja-Liisa','Hauho',1949,17,1,0,113,59306.5,113,'P','R',642,'A061T',302,0]
values.push [1305953, nil, 'Salonen','Matti','Hyvinkää',1948,10,2,0,70,37182,288,nil,'R',515,nil,244,0]
values.push [14072200, nil, 'Salonen','Mikko','LAHTI',1951,1,0,0,6,1983,2248,nil,'R',0,nil,0,0]
values.push [1305966, nil, 'Salonen','Pertti','ESPOO',1951,26,1,8,193,160067,18,nil,'R',3,nil,1,8]
values.push [1334270, nil, 'Salonen','Pertti','HAUHO',1947,2,2,0,22,9565.5,1088,'P',nil,0,nil,0,0]
values.push [1305979, nil, 'Salonen','Terttu','kisko',1950,8,8,6,118,37226.5,98,'P','R',549,nil,300,0]
values.push [1305982, nil, 'Salopuro','Martti','Oulu',1931,4,2,0,34,15198,737,nil,'R',632,nil,0,0]
values.push [1305995, nil, 'Sameri','Juha','Kirkkonummi',1949,16,4,8,154,85613,49,nil,'R',329,nil,156,41]
values.push [1330630, nil, 'Sammalkivi','Ritva','Hämeenlinna',1952,1,0,0,6,2227,2218,nil,'R',0,nil,0,0]
values.push [14072219, nil, 'Sampo','Terttu','ARTJÄRVI',1946,1,0,1,10,4489,1770,nil,'R',0,nil,0,0]
values.push [14072228, nil, 'Sandelin','Pauli','JALASJÄRVI',1947,0,1,0,5,2612,2405,nil,'R',0,nil,0,0]
values.push [1325331, nil, 'Sandell','Marja','Turku',1948,1,0,0,6,1338,2299,'P',nil,0,nil,0,0]
values.push [1329049, nil, 'Sandell','Petteri','Lohja',1965,3,1,0,23,6657.5,1066,'P',nil,0,nil,0,0]
values.push [1306004, nil, 'Sandström','Jerry','Kokkola',1952,3,4,0,38,23315,630,nil,'R',658,nil,0,0]
values.push [1306017, nil, 'Sandström','Maisa','Kokkola',1951,2,0,0,12,2906.5,1595,'P',nil,0,nil,0,0]
values.push [1306020, nil, 'Sandvik','Hans','Terjärv',1951,8,2,2,66,50751,314,nil,'R',371,nil,241,0]
values.push [1306033, nil, 'Sandvik','Stig','Terjärv',1948,2,4,3,44,27536,524,nil,'R',456,nil,0,0]
values.push [1306046, nil, 'Sankamo','Jukka','Kotka',1959,0,0,3,12,6703,1538,nil,'R',0,nil,0,0]
values.push [14072237, nil, 'Santanen','Ensio','HELSINKI',1926,3,1,4,39,19702,614,nil,'R',145,nil,0,0]
values.push [14072246, nil, 'Saranpää','Rauni','SEINÄJOKI',1944,1,1,1,15,10895,1380,nil,'R',0,nil,0,0]
values.push [1328079, nil, 'Sarasoja','Jukka','Tampere',1953,0,1,0,5,2077,2442,nil,'R',0,nil,0,0]
values.push [14072255, nil, 'Saren','Antero','ESPOO',1959,2,0,0,12,6176,1548,nil,'R',0,nil,0,0]
values.push [1306062, nil, 'Saren','Markku','Somero',1966,1,0,0,6,2274.5,2214,'P',nil,0,nil,0,0]
values.push [14072264, nil, 'Saresmaa','Jukka','TAMPERE',1948,3,0,0,18,7107,1248,nil,'R',0,nil,0,0]
values.push [14072273, nil, 'Sarikka','Hannu','ORIVESI',1954,2,3,1,31,18662,828,nil,'R',216,nil,0,0]
values.push [1328930, nil, 'Sarja','Ville','Espoo',1972,0,1,0,5,2601,2406,nil,'R',0,nil,0,0]
values.push [14072282, nil, 'Sarojärvi','Timo','HYVINKÄÄ',1957,1,0,2,14,6389,1448,nil,'R',0,nil,0,0]
values.push [1306075, nil, 'Satama','Pentti','Hamina',1960,2,4,1,36,29938,654,nil,'R',614,nil,0,0]
values.push [1326932, nil, 'Satuli','Unto','JYVÄSKYLÄ',1948,1,5,3,43,11736.5,551,'P',nil,0,'A053',0,0]
values.push [1336375, nil, 'Saukko','Teuvo','Oitti',1956,0,1,0,5,1253,2521,'P',nil,0,nil,0,0]
values.push [1306088, nil, 'Saukkola','Jari','Lahti',1958,0,0,1,4,2483,2625,nil,'R',0,nil,0,0]
values.push [1337060, nil, 'saukkonen','eija','puumala',1959,0,1,0,5,1619.5,2479,'P',nil,0,nil,0,0]
values.push [14072291, nil, 'Saukola','Arja','HELSINKI',1952,3,1,0,23,9128,1058,nil,'R',0,nil,0,0]
values.push [1306091, nil, 'Saunamäki','Juhani','Tuusula',1943,0,1,1,9,4453,1845,nil,'R',0,nil,0,0]
values.push [1306101, nil, 'Saunamäki','Mika','Sipoo',1965,0,1,0,5,1686,2471,nil,'R',0,nil,0,0]
values.push [14072303, nil, 'Saurio','Heljä','HELSINKI',1944,0,1,0,5,1533,2488,nil,'R',0,nil,0,0]
values.push [14072312, nil, 'Saurio','Kai-Markus','HELSINKI',1900,1,0,0,6,2177,2231,nil,'R',0,nil,0,0]
values.push [1306127, nil, 'Savela','Jarmo','LOHJA',1951,4,6,4,74,51004,256,'P','R',699,nil,334,0]
values.push [1316544, nil, 'Saviaho','Aarno','Hyvinkää',1949,2,2,3,34,14170,739,'P',nil,0,nil,0,0]
values.push [1306130, nil, 'Savio','Jukka','Pieksämäki',1955,2,1,1,21,11557,1120,'P','R',0,nil,0,0]
values.push [1306143, nil, 'Savioja','Erkki','KOSKENKORVA',1946,1,10,13,108,79969,129,nil,'R',510,nil,260,0]
values.push [1336430, nil, 'Saviranta','Arto','SALO',1959,2,1,0,21,7152,1131,'P',nil,0,nil,0,0]
values.push [14072321, nil, 'Savolainen','Hannu','HÄMEENLINNA',1958,0,0,1,4,2854,2584,nil,'R',0,nil,0,0]
values.push [14072330, nil, 'Savolainen','Manu','HELSINKI',1900,0,0,1,4,1084,2796,nil,'R',0,nil,0,0]
values.push [1326754, nil, 'Savolainen','Martti','Tampere',1953,1,0,0,6,3426,2098,nil,'R',0,nil,0,0]
values.push [1330588, nil, 'Savolainen','Nina','Tampere',1983,0,1,0,5,979.5,2538,'P',nil,0,nil,0,0]
values.push [1330591, nil, 'Savolainen','Petteri','Tampere',1984,0,1,0,5,1303,2517,'P',nil,0,nil,0,0]
values.push [14072349, nil, 'Savolainen','Seppo','KARKKILA',1960,1,1,0,11,7290,1625,nil,'R',0,nil,0,0]
values.push [1306169, nil, 'Savolainen','Touko','Valkeakoski',1953,12,1,2,85,60602.5,201,'P','R',577,nil,299,0]
values.push [1327009, nil, 'Savolainen','Ville','Helsinki 44',1968,2,0,0,12,9655,1492,nil,'R',0,nil,0,0]
values.push [1306172, nil, 'Savonen','Eero','Helsinki',1948,32,0,0,198,139669,16,nil,'R',121,nil,62,22]
values.push [1334241, nil, 'Savonen','Janne','ESPOO',1968,0,1,0,5,2824,2392,nil,'R',0,nil,0,0]
values.push [1306185, nil, 'Savonen','Mikael','kokkola',1963,3,2,1,32,21970,785,nil,'R',735,nil,0,0]
values.push [1325713, nil, 'Schauman','Hans-Christian','Anjalankoski',1900,0,1,0,5,1304,2515,'P',nil,0,nil,0,0]
values.push [1306208, nil, 'Seitsonen','Hannu','Vantaa',1944,7,4,8,94,56497.5,172,'P','R',410,nil,272,0]
values.push [1306211, nil, 'Selander','Kalevi','Kankaanpää',1945,6,7,5,91,46179,182,nil,'R',637,nil,311,0]
values.push [1306224, nil, 'Selanen','Jouko','Lavia',1955,8,1,0,53,32747,436,nil,'R',573,nil,0,0]
values.push [1329874, nil, 'Seppä','Janne','Turku',1974,0,0,1,4,1495,2725,'P',nil,0,nil,0,0]
values.push [14072358, nil, 'Seppä','Juhani','ALAJÄRVI',1961,1,0,0,6,4441,1985,nil,'R',0,nil,0,0]
values.push [1338386, nil, 'Seppä','Milla','Halikko as.',1977,1,0,0,12,5452.5,1565,'P',nil,0,nil,0,0]
values.push [1306253, nil, 'Seppä','Veikko','Forssa',1942,20,2,2,144,56083.5,57,'P','R',93,nil,53,0]
values.push [1306266, nil, 'Seppälä','Eila','Helsinki',1936,20,4,0,140,48397,61,'P','R',240,'A001T',126,0]
values.push [14072367, nil, 'Seppälä','Esa','VALKEALA',1957,2,2,0,22,9170,1090,nil,'R',0,nil,0,0]
values.push [1316829, nil, 'Seppälä','Janne','Oulu',1900,0,0,1,4,883.5,2828,'P',nil,0,nil,0,0]
values.push [1340536, nil, 'Seppälä','Tuomas','Helsinki',1965,0,0,0,6,4498,1977,nil,'S',0,nil,0,0]
values.push [14072376, nil, 'Seppänen','Kari','JÄRVENPÄÄ',1956,2,0,1,16,10432,1332,nil,'R',0,nil,0,0]
values.push [14072385, nil, 'Seppänen','Matti','HÄMEENLINNA',1958,0,1,0,5,2277,2424,nil,'R',0,nil,0,0]
values.push [1330805, nil, 'Seppänen','Taina','Espoo',1964,0,1,1,9,4507,1841,nil,'R',0,nil,0,0]
values.push [1316434, nil, 'Seppänen','Timo','Espoo',1963,0,3,3,31,14227.5,837,'P',nil,0,nil,0,0]
values.push [14072394, nil, 'Setälä','Jukka','FORSSA',1935,1,0,1,10,4611,1766,nil,'R',0,nil,0,0]
values.push [1327054, nil, 'Sevenius','Jani','Vantaa',1978,1,0,0,6,3755,2060,nil,'R',0,nil,0,0]
values.push [14072406, nil, 'Siekkinen','Asko','KOKEMÄKI',1945,1,0,0,6,2795,2161,nil,'R',0,nil,0,0]
values.push [14072415, nil, 'Sievänen','Eero','VANTAA',1936,3,2,2,36,10309,680,nil,'R',168,nil,0,0]
values.push [14072424, nil, 'Sievänen','Maire','VANTAA',1938,3,1,2,31,3823,852,nil,'R',218,nil,0,0]
values.push [1307841, nil, 'Siggberg','Patrik','HANKO',1967,1,1,1,15,7614,1401,nil,'R',0,nil,0,0]
values.push [14072433, nil, 'Sihvo','Kari','TUUSULA',1963,0,0,2,8,1824,1931,nil,nil,0,nil,0,0]
values.push [14072442, nil, 'Sihvo','Pauli','JUANKOSKI',1937,5,0,2,38,10820,640,nil,'R',70,nil,0,0]
values.push [14072451, nil, 'Sihvonen','Oiva','MIKKELI',1928,1,4,1,30,14881,898,nil,'R',192,nil,0,0]
values.push [14072460, nil, 'Sihvonen','Reijo','HELSINKI',1939,3,2,3,40,19651,593,nil,'R',236,nil,0,0]
values.push [1340426, nil, 'Siikamäki','Kirsti','ESPOO',1968,0,0,0,4,2077,2662,nil,'S',0,nil,0,0]
values.push [14072479, nil, 'Siiro','Raimo','KIRKKONUMMI',1944,1,0,1,10,2639,1797,nil,'R',0,nil,0,0]
values.push [1307757, nil, 'Siiskonen','Juhani','Lappeenranta',1940,2,3,5,47,26497.5,484,'P','R',542,nil,0,0]
values.push [14072488, nil, 'Siiskonen','Matti','MIKKELI',1945,3,1,0,23,18605,1044,nil,'R',0,nil,0,0]
values.push [1306279, nil, 'Siitonen','Jouni','Puumala',1958,0,2,1,18,10496,1226,'P','R',0,nil,0,0]
values.push [14072497, nil, 'Siitonen','Maria','PAIMIO',1946,0,0,2,8,2197,1924,nil,nil,0,nil,0,0]
values.push [14072509, nil, 'Siitonen','Sakari','HELSINKI',1926,12,2,2,90,30453.5,188,'P','R',17,nil,26,0]
values.push [1336223, nil, 'Siivola','Hannu','Pirkkala',1977,1,0,0,6,3047,2139,nil,'R',0,nil,0,0]
values.push [14072518, nil, 'Siivonen','Raimo','HYVINKÄÄ',1940,1,0,0,6,3850,2047,nil,'R',0,nil,0,0]
values.push [14072527, nil, 'Sikanen','Matti','KANGASNIEMI',1942,0,0,1,4,1514,2723,nil,'R',0,nil,0,0]
values.push [14072536, nil, 'Silander','Aarne','VARKAUS',1932,1,2,3,28,14127,955,nil,'R',0,nil,0,0]
values.push [14072545, nil, 'Silander','Lauri','VANTAA',1932,9,2,3,76,31051,249,'P','R',162,nil,76,0]
values.push [1306282, nil, 'Silander','Voitto','espoo',1948,2,0,2,20,12799,1145,nil,'R',0,nil,0,0]
values.push [14072554, nil, 'Silaste','Helena','HÄMEENLINNA',1946,0,1,0,5,2191,2436,nil,'R',0,nil,0,0]
values.push [14072563, nil, 'Silekoski','Bruno','TAMPERE',1914,0,0,1,4,374,2859,nil,'R',0,nil,0,0]
values.push [13132778, nil, 'Silius','Seppo','HELSINKI',1950,1,0,0,6,1802.5,2264,'P',nil,0,nil,0,0]
values.push [14072572, nil, 'Sillanpää','Hannu','TAMPERE',1952,1,0,0,6,2215,2222,nil,'R',0,nil,0,0]
values.push [1306295, nil, 'Sillanpää','Juhani','Helsinki',1947,20,5,2,159,86678,41,nil,'R',390,nil,177,43]
values.push [1306305, nil, 'Sillanpää','Soile','Helsinki',1946,11,2,1,86,20097,199,'P',nil,0,'A009',0,0]
values.push [1306318, nil, 'Siltala','Onni','Ummeljoki',1934,12,0,1,82,44951,218,nil,'R',749,nil,349,0]
values.push [14072581, nil, 'Siltanen','Matti','KUOPIO',1947,1,1,0,11,6986,1632,nil,'R',0,nil,0,0]
values.push [14072590, nil, 'Siltanen','Riitta','Turku',1965,1,0,0,6,3113,2135,nil,'R',0,nil,0,0]
values.push [1325726, nil, 'Silvennoinen','Anu','Anjalankoski',1900,1,0,0,6,1202.5,2305,'P',nil,0,nil,0,0]
values.push [1336799, nil, 'Silvola','Saija','HELSINKI',1972,0,0,1,4,1290.5,2758,'P',nil,0,nil,0,0]
values.push [14072602, nil, 'Silvola','Torsten','MASKU',1931,2,0,0,12,4471,1577,nil,'R',0,nil,0,0]
values.push [1336838, nil, 'Silvonen','Tomi','Heinola kk',1978,1,0,0,6,5675,1941,nil,'R',0,nil,0,0]
values.push [1339000, nil, 'Simberg','Heidi','Lahti',1979,0,1,0,5,1263,2520,'P',nil,0,nil,0,0]
values.push [14072611, nil, 'Simberg','Niklas','ESPOO',1956,1,0,1,10,5611,1741,nil,'R',0,nil,0,0]
values.push [1306321, nil, 'Similä','Juha','Imatra',1966,4,0,1,28,23545,945,nil,'R',0,nil,0,0]
values.push [1328435, nil, 'Similä','Mika','Lahti',1975,1,0,1,10,5846,1740,nil,'R',0,nil,0,0]
values.push [14072620, nil, 'Simola','Raino','TURKU',1961,0,0,1,4,3186,2567,nil,'R',0,nil,0,0]
values.push [14072639, nil, 'Simonen','Pentti','VIHTI',1946,2,1,1,21,13015,1110,nil,'R',0,nil,0,0]
values.push [14072648, nil, 'Simontschuk','Robert','HELSINKI',1955,0,0,1,4,611,2849,nil,'R',0,nil,0,0]
values.push [1306334, nil, 'Simontschuk','Sirkka','Helsinki',1951,0,0,2,8,1860,1930,nil,'R',0,nil,0,0]
values.push [1326097, nil, 'Sinivuori','Kari','HELSINKI',1968,1,2,0,16,11082,1326,nil,'R',0,nil,0,0]
values.push [1324918, nil, 'Sinnelä','Mauri','Suomusjärvi',1952,5,0,0,30,9138,909,'P',nil,0,'A031',0,0]
values.push [1316528, nil, 'Sinnelä','Terhi','Suomusjärvi',1976,2,0,0,12,3855.5,1584,'P',nil,0,nil,0,0]
values.push [14072657, nil, 'Sipari','Juhani','VALKEALA',1938,10,0,0,60,27703,394,nil,'R',238,nil,107,0]
values.push [14072666, nil, 'Sipi','Kalervo','TURKU',1946,6,2,5,66,31028,316,nil,'R',318,nil,159,0]
values.push [1332159, nil, 'Sipi','Markku','Espoo',1955,7,0,0,47,23430,485,nil,'R',796,nil,0,0]
values.push [14072675, nil, 'Sipilä','Jouni','TUUSULA',1956,0,1,1,9,8009,1811,nil,'R',0,nil,0,0]
values.push [1340264, nil, 'Sipilä','Sami','Tampere',1970,0,0,0,5,3411,2350,nil,'S',0,nil,0,0]
values.push [1329557, nil, 'Sipilä','Teemu','Hämeenlinna',1974,2,1,2,25,7886,1005,'P',nil,0,nil,0,0]
values.push [14072684, nil, 'Sipiläinen','Hannu','SEINÄJOKI',1949,13,0,1,82,56393,216,nil,'R',9,nil,7,0]
values.push [14072693, nil, 'Sipiläinen','Vesa','HELSINKI',1947,1,0,1,10,8377,1701,nil,nil,0,nil,0,0]
values.push [14072705, nil, 'Sipponen','Heikki','ASIKKALA',1933,5,0,0,30,25280,857,nil,'R',71,nil,0,0]
values.push [1333970, nil, 'Sippu','Ossi','Varkaus',1975,5,1,0,41,31164.5,567,'P','R',0,nil,0,0]
values.push [1307744, nil, 'Sirkiä','Jarkko','espoo',1972,1,0,0,6,3550,2086,nil,'R',0,nil,0,0]
values.push [1335295, nil, 'Sirkiä','Mikko','Espoo',1967,0,3,2,27,8679,979,'P',nil,0,nil,0,0]
values.push [14072714, nil, 'Sirkka','Antero','KERAVA',1947,1,0,2,14,5638,1452,nil,'R',0,nil,0,0]
values.push [1306347, nil, 'Sirola','Risto','Tuusula',1944,6,7,3,83,50911.5,210,'P','R',634,nil,315,0]
values.push [1306350, nil, 'Sironen','Pasi','Pääjärvi',1968,3,0,0,18,12863,1210,nil,'R',0,nil,0,0]
values.push [14072723, nil, 'Sissala','Jaakko','SEINÄJOKI',1939,3,1,2,31,15581,834,nil,'R',172,nil,0,0]
values.push [1327614, nil, 'Sissala','Jarmo','tuuri',1960,1,0,0,6,2433.5,2199,'P',nil,0,nil,0,0]
values.push [14072732, nil, 'Sissala','Toivo','KANGASALA',1935,3,2,1,32,15517,802,nil,'R',166,nil,0,0]
values.push [14072741, nil, 'Sistonen','Antti','IMATRA',1945,1,1,1,15,4673,1422,nil,'R',0,nil,0,0]
values.push [1330656, nil, 'Sitari','Hanna','Tampere',1983,0,0,1,4,806,2834,'P',nil,0,nil,0,0]
values.push [1307537, nil, 'Sjö','Olli','Uusitalo',1961,1,5,2,39,30788,600,nil,'R',594,nil,0,0]
values.push [14072750, nil, 'Sjöblom','Christer','KAUNIAINEN',1947,2,1,4,33,11090,776,nil,'R',400,nil,0,0]
values.push [1306363, nil, 'Sjösten','Jukka','KAARINA',1968,3,4,0,38,15424.5,638,'P',nil,0,'A018',0,0]
values.push [14072769, nil, 'Skyten','Aimo','HYVINKÄÄ',1956,2,0,0,12,6697,1539,nil,'R',0,nil,0,0]
values.push [14072778, nil, 'Slant','Teuvo','HARTOLA',1950,1,0,0,6,5547,1943,nil,nil,0,nil,0,0]
values.push [14072787, nil, 'Slotte','Staffan','ESPOO',1948,7,1,0,47,32072,479,nil,'R',124,nil,0,0]
values.push [14072796, nil, 'Sneck','Kalle','VANTAA',1941,0,1,2,13,5008,1474,nil,'R',0,nil,0,0]
values.push [1338807, nil, 'Snellman','Pekka','TAMPERE',1974,0,0,1,9,4054.5,1852,'P',nil,0,nil,0,0]
values.push [14072808, nil, 'Soikkeli','Tero','HELSINKI',1965,1,3,1,25,13892,996,nil,'R',0,nil,0,0]
values.push [1316353, nil, 'Soini','Jouko','Kankaanpää',1945,1,3,1,25,14019,995,nil,'R',0,nil,0,0]
values.push [14072817, nil, 'Soini','Matti','PORVOO',1949,7,0,1,46,37730,490,nil,'R',114,nil,0,0]
values.push [14072826, nil, 'Soininen','Antti','TAMPERE',1944,12,1,0,77,42058,246,nil,'R',299,nil,124,0]
values.push [14072835, nil, 'Soininen','Tyko','VARKAUS',1933,0,1,2,13,6128,1471,nil,'R',0,nil,0,0]
values.push [1335428, nil, 'Soittila','Tapani','Eteläinen',1959,0,0,2,8,3512,1910,'P',nil,0,nil,0,0]
values.push [14072844, nil, 'Sokura','Harri','NASTOLA',1965,0,1,0,5,4124,2321,nil,'R',0,nil,0,0]
values.push [14072853, nil, 'Sola','Ismo','NAANTALI',1952,10,0,0,60,47421,377,nil,'R',116,nil,61,0]
values.push [14072862, nil, 'Solehmainen','Reino','LAPPEENRANT',1949,0,0,1,4,2643,2609,nil,'R',0,nil,0,0]
values.push [14072871, nil, 'Somersalmi','Yrjö','HELSINKI',1945,1,0,0,6,1933,2253,nil,'R',0,nil,0,0]
values.push [1306376, nil, 'Sommarberg','Pia','Lohja',1954,1,0,0,6,2883,2154,nil,'R',0,nil,0,0]
values.push [14072880, nil, 'Soon','Keijo','RUSKO',1945,1,0,0,6,1688,2273,nil,'R',0,nil,0,0]
values.push [14072899, nil, 'Sorsa','Heikki','HELSINKI',1962,4,1,0,29,22350,923,nil,'R',0,nil,0,0]
values.push [14072901, nil, 'Sorsa','Kalevi','VANTAA',1932,8,2,1,62,28433,361,nil,'R',314,nil,135,0]
values.push [1336401, nil, 'Sorsa','Vesa','Helsinki',1969,1,0,0,6,1861.5,2258,'P',nil,0,nil,0,0]
values.push [14072910, nil, 'Sotikov','Pentti','TAMPERE',1950,5,2,1,44,38049,517,nil,'R',208,nil,0,0]
values.push [1334267, nil, 'Stenberg','Heikki','Nousiainen',1958,3,0,0,18,5556.5,1259,'P','R',0,nil,0,0]
values.push [14072929, nil, 'Stenfors','Helge','LILJENDAL',1934,4,1,0,29,14240,934,nil,'R',0,nil,0,0]
values.push [1337772, nil, 'Stenfors','Jan','Vantaa',1963,0,0,1,4,530.5,2855,'P',nil,0,nil,0,0]
values.push [1306389, nil, 'Stenvall','Raimo','Tuuusula',1937,11,4,11,135,53805.5,69,'P','R',474,nil,214,0]
values.push [1326770, nil, 'Stolze','Yrjö','Pirkkala',1958,2,0,0,12,8792,1501,nil,'R',0,nil,0,0]
values.push [14072938, nil, 'Stoor','Anne','KOKKOLA',1949,1,0,0,6,1820,2262,nil,'R',0,nil,0,0]
values.push [14072947, nil, 'Strandström','Tage','ESPOO',1933,1,1,0,11,4391,1676,nil,'R',0,nil,0,0]
values.push [14072956, nil, 'Streng','Göran','PIETARSAARI',1950,0,1,0,5,2220,2431,nil,nil,0,nil,0,0]
values.push [14072965, nil, 'Streng','Stig','PIETARSAARI',1941,1,1,0,11,4476,1672,nil,nil,0,nil,0,0]
values.push [1334225, nil, 'Stubb','Rita','hämeenlinna',1970,2,0,0,16,5420,1366,'P',nil,0,nil,0,0]
values.push [14072974, nil, 'Ståhlström','Janne','TURKU',1965,1,1,0,11,7208,1627,nil,'R',0,nil,0,0]
values.push [1306392, nil, 'Suhonen','Matti','Uskali',1939,0,2,0,10,4921,1755,nil,'R',0,nil,0,0]
values.push [1306402, nil, 'Suhonen','Mauno','Turku',1952,11,0,4,82,60395,215,nil,'R',467,nil,209,0]
values.push [14072983, nil, 'Suihkonen','Martti','KUOPIO',1948,3,1,0,23,13716,1053,nil,'R',0,nil,0,0]
values.push [14072992, nil, 'Sukki','Martti','TAMMELA',1939,5,0,0,30,18340,879,nil,'R',541,nil,0,0]
values.push [14073001, nil, 'Sula','Ville-Petteri','TURKU',1971,0,1,0,5,1364,2509,nil,'R',0,nil,0,0]
values.push [14073010, nil, 'Sulin','Matti','FORSSA',1941,1,2,4,32,16279,801,nil,'R',109,nil,0,0]
values.push [1325328, nil, 'Sulkava','Veli','Hämeenlinna',1964,1,0,2,14,4214,1461,'P','R',0,nil,0,0]
values.push [1306415, nil, 'Sulku','Seppo','Hämeenlinna',1950,0,3,9,51,15014,456,'P',nil,0,'A030',0,0]
values.push [1306428, nil, 'Sumiala','Kari','Rauma',1957,1,4,4,46,23972,499,nil,'R',780,nil,0,0]
values.push [1325014, nil, 'Summanen','Esa','Mikkeli',1953,3,2,0,28,16134,952,nil,'R',0,nil,0,0]
values.push [14073029, nil, 'Sundkvist','Ingvald','KOKKOLA',1934,2,0,0,12,6879,1536,nil,'R',0,nil,0,0]
values.push [1327847, nil, 'Sundman','Merja','Rauma',1952,8,1,1,63,28788,349,nil,'R',783,nil,0,0]
values.push [14073038, nil, 'Sundqvist','Veli','LOHJA',1939,2,1,1,21,13672,1107,nil,'R',0,nil,0,0]
values.push [14073047, nil, 'Sundvall','Erkki','SUOLAHTI',1935,2,2,2,30,8795,911,nil,'R',244,nil,0,0]
values.push [14073056, nil, 'Sundwall','Fred','ESPOO',1950,12,1,1,81,47070,223,nil,'R',308,nil,131,0]
values.push [14073065, nil, 'Suojärvi','Leila','HEINOLA',1948,2,0,0,12,8199,1509,nil,'R',0,nil,0,0]
values.push [14073074, nil, 'Suokas','Leena','SAVONLINNA',1959,1,2,1,20,7003,1159,nil,'R',0,nil,0,0]
values.push [14073083, nil, 'Suoknuuti','Harri','KUUSANKOSKI',1900,1,0,0,6,3828,2052,nil,'R',0,nil,0,0]
values.push [14073092, nil, 'Suomela','Kari','ESPOO',1966,0,1,0,5,2400,2418,nil,'R',0,nil,0,0]
values.push [1329324, nil, 'Suomela','Margit','Rauma',1953,0,0,1,4,2614,2614,nil,'R',0,nil,0,0]
values.push [14073104, nil, 'Suomi','Ilkka','LAHTI',1944,1,0,0,6,1667,2277,nil,'R',0,nil,0,0]
values.push [1328985, nil, 'Suomi','Maarit','Turku',1961,3,3,2,41,12467.5,577,'P','R',0,nil,0,0]
values.push [14073113, nil, 'Suominen','Jukka','MYNÄMÄKI',1965,0,1,0,5,3430,2349,nil,'R',0,nil,0,0]
values.push [1335046, nil, 'Suominen','Ritva','Kutajärvi',1958,4,1,0,34,6858.5,745,'P',nil,0,nil,0,0]
values.push [14073122, nil, 'Suominen','Tauno','JÄRVENPÄÄ',1955,0,0,1,4,2832,2590,nil,'R',0,nil,0,0]
values.push [14073131, nil, 'Suonio','Jussi','HÄMEENLINNA',1962,0,0,1,4,1619,2712,nil,'R',0,nil,0,0]
values.push [1335237, nil, 'Suono','Jari','Vantaa',1968,2,0,0,12,8314,1508,nil,'R',0,nil,0,0]
values.push [1306431, nil, 'Suoranta','Mikko','Espoo',1900,0,0,2,8,4540,1895,nil,'R',0,nil,0,0]
values.push [1333682, nil, 'Suotunen','Pekka','Nousiainen',1956,0,1,0,5,3015,2376,nil,'R',0,nil,0,0]
values.push [1306444, nil, 'Suoverinaho','Kalervo','Hämeenlinna',1938,16,5,1,125,73928.5,83,'P','R',149,'A003T',70,0]
values.push [1339068, nil, 'Supponen','Lauri','Helsinki',1988,0,1,0,10,4543.5,1768,'P',nil,0,nil,0,0]
values.push [1306457, nil, 'Supponen','Matti','Bryssel',1953,16,0,0,102,59020,148,nil,'R',688,nil,317,0]
values.push [1336935, nil, 'Supponen','Sanna','helsinki',1981,2,0,0,12,3840,1587,'P',nil,0,nil,0,0]
values.push [14073140, nil, 'Sutinen','Kari','HELSINKI',1956,0,1,0,5,2942,2384,nil,'R',0,nil,0,0]
values.push [1307760, nil, 'Suuronen-Pippola','Virpi','Outokumpu',1960,1,0,1,10,6728,1718,nil,'R',0,nil,0,0]
values.push [14073159, nil, 'Suur-Uski','Erkki','KOTKA',1900,0,1,0,5,3540,2341,nil,'R',0,nil,0,0]
values.push [14073168, nil, 'Suutari','Matti','LAUKAA',1938,5,0,0,30,21610,867,nil,'R',75,nil,0,0]
values.push [14073177, nil, 'Suvanto','Esa','RAISIO',1956,1,0,1,10,4563,1767,nil,'R',0,nil,0,0]
values.push [1332104, nil, 'Suvantola','Jaakko','Savonlinna',1966,1,0,0,6,1756.5,2270,'P',nil,0,nil,0,0]
values.push [1333909, nil, 'Svenskberg','Lars','LOHJA',1949,2,4,0,37,14074,651,'P',nil,0,'A091',0,0]
values.push [14073186, nil, 'Sydänmaanlakka','Jyrki','VALKEALA',1961,0,1,0,5,1490,2496,nil,'R',0,nil,0,0]
values.push [14073195, nil, 'Sydänmaanlakka','Pau','VALKEALA',1939,1,0,0,6,1416,2296,nil,'R',0,nil,0,0]
values.push [1333983, nil, 'Syrjänen','Ville','Espoo',1964,1,2,0,16,4843.5,1369,'P',nil,0,nil,0,0]
values.push [14073207, nil, 'Säkkinen','Kai','VIHTI',1958,0,0,1,4,2536,2623,nil,'R',0,nil,0,0]
values.push [1306460, nil, 'Särkelä','Erkki','Vantaa',1953,0,0,1,4,884.5,2827,'P',nil,0,nil,0,0]
values.push [1339945, nil, 'Särkilahti','Eero','ESPOO',1991,0,0,0,5,3021,2375,nil,'S',0,nil,0,0]
values.push [1340293, nil, 'Särkilahti','Tuomas','ESPOO',1965,0,0,0,5,2968,2380,nil,'S',0,nil,0,0]
values.push [1335130, nil, 'Särkkä','Jussi','Vantaa',1961,1,0,0,6,4443,1984,nil,'R',0,nil,0,0]
values.push [14073216, nil, 'Särkkä','Matti','VARKAUS',1946,4,1,1,33,18041,768,nil,'R',205,nil,0,0]
values.push [1306473, nil, 'Särkänlahti','Helena','Vammala',1959,0,2,1,14,5508,1455,nil,'R',0,nil,0,0]
values.push [1325522, nil, 'Särkänmäki','Heikki','LAMMI',1963,1,1,0,11,9120,1601,nil,'R',0,nil,0,0]
values.push [1340455, nil, 'Särmäntö','Liisa','Ylönkylä',1978,0,0,0,6,3425,2099,nil,'S',0,nil,0,0]
values.push [1336469, nil, 'Särmäntö','Päivi','HALIKKO',1977,3,1,0,29,11262,940,'P',nil,0,nil,0,0]
values.push [14073225, nil, 'Säteri','Into','TURKU',1920,2,1,0,17,4730,1311,nil,'R',0,nil,0,0]
values.push [14073234, nil, 'Söderström','Martin','KIRKKONUMMI',1954,1,0,0,6,2597,2182,nil,nil,0,nil,0,0]
values.push [1330753, nil, 'Taajamaa','Janne','Helsinki',1973,0,1,0,5,2704,2395,nil,'R',0,nil,0,0]
values.push [14073243, nil, 'Tahkola','Risto','KUUSAMO',1962,4,1,0,29,24814,921,nil,'R',0,nil,0,0]
values.push [14073252, nil, 'Tahkola','Sointu','KUUSAMO',1969,0,1,0,5,3708,2329,nil,'R',0,nil,0,0]
values.push [1306486, nil, 'Tahkola','Tauno','KUUSAMO',1951,12,1,1,81,64866,222,nil,'R',370,nil,180,0]
values.push [14073261, nil, 'Tahvanainen','Visa','TAIPALSAARI',1951,1,1,0,11,6340,1640,nil,'R',0,nil,0,0]
values.push [1307566, nil, 'Taipale','Harri','Lievestuore',1962,1,0,0,6,5127,1951,nil,'R',0,nil,0,0]
values.push [1329395, nil, 'Takala','Sami','Lahti',1972,2,1,1,21,12401,1116,'P','R',0,nil,0,0]
values.push [1329405, nil, 'Takala','Santeri','JYVÄSKYLÄ',1985,4,1,0,29,16890.5,930,'P','R',0,nil,0,0]
values.push [1334856, nil, 'Takanen','Marko','Espoo',1980,0,1,2,13,5338.5,1473,'P','R',0,nil,0,0]
values.push [1306499, nil, 'Takkinen','Reijo','Naarajärvi',1952,3,0,0,18,10599,1222,nil,'R',0,nil,0,0]
values.push [14073270, nil, 'Talas','Timo','HELSINKI',1944,0,1,1,9,4491,1842,nil,'R',0,nil,0,0]
values.push [1306509, nil, 'Talikka','Aarne','SALO',1949,25,2,0,165,96403,35,'P','R',385,'A038T',172,0]
values.push [14073289, nil, 'Talja','Pertti','ESPOO',1953,0,0,1,4,2196,2651,nil,'R',0,nil,0,0]
values.push [14073298, nil, 'Talvio','Markku','VANTAA',1943,1,0,0,6,869,2313,nil,nil,0,nil,0,0]
values.push [1316625, nil, 'Tammi','Kari','ESPOO',1974,3,0,0,18,5430,1260,'P',nil,0,nil,0,0]
values.push [14073300, nil, 'Tamminen','Harri','HELSINKI',1964,0,2,0,10,6504,1722,nil,'R',0,nil,0,0]
values.push [1306512, nil, 'Tamminen','Keijo','Helsinki',1933,26,0,0,156,77829,46,nil,'R',12,nil,10,6]
values.push [14073319, nil, 'Tamminen','Raija','HELSINKI',1900,0,0,1,4,652,2847,nil,'R',0,nil,0,0]
values.push [14073328, nil, 'Tamminen','Seppo','ASKOLA',1948,3,1,2,31,21046,824,nil,'R',327,nil,0,0]
values.push [14073337, nil, 'Tamminen','Viljo','ESPOO',1930,19,1,0,119,74530,95,nil,'R',41,nil,31,0]
values.push [14073346, nil, 'Tammivuori','Tapio','RAUMA',1945,14,4,2,112,38033,117,nil,'R',23,nil,18,0]
values.push [14073355, nil, 'Tanhua','Heikki','TAMPERE',1969,0,1,0,5,2481,2414,nil,'R',0,nil,0,0]
values.push [1337400, nil, 'Tanhuanpää','Heikki','Hollola',1950,0,0,1,4,1302.5,2753,'P',nil,0,nil,0,0]
values.push [14073364, nil, 'Tanska','Vesa','HATTULA',1943,1,1,0,11,6305,1642,nil,'R',0,nil,0,0]
values.push [14073373, nil, 'Tanttu','Matti','ESPOO',1948,8,0,1,52,37255,439,nil,'R',130,nil,0,0]
values.push [1331367, nil, 'Tapanainen','Samuli','hämeenlinna',1975,4,1,0,29,19013,927,'P','R',0,nil,0,0]
values.push [1333666, nil, 'Tarkiainen','Toni','Varkaus',1980,1,0,0,6,2318.5,2209,'P',nil,0,nil,0,0]
values.push [1326479, nil, 'Tarkio','Petteri','Veikkola',1967,0,0,1,4,2069,2663,nil,'R',0,nil,0,0]
values.push [1335282, nil, 'Tarvus','Jari','SORSAKOSKI',1969,0,0,1,4,1459,2732,'P',nil,0,nil,0,0]
values.push [14073382, nil, 'Taskinen','Keijo','KERAVA',1947,3,0,0,18,9154,1229,nil,nil,0,nil,0,0]
values.push [14073391, nil, 'Taskinen','Lauri','HÄMEENLINNA',1950,1,0,6,30,17935,883,nil,'R',624,nil,0,0]
values.push [14073403, nil, 'Taskinen','Reino','LAPPEENRANT',1916,1,0,1,10,1898,1806,nil,'R',0,nil,0,0]
values.push [14073412, nil, 'Taskinen','Vili','MIKKELI',1939,1,0,0,6,2211,2225,nil,'R',0,nil,0,0]
values.push [1306538, nil, 'Taurama','Markku','Saimaanharju',1955,8,0,3,60,49281,376,nil,'R',684,nil,328,0]
values.push [1306541, nil, 'Teho','Valle','Espoo',1900,0,1,0,5,2266,2427,'P',nil,0,nil,0,0]
values.push [14073421, nil, 'Teir','Henrik','KAUNIAINEN',1944,5,2,1,44,20948,531,nil,'R',300,nil,0,0]
values.push [1332120, nil, 'Teittinen','Matti','Turku',1961,5,2,0,46,30651,496,nil,'R',797,nil,0,0]
values.push [13132899, nil, 'Teittinen','Matti','Turku',1937,0,3,3,27,18811,969,nil,'R',0,nil,0,0]
values.push [1325234, nil, 'Teittinen','Petri','Virkkala',1971,0,1,0,5,4503,2315,nil,'R',0,nil,0,0]
values.push [1326301, nil, 'Tella','Kirsti','RAUMA',1955,6,1,0,41,10018.5,581,'P',nil,0,'A032',0,0]
values.push [1339314, nil, 'Tenho','Mikko','Vanhalinna',1978,0,0,1,10,6006.5,1735,'P',nil,0,nil,0,0]
values.push [14073430, nil, 'Tenhunen','Jorma','NILSIÄ',1942,4,1,1,33,21579,754,nil,'R',394,nil,0,0]
values.push [14073449, nil, 'Tenhunen','Sakari','HELSINKI',1933,0,1,0,5,1412,2503,nil,'R',0,nil,0,0]
values.push [1306554, nil, 'Tenkanen','Matti','Helsinki',1946,3,1,2,31,15981,833,nil,'R',754,nil,0,0]
values.push [1306567, nil, 'Tennilä','Heikki','Eteläinen',1964,4,1,0,29,16647.5,931,'P','R',0,nil,0,0]
values.push [1330245, nil, 'Tepponen','Janne','Pieksämäki',1970,0,0,3,12,5484,1563,'P','R',0,nil,0,0]
values.push [1306583, nil, 'Tersa','Pekka','Hämeenlinna',1953,0,1,2,13,6284,1470,nil,'R',0,nil,0,0]
values.push [1306596, nil, 'Tervonen','Esa','Klaukkala',1968,1,1,0,11,7696,1619,nil,'R',0,nil,0,0]
values.push [14073458, nil, 'Teräväinen','Yrjö','SOMERO',1948,1,0,0,6,4569,1975,nil,'R',0,nil,0,0]
values.push [14073467, nil, 'Thorström','Börje','KAUNIAINEN',1941,1,0,1,10,5495,1744,nil,'R',0,nil,0,0]
values.push [14073476, nil, 'Tiainen','Antti','HYVINKÄÄ',1957,5,0,0,30,18886,878,nil,'R',458,nil,0,0]
values.push [1326123, nil, 'Tiainen','Hannu','NIVALA',1966,1,0,1,10,6320,1727,nil,'R',0,nil,0,0]
values.push [14073485, nil, 'Tiainen','Markku','KEURUU',1949,6,4,0,56,30959,419,nil,'R',473,nil,0,0]
values.push [1337879, nil, 'Tiensuu','Elisa','Espoo',1964,0,1,0,5,576.5,2548,'P',nil,0,nil,0,0]
values.push [14073494, nil, 'Tiensuu','Tapio','NURMES',1948,0,0,1,4,2851,2586,nil,'R',0,nil,0,0]
values.push [14073506, nil, 'Tihilä','Kai','TURKU',1962,0,0,1,4,2021,2668,nil,'R',0,nil,0,0]
values.push [1324921, nil, 'Tiihonen','Antti','MIKKELI',1973,1,0,1,10,6372.5,1725,'P','R',0,nil,0,0]
values.push [1325470, nil, 'Tiihonen','Katri','Hollola kk',1959,2,0,0,12,3339.5,1591,'P',nil,0,nil,0,0]
values.push [14073515, nil, 'Tiilikka','Juha','HYVINKÄÄ',1964,0,1,1,9,5279,1829,nil,'R',0,nil,0,0]
values.push [1340060, nil, 'tiimo','jari','Lappeenranta',1963,0,0,0,6,3728,2064,nil,'S',0,nil,0,0]
values.push [1306606, nil, 'Tiirikainen','Aarno','IMATRA',1945,10,4,6,104,65138,142,'P','R',311,nil,133,0]
values.push [1333433, nil, 'Tiirikainen','Samuli','Jämsänkoski',1974,0,0,1,4,1480.5,2726,'P',nil,0,nil,0,0]
values.push [1335732, nil, 'Tiitinen','Veli-Matti','Suonenjoki',1951,5,0,1,40,20432.5,592,'P','R',0,nil,0,0]
values.push [14073524, nil, 'Tiittanen','Ari','ESPOO',1959,0,0,3,12,4573,1575,nil,'R',0,nil,0,0]
values.push [1306619, nil, 'Tiitto-With','Liisa','Vantaa',1900,0,0,1,4,0,2862,'P',nil,0,nil,0,0]
values.push [14073533, nil, 'Tikkanen','Heikki','SALO',1945,2,0,0,12,7243,1530,nil,'R',0,nil,0,0]
values.push [14073542, nil, 'Tikkanen','Mauno','LAMMI',1926,2,1,0,17,9714,1292,nil,'R',0,nil,0,0]
values.push [1336919, nil, 'Tikkanen','Paavo','Somero',1963,0,1,0,5,3644,2332,nil,'R',0,nil,0,0]
values.push [1307663, nil, 'Tikkanen','Tapio','Varkaus',1955,1,0,1,10,8870,1700,nil,'R',0,nil,0,0]
values.push [14073551, nil, 'Timberg','Ville-Veikko','HELSINKI',1900,0,1,1,9,5697,1823,nil,'R',0,nil,0,0]
values.push [1306622, nil, 'Timonen','Marlen','Kokkola',1955,0,0,1,4,926,2820,'P',nil,0,nil,0,0]
values.push [1307650, nil, 'Timperi','Jaakko','SUMMA',1941,21,3,4,157,101934,43,'P','R',220,'A048T',103,0]
values.push [1306635, nil, 'Tistelgren','Raimo','imatra',1946,4,4,4,60,44235,378,nil,'R',392,nil,243,0]
values.push [14073560, nil, 'Toikkanen','Heikki','JYVÄSKYLÄ',1954,1,0,0,6,2948,2150,nil,'R',0,nil,0,0]
values.push [14073579, nil, 'Toimela','Markku','PARIKKALA',1948,1,0,0,6,2212,2224,nil,'R',0,nil,0,0]
values.push [14073588, nil, 'Toivanen','Markku','HELSINKI',1953,2,2,3,34,25608,713,nil,'R',224,nil,0,0]
values.push [14073597, nil, 'Toivanen','Niilo','VANTAA',1938,16,0,0,96,69541,165,nil,'R',5,nil,5,0]
values.push [1306648, nil, 'Toivola','Antti','Liperi',1961,4,1,3,41,31650,566,nil,'R',450,nil,0,0]
values.push [1306651, nil, 'Toivola','Mikko','Liperi',1953,8,1,2,61,48462,364,nil,'R',484,nil,251,0]
values.push [1306664, nil, 'Toivonen','Erkki','Hyvinkää',1936,12,5,3,109,32287.5,128,'P','R',316,nil,134,0]
values.push [1327038, nil, 'Toivonen','Leena','Jyväskylä',1949,3,1,0,23,8900,1059,nil,'R',0,nil,0,0]
values.push [14073609, nil, 'Toivonen','Matti','LAPPAJÄRVI',1939,2,0,0,12,4397,1578,nil,'R',0,nil,0,0]
values.push [14073618, nil, 'Toivonen','Vellamo','HELSINKI',1949,5,0,0,30,19501,871,nil,'R',185,nil,0,0]
values.push [14073627, nil, 'Toivonoja','Raimo','LAHTI',1946,0,3,0,15,10082,1383,nil,'R',0,nil,0,0]
values.push [1306677, nil, 'Tolmunen','Ari','Saarijärvi',1953,4,3,4,59,35002,401,nil,'R',504,nil,0,0]
values.push [14073636, nil, 'Tolonen','Arvo','KERAVA',1943,1,1,0,11,8753,1605,nil,'R',0,nil,0,0]
values.push [14073645, nil, 'Tolonen','Pekka','SEINÄJOKI',1944,1,0,0,6,3837,2049,nil,'R',0,nil,0,0]
values.push [1306680, nil, 'Tolvanen','Ari','Varkaus',1953,27,2,0,178,123721,26,nil,'R',290,nil,121,34]
values.push [14073654, nil, 'Tolvanen','Ari J','LIPERI',1966,2,2,2,30,13234,902,nil,'R',731,nil,0,0]
values.push [14073663, nil, 'Tolvanen','Jouko','TUUSULA',1939,7,2,3,64,37143,337,nil,'R',96,nil,84,0]
values.push [1336016, nil, 'Tolvanen','Lasse','VARKAUS',1990,0,1,0,5,1595,2484,'P',nil,0,nil,0,0]
values.push [14073672, nil, 'Tolvanen','Matti','VANTAA',1942,0,1,0,5,1967,2454,nil,'R',0,nil,0,0]
values.push [1306703, nil, 'Tolvanen','Oiva','Maaninka',1941,1,0,2,14,9209,1435,nil,'R',0,nil,0,0]
values.push [1325616, nil, 'Tolvanen','Olavi','Rantasalmi',1955,10,0,0,60,43279,379,nil,'R',764,nil,352,0]
values.push [1331215, nil, 'Tolvanen','Pekka','Varkaus',1955,2,2,2,30,9328,908,'P',nil,0,'A082',0,0]
values.push [1337811, nil, 'Tonteri','Raili','MURAKKA',1958,2,0,0,18,5214.5,1262,'P',nil,0,nil,0,0]
values.push [14073681, nil, 'Toriseva','Toivo','HARJAVALTA',1935,1,2,1,20,10263,1151,nil,'R',0,nil,0,0]
values.push [1327326, nil, 'Tormilainen','Juhana','Veikkola',1972,0,0,1,4,1393,2740,'P',nil,0,nil,0,0]
values.push [1327672, nil, 'Torniainen','Voitto','Helsinki',1943,7,1,4,63,35326,347,nil,'R',307,nil,293,0]
values.push [1306716, nil, 'Toroi','Jari','Joroinen',1961,1,7,5,61,42304,367,nil,'R',719,nil,350,0]
values.push [1335758, nil, 'Torpo','Lasse','NOKIA',1974,1,0,0,6,6000,1937,nil,'R',0,nil,0,0]
values.push [1306729, nil, 'Torttila','Seppo','Kirkkonummi',1937,25,3,5,185,85353.5,21,'P','R',55,nil,39,16]
values.push [14073690, nil, 'Tossavainen','Matti','ESPOO',1941,1,0,1,10,3770,1783,nil,'R',0,nil,0,0]
values.push [1332476, nil, 'Trygg','Anna-Kaisa','Lohja',1978,1,0,1,10,2622,1799,'P',nil,0,nil,0,0]
values.push [1307647, nil, 'Trygg','Ilkka','Lohja',1954,4,1,1,33,24206,753,nil,'R',774,nil,0,0]
values.push [1340329, nil, 'Tukiainen','Teemu','Espoo',1983,0,0,0,5,3370,2355,nil,'S',0,nil,0,0]
values.push [1331671, nil, 'Tukiainen','Tiina','Helsinki',1977,0,0,1,4,2063,2666,nil,'R',0,nil,0,0]
values.push [14073702, nil, 'Tuliniemi','Risto','NASTOLA',1946,1,0,1,10,4063,1778,nil,nil,0,nil,0,0]
values.push [14073711, nil, 'Tuliniemi','Ritva','NASTOLA',1940,2,0,1,16,7618,1354,nil,'R',0,nil,0,0]
values.push [14073720, nil, 'Tulkki','Markku','SÄKYLÄ',1944,0,1,2,13,10679,1464,nil,'R',0,nil,0,0]
values.push [1328338, nil, 'Tunnela','Jyrki','Espoo',1967,1,1,0,11,2717.5,1690,'P',nil,0,nil,0,0]
values.push [1306732, nil, 'Tunturi','Jari','Hämeenlinna',1966,12,1,2,85,74085,200,'P','R',528,nil,263,0]
values.push [1306745, nil, 'Tunturi','Markku','Valkeakoski',1943,26,6,4,208,168371,9,nil,'R',1,nil,19,15]
values.push [14073739, nil, 'Tuokko','Olavi','TÖYSÄ',1948,1,0,0,6,4453,1982,nil,'R',0,nil,0,0]
values.push [1306758, nil, 'Tuomaala','Juhani','KOKKOLA',1954,9,2,1,68,52661,300,nil,'R',555,nil,261,0]
values.push [14073748, nil, 'Tuomainen','Aarre','VARKAUS',1942,9,0,2,62,53697,352,nil,'R',147,nil,73,0]
values.push [14073757, nil, 'Tuomainen','Ilkka','ÄÄNEKOSKI',1934,2,0,0,12,5459,1564,nil,'R',0,nil,0,0]
values.push [14073766, nil, 'Tuomala','Raimo','KOUVOLA',1944,3,1,2,31,20229,826,nil,'R',451,nil,0,0]
values.push [14073775, nil, 'Tuominen','Esa','LAHTI',1943,0,1,2,13,5848,1472,nil,'R',0,nil,0,0]
values.push [1340390, nil, 'Tuominen','Juho','SUURIMAA',1998,0,0,0,6,4259,2003,nil,'S',0,nil,0,0]
values.push [14073784, nil, 'Tuominen','Matti','KERAVA',1946,0,1,0,5,2507,2412,nil,nil,0,nil,0,0]
values.push [14073793, nil, 'Tuominen','Pekka','LAHTI',1935,1,1,1,15,4791,1420,nil,nil,0,nil,0,0]
values.push [1306761, nil, 'Tuominen','Veli-Matti','Isokyrö',1956,2,1,0,17,10705,1284,nil,'R',0,nil,0,0]
values.push [1339958, nil, 'Tuomisto','Elina','RAUMA',1969,0,0,0,6,2248,2216,nil,'S',0,nil,0,0]
values.push [14073805, nil, 'Tuormala','Juha','HELSINKI',1944,0,1,1,9,5178,1830,nil,'R',0,nil,0,0]
values.push [1330180, nil, 'Tuovila','Erkki','Tuusula',1964,2,2,2,36,16794.5,672,'P',nil,0,'A098',0,0]
values.push [1306774, nil, 'Tuovinen','Jouko','Ylämylly',1941,4,1,1,33,19545,761,nil,'R',610,nil,0,0]
values.push [1325085, nil, 'Turanlahti','Erkki','HELSINKI 16',1954,1,0,1,10,5519,1743,nil,'R',0,nil,0,0]
values.push [1339411, nil, 'Turanlahti','Mailiina','Espoo',1981,0,0,0,5,2361,2419,nil,'S',0,nil,0,0]
values.push [14073814, nil, 'Turenius','Turja','SEINÄJOKI',1948,1,0,0,6,2318,2210,nil,'R',0,nil,0,0]
values.push [1331668, nil, 'Turkka','Esko','KOUVOLA',1956,0,1,3,17,5326.5,1309,'P',nil,0,nil,0,0]
values.push [1339178, nil, 'Turkka','Tuukka','JOENSUU',1983,1,0,0,6,5610,1942,nil,'R',0,nil,0,0]
values.push [14073823, nil, 'Turpiainen','Janne','HYVINKÄÄ',1965,1,0,0,6,2974,2145,nil,'R',0,nil,0,0]
values.push [14073832, nil, 'Turtiainen','Jari','VALKEALA',1968,1,0,0,6,3964,2034,nil,'R',0,nil,0,0]
values.push [1306787, nil, 'Turtiainen','Pertti','Hämeenlinna',1935,5,4,7,78,37671,240,'P','R',207,nil,115,0]
values.push [1306790, nil, 'Turunen','Kari','KERAVA',1960,7,2,3,64,32601,339,'P','R',558,nil,310,0]
values.push [1325865, nil, 'Turunen','Markku','Nurmijärvi',1974,0,0,1,4,1291,2757,'P',nil,0,nil,0,0]
values.push [1337992, nil, 'Turunen','Riikka','Kotka',1978,1,1,0,11,3112,1686,'P',nil,0,nil,0,0]
values.push [1325755, nil, 'Turunen','Tero','Kerava',1988,1,0,1,10,3662.5,1786,'P',nil,0,nil,0,0]
values.push [1306800, nil, 'Turunen','Tuomas','Kerava',1986,4,0,0,24,9606,1033,'P',nil,0,nil,0,0]
values.push [1306813, nil, 'Turunen','Veikko','Tuusula',1955,1,5,2,39,18863,616,nil,'R',718,nil,0,0]
values.push [1331341, nil, 'Tuuli','Kari','Espoo',1965,0,1,2,13,1114,1482,'P','R',0,nil,0,0]
values.push [1306826, nil, 'Tuura','Jukka','Pieksämäki',1957,3,0,7,46,31454.5,495,'P','R',742,nil,0,0]
values.push [1334238, nil, 'Tykkä','Tiina','Järvenpää',1963,0,1,0,5,1215.5,2525,'P',nil,0,nil,0,0]
values.push [14073841, nil, 'Tylli','Veikko','LAPPEENRANT',1927,0,2,1,14,4790,1459,nil,'R',0,nil,0,0]
values.push [14073850, nil, 'Tyllilä','Teuvo','TUUSULA',1930,1,3,6,45,13439,513,nil,'R',401,nil,0,0]
values.push [1335004, nil, 'Tynys','Jarkko','Kouvola',1969,2,1,0,17,6299.5,1305,'P',nil,0,nil,0,0]
values.push [14073869, nil, 'Tyrisevä','Veikko','LAPPEENRANT',1937,3,2,4,44,24505,527,nil,'R',212,nil,0,0]
values.push [1306839, nil, 'Tyrkäs','Jouko','Vantaa',1950,11,4,5,112,77647,115,nil,'R',271,nil,247,0]
values.push [14073878, nil, 'Tyynelä','Veikko','SAVONLINNA',1952,5,1,2,43,29713,537,nil,'R',126,nil,0,0]
values.push [1306855, nil, 'Tyyskänen','Heli','Masku',1952,0,3,7,43,17973,545,'P','R',628,nil,0,0]
values.push [14073887, nil, 'Tähtinen','Kimmo','LOVIISA',1962,1,1,1,15,11190,1379,nil,'R',0,nil,0,0]
values.push [14073896, nil, 'Täppinen','Fjalar','KARJAA',1945,1,1,0,11,6189,1645,nil,'R',0,nil,0,0]
values.push [1306868, nil, 'Törrönen','Rolf','SIPOO',1937,18,0,0,108,69633,130,nil,'R',376,nil,167,0]
values.push [14073908, nil, 'Uimonen','Teuvo','HELSINKI',1947,4,2,1,38,23426,629,nil,'R',254,nil,0,0]
values.push [1338331, nil, 'Uitto','Pauli','Kouvola',1986,2,0,0,12,4003.5,1583,'P',nil,0,nil,0,0]
values.push [14073917, nil, 'Ukkola','Veikko','HYVINKÄÄ',1950,0,0,1,4,1763,2693,nil,'R',0,nil,0,0]
values.push [1306871, nil, 'Ulander','Aarne','Oulu',1935,3,2,1,32,16595,797,nil,'R',779,nil,0,0]
values.push [14073926, nil, 'Unkila','Tapani','TAMPERE',1956,1,0,0,6,1780,2267,nil,'R',0,nil,0,0]
values.push [14073935, nil, 'Unkila','Timo','TAMPERE',1930,2,1,0,17,4323,1312,nil,'R',0,nil,0,0]
values.push [14073944, nil, 'Uotila','Ailo','ESPOO',1939,1,0,2,14,5663,1451,nil,'R',0,nil,0,0]
values.push [1306884, nil, 'Uotila','Eija-Leena','Hämeenlinna',1960,0,0,2,8,2225.5,1923,'P',nil,0,nil,0,0]
values.push [14073953, nil, 'Uotila','Seppo','ESPOO',1952,1,0,0,6,1601,2281,nil,nil,0,nil,0,0]
values.push [1337510, nil, 'Uotinen','Pasi','Hollola',1970,2,0,1,21,8200,1129,'P',nil,0,nil,0,0]
values.push [1335020, nil, 'Uotinen','Piia','Hollola',1971,1,3,1,31,7899.5,848,'P',nil,0,nil,0,0]
values.push [1339217, nil, 'Uurtio-Keränen','Raija','Kajaani',1961,1,0,0,12,3451,1590,'P',nil,0,nil,0,0]
values.push [1339327, nil, 'Uusiheimala','Petri','hyvinkää',1965,0,0,1,8,2579.5,1917,'P',nil,0,nil,0,0]
values.push [1306897, nil, 'Uusitalo','Reino','Huutjärvi',1945,8,5,9,114,64958,110,nil,'R',477,nil,216,0]
values.push [1329683, nil, 'Uutela','Jari','Muurla',1967,3,0,0,18,8843,1233,'P','R',0,nil,0,0]
values.push [1329133, nil, 'Uuttu','Sini','Espoo',1974,1,1,1,15,3911.5,1424,'P',nil,0,nil,0,0]
values.push [1337439, nil, 'vaaja','matti','Helsinki',1983,1,0,2,19,10137,1170,'P',nil,0,nil,0,0]
values.push [1337109, nil, 'Vaarno','Jussi','Sundsberg',1970,0,1,0,5,3242,2363,nil,'R',0,nil,0,0]
values.push [14074754, nil, 'Wackström','Sixten','PORVOO',1960,1,0,0,6,4310,1998,nil,'R',0,nil,0,0]
values.push [1339961, nil, 'Vainikainen','Esa','Järvenpää',1963,0,0,0,4,1800,2688,nil,'S',0,nil,0,0]
values.push [14073962, nil, 'Vainio','Aarno','JANAKKALA',1936,6,4,1,60,23956,395,nil,'R',386,nil,187,0]
values.push [14073971, nil, 'Vainio','Harri','KOUVOLA',1900,0,0,1,4,3439,2557,nil,'R',0,nil,0,0]
values.push [1340471, nil, 'Vainio','Marjut','ESPOO',1962,0,0,0,4,1985,2670,nil,'S',0,nil,0,0]
values.push [1306907, nil, 'Vainio','Matti','Loimaa',1935,8,2,1,62,31833,358,nil,'R',497,nil,250,0]
values.push [14073980, nil, 'Vainio','Reima','VANTAA',1965,0,2,0,10,7221,1712,nil,'R',0,nil,0,0]
values.push [14073999, nil, 'Vainio','Risto','TURKU',1947,5,0,0,30,17318,888,nil,'R',136,nil,0,0]
values.push [1328969, nil, 'Vainio','Vesa','Kylmäkoski',1969,1,0,0,6,4461,1981,nil,'R',0,nil,0,0]
values.push [14074008, nil, 'Vainoniemi','Veijo','ESPOO',1946,0,1,1,9,5535,1825,nil,'R',0,nil,0,0]
values.push [14074017, nil, 'Vaittinen','Eero','ESPOO',1935,3,2,1,32,8046,814,nil,'R',269,nil,0,0]
values.push [1306910, nil, 'Vakkari','Hannu','Anjalankoski',1957,1,1,0,11,8482,1609,nil,'R',0,nil,0,0]
values.push [1330711, nil, 'Valjakka','Pekka','JOKELA',1977,5,1,1,44,32742.5,519,'P','R',805,nil,0,0]
values.push [14074026, nil, 'Valkeapää','Antti','MARTTILA',1957,2,0,1,16,14125,1316,nil,'R',0,nil,0,0]
values.push [1306923, nil, 'Valkeapää','Hannu','Lappeenranta',1954,0,0,1,4,2060,2667,nil,'R',0,nil,0,0]
values.push [14074035, nil, 'Valkeinen','Matti','HEINOLA',1945,5,0,2,38,25441,625,nil,'R',125,nil,0,0]
values.push [1306936, nil, 'Valkonen','Rauno','Kauniainen',1941,2,1,5,37,17783,648,'P','R',478,nil,0,0]
values.push [14074044, nil, 'Valkonen','Veikko','KANGASNIEMI',1940,3,1,1,27,23067,964,nil,'R',0,nil,0,0]
values.push [1336728, nil, 'Vallden','Hans','Helsinki',1971,1,0,0,6,4055,2023,nil,'R',0,nil,0,0]
values.push [14074763, nil, 'Wallen','Bengt','HELSINKI',1934,5,0,0,30,11003,906,nil,'R',241,nil,0,0]
values.push [14074772, nil, 'Wallenius','Pentti','KAARINA',1943,5,0,2,38,24857,627,nil,'R',104,nil,0,0]
values.push [1327258, nil, 'Valli','Jarmo','TURKU',1963,9,1,0,64,52509,332,nil,'R',782,nil,0,0]
values.push [1306949, nil, 'Valovirta','Vilho','Salo',1930,5,9,5,95,42874,171,'P','R',446,nil,230,0]
values.push [1336870, nil, 'Valtanen','Lassi','HONKILAHTI',1984,0,0,1,4,1334,2748,'P',nil,0,nil,0,0]
values.push [1336867, nil, 'Valtanen','Simo','Hinnerjoki',1956,2,0,1,16,10990.5,1328,'P','R',0,nil,0,0]
values.push [1306952, nil, 'Valtonen','Aarni','Kuusankoski',1932,18,4,0,128,70596,79,'P','R',198,nil,96,0]
values.push [1335826, nil, 'Valtonen','Erkki','Helsinki',1981,1,3,0,25,10759.5,1001,'P',nil,0,nil,0,0]
values.push [1306965, nil, 'Valtonen','Janne','Vantaa',1965,1,0,1,10,5328,1748,nil,'R',0,nil,0,0]
values.push [1306978, nil, 'Valtonen','Kalle','Vantaa',1949,12,0,0,72,60057,270,nil,'R',219,nil,166,0]
values.push [1325920, nil, 'Valtonen','Teppo','Hämeenlinna',1966,5,1,0,35,14763,701,'P','R',0,'A028',0,0]
values.push [14074053, nil, 'Vanhanen','Veijo','HYVINKÄÄ',1938,0,0,1,4,1473,2729,nil,'R',0,nil,0,0]
values.push [14074062, nil, 'Vankka','Eero','KYLMÄKOSKI',1957,4,1,1,33,27628,747,nil,'R',391,nil,0,0]
values.push [14074071, nil, 'Vankka','Kalle','JYVÄSKYLÄ',1959,1,0,1,10,7452,1707,nil,'R',0,nil,0,0]
values.push [1306994, nil, 'Vannekoski','Aulis','Helsinki',1949,0,0,1,4,1200,2772,nil,'R',0,nil,0,0]
values.push [14074080, nil, 'Vanninen','Merja','HYVINKÄÄ',1953,2,5,2,45,12558,514,nil,'R',415,nil,0,0]
values.push [14074099, nil, 'Varjonen','Antero','HYVINKÄÄ',1946,1,0,0,6,4678,1965,nil,'R',0,nil,0,0]
values.push [1331244, nil, 'Varkila','Kari','Nokia',1956,1,2,1,20,3481.5,1163,'P',nil,0,nil,0,0]
values.push [1307016, nil, 'Vartiainen','Aarne','Simpele',1953,7,2,4,68,54252,299,nil,'R',159,nil,175,0]
values.push [14074101, nil, 'Vartiainen','Heimo','TAMPERE',1950,6,4,6,80,46460,227,nil,'R',227,nil,122,0]
values.push [14074110, nil, 'Vasama','Raimo','HELSINKI',1928,0,2,2,18,6262,1256,nil,'R',0,nil,0,0]
values.push [1307427, nil, 'Wasström','Carl-Johan','LOJO',1969,4,3,3,51,20794.5,453,'P',nil,0,'A012',0,0]
values.push [14074129, nil, 'Vataja','Esa','LAHTI',1964,0,0,1,4,2303,2638,nil,'R',0,nil,0,0]
values.push [1338467, nil, 'Vedenpää','Arto','HYVINKÄÄ',1961,1,1,2,19,13497,1164,nil,'R',0,nil,0,0]
values.push [14074781, nil, 'Wegelius','Per','VANTAA',1946,1,1,0,11,2765,1688,nil,'R',0,nil,0,0]
values.push [1327449, nil, 'Vehviläinen','Matti','Simpele',1955,0,0,1,4,1416,2736,'P',nil,0,nil,0,0]
values.push [14074138, nil, 'Veijalainen','Matti','LAHTI',1941,0,0,3,12,7262,1529,nil,'R',0,nil,0,0]
values.push [14074147, nil, 'Vekka','Hannu','HATTULA',1947,2,2,2,30,21860,866,nil,'R',280,nil,0,0]
values.push [1307430, nil, 'Wennman','Ulla','Kokkola',1956,1,0,0,6,1565.5,2285,'P',nil,0,nil,0,0]
values.push [14074156, nil, 'Vento','Kari','IMATRA',1944,5,0,1,34,22020,723,nil,'R',514,nil,0,0]
values.push [1326767, nil, 'Venäläinen','Ari','Vantaa',1956,3,2,1,36,16217.5,673,'P','R',0,nil,0,0]
values.push [14074165, nil, 'Vepsäläinen','Arto','HYVINKÄÄ',1961,3,2,2,36,21776,664,nil,'R',322,nil,0,0]
values.push [1307029, nil, 'Vepsäläinen','Pentti','HÄMEENLINNA',1957,12,0,0,78,55518,233,'P','R',617,'A097T',0,0]
values.push [14074174, nil, 'Vepsäläinen','Timo','SODANKYLÄ',1958,1,0,1,10,7430,1708,nil,'R',0,nil,0,0]
values.push [1307058, nil, 'Verhola','Reijo','Helsinki',1945,14,5,6,133,74706,70,nil,'R',193,nil,98,25]
values.push [14074183, nil, 'Verkasalo','Pekka','TUUSULA',1944,5,1,0,35,23844,687,nil,'R',250,nil,0,0]
values.push [14074192, nil, 'Vesa','Antero','TAMPERE',1945,1,1,1,15,6543,1407,nil,'R',0,nil,0,0]
values.push [14074204, nil, 'Vesa','Pauli','SYSMÄ',1947,8,1,0,53,37696,434,nil,'R',19,nil,0,0]
values.push [1337743, nil, 'Vesala','Matti','Naantali',1976,0,0,1,4,961.5,2813,'P',nil,0,nil,0,0]
values.push [1329984, nil, 'Vesala','Mikko','Helsinki',1981,0,1,1,9,3184.5,1861,'P',nil,0,nil,0,0]
values.push [1339482, nil, 'Vesala','Timo','JYVÄSKYLÄ',1974,0,1,0,5,1494.5,2495,'P',nil,0,nil,0,0]
values.push [14074213, nil, 'Vesanen','Pertti','KUUSANKOSKI',1933,5,0,0,30,15621,895,nil,'R',234,nil,0,0]
values.push [1307061, nil, 'Vesterinen','Kari','Pieksämäki',1945,1,8,8,78,33138,243,'P','R',588,'A049T',0,0]
values.push [14074222, nil, 'Vesterinen','Martti','LAPPEENRANT',1935,2,0,2,20,12448,1148,nil,'R',0,nil,0,0]
values.push [14074231, nil, 'Vesterinen','Paavo','Tammela',1949,4,0,0,24,20282,1012,nil,'R',0,nil,0,0]
values.push [14074790, nil, 'Westerlund','Jukka','TAMPERE',1959,1,0,0,6,2697,2167,nil,'R',0,nil,0,0]
values.push [14074802, nil, 'Westman','Pentti','LOVIISA',1952,4,0,0,24,18638,1015,nil,'R',0,nil,0,0]
values.push [14074240, nil, 'Vestola','Arja','ARTJÄRVI',1961,4,1,2,37,24308,645,nil,'R',479,nil,0,0]
values.push [14074259, nil, 'Vestola','Heikki','ARTJÄRVI',1959,2,1,0,17,13092,1271,nil,'R',0,nil,0,0]
values.push [14074268, nil, 'Veteläinen','Arvo','HÄMEENLINNA',1937,0,0,1,4,1791,2690,nil,nil,0,nil,0,0]
values.push [14074277, nil, 'Vettenniemi','Jukka','HEINOLA',1938,1,0,0,6,2494,2194,nil,nil,0,nil,0,0]
values.push [14074811, nil, 'Wicht','Tom','KAUNIAINEN',1952,5,0,1,34,21237,725,nil,'R',291,nil,0,0]
values.push [14074286, nil, 'Vickholm','Ville','LAPINJÄRVI',1971,0,0,1,4,3584,2551,nil,'R',0,nil,0,0]
values.push [1328697, nil, 'Widbom','Karl','Espoo',1960,2,2,1,26,7619.5,989,'P',nil,0,nil,0,0]
values.push [14074820, nil, 'Widing','Martti','HELSINKI',1941,5,1,1,39,27820,603,nil,'R',336,nil,0,0]
values.push [14074295, nil, 'Vierimaa','Kari','HYVINKÄÄ',1959,1,0,0,6,2656,2177,nil,'R',0,nil,0,0]
values.push [14074307, nil, 'Viertola','Raija','MÄNTYHARJU',1937,1,2,4,32,11781,810,nil,'R',406,nil,0,0]
values.push [14074316, nil, 'Vierula','Tero','VANTAA',1965,1,0,0,6,4404,1989,nil,'R',0,nil,0,0]
values.push [1327083, nil, 'Vigelius','Hannu','Salo',1939,0,1,1,9,2852.5,1869,'P',nil,0,nil,0,0]
values.push [1340549, nil, 'Viheroja','tuula','RAUMA',1966,0,0,0,6,2835,2159,nil,'S',0,nil,0,0]
values.push [1340358, nil, 'Vihonen','Tom','Espoo',1971,0,0,0,5,2929,2385,nil,'S',0,nil,0,0]
values.push [14074325, nil, 'Viinikka','Matti','VAASA',1940,5,1,1,39,8820,621,nil,'R',248,nil,0,0]
values.push [1325072, nil, 'Viirimäki','Pekka','Teuva',1961,2,2,2,30,13461,901,nil,'R',784,nil,0,0]
values.push [1307074, nil, 'Viitamäki','Matti','Kankaanpää',1966,4,2,0,34,20539,727,nil,'R',722,nil,0,0]
values.push [14074334, nil, 'Viitanen','Juhani','VANTAA',1945,5,1,1,39,25497,609,nil,'R',286,nil,0,0]
values.push [1307087, nil, 'Viitanen','Jukka','Pori',1941,11,3,0,81,42903,224,'P','R',547,nil,258,0]
values.push [1307090, nil, 'Viitanen','Risto','Tuusula',1937,32,2,1,206,98471,10,nil,'R',16,nil,13,5]
values.push [1307100, nil, 'Viitasaari','Arto','Kokkola',1962,6,0,2,44,31280,521,nil,'R',486,nil,0,0]
values.push [1307113, nil, 'Viitasaari','Jussi','HIMANKA',1945,15,1,1,99,86590,161,nil,'R',416,nil,189,0]
values.push [14074343, nil, 'Viitasaari','Maria','JYVÄSKYLÄ',1974,1,1,0,11,5320.5,1657,'P','R',0,nil,0,0]
values.push [1307126, nil, 'Viitasaari','Markku','Himanka',1967,3,0,0,18,14941,1195,nil,'R',0,nil,0,0]
values.push [1307139, nil, 'Viitasaari','Tommi','Kokkola',1968,13,1,1,87,73661,195,nil,'R',493,nil,236,0]
values.push [1307142, nil, 'Vikman','Kalevi','Röykkä',1945,31,1,0,196,141263.5,17,'P','R',112,nil,60,23]
values.push [14074839, nil, 'Wikström','Antti','KARKKILA',1948,0,1,0,5,3553,2339,nil,'R',0,nil,0,0]
values.push [14074352, nil, 'Vilanen','Jussi','TAMPERE',1969,1,0,0,6,2884,2153,nil,'R',0,nil,0,0]
values.push [14074361, nil, 'Vilanen','Vesa','TAMPERE',1944,1,0,0,6,3147,2130,nil,'R',0,nil,0,0]
values.push [1307773, nil, 'Vilén','Markku','Salo',1960,2,2,2,35,16997.5,698,'P','R',0,nil,0,0]
values.push [1307605, nil, 'Vilen','Mika','SÖDERKULLA',1965,2,0,0,12,9569,1493,nil,'R',0,nil,0,0]
values.push [14074848, nil, 'Wilenius','Toivo','LAMMI',1939,0,0,1,4,1744,2696,nil,nil,0,nil,0,0]
values.push [1307155, nil, 'Vilhu','Ossi','Lappeenranta',1948,6,3,3,69,48926,294,nil,'R',743,nil,356,0]
values.push [1307168, nil, 'Vilhunen','Timo','Imatra',1944,24,1,2,157,121774,42,'P','R',177,nil,79,28]
values.push [14074857, nil, 'Wiljander','Per','HELSINKI',1926,1,2,4,32,12149,809,nil,'R',405,nil,0,0]
values.push [1307184, nil, 'Vilkko','Timo','Tuusula',1962,2,0,0,12,8050,1514,nil,'R',0,nil,0,0]
values.push [1307197, nil, 'Villanen','Leo','Tampere',1945,17,0,0,102,84216,145,nil,'R',178,nil,78,0]
values.push [1307443, nil, 'Willgren','Simo','Tampere',1938,6,1,4,57,31901,410,nil,'R',436,nil,0,0]
values.push [14074389, nil, 'Vimpari','Matti','LAHTI',1946,9,0,0,54,32623,427,nil,'R',53,nil,0,0]
values.push [1330096, nil, 'Vira','Vesa','Helsinki 79',1969,1,0,1,10,3007.5,1791,'P',nil,0,nil,0,0]
values.push [1307207, nil, 'Virkkala','Heljä','Kokkola',1949,3,1,2,31,15029,835,nil,'R',638,nil,0,0]
values.push [1307210, nil, 'Virkkala','Simo','Kokkola',1946,4,0,3,36,25295,657,nil,'R',613,nil,0,0]
values.push [1307223, nil, 'Virkki','Matti','Helsinki',1941,4,7,10,99,57866,162,nil,'R',396,nil,197,0]
values.push [14074398, nil, 'Virkki','Paula','HELSINKI',1971,0,0,2,8,5428,1889,nil,'R',0,nil,0,0]
values.push [1336883, nil, 'Virmala','Tarja','Hyvinkää',1958,1,0,0,6,3374,2106,nil,'R',0,nil,0,0]
values.push [1336171, nil, 'Virmala','Timo','Hyvikää',1956,1,1,2,19,6247,1181,'P',nil,0,nil,0,0]
values.push [1337099, nil, 'Virmala','Tuomas','HYVINKÄÄ',1987,0,1,0,5,1504.5,2491,'P',nil,0,nil,0,0]
values.push [1336126, nil, 'Virmala','Ville','HYVINKÄÄ',1985,0,0,2,8,2756.5,1916,'P',nil,0,nil,0,0]
values.push [14074400, nil, 'Virta','Aarre','TURKU',1943,1,0,0,6,4584,1974,nil,'R',0,nil,0,0]
values.push [1307236, nil, 'Virta','Harri','Lappeenranta',1943,8,1,1,57,39742,409,nil,'R',282,nil,0,0]
values.push [1307249, nil, 'Virtanen','Aarne','Järvelä',1955,5,3,3,57,14095.5,415,'P','R',0,'A033',0,0]
values.push [14074419, nil, 'Virtanen','Ali','TURKU',1900,1,0,0,6,2248,2217,nil,'R',0,nil,0,0]
values.push [14074428, nil, 'Virtanen','Antero','TAMPERE',1954,2,1,0,17,5302,1310,nil,'R',0,nil,0,0]
values.push [1339220, nil, 'Virtanen','Antti','Koski TL',1981,1,0,0,10,4146.5,1777,'P',nil,0,nil,0,0]
values.push [1339505, nil, 'Virtanen','Eero','Pori',1983,5,1,1,39,27669,604,'P','R',117,nil,0,0]
values.push [1335431, nil, 'Virtanen','Jani','HÄMEENLINNA',1976,0,0,2,8,2347.5,1921,'P',nil,0,nil,0,0]
values.push [14074437, nil, 'Virtanen','Kari','MUONIO',1956,1,1,2,19,8932,1175,nil,'R',0,nil,0,0]
values.push [1330342, nil, 'Virtanen','Kimmo','Vantaa',1970,0,0,1,4,1327,2751,'P',nil,0,nil,0,0]
values.push [1329366, nil, 'Virtanen','Kimmo','Lohja',1970,1,1,0,11,4441,1673,'P',nil,0,nil,0,0]
values.push [1307252, nil, 'Virtanen','Maarit','Järvelä',1953,4,4,4,60,14161,396,'P',nil,0,'A007',0,0]
values.push [1329159, nil, 'Virtanen','Mika','NURMIJÄRVI',1969,3,2,1,32,11134.5,811,'P',nil,0,'A064',0,0]
values.push [1307265, nil, 'Virtanen','Teuvo','Porvoo',1949,5,1,2,43,32590,535,nil,'R',142,nil,0,0]
values.push [1330232, nil, 'Virtanen','Timo','Espoo',1949,2,0,0,12,8982,1500,nil,'R',0,nil,0,0]
values.push [14074446, nil, 'Visaheimo','Eino','KARJAA',1950,1,1,2,19,12091,1167,nil,'R',0,nil,0,0]
values.push [14074455, nil, 'Visala','Heikki','RUOVESI',1931,0,0,1,4,2970,2578,nil,'R',0,nil,0,0]
values.push [1307278, nil, 'Viskari','Jarmo','Lappeenranta',1963,2,1,0,17,11798.5,1275,'P','R',0,nil,0,0]
values.push [14074464, nil, 'Vismanen','Jarmo','TURKU',1942,0,2,0,10,4897,1756,nil,'R',0,nil,0,0]
values.push [1307281, nil, 'Visti','Arvo','Nikkilä',1937,16,0,0,96,57973,167,nil,'R',426,nil,183,0]
values.push [14074473, nil, 'Visti','Tuomo','ESPOO',1969,2,0,0,12,9787,1491,nil,'R',0,nil,0,0]
values.push [1307294, nil, 'Vistiaho','Tytti','Kokkola',1947,5,2,1,44,21463,530,nil,'R',646,nil,0,0]
values.push [1307456, nil, 'With','Esko','Vantaa',1945,6,5,6,85,28113,203,'P','R',482,nil,239,0]
values.push [14074482, nil, 'Vitikainen','Veli-Matti','HEINOLA',1949,0,0,1,4,2174,2656,nil,nil,0,nil,0,0]
values.push [1307469, nil, 'Wlasoff','Erkki','Hämeenlinna',1951,5,1,1,39,22500.5,611,'P','R',0,nil,0,0]
values.push [1329256, nil, 'Voima','Jussi','Turku',1950,0,1,0,5,2107,2441,nil,'R',0,nil,0,0]
values.push [1340248, nil, 'von Bagh','Riitta','Porvoo',1963,0,0,0,6,2695,2168,nil,'S',0,nil,0,0]
values.push [1307922, nil, 'Vornanen','Juha','Reijola',1975,0,0,4,16,9485,1338,nil,'R',0,nil,0,0]
values.push [14074491, nil, 'Vornanen','Pentti','KANGASALA',1940,5,0,1,34,27496,707,nil,'R',98,nil,0,0]
values.push [14074503, nil, 'Voutilainen','Antero','ESPOO',1914,3,2,1,32,3304,818,nil,'R',364,nil,0,0]
values.push [14074512, nil, 'Voutilainen','Esko','SIILINJÄRVI',1946,4,3,0,39,20030,613,nil,'R',255,nil,0,0]
values.push [1326961, nil, 'Voutilainen','Markku','Kuopio',1956,2,0,0,12,8002,1515,nil,'R',0,nil,0,0]
values.push [1327575, nil, 'Voutilainen','Tommi','Helsinki',1969,1,0,0,6,1952,2250,nil,'R',0,nil,0,0]
values.push [1327151, nil, 'Vuohtoniemi','Joni','Helsinki 92',1970,1,0,0,6,2390,2200,nil,'R',0,nil,0,0]
values.push [1307472, nil, 'Wuolijoki','Kari','Hollola',1958,1,0,0,6,2335.5,2207,'P',nil,0,nil,0,0]
values.push [1332010, nil, 'Vuolle','Jukka','Tampere',1954,0,0,2,8,3124,1914,'P',nil,0,nil,0,0]
values.push [1307317, nil, 'Vuorenhela','Tapani','Turku',1947,0,1,0,5,3984,2323,nil,'R',0,nil,0,0]
values.push [14074521, nil, 'Vuorenpää','Heikki','SYSMÄ',1958,4,1,0,29,22315,924,nil,nil,0,nil,0,0]
values.push [1307320, nil, 'Vuori','Antti','VALKEAKOSKI',1943,10,0,1,64,34284,338,nil,'R',689,nil,318,0]
values.push [14074530, nil, 'Vuori','Erkki','MÄNTSÄLÄ',1935,0,1,1,9,6251,1817,nil,'R',0,nil,0,0]
values.push [1338483, nil, 'vuorijärvi','jari','valkeala',1965,0,0,1,4,1286.5,2761,'P',nil,0,nil,0,0]
values.push [14074549, nil, 'Vuorinen','Allan','TAMPERE',1943,1,1,0,11,2577,1692,nil,'R',0,nil,0,0]
values.push [14074558, nil, 'Vuorinen','Hannu','JYVÄSKYLÄ',1956,1,2,3,28,7388,962,nil,'R',0,nil,0,0]
values.push [14074567, nil, 'Vuorinen','Ilkka','PIIKKIÖ',1944,2,1,0,17,11550,1276,nil,'R',0,nil,0,0]
values.push [1307333, nil, 'Vuorinen','Jarkko','Rusko',1948,6,0,2,44,33682,518,nil,'R',621,nil,0,0]
values.push [1307346, nil, 'Vuorinen','Jarmo','Rusko',1948,8,0,0,48,36899,469,nil,'R',620,nil,0,0]
values.push [14074576, nil, 'Vuorinen','Jouni','JYVÄSKYLÄ',1950,1,0,0,6,3129,2133,nil,nil,0,nil,0,0]
values.push [14074585, nil, 'Vuorinen','Lasse','PIIKKIÖ',1946,2,0,1,16,12446,1320,nil,'R',0,nil,0,0]
values.push [14074594, nil, 'Vuorinen','Samuli','JOENSUU',1900,0,0,1,4,1268,2764,nil,'R',0,nil,0,0]
values.push [14074606, nil, 'Vuorinen','Seppo E','LOPPI',1943,1,0,1,10,6192,1730,nil,'R',0,nil,0,0]
values.push [14074615, nil, 'Vuorinen','Vesa','KYYJÄRVI',1943,2,2,0,22,4341,1098,nil,nil,0,nil,0,0]
values.push [1316780, nil, 'Vuoteri','Liisa','Raisio',1953,0,0,1,4,959.5,2814,'P',nil,0,nil,0,0]
values.push [1307359, nil, 'Vähä','Kauko','Kouvola',1940,31,2,1,204,87019,13,nil,'R',14,nil,12,7]
values.push [1338454, nil, 'Vähäkoski','Pia','Helsinki',1982,0,1,0,5,1294.5,2518,'P',nil,0,nil,0,0]
values.push [1307362, nil, 'Vähäsöyrinki','Juhani','Lappajärvi',1900,0,1,0,5,2897,2387,nil,'R',0,nil,0,0]
values.push [14074624, nil, 'Vähä-Vahe','Tapani','TURKU',1935,1,0,0,6,2981,2144,nil,nil,0,nil,0,0]
values.push [14074633, nil, 'Vähävirta','Risto','HELSINKI',1951,0,0,1,4,668,2845,nil,'R',0,nil,0,0]
values.push [1329337, nil, 'Väisänen','Aimo','JYVÄSKYLÄ 52',1951,3,3,1,37,29355,642,nil,'R',801,nil,0,0]
values.push [1307375, nil, 'Väisänen','Heikki','Kiuruvesi',1928,2,0,1,16,7164,1357,'P','R',0,nil,0,0]
values.push [1336265, nil, 'Väisänen','Pentti','Riihimäki',1959,2,0,0,12,7342,1526,nil,'R',0,nil,0,0]
values.push [14074642, nil, 'Väisänen','Timo','HELSINKI',1959,1,0,0,6,2517,2190,nil,'R',0,nil,0,0]
values.push [1337044, nil, 'Väisänen','Tuomas','HELSINKI',1984,0,1,0,5,1363.5,2510,'P',nil,0,nil,0,0]
values.push [14074651, nil, 'Väisänen','Vesa','ESPOO',1941,3,3,1,37,19830,647,nil,'R',267,nil,0,0]
values.push [14074660, nil, 'Väkevä','Lasse','LUUMÄKI',1950,3,1,1,27,11003,977,nil,'R',0,nil,0,0]
values.push [14074679, nil, 'Väkeväinen','Sirkka','TURKU',1951,0,0,1,4,599,2850,nil,'R',0,nil,0,0]
values.push [1307388, nil, 'Välimäki','Esko','Pori',1943,0,1,10,45,8705.5,516,'P','R',0,nil,0,0]
values.push [1325878, nil, 'Välimäki','Hannu','VANTAA',1964,1,1,0,11,2817.5,1687,'P',nil,0,nil,0,0]
values.push [14074688, nil, 'Välimäki','Heikki','TAMPERE',1956,11,0,0,66,46738,315,nil,'R',129,nil,63,0]
values.push [1340507, nil, 'Välimäki','Markus','Lempäälä',1977,0,0,0,6,5516,1944,nil,'S',0,nil,0,0]
values.push [14074697, nil, 'Välimäki','Pekka','TURKU',1957,10,0,1,64,42482,335,nil,'R',133,nil,64,0]
values.push [14074709, nil, 'Välivehmas','Tarmo','LAMMI',1936,0,1,1,9,4440,1846,nil,nil,0,nil,0,0]
values.push [1330083, nil, 'Vänni','Veli-Pekka','Lavia',1957,1,0,0,6,2906,2151,'P',nil,0,nil,0,0]
values.push [1307391, nil, 'Västilä','Kalevi','Honkajoki',1953,3,0,0,18,11395,1219,nil,'R',0,nil,0,0]
values.push [14074718, nil, 'Väyrynen','Helena','HELSINKI',1954,0,0,1,4,920,2824,nil,'R',0,nil,0,0]
values.push [1307401, nil, 'Väyrynen','Jukka','HEINOLA KK',1963,4,1,0,29,25730,919,nil,'R',0,nil,0,0]
values.push [14074727, nil, 'Väänänen','Väinö','KUOPIO',1934,13,0,0,78,44798,237,nil,'R',87,nil,49,0]
values.push [1330740, nil, 'Vääränen','Juha-Matti','HELSINKI',1965,1,3,0,21,11247,1121,nil,'R',0,nil,0,0]
values.push [14074736, nil, 'Väättänen','Lauri','KERAVA',1943,2,0,0,12,4896,1571,nil,'R',0,nil,0,0]
values.push [14074745, nil, 'Väättänen','Marja-Li','KERAVA',1945,3,0,0,18,6887,1251,nil,'R',0,nil,0,0]
values.push [1336773, nil, 'Väätäinen','Turo','Helsinki',1980,0,1,0,5,3693,2330,nil,'R',0,nil,0,0]
values.push [1307414, nil, 'Väätäinen','Veijo','Toivala',1956,1,2,5,36,22976,662,nil,'R',708,nil,0,0]
values.push [14074866, nil, 'Yli-Antola','Jarkko','TUUSULA',1968,3,0,0,18,10186,1227,nil,'R',0,nil,0,0]
values.push [14074875, nil, 'Yli-Antola','Seppo','TUUSULA',1941,0,0,1,4,1265,2768,nil,'R',0,nil,0,0]
values.push [1327504, nil, 'Yli-Eerola','Esa','turenki',1963,0,0,1,4,0,2863,'P',nil,0,nil,0,0]
values.push [1328613, nil, 'Ylijoki','Pekka','Monnanummi',1956,0,1,1,9,6355,1816,nil,'R',0,nil,0,0]
values.push [1329793, nil, 'Yli-Karro','Armi','Rauma',1956,5,1,0,41,9816,582,'P',nil,0,'A083',0,0]
values.push [1307485, nil, 'Yli-Karro','Tapio','Rauma',1953,7,2,3,70,47187,283,nil,'R',750,nil,353,0]
values.push [14074884, nil, 'Yli-Krekola','Kalevi','JALASJÄRVI',1941,3,0,0,18,8014,1242,nil,'R',0,nil,0,0]
values.push [1338904, nil, 'Ylilehto','Jari','HEINOLA',1965,1,0,0,6,5009,1953,nil,'R',0,nil,0,0]
values.push [14074905, nil, 'Ylinen','Raimo','ESPOO',1943,3,5,1,47,17361,488,nil,'R',332,nil,0,0]
values.push [14074914, nil, 'Ylinen','Tuula','KURIKKA',1962,0,1,0,5,2587,2407,nil,'R',0,nil,0,0]
values.push [14074893, nil, 'Yli-Penttilä','Martt','ESPOO',1943,8,4,1,72,43772,271,nil,'R',580,nil,281,0]
values.push [1307498, nil, 'Yli-Penttilä','Martti','Espoo',1943,1,1,2,19,6314,1180,'P',nil,0,nil,0,0]
values.push [1307883, nil, 'Yli-Viikari','Heikki','Kirkkonummi',1953,0,0,1,4,1623,2711,nil,'R',0,nil,0,0]
values.push [1307896, nil, 'Yli-Viikari','Jukka','Sälinkää',1956,1,1,0,17,6704.5,1303,'P','R',0,nil,0,0]
values.push [14074923, nil, 'Ylä-Kotola','Arto','KOTKA',1974,0,0,1,4,2905,2582,nil,'R',0,nil,0,0]
values.push [1338894, nil, 'Ylänne','Jari','Jyväskylä',1961,0,0,0,6,4468,1980,nil,'S',0,nil,0,0]
values.push [1335619, nil, 'Ylönen','Mikko','Vantaa',1967,3,2,0,34,25622,712,nil,'R',0,nil,0,0]
values.push [1329719, nil, 'Ynnilä','Riitta','Suomusjärvi',1955,6,1,0,47,28446.5,483,'P','R',798,nil,0,0]
values.push [1325917, nil, 'Yrjölä','Ulla','Muurame',1971,6,0,1,40,18542.5,594,'P','R',0,nil,0,0]
values.push [1307508, nil, 'Yrjönen','Osmo','KELLOKOSKI',1949,1,1,1,15,7645,1400,nil,'R',0,nil,0,0]
values.push [14074932, nil, 'Zetterman','Aulis','LOPPI',1951,4,0,2,32,18015,791,nil,'R',165,nil,0,0]
values.push [14074941, nil, 'Åberg','Ismo','FORSSA',1939,4,0,2,32,13774,808,nil,'R',448,nil,0,0]
values.push [1337730, nil, 'Ådjers','Henrik','KERAVA',1981,1,0,1,10,4336.5,1773,'P','R',0,nil,0,0]
values.push [1339880, nil, 'Åkerman','Anders','Espoo',1973,0,0,0,6,5289,1946,nil,'S',0,nil,0,0]
values.push [1307511, nil, 'Ässämäki','Paavo','Tampere',1952,2,1,2,25,12867,998,nil,'R',0,nil,0,0]
values.push [1340442, nil, 'Österman','Lauri','Espoo',1978,0,0,0,5,3191,2365,nil,'S',0,nil,0,0]
values.push [14074950, nil, 'Östman','Patrik','ESPOO',1953,1,0,0,6,3604,2077,nil,nil,0,nil,0,0]
values.push [1307524, nil, 'Östman','Sven','TUUSULA',1939,5,3,7,73,24770,267,'P','R',677,nil,0,0]
values.push [1325111, nil, 'Översti','Irene','Heinola kk',1970,1,0,0,6,2267,2215,nil,'R',0,nil,0,0]
values.push [1325124, nil, 'Översti','Sirpa','Pertunmaa',1967,7,4,0,68,27865,304,'P','R',0,'A074',0,0]
Statistic.import columns, values
