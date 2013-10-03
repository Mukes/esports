class UserController < ApplicationController
  def login
    if session[:cur_username]
      redirect_to('/static_pages')
    elsif(params[:username] && params[:password])
      cur_user = User.find(:all, :conditions => "username = '#{params[:username]}' AND password = '#{params[:password]}'").first
      if(cur_user)
        session[:cur_username] = cur_user.username
        redirect_to('/static_pages')
      end
    end
  end
  
  def logout
    session[:cur_username] = nil
    respond_to do |format|
      format.html
    end
  end
end
