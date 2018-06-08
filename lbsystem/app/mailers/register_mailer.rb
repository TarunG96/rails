class RegisterMailer < ApplicationMailer
  default from: "noreply@gmail.com"
  include Sidekiq
  def register_confirmation(student)
    @student = Student.find_by(id: student)
    mail to: @student.email  , subject: 'successfully registered'
  end
  
  #def admin_forward(student)
  #  @admin = student
   # mail to: @admin.email
  #end
end
