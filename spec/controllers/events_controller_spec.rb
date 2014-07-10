require 'spec_helper'

describe EventsController do

  describe "GET #index" do
    let!(:event) { FactoryGirl.create(:event_with_attributes) }
    it "should populate an array of events" do
      get :index
      assigns(:events).should eq([event])
    end
  end

  describe "POST #create" do

    context "with wrong parameters" do

      it "should render #new with failed save"
    end

    context "with correct parameters" do

      it "should redirect to the created event"

    end
  end
end