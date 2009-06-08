require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Problema do
  before(:each) do
    @valid_attributes = {
      :id_no_pku => 1,
      :nome => "value for nome",
      :link => "value for link",
      :categorias_old => 1,
      :origem_old => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Problema.create!(@valid_attributes)
  end
end
