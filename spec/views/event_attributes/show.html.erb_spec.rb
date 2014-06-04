require 'spec_helper'

describe "event_attributes/show" do
  before(:each) do
    @event_attribute = assign(:event_attribute, stub_model(EventAttribute))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
