require 'spec_helper'

describe "Result page" do
  let!(:result) { FactoryGirl.create :result }
  let!(:result2) { FactoryGirl.create :result, year:2013 }
  let!(:result3) { FactoryGirl.create :result, year:2012 }

  before :each do
    visit results_path
  end

  it "should contain years from 2011" do
    expect(page).to have_content('2011')
  end

  it "should have links that direct to correct results" do
    click_link Date.today.year.to_s
    expect(page).to have_content "Vuoden #{Date.today.year.to_s} tulokset"
  end
end