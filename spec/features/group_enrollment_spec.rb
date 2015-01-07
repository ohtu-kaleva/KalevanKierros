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
    user5 = FactoryGirl.create :user, username: 'Ari', password:'Salainen5', password_confirmation:'Salainen5', kk_number:12349
    user6 = FactoryGirl.create :user, username: 'Mursu', password:'Salainen6', password_confirmation:'Salainen6', kk_number:12350

    sign_in username:'Tyhjis', password:'Salainen1'
    click_link 'Ylläpito'
    click_link 'Kierroksen hallinta'
    fill_in 'account_number', with: 'FI12 1234 123456789'
    fill_in 'kk_year', with: Date.today.year + 1
    select '2016', from: 'deadline[year]'
    click_button 'Avaa ilmoittautuminen'
  end

  after :each do
    DatabaseCleaner.clean
  end

  after :all do
    self.use_transactional_fixtures = true
  end

  it "should not create group with less than 4 members", js: true, skip: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    expect {
    click_button 'Luo joukkue'
    }.to change(Group, :count).by(0)
    expect(page).to have_content('Tarkista jäsenten määrä')
  end

  it "should not create group without a name", js: true, skip: true do
    visit new_group_path
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    fill_in('member4', with:12348)
    expect {
      click_button 'Luo joukkue'
    }.to change(Group, :count).by(0)
    expect(page).to have_content('Joukkueella tulee olla nimi')
  end

  it "should create group with at least 4 members", js: true, skip: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    fill_in('member4', with:12348)
    expect {
    click_button 'Luo joukkue'
    }.to change(Group, :count).by(1)
    expect(page).to have_content('Ryhmä luotu onnistuneesti')
    expect(Group.last.name).to eq('Testi')
  end

  it "should create result entries to all users in the group", js: true, skip: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    fill_in('member4', with:12348)
    expect{
      click_button 'Luo joukkue'
    }.to change(Result, :count).by(4)
    expect(Result.last.group).to eq('Testi')
  end

  it "should have placed current user as groups captain", js: true, skip: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    fill_in('member4', with:12348)
    click_button 'Luo joukkue'
    g = Group.last
    expect(g.user_id).to eq(1)
  end

  it "should display error if non-existant kk-number is entered", js: true, skip: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    fill_in('member4', with:12348)
    fill_in('member5', with:1)
    expect{
      click_button 'Luo joukkue'
    }.to change(Group, :count).by(0)
    expect(page).to have_content('Käyttäjää 1 ei löydy')
  end

  it "should allow adding new members", js: true, skip: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    fill_in('member4', with:12348)
    click_button 'Luo joukkue'
    click_link 'Omat tiedot'
    click_link 'Joukkueesi tiedot'
    expect(page).to have_content 'Testi'
    click_link 'Lisää henkilö joukkueeseen'
    fill_in('kk_number', with:12349)
    expect{
      click_button 'Lisää jäsen'
    }.to change(Result, :count).by(1)
    group = Group.last
    expect(group.users.count).to eq(5)
    expect(Result.last.group).to eq('Testi')
  end

  it "should not allow adding already added member", js: true, skip: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    fill_in('member4', with:12348)
    fill_in('member5', with:12349)
    click_button 'Luo joukkue'
    click_link 'Omat tiedot'
    click_link 'Joukkueesi tiedot'
    click_link 'Lisää henkilö joukkueeseen'
    fill_in('kk_number', with:12349)
    click_button 'Lisää jäsen'
    expect(page).to have_content('Jäsenen lisääminen ei onnistunut. Jäsen kuuluu jo johonkin ryhmään.')
  end

  it "should not allow adding a member who has already enrolled", js: true, skip: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    fill_in('member4', with:12348)
    fill_in('member5', with:12349)
    click_button 'Luo joukkue'
    click_link 'Omat tiedot'
    click_link 'Kirjaudu ulos'

    visit signin_path
    fill_in('username', with:'Mursu')
    fill_in('password', with:'Salainen6')
    click_button 'Kirjaudu sisään'
    click_link 'Ilmoittautuminen'
    click_link 'Ilmoittaudu kierrokselle'
    click_button 'Ilmoittaudu kierrokselle'
    click_link 'Omat tiedot'
    click_link 'Kirjaudu ulos'

    sign_in username:'Tyhjis', password:'Salainen1'
    click_link 'Omat tiedot'
    click_link 'Joukkueesi tiedot'
    click_link 'Lisää henkilö joukkueeseen'
    fill_in('kk_number', with:12350)
    click_button 'Lisää jäsen'
    expect(page).to have_content('Käyttäjä on jo ilmoittautunut kierrokselle')
  end

  it "should display error if trying to add a member without writing kk-number", js: true, skip: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    fill_in('member4', with:12348)
    fill_in('member5', with:12349)
    click_button 'Luo joukkue'
    click_link 'Omat tiedot'
    click_link 'Joukkueesi tiedot'
    click_link 'Lisää henkilö joukkueeseen'
    click_button 'Lisää jäsen'
    expect(page).to have_content('Jäsenen lisääminen ei onnistunut')
  end

  it "should display error if trying to enter non-existant kk-number", js: true, skip: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    fill_in('member4', with:12348)
    fill_in('member5', with:12349)
    click_button 'Luo joukkue'
    click_link 'Omat tiedot'
    click_link 'Joukkueesi tiedot'
    click_link 'Lisää henkilö joukkueeseen'
    fill_in('kk_number', with:1)
    click_button 'Lisää jäsen'
    expect(page).to have_content('Jäsenen lisääminen ei onnistunut')
  end
end