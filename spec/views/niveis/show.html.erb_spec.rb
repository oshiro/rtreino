require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/niveis/show.html.erb" do
  include NiveisHelper
  before(:each) do
    assigns[:nivel] = @nivel = stub_model(Nivel,
      :descricao => "value for descricao"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ descricao/)
  end
end

