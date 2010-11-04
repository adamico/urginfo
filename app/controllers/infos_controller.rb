class InfosController < ApplicationController
  before_filter :find_category, :only => [:new, :create]

  private

  def find_category
    @category = Category.find(params[:category_id])
  end

  public

  def index
    @infos = Info.all
  end

  def show
    @info = Info.find(params[:id])
  end

  def new
    @info = @category.infos.build
  end

  def create
    @info = @category.infos.build(params[:info])
    if @info.save
      flash[:notice] = "Successfully created info."
      redirect_to category_path(@info.category)
    else
      render :action => 'new'
    end
  end

  def edit
    @info = Info.find(params[:id])
  end

  def update
    @info = Info.find(params[:id])
    if @info.update_attributes(params[:info])
      flash[:notice] = "Successfully updated info."
      redirect_to category_path(@info.category)
    else
      render :action => 'edit'
    end
  end

  def destroy
    @info = Info.find(params[:id])
    @info.destroy
    flash[:notice] = "Successfully destroyed info."
    redirect_to category_path(@info.category)
  end
end
