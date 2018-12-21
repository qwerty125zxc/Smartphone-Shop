class OrdernoregsController < ApplicationController
  before_action :check

    def new
      @phone = Phone.find_by(id: params[:phone_id])
      @order = Ordernoreg.new
    end

    def create
      @phone = Phone.find_by(id: params[:phone_id])
      params[:ordernoreg][:phone_id] = @phone.id
      @order = Ordernoreg.new(order_params)
      if @order.save
        redirect_to root_path
      else
        flash[:error] = "Order has error"
        render 'new'
      end
    end

  private

    def order_params
      params.require(:ordernoreg).permit(:phone_id, :count, :mobnumber, :email, :adress)
    end

    def check
      if user_signed_in?
        sign_out :admin
      end
    end
end
