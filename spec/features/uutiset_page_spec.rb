require 'spec_helper'

include SigninHelper

feature 'News page' do
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
    expect(page).to have_content 'Uutinen luotu.'
    expect(page).to have_content 'Lorem ipsum dolor sit amet'
    expect(page).to have_content 'est laborum.'
  end

  context 'with 4 news items' do
    before :each do
      Uutiset.create title: 'title1', body: 'testbody1', created_at: DateTime.new(2013, 12, 31, 23, 59, 59)
      Uutiset.create title: 'title2', body: 'testbody2', created_at: DateTime.new(2014, 1, 1, 0, 0, 0)
      Uutiset.create title: 'title3', body: 'testbody3', created_at: DateTime.new(2014, 12, 31, 23, 59, 59)
      Uutiset.create title: 'title4', body: 'testbody4', created_at: DateTime.new(2015, 1, 1, 0, 0, 0)
    end

    scenario 'Admin browses news by year' do
      visit archive_by_year_path('2014')
      expect(page).to have_content 'Uutisarkisto 2014'
      expect(page).to have_content 'title2'
      expect(page).to have_content 'title3'

      expect(page).not_to have_content 'title1'
      expect(page).not_to have_content 'title4'

      click_link 'title2'
      expect(page).to have_content 'title2'
      expect(page).to have_content 'testbody2'
    end

    scenario 'Admin edits news item' do
      click_link 'Hallinnoi uutisia'
      first(:link, 'Muokkaa').click

      fill_in 'Uutisen otsikko', with: 'Muutettu otsikko'
      fill_in 'Uutisen leipäteksti', with: 'Muutettu teksti'
      click_button 'Tallenna'
      expect(page).to have_content 'Uutinen päivitetty.'
      expect(page).to have_content 'Muutettu otsikko'
      expect(page).to have_content 'Muutettu teksti'
      expect(page).not_to have_content 'title1'
      expect(page).not_to have_content 'testbody1'
    end

    scenario 'Admin deletes news item', js: true, skip: true do
      click_link 'Ylläpito'
      click_link 'Hallinnoi uutisia'
      expect(page).to have_link 'Poista'

      page.first(:link, 'Poista').click
      page.driver.browser.switch_to.alert.accept

      expect(page).to have_content 'Uutinen poistettu.'
      expect(page).not_to have_content 'title1'
    end
  end

  context 'It is not possible to' do
    before :each do
      Uutiset.create title: 'title1', body: 'testbody1', created_at: DateTime.new(2013, 12, 31, 23, 59, 59)
      click_link 'Hallinnoi uutisia'
    end

    scenario 'add news item with empty title' do
      click_link 'Luo uusi uutinen'
      click_button 'Tallenna'
      expect(page).not_to have_content 'Uutinen luotu.'
    end

    scenario 'edit empty title to news item' do
      click_link 'Muokkaa'

      fill_in 'Uutisen otsikko', with: ''
      click_button 'Tallenna'
      expect(page).not_to have_content 'Uutinen päivitetty onnistuneesti.'
    end

    scenario 'browse archives with incorrect year' do
      visit archive_by_year_path('123d')
      current_path.should == '/'
    end

    scenario 'browse unexisting news item' do
      visit uutiset_path(234)
      current_path.should == '/'
    end
  end
end
