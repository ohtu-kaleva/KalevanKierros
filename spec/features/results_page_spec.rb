require 'spec_helper'

describe "Result page" do
  it "should contain years from 2011" do
    visit results_path
    expect(page).to have_content('2011')
  end
end