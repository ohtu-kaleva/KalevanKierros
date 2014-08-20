require 'spec_helper'

feature 'Show results by year' do
  let!(:result) { FactoryGirl.create :result }
  let!(:result2) { FactoryGirl.create :result, year:2013 }
  let!(:result3) { FactoryGirl.create :result, year:2012 }

  context "Selecting existing year" do
    scenario "shows the correct year (2014)" do
      visit index_by_year_path(2014, "all", "all", "all")
      expect(page).to have_content('Vuoden 2014 tulokset')
      expect(page).to have_content('Kristian Hansson')
    end
    scenario "shows the correct year (2013)" do
      visit index_by_year_path(2013, "all", "all", "all")
      expect(page).to have_content('Vuoden 2013 tulokset')
      expect(page).to have_content('Kristian Hansson')
    end
  end

  context "Selecting nonexisting year" do
    scenario "redirects to results index page" do
      visit index_by_year_path(1300, "all", "all", "all")
      current_path.should eq('/results')
    end
  end

  context "Selecting  year" do
    scenario "Shows the existing skating results for a correct year (2014)" do
      visit index_by_year_path(2014, "all", "all", "skating")
      expect(page).to have_content('Kristian Hansson')
      expect(page).to have_content('Loppuaika')
      expect(page).to have_content('01:03:43')
    end

    scenario "Shows the existing skiing results for a correct year (2014)" do
      visit index_by_year_path(2014, "all", "all", "skiing")
      expect(page).to have_content('Kristian Hansson')
      expect(page).to have_content('Loppuaika')
      expect(page).to have_content('02:46:29')
    end

    scenario "Shows the existing running results for a correct year (2014)" do
      visit index_by_year_path(2014, "all", "all", "marathon")
      expect(page).to have_content('Kristian Hansson')
      expect(page).to have_content('Loppuaika')
      expect(page).to have_content('03:14:46')
    end

    scenario "Shows the existing rowing results for a correct year (2014)" do
      visit index_by_year_path(2014, "all", "all", "rowing")
      expect(page).to have_content('Kristian Hansson')
      expect(page).to have_content('Loppuaika')
      expect(page).to have_content('02:59:41')
    end

    scenario "Shows the existing cycling results for a correct year (2014)" do
      visit index_by_year_path(2014, "all", "all", "cycling")
      expect(page).to have_content('Kristian Hansson')
      expect(page).to have_content('Loppuaika')
      expect(page).to have_content('01:50:22')
    end

    scenario "Shows the existing orienteering results for a correct year (2014)" do
      visit index_by_year_path(2014, "all", "all", "orienteering")
      expect(page).to have_content('Kristian Hansson')
      expect(page).to have_content('Loppuaika')
      expect(page).to have_content('01:26:07')
    end
  end
end