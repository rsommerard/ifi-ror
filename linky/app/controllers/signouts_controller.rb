class SignoutsController < ApplicationController
  def destroy
    reset_session
    flash.notice = 'SUCCESS#User was successfully logged out'
    redirect_to links_path
  end
end
