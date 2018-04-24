class AdminController < ApplicationController
  def index
    @admin = Admin.new
  end
  
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(name: params[:admin][:name], 
    	               username: params[:admin][:username],
    	               email: params[:admin][:email],
    	               password: params[:admin][:password] )
    @admin.save
    if @admin.save
      redirect_to :action => 'index'
    else
      render 'new'
    end
  end

  def show
  
  end

  def home

  end

  def login
    @admin = Admin.find_by(name: params[:admin][:name], password: params[:admin][:password])
   
    if @admin.present?
      render :action => 'home'
    else
      redirect_to :action => 'index'
    end
  end

  def forgot

  end

end
