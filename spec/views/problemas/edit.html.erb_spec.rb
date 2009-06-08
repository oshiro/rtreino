require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/problemas/edit.html.erb" do
  include ProblemasHelper
  
  before(:each) do
    assigns[:problema] = @problema = stub_model(Problema,
      :new_record? => false,
      :id_no_pku => 1,
      :nome => "value for nome",
      :link => "value for link",
      :categorias_old => 1,
      :origem_old => 1
    )
  end

  it "renders the edit problema form" do
    render
    
    response.should have_tag("form[action=#{problema_path(@problema)}][method=post]") do
      with_tag('input#problema_id_no_pku[name=?]', "problema[id_no_pku]")
      with_tag('input#problema_nome[name=?]', "problema[nome]")
      with_tag('input#problema_link[name=?]', "problema[link]")
      with_tag('input#problema_categorias_old[name=?]', "problema[categorias_old]")
      with_tag('input#problema_origem_old[name=?]', "problema[origem_old]")
    end
  end
end


