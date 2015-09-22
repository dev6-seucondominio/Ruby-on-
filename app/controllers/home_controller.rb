# encoding: UTF-8
class HomeController < ApplicationController
  # before_filter :somente_logado
  
  def home
    respond_to do |format|
      format.html { render_layout }
      format.json { render json: User.all }
    end
  end
end