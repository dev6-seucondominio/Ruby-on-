# encoding: UTF-8
class LoginController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  # skip_before_filter  :somente_logado, only: [:new, :create]

  def new
    render_layout
	end

	def create
		@login = User.where(login: params[:login], password: params[:password]).take
		if @login != []
			login_user(@login)
			redirect_to "/home"
		else
			flash[:error] = @user.errors.full_messages
			render :new
		end
	end

  def destroy
    exit_user
    @login = User.new
    redirect_to "/login"
  end

end