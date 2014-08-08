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
end