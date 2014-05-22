class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def bring_in_models
    @feeds = Writing.find(:all, :order => "id ASC", :limit => 10)
  end
  
end