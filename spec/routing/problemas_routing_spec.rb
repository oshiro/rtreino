require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ProblemasController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "problemas", :action => "index").should == "/problemas"
    end
  
    it "maps #new" do
      route_for(:controller => "problemas", :action => "new").should == "/problemas/new"
    end
  
    it "maps #show" do
      route_for(:controller => "problemas", :action => "show", :id => "1").should == "/problemas/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "problemas", :action => "edit", :id => "1").should == "/problemas/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "problemas", :action => "create").should == {:path => "/problemas", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "problemas", :action => "update", :id => "1").should == {:path =>"/problemas/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "problemas", :action => "destroy", :id => "1").should == {:path =>"/problemas/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/problemas").should == {:controller => "problemas", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/problemas/new").should == {:controller => "problemas", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/problemas").should == {:controller => "problemas", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/problemas/1").should == {:controller => "problemas", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/problemas/1/edit").should == {:controller => "problemas", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/problemas/1").should == {:controller => "problemas", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/problemas/1").should == {:controller => "problemas", :action => "destroy", :id => "1"}
    end
  end
end
