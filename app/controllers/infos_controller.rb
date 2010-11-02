class InfosController < ApplicationController
  def index
    @infos = Info.all
  end

  def show
    @info = Info.find(params[:id])
  end

  def new
    @info = Info.new
    @parent = Info.find(params[:parent]) if params[:parent]
  end

  def create
    @info = Info.new(params[:info])
    if @info.save
      flash[:notice] = "Successfully created info."
      redirect_to @info
    else
      render :action => 'new'
    end
  end

  def edit
    @info = Info.find(params[:id])
    @parent = @info.is_root? ? nil : @info.parent
  end

  def update
    @info = Info.find(params[:id])
    if @info.update_attributes(params[:info])
      flash[:notice] = "Successfully updated info."
      redirect_to @info
    else
      render :action => 'edit'
    end
  end

  def destroy
    @info = Info.find(params[:id])
    @info.destroy
    flash[:notice] = "Successfully destroyed info."
    redirect_to infos_url
  end
end
