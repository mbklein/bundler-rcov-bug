require File.expand_path('../spec_helper', __FILE__)

describe My::Example do
  
  it "should create a My::Example::A when given 'a'" do
    result = My::Example.new('a',:one,:two,:three,:foo => true,:bar => 'baz')
    result.should be_a(My::Example::A)
    result.opts.should == { :foo => true, :bar => 'baz' }
    result.args.should == [:one,:two,:three]
  end
  
  it "should create a My::Example::B when given 'b'" do
    result = My::Example.new('b',:one,:two,:three,:foo => true,:bar => 'baz')
    result.should be_a(My::Example::B)
    result.opts.should == { :foo => true, :bar => 'baz' }
    result.args.should == [:one,:two,:three]
  end
  
  it "should raise an exception when given a value other than 'a' or 'b'" do
    lambda { My::Example.new('c',:one,:two,:three,:foo => true,:bar => 'baz') }.should raise_error(ArgumentError)
  end

end
