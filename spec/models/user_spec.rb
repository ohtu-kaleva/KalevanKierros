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
end
