require 'spec_helper'

describe EventsController do
  def valid_session
    controller.stub(:authorize).and_return(User)
  end

  describe "GET index" do

    it "populates an array of events" do
      event = FactoryGirl.create(:event_with_attributes)
      get :index
      expect(assigns(:events)).to eq([event])
    end

    it "renders the correct template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET show" do

    it "assigns the requested event" do
      event = FactoryGirl.create(:event_with_attributes)
      get :show, id: event
      expect(assigns(:event)).to eq(event)
    end

    it "renders the correct template" do
      get :show, id: FactoryGirl.create(:event_with_attributes)
      expect(response).to render_template(:show)
    end
  end

  describe "GET new" do

    it "assings new event" do
      get :new
      expect(assigns(:event))
    end

  end

  describe "GET edit" do

    it "assigns correct event" do
      event = FactoryGirl.create(:event)
      get :edit, id: event
      expect(assigns(event))
    end

  end

end