require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe NiveisController do

  def mock_nivel(stubs={})
    @mock_nivel ||= mock_model(Nivel, stubs)
  end
  
  describe "GET index" do
    it "assigns all niveis as @niveis" do
      Nivel.stub!(:find).with(:all).and_return([mock_nivel])
      get :index
      assigns[:niveis].should == [mock_nivel]
    end
  end

  describe "GET show" do
    it "assigns the requested nivel as @nivel" do
      Nivel.stub!(:find).with("37").and_return(mock_nivel)
      get :show, :id => "37"
      assigns[:nivel].should equal(mock_nivel)
    end
  end

  describe "GET new" do
    it "assigns a new nivel as @nivel" do
      Nivel.stub!(:new).and_return(mock_nivel)
      get :new
      assigns[:nivel].should equal(mock_nivel)
    end
  end

  describe "GET edit" do
    it "assigns the requested nivel as @nivel" do
      Nivel.stub!(:find).with("37").and_return(mock_nivel)
      get :edit, :id => "37"
      assigns[:nivel].should equal(mock_nivel)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created nivel as @nivel" do
        Nivel.stub!(:new).with({'these' => 'params'}).and_return(mock_nivel(:save => true))
        post :create, :nivel => {:these => 'params'}
        assigns[:nivel].should equal(mock_nivel)
      end

      it "redirects to the created nivel" do
        Nivel.stub!(:new).and_return(mock_nivel(:save => true))
        post :create, :nivel => {}
        response.should redirect_to(nivel_url(mock_nivel))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved nivel as @nivel" do
        Nivel.stub!(:new).with({'these' => 'params'}).and_return(mock_nivel(:save => false))
        post :create, :nivel => {:these => 'params'}
        assigns[:nivel].should equal(mock_nivel)
      end

      it "re-renders the 'new' template" do
        Nivel.stub!(:new).and_return(mock_nivel(:save => false))
        post :create, :nivel => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested nivel" do
        Nivel.should_receive(:find).with("37").and_return(mock_nivel)
        mock_nivel.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :nivel => {:these => 'params'}
      end

      it "assigns the requested nivel as @nivel" do
        Nivel.stub!(:find).and_return(mock_nivel(:update_attributes => true))
        put :update, :id => "1"
        assigns[:nivel].should equal(mock_nivel)
      end

      it "redirects to the nivel" do
        Nivel.stub!(:find).and_return(mock_nivel(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(nivel_url(mock_nivel))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested nivel" do
        Nivel.should_receive(:find).with("37").and_return(mock_nivel)
        mock_nivel.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :nivel => {:these => 'params'}
      end

      it "assigns the nivel as @nivel" do
        Nivel.stub!(:find).and_return(mock_nivel(:update_attributes => false))
        put :update, :id => "1"
        assigns[:nivel].should equal(mock_nivel)
      end

      it "re-renders the 'edit' template" do
        Nivel.stub!(:find).and_return(mock_nivel(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested nivel" do
      Nivel.should_receive(:find).with("37").and_return(mock_nivel)
      mock_nivel.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the niveis list" do
      Nivel.stub!(:find).and_return(mock_nivel(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(niveis_url)
    end
  end

end
