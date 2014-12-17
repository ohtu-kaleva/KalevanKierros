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
  context 'as admin' do
    before :each do
      sign_in(username: user.username, password: 'Salainen1')
      click_link 'Ylläpito'
      click_link 'Hallinnoi käyttäjiä'
      click_link 'Liitä tilastoon'
    end

    scenario 'Admin joins user to proposed existing statistic', js: true, skip: true do
      expect(Statistic.count).to eq(2)
      expect(User.count).to eq(1)

      expect(page).not_to have_content 'Ei nykyistä tilastoa.'
      expect(page).to have_content '12345'

      click_button 'Liitä tilasto'
      page.driver.browser.switch_to.alert.accept

      current_path.should == '/users'
      expect(page).to have_content 'Käyttäjä liitetty tilastoon.'
      expect(Statistic.count).to eq(1)
      expect(Statistic.last.user_id).to eq(user.id)
    end
  end

  context 'with regular user' do
    let!(:non_admin) { FactoryGirl.create :user, username: 'Testi', kk_number:\
                3300000, password: 'Salasana1', password_confirmation: 'Salasana1' }

    before 'with regular user' do
      1.upto 102 do |i|
        FactoryGirl.create(:statistic, kk_number: 3300000+i, last_name:
                           "User#{i}", first_name: "User#{i}")
        FactoryGirl.create(:empty_result, kk_number: 3300000+i, name: "User#{i} \
                           User#{i}", completed_events: 6, orienteering_pts: 5*i,
                           pts_sum: 25*i)
      end
    end

    before 'with regular user' do
      UsersController.new.send(:init_statistic_entry, non_admin)
      sign_in username: 'Testi', password: 'Salasana1'
    end

    scenario 'User views his own result' do
      click_link 'Omat tiedot'
      click_link 'Näytä tilasto'

      expect(page).to have_content "Kiertäjänumero #{non_admin.kk_number}"
      expect(page).to have_content "Sukunimi #{non_admin.last_name}"
      expect(page).to have_content "Etunimi #{non_admin.first_name}"
      expect(page).to have_content "Kotipaikka #{non_admin.city}"
      expect(page).to have_content "Syntymävuosi #{non_admin.birth_date.year}"
      expect(page).to have_content "6 0"
      expect(page).to have_content "5 0"
      expect(page).to have_content "4 0"
      expect(page).to have_content "Yhteensä 0"
      expect(page).to have_content "Kokonaispisteet 0.0"
    end

    scenario 'User tries to view non-existing statistic' do
      visit statistic_path '3985'
      current_path.should == '/'
    end

    scenario 'User views all statistics' do
      visit statistics_static_path
      expect(page).to have_content '3300001 User1 User1'

      first(:link, 'Seuraava').click
      expect(page).to have_content '3300096 User96 User96'
    end
  end
end
