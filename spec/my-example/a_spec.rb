require File.expand_path('../../spec_helper', __FILE__)

describe My::Example::A do
  
  before :each do
    @ex = My::Example.new('a')
  end
  
  it "should say who it is" do
    @ex.whoami.should == 'a!'
  end
  
end