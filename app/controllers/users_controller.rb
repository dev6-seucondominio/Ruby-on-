class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :somente_logado, only: [:new, :create]

  def index
    respond_to do |format|
      format.html { render_layout }
      format.json { render json: User.all }
    end
  end

  def show
    respond_to do |format|
      format.html { render_layout }
      format.json { render json: User.find(params[:id]) }
    end
  end

  def new
    render_layout
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      login_user(@user)
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      render :show
    else
      render :edit
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render :index
  end
end