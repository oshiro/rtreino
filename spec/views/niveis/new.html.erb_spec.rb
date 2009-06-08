require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/niveis/new.html.erb" do
  include NiveisHelper
  
  before(:each) do
    assigns[:nivel] = stub_model(Nivel,
      :new_record? => true,
      :descricao => "value for descricao"
    )
  end

  it "renders new nivel form" do
    render
    
    response.should have_tag("form[action=?][method=post]", niveis_path) do
      with_tag("input#nivel_descricao[name=?]", "nivel[descricao]")
    end
  end
end


