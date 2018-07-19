class PhotosController < ApplicationController
  before_action :authorize

  def show
    @photo = Photo.find params[:id]
  end

  def create
    # First we save the new Photo
    photo = Photo.create photo_params

    # Second we create a comment with saved photo
    comment = Comment.new
    comment.user_id = current_user.id
    comment.message = params[:message]
    comment.photo_id = photo.id
    comment.save

    redirect_to photo.holiday
  end

  def destroy
    # Load the photo using the ID from the URL
    photo = Photo.find params[:id]
    # Make a variable called holiday which is the holiday that
    # the photo belongs to
    holiday = photo.holiday
    # Destroy the photo
    photo.destroy
    # Redirect back to the holiday show page
    redirect_to holiday
  end

  private
  def photo_params
    params.require(:photo).permit(:image_url, :user_id, :holiday_id)
  end
end
