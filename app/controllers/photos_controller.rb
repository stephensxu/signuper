class PhotosController < ApplicationController
  def create
    p photo_params

    @photo = Photo.new(photo_params)
    @photo.user = current_user

    if @photo.save
      redirect_to user_path(current_user), notice: 'Photo was successfully created.'
    else
      render :new
    end
  end

  def photo_params
    params.require(:photo).permit(:picture_url)
  end
end
