class UserparamsController < ApplicationController
  before_action :authenticate_user!
    def new
      @userparam = Userparam.new
    end

    def create
      @userparam = current_user.build_userparam(userparam_params)
      if @userparam.save
        redirect_to root_path
      else
        flash[:error] = "Userparam has error"
        render 'new'
      end
    end

    def edit
      @userparam = Userparam.find_by(user_id: current_user.id)
    end

    def update
      @userparam = Userparam.find_by(user_id: current_user.id)
      if @userparam.update(userparam_params)
        flash[:notice] = "Userparam successfully updated"
        redirect_to root_path
      else
        flash[:error] = "Userparam has error"
        render 'edit'
      end

    end

  private

    def userparam_params
      params.require(:userparam).permit(:user_id, :name, :mobnumber)
    end
end
