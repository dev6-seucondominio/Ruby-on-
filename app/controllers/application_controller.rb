class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :somente_logado, only: [:new, :create]
  
  def login_user(user)
    session[:user_session] = user
  end

  def exit_user
    session[:user_session] = nil
    @user_session = nil
  end

  def validation_login
    if session[:user_session]
      true
    else
      false
    end  
  end

  def get_user_name
    session[:user_session]
  end

  def index
    
  end

  private

  def user_params
    params.require(:user).permit(:name, :login, :password)
  end

  def somente_logado
    redirect_to "/login" unless validation_login
  end  

  protected

  def render_layout
    render layout: "/layouts/application", html: ""
  end
end
