require 'spec_helper'

describe KkEnrollment do
  let!(:user) { FactoryGirl.create :user, password:'Salainen1', password_confirmation:'Salainen1' }
  describe "with one participant enrolling" do
    it "should create one entry to results table" do
      KkEnrollment.create(user_id: user.id)
      expect(KkEnrollment.count).to eq(1)
    end
  end
end
