require 'spec_helper'

describe "infos/new.html.haml" do
  before(:each) do
    assign(:info, stub_model(Info).as_new_record)
  end

  it "renders new info form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => infos_path, :method => "post" do
    end
  end
end
