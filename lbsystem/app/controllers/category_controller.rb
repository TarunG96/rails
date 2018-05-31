class CategoryController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
    @books = @category.books.build
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
    @category=Category.new(category_params)
    @category.save
    @books = @category.books.new(books_params)
    if @category.save && @books.save
      redirect_to :action => 'index'
    else
      render :new
    end
  end

  def category_params
    params.require(:category).permit(:name)
  end

  def books_params
    params.require(:category).require(:book).permit(:name,:author,:price)
  end

end
