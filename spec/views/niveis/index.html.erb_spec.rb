require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/niveis/index.html.erb" do
  include NiveisHelper
  
  before(:each) do
    assigns[:niveis] = [
      stub_model(Nivel,
        :descricao => "value for descricao"
      ),
      stub_model(Nivel,
        :descricao => "value for descricao"
      )
    ]
  end

  it "renders a list of niveis" do
    render
    response.should have_tag("tr>td", "value for descricao".to_s, 2)
  end
end

