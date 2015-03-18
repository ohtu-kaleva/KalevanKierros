require 'spec_helper'

describe 'Outsider enrollment' do

  describe 'with correct information' do
    before :each do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.start
      event = FactoryGirl.create :event_with_attributes
    end

    after :each do
      DatabaseCleaner.clean
    end

    it 'outsider opens the correct page' do
      visit outsider_enrollment_path(1)
      expect(page).to have_content('Testievent')
      expect(page).to have_content('True?')
      expect(page).to have_content('Ok?')
      expect(page).to have_content('Kommentti')
      expect(page).to have_content('Valitse numero')
      expect(page).to have_content('Tekstikenttä')
    end

    it 'outsider enrolls correctly' do
      visit outsider_enrollment_path(1)
      fill_in 'Etunimi', with: 'Etu'
      fill_in 'Sukunimi', with: 'Suku'
      fill_in 'Sähköpostiosoite', with: 'testikäyttäjä123@teuh.com'
      fill_in 'Puhelinnumero', with: 'naotehu'
      fill_in 'Katuosoite', with:'Testikatu 123'
      fill_in 'Postinumero', with:'00010'
      fill_in 'Postitoimipaikka', with:'Helsinki'

      choose '[enrollment][monivalinta]', option: 'ei'
      check 'enrollment_valintatieto_'
      fill_in 'enrollment_tekstikentt_', with: 'testikommentti'
      select 'kolme', from: '[enrollment][numeron_valinta]'

      expect {
        click_button 'Ilmoittaudu'
      }.to change(Enrollment, :count).by(1)
      expect(page).to have_content('Ilmoittautumisesi tapahtumaan on kirjattu')
    end
  end

  describe 'with incorrect information' do
    before :each do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.start
      event = FactoryGirl.create :event_with_attributes
    end

    after :each do
      DatabaseCleaner.clean
    end

    it 'outsider cannot enroll to the event' do
      visit outsider_enrollment_path(1)
      click_button 'Ilmoittaudu'
      expect(page).to have_content('Et antanut kaikkia tietoja')
    end

  end

end
