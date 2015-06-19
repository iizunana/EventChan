class PagesController < ApplicationController
  def info
  end 
  
  def setname
#    logger.info current_user.inspect

    @user = current_user
    @join_events = @user.join_events.all
    @join_event = @user.join_events.build
    
  end
  
  def update
    @user = current_user
    @user.update_attribute(:username, params['user']['username'])
    redirect_to "/events"
    #@user.username = params["username"]
    #@user.save!
    #@user.update_without_password(username: params["username"])
  end
end
