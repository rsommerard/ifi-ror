class SigninsController < ApplicationController
  before_action :redirect_if_already_logged, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(signin_params)

    user = User.find_by(login: @user.login)

    if user and user.authenticate(@user.password)
      session[:user_id] = user.id
      flash.notice = 'SUCCESS#User was successfully logged'
      redirect_to links_url
    else
      if @user.login.blank?
        @user.errors.add(:login, "can't be blank")
      else
        @user.errors.add(:login, "not found") if user.nil?
      end

      if @user.password.blank?
        @user.errors.add(:password, "can't be blank")
      else
        @user.errors.add(:password, "invalid") unless user.nil?
      end

      render :new
    end
  end

private

  def redirect_if_already_logged
    if User.find_by(id: session[:user_id])
      redirect_to links_url
    end
  end

  def signin_params
    params.require(:user).permit(:login, :password)
  end
end
