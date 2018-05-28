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
    @book = Book.create(name: params[:book][:name], author: params[:book][:author], price: params[:book][:price], category_id: params[:book][:category_id])    
    debugger
    if @book.create then  redirect_to :action => 'index'
    else
      render :new
    end
  end

  def order
    case params[:id]
      when 'id_up' 
        @books = Book.all.order(:id => 'asc')
        #@books = Book.all
        #render 'index'
      when 'id_down'
        @books = Book.all.order(:id => 'desc')
        #@books = Book.all
        #render 'index'
      when 'name_up'
        @books = Book.all.order(:name => 'asc')
        #@books = Book.all
        #render 'index' 
      when 'name_down'
        @books = Book.all.order(:name => 'desc')
        #@books = Book.all
        #render 'index'     
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(name: params[:book][:name], author: params[:book][:author], price: params[:book][:price], category_id: params[:book][:category_id])
      redirect_to :action => 'index' , :notice => "success"
    end
  end
  
  def destroy   
    @book = Book.find(params[:id])   
    if @book.delete   
      redirect_to :action => 'index'   
    else   
      render :index  
    end   
  end   
end
