class PhonesController < ApplicationController
  before_action :authenticate_admin!, except: [:show]
  before_action :check
  def new
    @phone = Phone.new
  end

  def create
    @phone = current_admin.phones.build(phone_params)
    if @phone.save
      redirect_to admin_page_path
    else render 'new'
    end
  end

  def show
    @phone = Phone.find(params[:id])
    @comments = @phone.comments
  end

  def edit
    @phone = Phone.find(params[:id])
  end

  def update
    @phone = Phone.find(params[:id])
    @phone.update(phone_params)
    if @phone.save
      redirect_to phone_path(@phone.id)
    else render 'edit'
    end
  end

  def destroy
    @phone = Phone.find(params[:id])
    @phone.destroy
    redirect_to admin_page_path
  end

  private
    def phone_params
      params.require(:phone).permit(:admin_id, :price, :brand, :model, :materials, :color, :os, :displaysize, :displaytype, :displayresolution, :soc, :frequency, :gpu, :rom, :ram, :sims, :maincam, :frontcam, :videoresolution, :focus, :moreaboutcam, :battery, :fastcharge, :wireless, :year, :interfaces, :dimensions, :mass, :more, :description)
    end

    def check
      if user_signed_in?
        sign_out :admin
      end
    end
end
