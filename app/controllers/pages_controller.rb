class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show]



  def index

  end

  def show
    user = User.find(params[:id])
  end

  private

  def set_user
    @user = User.find_by(username: params[:username])
  end

  def user_paramus
    params.fetch(:user,{}).permit(:username)
  end
end
