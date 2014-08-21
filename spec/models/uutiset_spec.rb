require 'spec_helper'

describe Uutiset do
  uutinen = Uutiset.create!(:title => "test attr")
  uutinen.to_param.should == [uutinen.id,"test-attr"].join("-")
end
