require "spec_helper"

describe InfosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/infos" }.should route_to(:controller => "infos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/infos/new" }.should route_to(:controller => "infos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/infos/1" }.should route_to(:controller => "infos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/infos/1/edit" }.should route_to(:controller => "infos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/infos" }.should route_to(:controller => "infos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/infos/1" }.should route_to(:controller => "infos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/infos/1" }.should route_to(:controller => "infos", :action => "destroy", :id => "1")
    end

  end
end
