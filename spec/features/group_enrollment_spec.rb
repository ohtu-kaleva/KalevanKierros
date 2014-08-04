require 'spec_helper'

include SigninHelper

describe 'New Group page' do
  let!(:user1) { FactoryGirl.create :user, password:'Salainen1', password_confirmation:'Salainen1' }
  let!(:user2) { FactoryGirl.create :user, username: 'Arska', password:'Salainen2', password_confirmation:'Salainen2', kk_number:12346 }
  let!(:user3) { FactoryGirl.create :user, username: 'Erkki', password:'Salainen3', password_confirmation:'Salainen3', kk_number:12347 }
  let!(:user4) { FactoryGirl.create :user, username: 'Pekka', password:'Salainen4', password_confirmation:'Salainen4', kk_number:12348 }

  before :each do
    sign_in username:'Tyhjis', password:'Salainen1'
  end

  it "should not create group with less than 4 members", js: true do
    visit new_group_path
    fill_in('group_name', with:'Testi')
    fill_in('member2', with:12346)
    fill_in('member3', with:12347)
    click_button 'Luo joukkue'
    expect(page).to have_content('Tarkista jäsenten lukumäärä')
  end

  it "should create result entries to all users in the group"
end