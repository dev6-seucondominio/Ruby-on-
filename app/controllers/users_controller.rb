class UsersController < ApplicationController
  # before_filter :somente_logado

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
      render :show
    else
      render :new
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