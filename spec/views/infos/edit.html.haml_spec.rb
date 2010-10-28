require 'spec_helper'

describe "infos/edit.html.haml" do
  before(:each) do
    @info = assign(:info, stub_model(Info,
      :new_record? => false
    ))
  end

  it "renders the edit info form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => info_path(@info), :method => "post" do
    end
  end
end
