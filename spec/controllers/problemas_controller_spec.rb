require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ProblemasController do

  def mock_problema(stubs={})
    @mock_problema ||= mock_model(Problema, stubs)
  end
  
  describe "GET index" do
    it "assigns all problemas as @problemas" do
      Problema.stub!(:find).with(:all).and_return([mock_problema])
      get :index
      assigns[:problemas].should == [mock_problema]
    end
  end

  describe "GET show" do
    it "assigns the requested problema as @problema" do
      Problema.stub!(:find).with("37").and_return(mock_problema)
      get :show, :id => "37"
      assigns[:problema].should equal(mock_problema)
    end
  end

  describe "GET new" do
    it "assigns a new problema as @problema" do
      Problema.stub!(:new).and_return(mock_problema)
      get :new
      assigns[:problema].should equal(mock_problema)
    end
  end

  describe "GET edit" do
    it "assigns the requested problema as @problema" do
      Problema.stub!(:find).with("37").and_return(mock_problema)
      get :edit, :id => "37"
      assigns[:problema].should equal(mock_problema)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created problema as @problema" do
        Problema.stub!(:new).with({'these' => 'params'}).and_return(mock_problema(:save => true))
        post :create, :problema => {:these => 'params'}
        assigns[:problema].should equal(mock_problema)
      end

      it "redirects to the created problema" do
        Problema.stub!(:new).and_return(mock_problema(:save => true))
        post :create, :problema => {}
        response.should redirect_to(problema_url(mock_problema))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved problema as @problema" do
        Problema.stub!(:new).with({'these' => 'params'}).and_return(mock_problema(:save => false))
        post :create, :problema => {:these => 'params'}
        assigns[:problema].should equal(mock_problema)
      end

      it "re-renders the 'new' template" do
        Problema.stub!(:new).and_return(mock_problema(:save => false))
        post :create, :problema => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested problema" do
        Problema.should_receive(:find).with("37").and_return(mock_problema)
        mock_problema.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :problema => {:these => 'params'}
      end

      it "assigns the requested problema as @problema" do
        Problema.stub!(:find).and_return(mock_problema(:update_attributes => true))
        put :update, :id => "1"
        assigns[:problema].should equal(mock_problema)
      end

      it "redirects to the problema" do
        Problema.stub!(:find).and_return(mock_problema(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(problema_url(mock_problema))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested problema" do
        Problema.should_receive(:find).with("37").and_return(mock_problema)
        mock_problema.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :problema => {:these => 'params'}
      end

      it "assigns the problema as @problema" do
        Problema.stub!(:find).and_return(mock_problema(:update_attributes => false))
        put :update, :id => "1"
        assigns[:problema].should equal(mock_problema)
      end

      it "re-renders the 'edit' template" do
        Problema.stub!(:find).and_return(mock_problema(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested problema" do
      Problema.should_receive(:find).with("37").and_return(mock_problema)
      mock_problema.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the problemas list" do
      Problema.stub!(:find).and_return(mock_problema(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(problemas_url)
    end
  end

end
