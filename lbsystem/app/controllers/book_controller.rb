class BookController < ApplicationController

  def list
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
      redirect_to :action => 'list'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
     @book = Book.find(params[:id])
     if @book.update_attributes(book_param)
        redirect_to :action => 'show', :id => @book
     else
        render :action => 'edit'
     end
  end
end
