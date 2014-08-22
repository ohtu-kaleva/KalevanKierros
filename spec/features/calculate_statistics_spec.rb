require 'spec_helper'

include SigninHelper

feature 'Calculating statistics' do
  let!(:user) { FactoryGirl.create :user, :admin, password: 'Salainen1',
                                   password_confirmation: 'Salainen1',
                                   first_name: 'Kristian' }
  before :each do
    sign_in(username: 'Tyhjis', password: 'Salainen1')
  end

  scenario 'Admin calculates statistics' do
    click_link 'Ylläpito'
    click_link 'Kierroksen hallinta'
    click_link 'Päivitä tilastot'
  end
end
