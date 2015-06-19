class PagesController < ApplicationController
  def info
  end 
  
  def setname
#    logger.info current_user.inspect
<<<<<<< HEAD
    @user = current_user
    @join_events = @user.join_events.all
    @join_event = @user.join_events.build
=======
    if @user.nil? then
      @user = current_user
    end
>>>>>>> 0fd1715fcf1a3b22801dde4b21a0a05654968526
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
