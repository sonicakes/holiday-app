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
    # TODO Change this to the logged in user
    comment.user_id = User.first.id # TODO: @current_user.id
    comment.message = params[:comment][:message]
    comment.photo_id = params[:comment][:photo_id]
    comment.save

    redirect_back :fallback_location => root_path # GET the show page
    #comment doesnt seem to save, or how to redirect to showpage for holidays with all the other comments and pics?????
  end

  def edit
  end

  def update
    comment = Comment.find params[:id]
    comment.update comment_params
    redirect_to comment
  end

  def delete
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:message, :user_id, :holiday_id)
  end
end
