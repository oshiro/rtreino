require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/problemas/show.html.erb" do
  include ProblemasHelper
  before(:each) do
    assigns[:problema] = @problema = stub_model(Problema,
      :id_no_pku => 1,
      :nome => "value for nome",
      :link => "value for link",
      :categorias_old => 1,
      :origem_old => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/value\ for\ nome/)
    response.should have_text(/value\ for\ link/)
    response.should have_text(/1/)
    response.should have_text(/1/)
  end
end

