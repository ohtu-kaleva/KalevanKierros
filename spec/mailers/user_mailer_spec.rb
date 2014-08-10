require 'spec_helper'

describe UserMailer do
  let!(:user) { FactoryGirl.create :user, :admin, password: 'Salainen1',
                                   email: 'testmail@test.com',
                                   password_confirmation: 'Salainen1' }
  let!(:email) { UserMailer.registration_activation_email(user).deliver }

  it 'sends mail' do
    expect(ActionMailer::Base.deliveries.empty?).to eq(false)
  end

  it 'has receiver set correctly' do
    expect(email.to).to eq([user.email])
  end

  it 'has sender set correctly' do
    expect(email.from).to eq([ActionMailer::Base.smtp_settings[:user_name]])
  end

  it 'has subject set correctly' do
    expect(email.subject).to eq('Kalevan Kierros - Vahvista rekisteröityminen')
  end

  it 'has link to registration' do
    expect(email.body.encoded).to match("http://0.0.0.0:3000/users/#{user.id}/activate")
  end
end
