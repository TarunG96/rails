class WelcomeController < ApplicationController

  def index
    @tweets = TwitterApi.our_public_tweets.first.text
  end
end
