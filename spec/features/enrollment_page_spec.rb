require 'spec_helper'

include SigninHelper

feature 'Enrollment page' do
  let!(:event) { FactoryGirl.create :event_with_attributes }
  let!(:user) do
    FactoryGirl.create :user_with_kk_enrollment, password: 'S4lainen',
      password_confirmation: 'S4lainen'
  end

  scenario 'User enrolls in event' do
    sign_in(username: 'Tyhjis', password: 'S4lainen')

    visit add_enrollment_path(event.id)

    choose 'monivalinta', option: 'ei'
    check 'valintatieto_'
    fill_in 'tekstikenttä', with: 'testikommentti'
    select 'kolme', from: 'numeron_valinta'
    click_button 'Lähetä ilmoittautuminen eteenpäin'

    current_path.should == '/'
    click_link 'Tarkastele ilmoittautumisiasi'
    expect(page).to have_content event.name
  end

  scenario 'User enrolls in already enrolled event' do
    sign_in(username: 'Tyhjis', password: 'S4lainen')
    #user enrolls in event
    visit add_enrollment_path(event.id)
    choose 'monivalinta', option: 'ei'
    fill_in 'tekstikenttä', with: 'testikommentti'
    select 'kolme', from: 'numeron_valinta'
    click_button 'Lähetä ilmoittautuminen eteenpäin'
    #user tries to enroll again
    visit add_enrollment_path(event.id)
    expect(page).to have_content 'Olet jo ilmoittautunut tapahtumaan'
  end
end
