require 'spec_helper'

describe 'Show results page' do

  before :each do
    result1 = FactoryGirl.create :result
    result2 = FactoryGirl.create :result, series: 'MAL22', name: 'Jonne Jonnela'
    result3 = FactoryGirl.create :result, series: 'M50', name: 'Keski Ikä'
    result4 = FactoryGirl.create :result, series: 'M55', name: 'Vielä Jaksaa'
    result5 = FactoryGirl.create :result, series: 'M60', name: 'Teräs Kunto'
    result6 = FactoryGirl.create :result, series: 'M65', name: 'Eläke Kuntomies'
    result7 = FactoryGirl.create :result, series: 'M70', name: 'Teräs Vaari'
    result8 = FactoryGirl.create :result, series: 'M75', name: 'Kuolematon Kaveri'
    result9 = FactoryGirl.create :result, series: 'NAL22', name: 'Nuori Nainen'
    result10 = FactoryGirl.create :result, series: 'N55', name: 'Nordic Walker'
    result11 = FactoryGirl.create :result, series: 'N', name: 'Yleinen Nsarja'
  end

  describe 'when finding data' do


    it 'should show all results by default' do
      visit index_by_year_path(Date.today.year, "all", "all", "all")
      expect(page).to have_content("Vuoden #{Date.today.year.to_s} tulokset")
      find('table').find('tr:nth-child(2)').should have_content('Kristian Hansson')
      page.all('table.results tr').count.should == 23
    end

    it 'should show general series when selected' do
      visit index_by_year_path(Date.today.year, 'all', 'yleinen', 'all')
      find('table').find('tr:nth-child(2)').should have_content('Kristian Hansson')
      page.all('table.results tr').count.should == 5
    end

    it 'should show only MAL22 series when selected' do
      visit index_by_year_path(Date.today.year, "M", "AL22", "all")
      find('table').find('tr:nth-child(2)').should have_content('Jonne Jonnela')
      page.all('table.results tr').count.should == 3
    end

    it 'should show only M series when selected' do
      visit index_by_year_path(Date.today.year, "M", "50", "all")
      find('table').find('tr:nth-child(2)').should have_content('Keski Ikä')
    end

    it 'should show only M55 series when selected' do
      visit index_by_year_path(Date.today.year, "M", "55", "all")
      find('table').find('tr:nth-child(2)').should have_content('Vielä Jaksaa')
    end

    it 'should show only M60 series when selected' do
      visit index_by_year_path(Date.today.year, "M", "60", "all")
      find('table').find('tr:nth-child(2)').should have_content('Teräs Kunto')
    end

    it 'should show only M65 series when selected' do
      visit index_by_year_path(Date.today.year, "M", "65", "all")
      find('table').find('tr:nth-child(2)').should have_content('Eläke Kuntomies')
    end

    it 'should show only M70 series when selected' do
      visit index_by_year_path(Date.today.year, "M", "70", "all")
      find('table').find('tr:nth-child(2)').should have_content('Teräs Vaari')
    end

    it 'should show only M75 series when selected' do
      visit index_by_year_path(Date.today.year, "M", "75", "all")
      find('table').find('tr:nth-child(2)').should have_content('Kuolematon Kaveri')
    end

  end

  describe 'when not finding data' do

    it 'should redirect to page that show all data' do
      visit index_by_year_path(Date.today.year, "N", "60", "all")
      current_path.should eq(index_by_year_path(Date.today.year, "all", "all", "all"))
    end

  end

end