class CategoryController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
    @books= @category.books.new
  end

   def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(name: params[:category][:name])
      redirect_to :action => 'index'
    end
  end

  def destroy   
    @category = Category.find(params[:id])   
    if @category.delete   
      redirect_to :action => 'index'   
    else   
      render :destroy   
    end   
  end   

  def create
    @category=Category.new(name: params[:category][:name])
    @category.save
    if @category.save
      redirect_to :action => 'index'
    else
      render :create
    end
  end
end
