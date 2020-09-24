class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show]



  def new
    @page = Page.new
  end

  def show
    user = User.find(params[:id])
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_paramus
    params.fetch(:user,{}).permit(:username)
  end

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
end
