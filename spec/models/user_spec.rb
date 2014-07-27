require 'spec_helper'

describe User do

  it "should not be valid without parameters" do
    user = User.new

    expect(user).not_to be_valid
  end

  it "has the username set correctly" do
    user = User.new username:"Tyhjis"

    expect(user.username).to eq("Tyhjis")
  end

  it "should not insert user with invalid username to database" do
    user = User.create username:"KH"
    expect(user.valid?).to be(false)
    expect(User.count).to eq(0)
  end

  it "should not insert user without a password to database" do
    user = User.create username:"Tyhjis"
    expect(user.valid?).to be(false)
    expect(User.count).to eq(0)
  end

  it "should insert user into database with correct parameters" do
    user = FactoryGirl.create(:user, password:"S4lainen", password_confirmation:"S4lainen")
    expect(user.valid?).to be(true)
    expect(User.count).to eq(1)
  end

  it "by default is not admin" do
    user = FactoryGirl.create(:user, password:"S4lainen", password_confirmation:"S4lainen")
    expect(user.admin).to be(false)
  end

  context 'returns correct enrollment data' do
    let!(:user) { FactoryGirl.create :user, password:"S4lainen", password_confirmation:"S4lainen" }
    let!(:data) { FactoryGirl.create(:enrollment_with_data, user_id: user.id) }

    it 'with existing event' do
      data = user.get_enrollment_data_for_event(1)
      expect(data.empty?).not_to be(true)
      expect(data.first.name).to eq('TestName')
      expect(data.first.value).to eq('TestValue')
    end

    it 'with nonexisting event' do
      data = user.get_enrollment_data_for_event(999)
      expect(data.empty?).to be(true)
    end
  end

  context 'returns correct series when transitioning from' do
    let!(:user) { FactoryGirl.create :user, password:"S4lainen", password_confirmation:"S4lainen"}

    it 'MAL22 to M' do
      user.birth_date = Date.today-21.years
      serie = user.define_series
      expect(serie).to eq('MAL22')

      user.birth_date = Date.today-22.years
      serie = user.define_series
      expect(serie).to eq('M')
    end

    it 'M to M40' do
      user.birth_date = Date.today-39.years
      serie = user.define_series
      expect(serie).to eq('M')

      user.birth_date = Date.today-40.years
      serie = user.define_series
      expect(serie).to eq('M40')
    end

    it 'M40 to M50' do
      user.birth_date = Date.today-49.years
      serie = user.define_series
      expect(serie).to eq('M40')

      user.birth_date = Date.today-50.years
      serie = user.define_series
      expect(serie).to eq('M50')
    end

    it 'M50 to M55' do
      user.birth_date = Date.today-54.years
      serie = user.define_series
      expect(serie).to eq('M50')

      user.birth_date = Date.today-55.years
      serie = user.define_series
      expect(serie).to eq('M55')
    end

    it 'M55 to M60' do
      user.birth_date = Date.today-59.years
      serie = user.define_series
      expect(serie).to eq('M55')

      user.birth_date = Date.today-60.years
      serie = user.define_series
      expect(serie).to eq('M60')
    end

    it 'M60 to M65' do
      user.birth_date = Date.today-64.years
      serie = user.define_series
      expect(serie).to eq('M60')

      user.birth_date = Date.today-65.years
      serie = user.define_series
      expect(serie).to eq('M65')
    end

    it 'M65 to M70' do
      user.birth_date = Date.today-69.years
      serie = user.define_series
      expect(serie).to eq('M65')

      user.birth_date = Date.today-70.years
      serie = user.define_series
      expect(serie).to eq('M70')
    end

    it 'M70 to M75' do
      user.birth_date = Date.today-74.years
      serie = user.define_series
      expect(serie).to eq('M70')

      user.birth_date = Date.today-75.years
      serie = user.define_series
      expect(serie).to eq('M75')
    end
  end

  context 'returns correct enrollment id' do
    let!(:user) { FactoryGirl.create :user, password:"S4lainen", password_confirmation:"S4lainen" }
    let!(:enrollment) { FactoryGirl.create(:enrollment, user_id: user.id) }

    it 'when enrollment exists' do
      id = user.find_enrollment_id_by_event(1)
      expect(id).not_to eq(nil)
      expect(id).to eq(1)
    end

    it 'when enrollment doesnt exist' do
      id = user.find_enrollment_id_by_event(999)
      expect(id).to eq(nil)
    end
  end

  context 'with valid user' do
    let!(:user) { FactoryGirl.create :user, password:"S4lainen", password_confirmation:"S4lainen" }

    it 'returns correct address' do
      expect(user.address).to eq('Teletappikuja 1 00666, Teletappikaupunki')
    end

    it 'returns correct full name' do
      expect(user.full_name).to eq('Krisu Hansson')
    end
  end
end
