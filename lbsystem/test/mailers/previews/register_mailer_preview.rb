# Preview all emails at http://localhost:3000/rails/mailers/register_mailer
class RegisterMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/register_mailer/register_confirmation
  def register_confirmation
    RegisterMailer.register_confirmation
  end

end
