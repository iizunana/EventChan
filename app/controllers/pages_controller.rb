class PagesController < ApplicationController
  def info
  end 
  
  def setname
#    logger.info current_user.inspect
    if @user.nil? then
      @user = current_user
    end
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
