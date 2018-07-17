class CommentsController < ApplicationController
    before_action :authorize
  def index
  end
def show
    @comment = Comment.find params[:id]
end
  def new
      @comment = Comment.new
  end

  def create

    # we create a comment with saved photo
    comment = Comment.new
    comment.user_id = @current_user.id
    comment.message = params[:comment][:message]
    comment.photo_id = params[:comment][:photo_id]
    comment.save

    redirect_back :fallback_location => root_path # GET the show page
  end

  def edit
  end

  def update
    comment = Comment.find params[:id]
    comment.update comment_params
    redirect_to comment
  end


  def destroy
    comment = Comment.find params[:id]
    holiday = comment.photo.holiday
    comment.destroy
    redirect_to holiday
  end

  private
  def comment_params
    params.require(:comment).permit(:message, :user_id, :holiday_id)
  end
end
