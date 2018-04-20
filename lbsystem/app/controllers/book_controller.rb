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
      flash[:notice] = "Record Added"  
      redirect_to :action => 'index'
    else
      flash[:notice] = "Unable to add this record" 
      render :create
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_param)
      redirect_to :action => 'show', :id => @book
    end
  end
  
  def destroy   
    @book = Book.find(params[:id])   
    if @book.delete   
      flash[:notice] = 'Record deleted!'   
      redirect_to :action => 'index'   
    else   
      flash[:error] = 'Failed to delete this book record!'   
      render :destroy   
    end   
  end   
end
