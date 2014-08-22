require 'spec_helper'

include SigninHelper

feature 'Statistics' do
  let!(:user) { FactoryGirl.create :user, :admin, password: 'Salainen1',
                                   password_confirmation: 'Salainen1',
                                   first_name: 'Kristian' }
  before :each do
    sign_in(username: 'Tyhjis', password: 'Salainen1')
  end

  context 'Before orienteering' do
    before 'Before orienteering' do
      1.upto 52 do |i|
        FactoryGirl.create(:statistic, kk_number: 3300000+i, last_name:
                           "User#{i}", first_name: "User#{i}")
        FactoryGirl.create(:empty_result, kk_number: 3300000+i, name: "User#{i} \
                           User#{i}", completed_events: 6, pts_sum: 25*i)
      end
    end

    scenario 'Page lists statistics correctly' do
      visit statistics_path
      expect(page).to have_content 'Kiertäjänumero'
      expect(page).to have_content '3300001 User1 User1'
      expect(page).to have_content '3300050 User50 User50'
      expect(page).not_to have_content '3300051'

      first(:link, 'Seuraava').click
      expect(page).to have_content 'Kiertäjänumero'
      expect(page).to have_content '3300051 User51 User51'
      expect(page).to have_content '3300052 User52 User52'
      expect(page).not_to have_content '3300050'
    end

    scenario 'Admin cannot update statistics' do
      visit results_path
      click_link '2014'
      expect(page).to have_content 'Vuoden 2014 tulokset'
      expect(page).to have_link 'Päivitä tilastot'
      click_link 'Päivitä tilastot'

      expect(page).to have_content 'Suunnistuksen pisteitä ei ole vielä laskettu.'

      click_link 'Tilastot'

      expect(page).not_to have_content '3300001 User1 User1 Helsinki 1998 1 0 0 6 25.0 0 0 0'
      expect(page).not_to have_content '3300006 User6 User6 Helsinki 1998 1 0 0 6 150.0 0 0 0'

      expect(page).to have_content '3300001 User1 User1 Helsinki 1998 0 0 0 0 0.0 0 0 0'
      expect(page).to have_content '3300006 User6 User6 Helsinki 1998 0 0 0 0 0.0 0 0 0'
    end
  end

  context 'After orienteering' do
    before 'After orienteering' do
      1.upto 52 do |i|
        FactoryGirl.create(:statistic, kk_number: 3300000+i, last_name:
                           "User#{i}", first_name: "User#{i}")
        FactoryGirl.create(:empty_result, kk_number: 3300000+i, name: "User#{i} \
                           User#{i}", completed_events: 6, orienteering_pts: 5*i,
                           pts_sum: 25*i)
      end
    end

    scenario 'Admin updates statistics' do
      visit results_path
      click_link '2014'
      expect(page).to have_content 'Vuoden 2014 tulokset'
      expect(page).to have_link 'Päivitä tilastot'

      click_link 'Päivitä tilastot'
      click_link 'Tilastot'

      expect(page).to have_content '3300001 User1 User1 Helsinki 1998 1 0 0 6 25.0 0 0 0'
      expect(page).to have_content '3300006 User6 User6 Helsinki 1998 1 0 0 6 150.0 0 0 0'
    end
  end
end
