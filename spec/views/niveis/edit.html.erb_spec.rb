require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/niveis/edit.html.erb" do
  include NiveisHelper
  
  before(:each) do
    assigns[:nivel] = @nivel = stub_model(Nivel,
      :new_record? => false,
      :descricao => "value for descricao"
    )
  end

  it "renders the edit nivel form" do
    render
    
    response.should have_tag("form[action=#{nivel_path(@nivel)}][method=post]") do
      with_tag('input#nivel_descricao[name=?]', "nivel[descricao]")
    end
  end
end


