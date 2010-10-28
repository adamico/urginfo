require 'spec_helper'

describe "infos/index.html.haml" do
  before(:each) do
    assign(:infos, [
      stub_model(Info),
      stub_model(Info)
    ])
  end

  it "renders a list of infos" do
    render
  end
end
