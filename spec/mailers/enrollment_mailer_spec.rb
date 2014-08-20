require 'spec_helper'

describe EnrollmentMailer do
  let!(:user) { FactoryGirl.create :user, :admin, password: 'Salainen1',
                                   email: 'testmail@test.com',
                                   password_confirmation: 'Salainen1' }

  it 'sends correct running enrollment confirmation' do
    event = FactoryGirl.create :complete_event, :running
    enrollment = FactoryGirl.create :complete_enrollment, :running_marathon, user_id: user.id
    type = enrollment.enrollment_datas.find_by(name:'Tyyppi').value

    email = EnrollmentMailer.send_enrollment_email(user, event, enrollment)

    test_shared_email_content(email)
    expect(email.subject).to match('Ilmoittautuminen Kalevan Kierroksen Juoksuun')
    expect(email.body.encoded).to match("Matka: #{type}")
  end

  it 'sends correct rowing enrollment confirmation' do
    event = FactoryGirl.create :complete_event, :rowing
    enrollment = FactoryGirl.create :complete_enrollment, :rowing, user_id: user.id
    style = enrollment.enrollment_datas.find_by(name: 'Melonta').value

    email = EnrollmentMailer.send_enrollment_email(user, event, enrollment)

    test_shared_email_content(email)
    expect(email.subject).to match('Ilmoittautuminen Kalevan Kierroksen Soutuun')
    expect(email.body.encoded).to match("Tyyli: #{style}")
    expect(email.body.encoded).not_to match('Parin nimi: ')
  end

  it 'sends correct skating enrollment confirmation' do
    event = FactoryGirl.create :complete_event, :skating
    enrollment = FactoryGirl.create :complete_enrollment, :skating, user_id: user.id
    calculator = enrollment.enrollment_datas.find_by(name: 'Kierroslaskija').value

    email = EnrollmentMailer.send_enrollment_email(user, event, enrollment)

    test_shared_email_content(email)
    expect(email.body.encoded).to match "Kierroslaskija: #{calculator}".gsub('ä','=C3=A4')
    expect(email.subject).to match('Ilmoittautuminen Kalevan Kierroksen Luisteluun')
  end

  it 'sends correct skiing enrollment confirmation' do
    event = FactoryGirl.create :complete_event, :skiing
    enrollment = FactoryGirl.create :complete_enrollment, :skiing_freestyle, user_id: user.id
    style = enrollment.enrollment_datas.find_by(name: 'Tyyli').value

    email = EnrollmentMailer.send_enrollment_email(user, event, enrollment)

    test_shared_email_content(email)
    expect(email.subject).to match('Ilmoittautuminen Kalevan Kierroksen Hiihtoon')
    expect(email.body.encoded).to match("Tyyli: #{style}")
  end

  it 'sends correct orienteering enrollment confirmation' do
    event = FactoryGirl.create :complete_event, :orienteering
    enrollment = FactoryGirl.create :complete_enrollment, :orienteering, user_id: user.id
    emit = enrollment.enrollment_datas.find_by(name: 'Emit').value

    email = EnrollmentMailer.send_enrollment_email(user, event, enrollment)

    test_shared_email_content(email)
    expect(email.body.encoded).to match "Emit-lähetin: #{emit}".gsub('ä','=C3=A4')
    expect(email.subject).to match('Ilmoittautuminen Kalevan Kierroksen Suunnistukseen')
  end

  it 'sends correct cycling enrollment confirmation' do
    event = FactoryGirl.create :complete_event, :cycling
    enrollment = FactoryGirl.create :complete_enrollment, user_id: user.id

    email = EnrollmentMailer.send_enrollment_email(user, event, enrollment)

    test_shared_email_content(email)
    expect(email.subject).to match('Ilmoittautuminen Kalevan Kierroksen Pyöräilyyn')
  end

  def test_shared_email_content(email)
    expect(ActionMailer::Base.deliveries.empty?).to eq(false)

    expect(email.to).to eq([user.email])
    expect(email.from).to eq([ActionMailer::Base.smtp_settings[:user_name]])

    expect(email.body.encoded).to match("#{user.first_name}")
    expect(email.body.encoded).to match("#{user.last_name}")
    expect(email.body.encoded).to match("#{user.define_series}")
    expect(email.body.encoded).to match("#{user.kk_number}")
    expect(email.body.encoded).to match("#{user.email}")
  end
end
