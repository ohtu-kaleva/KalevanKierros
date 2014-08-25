require "spec_helper"

describe EventAttributesController do
  describe "routing" do

    it "routes to #edit" do
      get("/event_attributes/1/edit").should route_to("event_attributes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/event_attributes").should route_to("event_attributes#create")
    end

    it "routes to #update" do
      put("/event_attributes/1").should route_to("event_attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/event_attributes/1").should route_to("event_attributes#destroy", :id => "1")
    end

  end
end
