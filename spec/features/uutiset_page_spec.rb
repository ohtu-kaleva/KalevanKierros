require 'spec_helper'

include SigninHelper

feature 'Create new news item' do
  let!(:user) { FactoryGirl.create :user, :admin, password: 'Salainen1',
      password_confirmation: 'Salainen1' }
  before :each do
    sign_in(username: 'Tyhjis', password: 'Salainen1')
  end

  scenario 'Admin adds news item' do
    click_link 'Hallinnoi uutisia'
    click_link 'Luo uusi uutinen'
    fill_in 'Uutisen otsikko', with: 'Testiuutinen'
    fill_in 'Uutisen leipäteksti', with: '\
    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
    veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
    commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
    velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
    cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id
    est laborum.'

    click_button 'Tallenna'
    expect(page).to have_content('Uutinen luotu.')
    expect(page).to have_content('Lorem ipsum dolor sit amet')
    expect(page).to have_content('est laborum.')
  end
end
