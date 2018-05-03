class TwitterApi
	
    def self.our_public_tweets
    	@tweets = client.user_timeline('I_am_tarun007')
    end

	  def self.client
	    client  = Twitter::REST::Client.new do |config|
      config.consumer_key        = "CSJLMOtBRbDMcX1tY1M02XmjO"
      config.consumer_secret     = "lY0YCBmh5NsMN4WB3miwKY8kYMtsmeJbcUg3RQG6oLd3ZG0EdD"
    # config.access_token        = "YOUR_ACCESS_TOKEN"
    # config.access_token_secret = "YOUR_ACCESS_SECRET"
 

end
    end

end