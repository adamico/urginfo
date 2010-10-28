require 'spec_helper'

describe "infos/show.html.haml" do
  before(:each) do
    @info = assign(:info, stub_model(Info))
  end

  it "renders attributes in <p>" do
    render
  end
end
