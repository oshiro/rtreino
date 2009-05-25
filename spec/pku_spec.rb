require 'spec'
require 'lib/pku'

describe PKU do

  before(:each) do
    @pku = PKU.new("rtreino", "password")
  end

  it "should save username" do
    @pku.should respond_to :username
    @pku.username.should == "rtreino"
  end
  
  it "should save password" do
    @pku.should respond_to :password
    @pku.password.should == "password"
  end

  it "should get the submissions" do
    @pku.should respond_to :submissions
  end

end