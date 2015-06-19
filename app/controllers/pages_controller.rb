class PagesController < ApplicationController
  def setname
#    logger.info current_user.inspect
    @user = current_user
  end
  
  def update
    @user = current_user
    #@user.username = params["username"]
    #@user.save!
    @user.update_without_password(username: params["username"])
  end
end
