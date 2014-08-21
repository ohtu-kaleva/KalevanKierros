require 'spec_helper'

describe UutisetController do

  it "should be successful" do
    get :index
    response.should be_successful
  end

end
