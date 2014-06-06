class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def bring_in_models
    @feeds = Writing.find(:all, :order => "id ASC", :limit => 10)
  end
  
  def bring_in_tweets
    username = 'Colourstoryapp'
    options = {:count => 1, :include_rts => true}
    @tweets = $client.user_timeline(username, options)
  end
  
end