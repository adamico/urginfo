class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
    @parent = Category.find(params[:parent]) if params[:parent]
  end

  def create
    @category = Category.new(params[:category])

    if @category.save
      redirect_to(@category, :notice => 'Category was successfully created.')
    else
      render :action => "new"
    end
  end

  def edit
    @category = Category.find(params[:id])
    @parent = @category.is_root? ? nil : @category.parent
  end

  def update
    @category = Category.find(params[:id])

    if @category.update_attributes(params[:category])
      redirect_to(@category, :notice => 'Category was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to(categories_url, :notice => "Category was successfully destroyed.")
  end
end
