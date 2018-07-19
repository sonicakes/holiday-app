class CommentsController < ApplicationController
  before_action :authorize

  def create

    # we create a comment with saved photo
    comment = Comment.new
    comment.user_id = @current_user.id
    comment.message = params[:comment][:message]
    comment.photo_id = params[:comment][:photo_id]
    comment.save

    redirect_back :fallback_location => root_path # GET the show page
  end

  def destroy
    comment = Comment.find params[:id]
    holiday = comment.photo.holiday
    comment.destroy
    flash[:success] = "Comment Deleted!"
    redirect_to holiday
  end

  private
  def comment_params
    params.require(:comment).permit(:message, :user_id, :holiday_id)
  end
end
