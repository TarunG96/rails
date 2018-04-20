class BookController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book=Book.new(name: params[:book][:name], author: params[:book][:author], price: params[:book][:price], category_id: params[:book][:category_id])    
    @book.save
    if @book.save
      redirect_to :action => 'index'
    else
      render :create
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(name: params[:book][:name], author: params[:book][:author], price: params[:book][:price], category_id: params[:book][:category_id])
      redirect_to :action => 'index'
    end
  end
  
  def destroy   
    @book = Book.find(params[:id])   
    if @book.delete   
      redirect_to :action => 'index'   
    else   
      render :destroy   
    end   
  end   
end
