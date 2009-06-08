require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/problemas/index.html.erb" do
  include ProblemasHelper
  
  before(:each) do
    assigns[:problemas] = [
      stub_model(Problema,
        :id_no_pku => 1,
        :nome => "value for nome",
        :link => "value for link",
        :categorias_old => 1,
        :origem_old => 1
      ),
      stub_model(Problema,
        :id_no_pku => 1,
        :nome => "value for nome",
        :link => "value for link",
        :categorias_old => 1,
        :origem_old => 1
      )
    ]
  end

  it "renders a list of problemas" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for nome".to_s, 2)
    response.should have_tag("tr>td", "value for link".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end

