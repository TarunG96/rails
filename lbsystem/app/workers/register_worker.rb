class RegisterWorker
  include Sidekiq::Worker

  def perform(student)
    client = Twilio::REST::Client.new "ACa185b48c50e1fa91256a705b73daf85d","700055e74ce49a42765fb741a4e94c62"  	 
    msg = "Hello Tarun !! I'm the best :)"
    begin
      client.messages.create(:from => '+18329068616', :to => '+919891016899', :body => msg)
    end
  end
end
