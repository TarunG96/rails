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

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(name: params[:student][:name], city: params[:student][:city], email: params[:student][:email], department_id: params[:student][:department_id])
      redirect_to :action => 'index'
    end
  end

  def create
   @student=Student.new(name: params[:student][:name], city: params[:student][:city], email: params[:student][:email], department_id: params[:student][:department_id],phone_no: params[:student][:phone_no])    
   @admin = Admin.all
    send_message
    @student.save
    if @student.save
      RegisterMailer.register_confirmation(@student).deliver
      RegisterMailer.admin_forward(@admin.first).deliver
      redirect_to :action => 'index'
    end
  end

  def destroy
    @student = Student.find(params[:id])   
    if @student.delete   
      flash[:notice] = 'Record deleted!'   
      redirect_to :action => 'index'   
    else   
      flash[:error] = 'Failed to delete this book record!'   
      render :destroy
    end
  end
  
  def send_message
    msg,error =   Student.send_message(params[:phone_no])
  end

end

  