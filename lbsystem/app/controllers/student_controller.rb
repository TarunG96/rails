class StudentController < ApplicationController

  def new
    @student=Student.new
  end

  def index
    @students=Student.all
  end

  def show 
	@student=Student.find(params[:id])
  end

  def create
    @student=Student.new(name: params[:student][:name], city: params[:student][:city], email: params[:student][:email], department_id: params[:student][:department_id])    
    @student.save
    if 
      @student.save
      redirect_to :action => 'index'
    end
  end

end
