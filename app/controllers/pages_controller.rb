class PagesController < ApplicationController
  def info
  end 
  
  def setname
#    logger.info current_user.inspect
    @user = current_user
  end
  
  def update
    @user = current_user
    @user.update_attribute(:username, params['user']['username'])
    redirect_to "/pages/setname"
    #@user.username = params["username"]
    #@user.save!
    #@user.update_without_password(username: params["username"])
  end
end
