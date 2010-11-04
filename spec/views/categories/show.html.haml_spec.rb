require 'spec_helper'

describe "categories/show.html.haml" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :name => "Name",
      :ancestry => "Ancestry"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Ancestry/)
  end
end
