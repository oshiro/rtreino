require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/problemas/new.html.erb" do
  include ProblemasHelper
  
  before(:each) do
    assigns[:problema] = stub_model(Problema,
      :new_record? => true,
      :id_no_pku => 1,
      :nome => "value for nome",
      :link => "value for link",
      :categorias_old => 1,
      :origem_old => 1
    )
  end

  it "renders new problema form" do
    render
    
    response.should have_tag("form[action=?][method=post]", problemas_path) do
      with_tag("input#problema_id_no_pku[name=?]", "problema[id_no_pku]")
      with_tag("input#problema_nome[name=?]", "problema[nome]")
      with_tag("input#problema_link[name=?]", "problema[link]")
      with_tag("input#problema_categorias_old[name=?]", "problema[categorias_old]")
      with_tag("input#problema_origem_old[name=?]", "problema[origem_old]")
    end
  end
end


