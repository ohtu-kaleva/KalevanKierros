require 'spec_helper'

include SigninHelper

feature 'User' do
  scenario 'cant sign up with incorrect information'do
    visit root_path
    click_link 'Rekisteröidy'
    fill_in 'Etunimi', with: 'Etu'
    fill_in 'Sukunimi', with: 'Suku'
    fill_in 'Käyttäjätunnus', with: 'testikäytt123'
    fill_in 'Sähköpostiosoite', with: 'testikäyttäjä123@teuh.com'
    fill_in 'Puhelinnumero', with: 'naotehu'
    fill_in 'user_password', with: 'Salasana1'
    fill_in 'user_password_confirmation', with: 'Salasana1'
    click_button 'Rekisteröidy'

    expect(page).not_to have_content 'Käyttäjätunnus luotu, aktivoi tunnus
                                      sähköpostiin lähetettyjen ohjeiden mukaan.'


    expect(page).to have_content 'Postal code on kelvoton'
    expect(page).to have_content 'Street address ei voi olla sisällötön'
    expect(page).to have_content 'City ei voi olla sisällötön'
  end

  scenario 'signs up with correct information', js:true, skip: true do
    visit root_path
    click_link 'Rekisteröidy'
    fill_in 'Etunimi', with: 'Etu'
    fill_in 'Sukunimi', with: 'Suku'
    fill_in 'Käyttäjätunnus', with: 'testikäytt123'
    fill_in 'Sähköpostiosoite', with: 'testikäyttäjä123@teuh.com'
    fill_in 'Puhelinnumero', with: '901234'
    fill_in 'Katuosoite', with: 'Tie 12'
    fill_in 'Postinumero', with: '02650'
    fill_in 'Postitoimipaikka', with: 'Hel'
    fill_in 'user_password', with: 'Salasana1'
    fill_in 'user_password_confirmation', with: 'Salasana1'
    click_button 'Rekisteröidy'

    expect(page).to have_content 'Käyttäjätunnus luotu, aktivoi tunnus
                                  sähköpostiin lähetettyjen ohjeiden mukaan.'

    email = ActionMailer::Base.deliveries.last
    message = email.text_part.body.decoded
    expect(message).to have_content 'aktivoidaksesi tunnuksen'
    expect(URI.extract(message)).to have_content(User.last.activation_token)

    visit activation_path id: User.last.id, activation_token: User.last.activation_token

    fill_in 'Käyttäjätunnus', with: 'testikäytt123'
    fill_in 'Salasana', with: 'Salasana1'
    click_button 'Kirjaudu sisään'
    expect(page).to have_content 'Tervetuloa Etu'
  end

  scenario 'user tries to activate non-existing user' do
    visit activation_path 108941
    current_path.should == root_path
  end

  context 'updates' do
    let!(:admin) { FactoryGirl.create :user, :admin, username: 'admin' }
    let!(:user) { FactoryGirl.create :user, first_name: 'Etunimi', last_name:
                              'Sukunimi', kk_number: 54321 }

    before :each do
      sign_in username: 'Tyhjis', password: 'Salainen1'
      click_link 'Omat tiedot'
      click_link 'Muuta tietojasi'
    end

    scenario 'with incorrect information' do
      fill_in 'Käyttäjätunnus', with: 'admin'
      fill_in 'user_password', with: 'Salasana1'
      fill_in 'user_password_confirmation', with: 'Salasana1'
      click_button 'Muokkaa tietoja'

      expect(page).to have_content 'Username on jo käytössä'
    end

    scenario 'with correct information', js: true, skip: true do
      expect(user.street_address).to eq 'Teletappikuja 1'

      fill_in 'Katuosoite', with: 'Vaihdettu osoite'
      fill_in 'user_password', with: 'Salainen1'
      fill_in 'user_password_confirmation', with: 'Salainen1'
      click_button 'Muokkaa tietoja'

      expect(page).to have_content 'Käyttäjätiedot päivitetty onnistuneesti.'
      expect(user.reload.street_address).to eq 'Vaihdettu osoite'
    end
  end

  scenario 'Admin deletes user' do
    FactoryGirl.create :user, :admin
    user = FactoryGirl.create :user, first_name: 'Etunimi', last_name:
                              'Sukunimi', username: 'poistettava', kk_number: 54321
    sign_in username: 'Tyhjis', password: 'Salainen1'

    click_link 'Ylläpito'
    click_link 'Hallinnoi käyttäjiä'
    expect(page).to have_content "#{user.last_name} #{user.first_name} #{user.username}"
    find(:link, "delete#{user.id}").click
    expect(page).not_to have_content "#{user.last_name} #{user.first_name} #{user.username}"
  end
end
