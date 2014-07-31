require 'spec_helper'

include SigninHelper

describe EventsController do

  describe "GET #index" do
    let!(:event) { FactoryGirl.create :event_with_attributes, name: 'Joku muu' }

    it "should render index page events" do
      get :index
      expect(response).to render_template('index')
    end

    it "should populate an array of events" do
      get :index
      assigns(:events).should eq([event])
    end
  end

  describe "POST #create" do

    describe "with correct parameters" do
      let!(:user) { FactoryGirl.create :user, username:'Tyhjis', password:"S4lainen", password_confirmation:"S4lainen", admin:true}

      it "should redirect to created event" do
        sign_in(username:"Tyhjis", password:"S4lainen")
        post :create, event: correct_event_params

      end

      it "should create a new RunningEvent" do
        sign_in(username:"Tyhjis", password:"S4lainen")
        #puts Event.count
        post :create, event: FactoryGirl.attributes_for(:event, name:'Maraton', sport_type:'RunningEvent', penalty_factor:2.3)
        #puts Event.count
      end

    end

  end

  def correct_event_params
    params = {:name => 'testinimi', :start_date => Date.today + 3.days, :end_date => Date.today + 1.week, :second_end_date => Date.today + 2.week, :price => 1000, :second_price => 2000, :description => 'Kuvaus', :penalty_factor => 1.0, open:true}
  end
end