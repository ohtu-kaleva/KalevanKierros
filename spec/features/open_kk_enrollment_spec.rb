require 'spec_helper'

include SigninHelper

feature 'Opening enrollment' do
  let!(:user) { FactoryGirl.create :user, :admin, password: 'Salainen1',
                password_confirmation: 'Salainen1' }
  before :each do
    sign_in(username: 'Tyhjis', password: 'Salainen1')
  end

  scenario 'User cannot enroll if closed' do
    visit new_kk_enrollment_path(user.id)
    expect(page).to have_content 'Kierrokselle ei voi ilmoittautua'
  end

  scenario 'Admin can open enrollment' do
    click_link 'Kierroksen hallinta'
    click_button 'Avaa ilmoittautuminen'
    expect(current_url).to eq(admin_kk_enrollment_url)
    expect(page).to have_content 'Kierrosilmoittautuminen avattu'

  end
end
