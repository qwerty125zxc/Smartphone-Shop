class PhonesController < ApplicationController
  before_action :authenticate_admin!, except: [:show]
  def new
    @phone = Phone.new
  end

  def create
    @phone = current_admin.phones.build(phone_params)
    if @phone.save
      redirect_to admin_page_path
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
end
