require 'spec_helper'

include SigninHelper

feature 'Joining statistic' do
  let!(:user) { FactoryGirl.create :user, :admin, password: 'Salainen1',
                                   password_confirmation: 'Salainen1',
                                   first_name: 'Kristian' }
  let!(:current_statistic) { FactoryGirl.create :statistic, first_name: 'Kristian',
                             last_name: 'Hansson', user_id: user.id, kk_number: user.kk_number,
                             city: 'Helsinki' }
  let!(:old_statistic) { FactoryGirl.create :statistic, first_name: 'Kristian',
                       last_name: 'Hansson', kk_number: '86741',
                       city: 'Helsinki' }
  before :each do
    sign_in(username: 'Tyhjis', password: 'Salainen1')
    click_link 'Ylläpito'
    click_link 'Hallinnoi käyttäjiä'
    click_link 'Liitä tilastoon'

    expect(Statistic.count).to eq(2)
    expect(User.count).to eq(1)

    expect(page).not_to have_content 'Ei nykyistä tilastoa.'
    expect(page).to have_content '12345'
  end

  scenario 'Admin joins user to proposed existing statistic', js: true, skip: true do
    click_button 'Liitä tilasto'
    page.driver.browser.switch_to.alert.accept

    current_path.should == '/users'
    expect(page).to have_content 'Käyttäjä liitetty tilastoon.'
    expect(Statistic.count).to eq(1)
    expect(Statistic.last.user_id).to eq(user.id)
  end
end
