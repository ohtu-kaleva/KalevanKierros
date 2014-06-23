require 'spec_helper'

include SigninHelper

describe "Front page" do
  before :each do
    visit root_path
  end

  describe "by default" do
    it "should have register option" do
      expect(page).to have_content 'Rekisteröidy'
    end

    it "should have login option" do
      expect(page).to have_content 'Kirjaudu sisään'
    end

    it "should take user to correct login screen" do
      click_link 'Kirjaudu sisään'
      expect(page).to have_content 'Käyttäjätunnus'
      expect(page).to have_content 'Salasana'
    end

    it "should take user to correct register screen" do
      click_link 'Rekisteröidy'
      expect(page).to have_content 'Rekisteröidy'
      expect(page).to have_content 'Salasana uudestaan'
    end
  end

  describe "while user logged in" do
     let!(:user) { FactoryGirl.create :user, password:"S4lainen", password_confirmation:"S4lainen"}
    before :each do
      sign_in(username:"Tyhjis", password:"S4lainen")
    end

    it "should have logout option" do
      expect(page).to have_content 'Kirjaudu ulos'
    end

    it "should logout correctly" do
      click_link 'Kirjaudu ulos'
      expect(page).to have_content 'Kirjaudu sisään'
    end

    it "should have option for editing user information" do
      expect(page).to have_content 'Muuta tietojasi'
    end

    it "edit information should take to right page" do
      click_link 'Muuta tietojasi'
      expect(page).to have_content 'Muokkaa tietoja'
    end

    describe "as admin" do
      let!(:user) { FactoryGirl.create :user, password:"S4lainen", password_confirmation:"S4lainen", admin:true}

      it "should have the options for administrators" do
        sign_in(username:"Tyhjis", password:"S4lainen")
        expect(page).to have_content 'Ylläpito'
      end
    end
  end
end
