class CommentsController < ApplicationController
    before_action :find_phone
    before_action :authenticate_user!
    before_action :check

    def new
      @b = false
      @phone.comments.each do |c|
        if c.user.id == current_user.id
          @b = true
        end
      end

      if @b == false
        @comment = Comment.new
      else
        flash[:notice] = "You have already been added a comment."
        redirect_to phone_path(@phone.id)
      end
    end

    def create
      params[:comment][:phone_id] = @phone.id
      @comment = current_user.comments.build(comment_params)
      if @comment.save
        redirect_to phone_path(@phone.id)
      else
        flash[:error] = "Comment has error"
        render 'new'
      end
    end

    def edit
      @comment = Comment.find_by(id: params[:id])
    end

    def update
      @comment = Comment.find_by(id: params[:id])
      params[:comment][:phone_id] = @phone.id
      if @comment.update(comment_params)
        flash[:notice] = "Comment successfully updated"
        redirect_to phone_path(@phone.id)
      else
        flash[:error] = "Comment has error"
        render 'edit'
      end

    end

    def destroy
      @comment = Comment.find_by(id: params[:id])
      @comment.destroy
      redirect_to phone_path(@phone.id)
    end

  private

    def comment_params
      params.require(:comment).permit(:phone_id, :user_id, :body)
    end

    def find_phone
      @phone = Phone.find_by(id: params[:phone_id])
    end

    def check
      if user_signed_in?
        sign_out :admin
      end
    end
end
