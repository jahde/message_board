class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  def find_user_name  
    if user_signed_in?
      return user.user_name
    end
  end
  
  def create
    @user = User.find(params[:id])
  end
end
