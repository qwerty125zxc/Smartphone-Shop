class PagesController < ApplicationController
  before_action :authenticate_admin!, only: [:admin, :adminphones]
  def index
    @phones = Phone.all
    if user_signed_in?
      sign_out :admin
    end

    if user_signed_in? && current_user.userparam.nil?
      redirect_to new_userparam_path
    end
  end

  def adminphones
    @phones = Phone.all
  end

  def admin
    sign_out :user
    @orders = Ordernoreg.all
  end

end
