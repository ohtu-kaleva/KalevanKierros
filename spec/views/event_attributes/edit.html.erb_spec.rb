require 'spec_helper'

describe "event_attributes/edit" do
  before(:each) do
    @event_attribute = assign(:event_attribute, stub_model(EventAttribute))
  end

  pending "renders the edit event_attribute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", event_attribute_path(@event_attribute), "post" do
    end
  end
end
