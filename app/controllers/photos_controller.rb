class PhotosController < ApplicationController
    before_action :authorize
  def index
  end

  def show
    @photo = Photo.find params[:id]
  end

  def new
      @photo = Photo.new
  end

  def create
    # First we save the new Photo
    photo = Photo.create photo_params
    # Second we create a comment with saved photo
    comment = Comment.new
    # TODO Change this to the logged in user
    comment.user_id = current_user.id
    comment.message = params[:message]
    comment.photo_id = photo.id
    comment.save

    redirect_to photo
  end

  def edit
  end

  def update
    photo = Photo.find params[:id]
    photo.update photo_params
    redirect_to photo
  end



  def destroy
  end

  private
  def photo_params
    params.require(:photo).permit(:image_url, :user_id, :holiday_id)
  end
end
