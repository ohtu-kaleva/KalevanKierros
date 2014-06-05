require 'spec_helper'

describe "event_attributes/new" do
  before(:each) do
    assign(:event_attribute, stub_model(EventAttribute).as_new_record)
  end

  pending "renders new event_attribute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", event_attributes_path, "post" do
    end
  end
end
