require 'spec_helper'

include SigninHelper

feature 'Opening enrollment' do
  let!(:user) { FactoryGirl.create :user, :admin, password: 'Salainen1',
      password_confirmation: 'Salainen1' }
  before :each do
    sign_in(username: 'Tyhjis', password: 'Salainen1')
  end

  context 'Closed enrollment' do
    scenario 'User tries to enroll' do
      click_link 'Esittely'
      click_link 'Ilmoittautuminen'
      expect(page).not_to have_link 'Ilmoittaudu kierrokselle'
      visit new_kk_enrollment_path(user.id)
      expect(page).to have_content 'Kierrokselle ei voi ilmoittautua'
    end

    scenario 'Admin opens enrollment' do
      click_link 'Kierroksen hallinta'
      fill_in('account_number', with: 'FI12 1234 123456789')
      fill_in('kk_year', with: Date.today.year)
      select '2016', from: 'deadline[year]'
      click_button 'Avaa ilmoittautuminen'
      expect(current_url).to eq(admin_kk_enrollment_url)
      expect(page).to have_content 'Kierrosilmoittautuminen avattu'
      ac_number = AppSetting.find_by name: 'KkAccountNumber'
      expect(ac_number.value).to eq('FI12 1234 123456789')
      kk_year = AppSetting.find_by name: 'KkYear'
      expect(kk_year.value).to eq(Date.today.year.to_s)

      visit new_kk_enrollment_path(user.id)
      expect(page).to have_content 'Ilmoittautuminen Kalevan Kierrokselle'
    end

    scenario 'Admin tries to open enrollment without account_number' do
      click_link 'Kierroksen hallinta'
      select '2016', from: 'deadline[year]'
      fill_in 'kk_year', with: 2016
      click_button 'Avaa ilmoittautuminen'
      expect(current_url).to eq(admin_kk_enrollment_url)
      expect(page).to have_content 'Tilinumero puuttuu'
    end

    scenario 'Admin tries to open enrollment with incorrect account number' do
      click_link 'Kierroksen hallinta'
      fill_in 'account_number', with: '1234567899'
      select '2016', from: 'deadline[year]'
      click_button 'Avaa ilmoittautuminen'
      expect(current_url).to eq(admin_kk_enrollment_url)
      expect(page).to have_content 'Tilinumero ei ollut hyväksyttävä'
    end
  end

  context 'Open enrollment' do
    before :each do
      click_link 'Kierroksen hallinta'
      fill_in('account_number', with: 'FI12 1234 123456789')
      fill_in('kk_year', with: Date.today.year)
      select '2016', from: 'deadline[year]'
      click_button 'Avaa ilmoittautuminen'
    end

    scenario 'User creates new enrollment' do
      click_link 'Esittely'
      click_link 'Ilmoittautuminen'
      click_link 'Ilmoittaudu kierrokselle'
      expect(Result.count).to eq(0)
      click_button 'Ilmoittaudu kierrokselle'
      expect(page).to have_content 'Ilmoittautuminen onnistui'
      expect(page).not_to have_content 'Kierrokselle ei voi ilmoittautua'
      expect(Result.count).to eq(1)
    end

    scenario 'User enrollment creates new result entry' do
      click_link 'Esittely'
      click_link 'Ilmoittautuminen'
      click_link 'Ilmoittaudu kierrokselle'
      click_button 'Ilmoittaudu kierrokselle'
      expect(Result.last.name).to eq(user.full_name)
      expect(Result.last.year).to eq(Date.today.year)
      expect(Result.last.city).to eq(user.city)
      click_link 'Ylläpito'
      click_link 'Kierroksen hallinta'
      click_button 'Näytä ilmoittautumiset'
      expect(page).to have_content 'virhe viitenumerossa'
      expect(page).to have_content user.first_name
      expect(page).to have_content user.last_name
    end

    scenario 'Admin closes enrollment' do
      click_link 'Ylläpito'
      click_link 'Kierroksen hallinta'
      expect{
        click_button 'Sulje ilmoittautuminen'
      }.to change(AppSetting, :count).by(-3)

      expect(page).to have_content 'Kierrosilmoittautuminen suljettu'
    end
  end
end
