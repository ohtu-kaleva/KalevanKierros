require 'spec_helper'

include SigninHelper

describe 'Edit event page' do

  before :each do
    event = FactoryGirl.create :event, sport_type: 'RunningEvent', name:'Testievent'
    user = FactoryGirl.create :user, password: 'Salainen1', password_confirmation: 'Salainen1', admin:true
    sign_in username:'Tyhjis', password:'Salainen1'
    visit edit_event_path(event)
  end

  it 'form should not render event_type field' do
    expect(page).to have_content('Muokkaa tapahtumaa')
    expect(page).not_to have_content('Jos haluat valmiin pohjan tapahtumalle, valitse jokin seuraavista:')
  end

  it 'form should render events right credentials' do
    expect(page.html).to have_content('Testikuvaus')
  end

  it 'should not change events sport_type when updated' do
    event = Event.find_by id:1
    expect(event.sport_type).to eq('RunningEvent')
    fill_in 'Tapahtuman kuvaus', with:'Uusi kuvaus'
    click_button 'Muokkaa'
    expect(current_path).to eq('/events/1')
    event = Event.find_by id:1
    expect(event.sport_type).to eq('RunningEvent')
    expect(event.description).to eq('Uusi kuvaus')
  end
end