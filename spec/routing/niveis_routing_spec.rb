require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe NiveisController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "niveis", :action => "index").should == "/niveis"
    end
  
    it "maps #new" do
      route_for(:controller => "niveis", :action => "new").should == "/niveis/new"
    end
  
    it "maps #show" do
      route_for(:controller => "niveis", :action => "show", :id => "1").should == "/niveis/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "niveis", :action => "edit", :id => "1").should == "/niveis/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "niveis", :action => "create").should == {:path => "/niveis", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "niveis", :action => "update", :id => "1").should == {:path =>"/niveis/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "niveis", :action => "destroy", :id => "1").should == {:path =>"/niveis/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/niveis").should == {:controller => "niveis", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/niveis/new").should == {:controller => "niveis", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/niveis").should == {:controller => "niveis", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/niveis/1").should == {:controller => "niveis", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/niveis/1/edit").should == {:controller => "niveis", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/niveis/1").should == {:controller => "niveis", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/niveis/1").should == {:controller => "niveis", :action => "destroy", :id => "1"}
    end
  end
end
