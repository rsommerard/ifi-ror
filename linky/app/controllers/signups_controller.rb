class SignupsController < ApplicationController
  before_action :redirect_if_already_logged, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(signup_params)

    if @user.save
      session[:user_id] = @user.id
      flash.notice = 'SUCCESS#User was successfully created and logged'
      redirect_to links_url
    else
      render :new
    end
  end

private

  def redirect_if_already_logged
    if User.find_by(id: session[:user_id])
      redirect_to links_url
    end
  end

  def signup_params
    params.require(:user).permit(:login, :password, :password_confirmation)
  end
end
