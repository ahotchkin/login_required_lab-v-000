class SessionsController < ApplicationController
  skip_before_action :require_login

  def new
  end

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy
    session.clear
    redirect_to "/login"
  end
end
