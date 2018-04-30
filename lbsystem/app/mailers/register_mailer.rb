class RegisterMailer < ApplicationMailer
  default from: "noreply@gmail.com"
  def register_confirmation(student)
    @student = student
    mail() to: @student.email  , subject: 'successfully registered'
  end
  
  def admin_forward(student)
    @admin = student
    mail to: @admin.email
  end
end
