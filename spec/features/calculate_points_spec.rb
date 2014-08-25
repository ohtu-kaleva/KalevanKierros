require 'spec_helper'

include SigninHelper

feature 'calculate points' do
    let!(:user) { FactoryGirl.create :user, :admin }
    let!(:orienteering_event) { FactoryGirl.create :complete_event, :orienteering, name: 'Suunnistus', factor: 1300, id: 1 }
    let!(:skiing_event) { FactoryGirl.create :complete_event, :skiing, name: 'Hiihto', penalty_factor: 1.06, factor: 2000, id: 2 }
    let!(:rowing_event) { FactoryGirl.create :complete_event, :rowing, name: 'Soutu', penalty_factor: 12.0, rowing_penalty: 20.0, factor: 3500, id: 3 }
    let!(:cycling_event) { FactoryGirl.create :complete_event, :cycling, name: 'Pyöräily', factor: 2800, id: 4 }
    let!(:skating_event) { FactoryGirl.create :complete_event, :skating, name: 'Luistelu', factor: 2800, id: 5 }
    let!(:running_event) { FactoryGirl.create :complete_event, :running, name: 'Juoksu', penalty_factor: 2.3, factor: 2000, id: 6 }

    let!(:user1) { FactoryGirl.create :user, gender: 'M', kk_number: 2001, username: 'nimi1', first_name: 'Etunimi1', last_name: 'Sukunimi1' }
    let!(:user2) { FactoryGirl.create :user, gender: 'M', kk_number: 2002, username: 'nimi2', first_name: 'Etunimi2', last_name: 'Sukunimi2' }
    let!(:user3) { FactoryGirl.create :user, gender: 'M', kk_number: 2003, username: 'nimi3', first_name: 'Etunimi3', last_name: 'Sukunimi3' }
    let!(:user4) { FactoryGirl.create :user, gender: 'M', kk_number: 2004, username: 'nimi4', first_name: 'Etunimi4', last_name: 'Sukunimi4' }
    let!(:user5) { FactoryGirl.create :user, gender: 'M', kk_number: 2005, username: 'nimi5', first_name: 'Etunimi5', last_name: 'Sukunimi5' }
    let!(:user6) { FactoryGirl.create :user, gender: 'F', kk_number: 2006, username: 'nimi6', first_name: 'Etunimi6', last_name: 'Sukunimi6' }
    let!(:user7) { FactoryGirl.create :user, gender: 'F', kk_number: 2007, username: 'nimi7', first_name: 'Etunimi7', last_name: 'Sukunimi7' }
    let!(:user8) { FactoryGirl.create :user, gender: 'F', kk_number: 2008, username: 'nimi8', first_name: 'Etunimi8', last_name: 'Sukunimi8' }
    let!(:user9) { FactoryGirl.create :user, gender: 'F', kk_number: 2009, username: 'nimi9', first_name: 'Etunimi9', last_name: 'Sukunimi9' }
    let!(:user10) { FactoryGirl.create :user, gender: 'F', kk_number: 2010, username: 'nimi10', first_name: 'Etunimi10', last_name: 'Sukunimi10' }

    let!(:result1) { FactoryGirl.create :result, name: 'Etunimi1 Sukunimi1', kk_number: 2001, series: 'M' }
    let!(:result2) { FactoryGirl.create :result, name: 'Etunimi2 Sukunimi2', kk_number: 2002, series: 'M' }
    let!(:result3) { FactoryGirl.create :result, name: 'Etunimi3 Sukunimi3', kk_number: 2003, series: 'M' }
    let!(:result4) { FactoryGirl.create :result, name: 'Etunimi4 Sukunimi4', kk_number: 2004, series: 'M' }
    let!(:result5) { FactoryGirl.create :result, name: 'Etunimi5 Sukunimi5', kk_number: 2005, series: 'M' }
    let!(:result6) { FactoryGirl.create :result, name: 'Etunimi6 Sukunimi6', kk_number: 2006, series: 'F' }
    let!(:result7) { FactoryGirl.create :result, name: 'Etunimi7 Sukunimi7', kk_number: 2007, series: 'F' }
    let!(:result8) { FactoryGirl.create :result, name: 'Etunimi8 Sukunimi8', kk_number: 2008, series: 'F' }
    let!(:result9) { FactoryGirl.create :result, name: 'Etunimi9 Sukunimi9', kk_number: 2009, series: 'F' }
    let!(:result10) { FactoryGirl.create :result, name: 'Etunimi10 Sukunimi10', kk_number: 2010, series: 'F' }

    let!(:enrollment11) { FactoryGirl.create :complete_enrollment, :orienteering, event_id: orienteering_event.id, user_id: user1.id, time: 6363.63 }
    let!(:enrollment12) { FactoryGirl.create :complete_enrollment, :orienteering, event_id: orienteering_event.id, user_id: user2.id, time: 2141.75 }
    let!(:enrollment13) { FactoryGirl.create :complete_enrollment, :orienteering, event_id: orienteering_event.id, user_id: user3.id, time: 3256.32 }
    let!(:enrollment14) { FactoryGirl.create :complete_enrollment, :orienteering, event_id: orienteering_event.id, user_id: user4.id, time: 3267.35 }
    let!(:enrollment15) { FactoryGirl.create :complete_enrollment, :orienteering, event_id: orienteering_event.id, user_id: user5.id, time: 13424.33 }

    let!(:enrollment21) { FactoryGirl.create :complete_enrollment, :skiing_freestyle, event_id: skiing_event.id, user_id: user1.id, time: 3252.62 }
    let!(:enrollment22) { FactoryGirl.create :complete_enrollment, :skiing_traditional, event_id: skiing_event.id, user_id: user2.id, time: 3268.7 }
    let!(:enrollment23) { FactoryGirl.create :complete_enrollment, :skiing_freestyle, event_id: skiing_event.id, user_id: user3.id, time: 4357.4 }
    let!(:enrollment24) { FactoryGirl.create :complete_enrollment, :skiing_traditional, event_id: skiing_event.id, user_id: user4.id, time: 3265.6 }
    let!(:enrollment25) { FactoryGirl.create :complete_enrollment, :skiing_freestyle, event_id: skiing_event.id, user_id: user5.id, time: 7568.73 }
    let!(:enrollment26) { FactoryGirl.create :complete_enrollment, :skiing_freestyle, event_id: skiing_event.id, user_id: user6.id, time: 3435.83 }
    let!(:enrollment27) { FactoryGirl.create :complete_enrollment, :skiing_traditional, event_id: skiing_event.id, user_id: user7.id, time: 22242.54 }
    let!(:enrollment28) { FactoryGirl.create :complete_enrollment, :skiing_traditional, event_id: skiing_event.id, user_id: user8.id, time: 3255.3 }
    let!(:enrollment29) { FactoryGirl.create :complete_enrollment, :skiing_freestyle, event_id: skiing_event.id, user_id: user9.id, time: 9297.76 }

    let!(:enrollment31) { FactoryGirl.create :complete_enrollment, :rowing, event_id: rowing_event.id, user_id: user1.id, time: 4363.53 }
    let!(:enrollment32) { FactoryGirl.create :complete_enrollment, :rowing_with_male, event_id: rowing_event.id, user_id: user2.id, time: 3954.53 }
    let!(:enrollment33) { FactoryGirl.create :complete_enrollment, :rowing_with_female, event_id: rowing_event.id, user_id: user3.id, time: 4264.43 }
    let!(:enrollment34) { FactoryGirl.create :complete_enrollment, :rowing, event_id: rowing_event.id, user_id: user4.id, time: 5756.65 }
    let!(:enrollment35) { FactoryGirl.create :complete_enrollment, :paddling, event_id: rowing_event.id, user_id: user5.id, time: 5854.88 }
    let!(:enrollment36) { FactoryGirl.create :complete_enrollment, :rowing, event_id: rowing_event.id, user_id: user6.id, time: 7565.43 }
    let!(:enrollment37) { FactoryGirl.create :complete_enrollment, :rowing_with_male, event_id: rowing_event.id, user_id: user7.id, time: 3535.53 }
    let!(:enrollment38) { FactoryGirl.create :complete_enrollment, :rowing_with_male, event_id: rowing_event.id, user_id: user8.id, time: 3789.04 }
    let!(:enrollment39) { FactoryGirl.create :complete_enrollment, :rowing_with_female, event_id: rowing_event.id, user_id: user9.id, time: 4546.56 }
    let!(:enrollment310) { FactoryGirl.create :complete_enrollment, :rowing_with_female, event_id: rowing_event.id, user_id: user10.id, time: 6446.56 }

    let!(:enrollment41) { FactoryGirl.create :complete_enrollment, event_id: cycling_event.id, user_id: user1.id, time: 3343.09 }
    let!(:enrollment42) { FactoryGirl.create :complete_enrollment, event_id: cycling_event.id, user_id: user2.id, time: 4645.653 }
    let!(:enrollment43) { FactoryGirl.create :complete_enrollment, event_id: cycling_event.id, user_id: user3.id, time: 3255.6 }
    let!(:enrollment44) { FactoryGirl.create :complete_enrollment, event_id: cycling_event.id, user_id: user4.id, time: 4634.54 }
    let!(:enrollment45) { FactoryGirl.create :complete_enrollment, event_id: cycling_event.id, user_id: user5.id, time: 2989.00 }
    let!(:enrollment46) { FactoryGirl.create :complete_enrollment, event_id: cycling_event.id, user_id: user6.id, time: 4374.565 }
    let!(:enrollment47) { FactoryGirl.create :complete_enrollment, event_id: cycling_event.id, user_id: user7.id, time: 5325.455 }

    let!(:enrollment51) { FactoryGirl.create :complete_enrollment, :skating, event_id: skating_event.id, user_id: user1.id, time: 5436.56 }
    let!(:enrollment52) { FactoryGirl.create :complete_enrollment, :skating, event_id: skating_event.id, user_id: user2.id, time: 8565.65 }
    let!(:enrollment53) { FactoryGirl.create :complete_enrollment, :skating, event_id: skating_event.id, user_id: user3.id, time: 3223.77 }
    let!(:enrollment54) { FactoryGirl.create :complete_enrollment, :skating, event_id: skating_event.id, user_id: user4.id, time: 5675.63 }
    let!(:enrollment55) { FactoryGirl.create :complete_enrollment, :skating, event_id: skating_event.id, user_id: user5.id, time: 3464.63 }
    let!(:enrollment56) { FactoryGirl.create :complete_enrollment, :skating, event_id: skating_event.id, user_id: user6.id, time: 3643.74 }

    let!(:enrollment61) { FactoryGirl.create :complete_enrollment, :running_marathon, event_id: running_event.id, user_id: user1.id, time: 10643.65 }
    let!(:enrollment62) { FactoryGirl.create :complete_enrollment, :running_half_marathon, event_id: running_event.id, user_id: user2.id, time: 5324.532 }
    let!(:enrollment63) { FactoryGirl.create :complete_enrollment, :running_marathon, event_id: running_event.id, user_id: user3.id, time: 9683.55 }
    let!(:enrollment64) { FactoryGirl.create :complete_enrollment, :running_marathon, event_id: running_event.id, user_id: user4.id, time: 13325.75 }
    let!(:enrollment65) { FactoryGirl.create :complete_enrollment, :running_half_marathon, event_id: running_event.id, user_id: user5.id, time: 8322.34 }
    let!(:enrollment66) { FactoryGirl.create :complete_enrollment, :running_half_marathon, event_id: running_event.id, user_id: user6.id, time: 7445.7 }
    let!(:enrollment67) { FactoryGirl.create :complete_enrollment, :running_half_marathon, event_id: running_event.id, user_id: user7.id, time: 6474.73 }
    let!(:enrollment68) { FactoryGirl.create :complete_enrollment, :running_half_marathon, event_id: running_event.id, user_id: user8.id, time: 4564.65 }

    scenario 'Admin calculates points for orienteering event' do
        sign_in(username: 'Tyhjis', password: 'Salainen1', admin: true)
        visit show_enrollments_path(orienteering_event)
        click_link 'Laske kilpailijoiden pisteet'

        result1.reload
        result2.reload
        result3.reload
        result4.reload
        result5.reload

        expect(result1.orienteering_time).to be_within(0.1).of(6363.63)
        expect(result1.orienteering_pts).to be_within(0.1).of(385.183)
        expect(result1.orienteering_pos).to eq(4)
        expect(result2.orienteering_time).to be_within(0.1).of(2141.75)
        expect(result2.orienteering_pts).to be_within(0.1).of(1000)
        expect(result2.orienteering_pos).to eq(1)
        expect(result3.orienteering_time).to be_within(0.1).of(3256.32)
        expect(result3.orienteering_pts).to be_within(0.1).of(763.454)
        expect(result3.orienteering_pos).to eq(2)
        expect(result4.orienteering_time).to be_within(0.1).of(3267.35)
        expect(result4.orienteering_pts).to be_within(0.1).of(761.545)
        expect(result4.orienteering_pos).to eq(3)
        expect(result5.orienteering_time).to be_within(0.1).of(13424.33)
        expect(result5.orienteering_pts).to be_within(0.1).of(0)
        expect(result5.orienteering_pos).to eq(5)
    end

    scenario 'Admin calculates points for skiing event' do
        sign_in(username: 'Tyhjis', password: 'Salainen1', admin: true)
        visit show_enrollments_path(skiing_event)
        click_link 'Laske kilpailijoiden pisteet'

        result1.reload
        result2.reload
        result3.reload
        result4.reload
        result5.reload
        result6.reload
        result7.reload
        result8.reload
        result9.reload

        expect(result1.skiing_time).to be_within(0.1).of(3252.62)
        expect(result1.skiing_pts).to be_within(0.1).of(950.104)
        expect(result1.skiing_pos).to eq(4)
        expect(result1.skiing_style).to eq('Vapaa')
        expect(result2.skiing_time).to be_within(0.1).of(3268.7)
        expect(result2.skiing_pts).to be_within(0.1).of(996.432)
        expect(result2.skiing_pos).to eq(3)
        expect(result2.skiing_style).to eq('Perinteinen')
        expect(result3.skiing_time).to be_within(0.1).of(4357.4)
        expect(result3.skiing_pts).to be_within(0.1).of(696.115)
        expect(result3.skiing_pos).to eq(6)
        expect(result3.skiing_style).to eq('Vapaa')
        expect(result4.skiing_time).to be_within(0.1).of(3265.6)
        expect(result4.skiing_pts).to be_within(0.1).of(997.256)
        expect(result4.skiing_pos).to eq(2)
        expect(result4.skiing_style).to eq('Perinteinen')
        expect(result5.skiing_time).to be_within(0.1).of(7568.73)
        expect(result5.skiing_pts).to be_within(0.1).of(216.524)
        expect(result5.skiing_pos).to eq(7)
        expect(result5.skiing_style).to eq('Vapaa')
        expect(result6.skiing_time).to be_within(0.1).of(3435.83)
        expect(result6.skiing_pts).to be_within(0.1).of(902.507)
        expect(result6.skiing_pos).to eq(5)
        expect(result6.skiing_style).to eq('Vapaa')
        expect(result7.skiing_time).to be_within(0.1).of(22242.54)
        expect(result7.skiing_pts).to be_within(0.1).of(0)
        expect(result7.skiing_pos).to eq(9)
        expect(result7.skiing_style).to eq('Perinteinen')
        expect(result8.skiing_time).to be_within(0.1).of(3255.3)
        expect(result8.skiing_pts).to be_within(0.1).of(1000)
        expect(result8.skiing_pos).to eq(1)
        expect(result8.skiing_style).to eq('Perinteinen')
        expect(result9.skiing_time).to be_within(0.1).of(9297.76)
        expect(result9.skiing_pts).to be_within(0.1).of(37.8136)
        expect(result9.skiing_pos).to eq(8)
        expect(result9.skiing_style).to eq('Vapaa')
    end

    scenario 'Admin calculates points for rowing event' do
        sign_in(username: 'Tyhjis', password: 'Salainen1', admin: true)
        visit show_enrollments_path(rowing_event)
        click_link 'Laske kilpailijoiden pisteet'

        result1.reload
        result2.reload
        result3.reload
        result4.reload
        result5.reload
        result6.reload
        result7.reload
        result8.reload
        result9.reload
        result10.reload

        expect(result1.rowing_time).to be_within(0.1).of(4363.53)
        expect(result1.rowing_pts).to be_within(0.1).of(1000)
        expect(result1.rowing_pos).to eq(1)
        expect(result1.rowing_style).to eq('Yksin')
        expect(result2.rowing_time).to be_within(0.1).of(3954.53)
        expect(result2.rowing_pts).to be_within(0.1).of(895.350)
        expect(result2.rowing_pos).to eq(2)
        expect(result2.rowing_style).to eq('Vuoro')
        expect(result3.rowing_time).to be_within(0.1).of(4264.43)
        expect(result3.rowing_pts).to be_within(0.1).of(797.779)
        expect(result3.rowing_pos).to eq(3)
        expect(result3.rowing_style).to eq('Vuoro')
        expect(result4.rowing_time).to be_within(0.1).of(5756.65)
        expect(result4.rowing_pts).to be_within(0.1).of(578.838)
        expect(result4.rowing_pos).to eq(7)
        expect(result4.rowing_style).to eq('Yksin')
        expect(result5.rowing_time).to be_within(0.1).of(5854.88)
        expect(result5.rowing_pts).to be_nil
        expect(result5.rowing_pos).to be_nil
        expect(result5.rowing_style).to eq('Melonta')
        expect(result6.rowing_time).to be_within(0.1).of(7565.43)
        expect(result6.rowing_pts).to be_within(0.1).of(163.515)
        expect(result6.rowing_pos).to eq(9)
        expect(result6.rowing_style).to eq('Yksin')
        expect(result7.rowing_time).to be_within(0.1).of(3535.53)
        expect(result7.rowing_pts).to be_within(0.1).of(660.504)
        expect(result7.rowing_pos).to eq(5)
        expect(result7.rowing_style).to eq('Vuoro')
        expect(result8.rowing_time).to be_within(0.1).of(3789.04)
        expect(result8.rowing_pts).to be_within(0.1).of(591.462)
        expect(result8.rowing_pos).to eq(6)
        expect(result8.rowing_style).to eq('Vuoro')
        expect(result9.rowing_time).to be_within(0.1).of(4546.56)
        expect(result9.rowing_pts).to be_within(0.1).of(714.088)
        expect(result9.rowing_pos).to eq(4)
        expect(result9.rowing_style).to eq('Vuoro')
        expect(result10.rowing_time).to be_within(0.1).of(6446.56)
        expect(result10.rowing_pts).to be_within(0.1).of(245.845)
        expect(result10.rowing_pos).to eq(8)
        expect(result10.rowing_style).to eq('Vuoro')
    end

    scenario 'Admin calculates points for cycling event' do
        sign_in(username: 'Tyhjis', password: 'Salainen1', admin: true)
        visit show_enrollments_path(cycling_event)
        click_link 'Laske kilpailijoiden pisteet'

        result1.reload
        result2.reload
        result3.reload
        result4.reload
        result5.reload
        result6.reload
        result7.reload

        expect(result1.cycling_time).to be_within(0.1).of(3343.09)
        expect(result1.cycling_pts).to be_within(0.1).of(863.858)
        expect(result1.cycling_pos).to eq(3)
        expect(result2.cycling_time).to be_within(0.1).of(4645.653)
        expect(result2.cycling_pts).to be_within(0.1).of(463.742)
        expect(result2.cycling_pos).to eq(6)
        expect(result3.cycling_time).to be_within(0.1).of(3255.6)
        expect(result3.cycling_pts).to be_within(0.1).of(896.106)
        expect(result3.cycling_pos).to eq(2)
        expect(result4.cycling_time).to be_within(0.1).of(4634.54)
        expect(result4.cycling_pts).to be_within(0.1).of(466.654)
        expect(result4.cycling_pos).to eq(5)
        expect(result5.cycling_time).to be_within(0.1).of(2989.00)
        expect(result5.cycling_pts).to be_within(0.1).of(1000)
        expect(result5.cycling_pos).to eq(1)
        expect(result6.cycling_time).to be_within(0.1).of(4374.565)
        expect(result6.cycling_pts).to be_within(0.1).of(536.855)
        expect(result6.cycling_pos).to eq(4)
        expect(result7.cycling_time).to be_within(0.1).of(5325.455)
        expect(result7.cycling_pts).to be_within(0.1).of(297.674)
        expect(result7.cycling_pos).to eq(7)
    end

    scenario 'Admin calculates points for skating event' do
        sign_in(username: 'Tyhjis', password: 'Salainen1', admin: true)
        visit show_enrollments_path(skating_event)
        click_link 'Laske kilpailijoiden pisteet'

        result1.reload
        result2.reload
        result3.reload
        result4.reload
        result5.reload
        result6.reload

        expect(result1.skating_time).to be_within(0.1).of(5436.56)
        expect(result1.skating_pts).to be_within(0.1).of(364.512)
        expect(result1.skating_pos).to eq(4)
        expect(result2.skating_time).to be_within(0.1).of(8565.65)
        expect(result2.skating_pts).to be_within(0.1).of(0)
        expect(result2.skating_pos).to eq(6)
        expect(result3.skating_time).to be_within(0.1).of(3223.77)
        expect(result3.skating_pts).to be_within(0.1).of(1000)
        expect(result3.skating_pos).to eq(1)
        expect(result4.skating_time).to be_within(0.1).of(5675.63)
        expect(result4.skating_pts).to be_within(0.1).of(312.180)
        expect(result4.skating_pos).to eq(5)
        expect(result5.skating_time).to be_within(0.1).of(3464.63)
        expect(result5.skating_pts).to be_within(0.1).of(912.380)
        expect(result5.skating_pos).to eq(2)
        expect(result6.skating_time).to be_within(0.1).of(3643.74)
        expect(result6.skating_pts).to be_within(0.1).of(851.087)
        expect(result6.skating_pos).to eq(3)
    end

    scenario 'Admin calculates points for running event' do
        sign_in(username: 'Tyhjis', password: 'Salainen1', admin: true)
        visit show_enrollments_path(running_event)
        click_link 'Laske kilpailijoiden pisteet'

        result1.reload
        result2.reload
        result3.reload
        result4.reload
        result5.reload
        result6.reload
        result7.reload
        result8.reload

        expect(result1.marathon_time).to be_within(0.1).of(10643.65)
        expect(result1.marathon_pts).to be_within(0.1).of(917.888)
        expect(result1.marathon_pos).to eq(3)
        expect(result1.marathon_style).to eq('maraton')
        expect(result2.marathon_time).to be_within(0.1).of(5324.532)
        expect(result2.marathon_pts).to be_within(0.1).of(796.051)
        expect(result2.marathon_pos).to eq(4)
        expect(result2.marathon_style).to eq('puolimaraton')
        expect(result3.marathon_time).to be_within(0.1).of(9683.55)
        expect(result3.marathon_pts).to be_within(0.1).of(1000)
        expect(result3.marathon_pos).to eq(1)
        expect(result3.marathon_style).to eq('maraton')
        expect(result4.marathon_time).to be_within(0.1).of(13325.75)
        expect(result4.marathon_pts).to be_within(0.1).of(722.686)
        expect(result4.marathon_pos).to eq(5)
        expect(result4.marathon_style).to eq('maraton')
        expect(result5.marathon_time).to be_within(0.1).of(8322.34)
        expect(result5.marathon_pts).to be_within(0.1).of(408.123)
        expect(result5.marathon_pos).to eq(8)
        expect(result5.marathon_style).to eq('puolimaraton')
        expect(result6.marathon_time).to be_within(0.1).of(7445.7)
        expect(result6.marathon_pts).to be_within(0.1).of(504.802)
        expect(result6.marathon_pos).to eq(7)
        expect(result6.marathon_style).to eq('puolimaraton')
        expect(result7.marathon_time).to be_within(0.1).of(6474.73)
        expect(result7.marathon_pts).to be_within(0.1).of(626.170)
        expect(result7.marathon_pos).to eq(6)
        expect(result7.marathon_style).to eq('puolimaraton')
        expect(result8.marathon_time).to be_within(0.1).of(4564.65)
        expect(result8.marathon_pts).to be_within(0.1).of(929.799)
        expect(result8.marathon_pos).to eq(2)
        expect(result8.marathon_style).to eq('puolimaraton')
    end

    scenario 'Admin calculates points for all six events' do
        sign_in(username: 'Tyhjis', password: 'Salainen1', admin: true)
        visit show_enrollments_path(orienteering_event)
        click_link 'Laske kilpailijoiden pisteet'
        visit show_enrollments_path(skiing_event)
        click_link 'Laske kilpailijoiden pisteet'
        visit show_enrollments_path(rowing_event)
        click_link 'Laske kilpailijoiden pisteet'
        visit show_enrollments_path(cycling_event)
        click_link 'Laske kilpailijoiden pisteet'
        visit show_enrollments_path(skating_event)
        click_link 'Laske kilpailijoiden pisteet'
        visit show_enrollments_path(running_event)
        click_link 'Laske kilpailijoiden pisteet'

        result1.reload
        result2.reload
        result3.reload
        result4.reload
        result5.reload
        result6.reload
        result7.reload
        result8.reload
        result9.reload
        result10.reload

        expect(result1.pts_sum).to be_within(0.1).of(4481.545)
        expect(result1.completed_events).to eq(6)
        expect(result2.pts_sum).to be_within(0.1).of(4151.575)
        expect(result2.completed_events).to eq(6)
        expect(result3.pts_sum).to be_within(0.1).of(5153.454)
        expect(result3.completed_events).to eq(6)
        expect(result4.pts_sum).to be_within(0.1).of(3839.159)
        expect(result4.completed_events).to eq(6)
        expect(result5.pts_sum).to be_within(0.1).of(2537.027)
        expect(result5.completed_events).to eq(6)
        expect(result6.pts_sum).to be_within(0.1).of(2958.766)
        expect(result6.completed_events).to eq(5)
        expect(result7.pts_sum).to be_within(0.1).of(1584.348)
        expect(result7.completed_events).to eq(4)
        expect(result8.pts_sum).to be_within(0.1).of(2521.261)
        expect(result8.completed_events).to eq(3)
        expect(result9.pts_sum).to be_within(0.1).of(751.9016)
        expect(result9.completed_events).to eq(2)
        expect(result10.pts_sum).to be_within(0.1).of(245.845)
        expect(result10.completed_events).to eq(1)
    end
end