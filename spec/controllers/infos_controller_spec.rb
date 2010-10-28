require 'spec_helper'

describe InfosController do

  def mock_info(stubs={})
    (@mock_info ||= mock_model(Info).as_null_object).tap do |info|
      info.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all infos as @infos" do
      Info.stub(:all) { [mock_info] }
      get :index
      assigns(:infos).should eq([mock_info])
    end
  end

  describe "GET show" do
    it "assigns the requested info as @info" do
      Info.stub(:find).with("37") { mock_info }
      get :show, :id => "37"
      assigns(:info).should be(mock_info)
    end
  end

  describe "GET new" do
    it "assigns a new info as @info" do
      Info.stub(:new) { mock_info }
      get :new
      assigns(:info).should be(mock_info)
    end
  end

  describe "GET edit" do
    it "assigns the requested info as @info" do
      Info.stub(:find).with("37") { mock_info }
      get :edit, :id => "37"
      assigns(:info).should be(mock_info)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created info as @info" do
        Info.stub(:new).with({'these' => 'params'}) { mock_info(:save => true) }
        post :create, :info => {'these' => 'params'}
        assigns(:info).should be(mock_info)
      end

      it "redirects to the created info" do
        Info.stub(:new) { mock_info(:save => true) }
        post :create, :info => {}
        response.should redirect_to(info_url(mock_info))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved info as @info" do
        Info.stub(:new).with({'these' => 'params'}) { mock_info(:save => false) }
        post :create, :info => {'these' => 'params'}
        assigns(:info).should be(mock_info)
      end

      it "re-renders the 'new' template" do
        Info.stub(:new) { mock_info(:save => false) }
        post :create, :info => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested info" do
        Info.should_receive(:find).with("37") { mock_info }
        mock_info.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :info => {'these' => 'params'}
      end

      it "assigns the requested info as @info" do
        Info.stub(:find) { mock_info(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:info).should be(mock_info)
      end

      it "redirects to the info" do
        Info.stub(:find) { mock_info(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(info_url(mock_info))
      end
    end

    describe "with invalid params" do
      it "assigns the info as @info" do
        Info.stub(:find) { mock_info(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:info).should be(mock_info)
      end

      it "re-renders the 'edit' template" do
        Info.stub(:find) { mock_info(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested info" do
      Info.should_receive(:find).with("37") { mock_info }
      mock_info.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the infos list" do
      Info.stub(:find) { mock_info }
      delete :destroy, :id => "1"
      response.should redirect_to(infos_url)
    end
  end

end
