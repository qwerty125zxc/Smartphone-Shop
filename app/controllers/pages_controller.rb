class PagesController < ApplicationController
  before_action :authenticate_admin!, only: [:admin, :adminphones]
  def index
    @phones = Phone.all
  end

  def adminphones
    @phones = Phone.all
  end

  def admin
    sign_out :user
  end

end
