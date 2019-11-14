class LoginController < ApplicationController
  def index
  end
  
  def create
      render plain: params[:idea].inspect
  end
end
