require 'spec_helper'

describe Enrollment do
  let!(:user) { FactoryGirl.create :user, password:"S4lainen", password_confirmation:"S4lainen" }
  let!(:event) { FactoryGirl.create :event }

  it "is created properly" do
    enrollment = Enrollment.create(user_id: user.id, event_id: event.id)
    expect(Enrollment.count).to eq(1)
  end
end
