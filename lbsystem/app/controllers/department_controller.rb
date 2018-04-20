class DepartmentController < ApplicationController
  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
  end

  def new
    @department = Department.new
  end

  def edit
    @department = Department.find(params[:id])
  end

  def update
    @department = Department.find(params[:id])
    if @department.update(name: params[:department][:name])
      redirect_to :action => 'index'
    end
  end

  def destroy   
    @department = Department.find(params[:id])   
    if @department.delete   
      redirect_to :action => 'index'   
    else   
      render :destroy   
    end   
  end   

  def create
    @department=Department.new(name: params[:department][:name])
    @department.save
    if @department.save
      redirect_to :action => 'index'
    else
      render :create
    end
  end

end


