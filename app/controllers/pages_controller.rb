class PagesController < ApplicationController
  before_action :authenticate_admin!, only: [:admin, :adminphones]
  def index
    @phones = Phone.all
    if user_signed_in?
      sign_out :admin
    end
  end

  def adminphones
    @phones = Phone.all
  end

  def admin
    sign_out :user
  end

end
