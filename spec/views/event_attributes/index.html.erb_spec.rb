require 'spec_helper'

describe "event_attributes/index" do
  before(:each) do
    assign(:event_attributes, [
      stub_model(EventAttribute),
      stub_model(EventAttribute)
    ])
  end

  it "renders a list of event_attributes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
