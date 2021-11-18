class AdminController < ApplicationController
  before_action :check_admin
  def dashboard
  end

  def check_admin
    if user_signed_in?
      redirect_to root_path,notice:"not authorised" if !current_user.admin?
    else
      redirect_to root_path,notice:"not authorised"
    end
  end
end
