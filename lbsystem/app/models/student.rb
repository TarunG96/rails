class Student < ApplicationRecord
	belongs_to :department
	has_many :book_issues
	has_many :books, through: :book_issues
	validates_associated :book_issues
  mount_uploader :image, ImageUploader

	def self.send_message(phone)
    phone_number = phone
    client = Twilio::REST::Client.new "ACa185b48c50e1fa91256a705b73daf85d","700055e74ce49a42765fb741a4e94c62"  	 
    msg = "Hello Tarun !! I'm the best :)"
    begin
      client.messages.create(:from => '+18329068616', :to => '+919716436979', :body => msg)
      msg = "Please enter the verification code sent to your number."
      error = false
    end 
    return msg,error
  end
end
