require 'spec_helper'

include SigninHelper
describe 'Group Results page' do

  describe 'without any groups in database' do
    it 'should redirect to root' do
      visit results_by_year_and_groups_path(Date.today.year)
      current_path.should eq('/')
    end
  end

  describe 'with a group in database' do
    before :each do
      result1 = FactoryGirl.create :result, group:'Testi', year:Date.today.year
      result2 = FactoryGirl.create :result, group:'Testi', name:'Erkki Hervanta', year:Date.today.year
      result3 = FactoryGirl.create :result, group:'Testi', name:'Heikki Hattula', year:Date.today.year
      result4 = FactoryGirl.create :result, group:'Testi', name:'Veikko Vanaja', year:Date.today.year
      result5 = FactoryGirl.create :result, group:'Testi', name:'Jaakko Janakkala', year:Date.today.year
      result6 = FactoryGirl.create :result, group:'Testi', name:'Aapo Akaa', year:Date.today.year
      visit results_by_year_and_groups_path(Date.today.year)
    end

    it 'should show the correct group name' do
      expect(page).to have_content("Vuoden #{Date.today.year} joukkuetulokset")
      expect(page).to have_content('Testi')
    end

    it 'should show the names of the participants in group' do
      expect(page).to have_content('Kristian Hansson')
      expect(page).to have_content('Erkki Hervanta')
      expect(page).to have_content('Veikko Vanaja')
      expect(page).to have_content('Jaakko Janakkala')
      expect(page).to have_content('Aapo Akaa')
      expect(page).to have_content('Heikki Hattula')
    end

    it 'should show the sum of points correctly' do
      # This was checked by counting the sum of four best points in FactoryGirl factory :result in spec/factories.rb by hand
      expect(page).to have_content('Testi: 21199.16')
    end
  end

end