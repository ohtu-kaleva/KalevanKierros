require 'spec_helper'

include SigninHelper

describe 'New Group page' do

  before :each do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.start

    user1 = FactoryGirl.create :user, password:'Salainen1', password_confirmation:'Salainen1', admin:true
    user2 = FactoryGirl.create :user, username: 'Arska', password:'Salainen2', password_confirmation:'Salainen2', kk_number:12346
    user3 = FactoryGirl.create :user, username: 'Erkki', password:'Salainen3', password_confirmation:'Salainen3', kk_number:12347
    user4 = FactoryGirl.create :user, username: 'Pekka', password:'Salainen4', password_confirmation:'Salainen4', kk_number:12348

    sign_in username:'Tyhjis', password:'Salainen1'
    click_link 'Ylläpito'
    click_link 'Kierroksen hallinta'
    click_button 'Avaa ilmoittautuminen'
  end

  after :each do
    DatabaseCleaner.clean
  end

  after :all do
    self.use_transactional_fixtures = true
  end

  it "should not create group with less than 4 members", js: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    click_button 'Luo joukkue'
    expect(page).to have_content('Tarkista jäsenten määrä')
  end

  it "should create result entries to all users in the group", js: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    fill_in('member4', with:12348)
    click_button 'Luo joukkue'
    expect(Result.count).to eq(4)
  end
end