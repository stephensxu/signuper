class PhotosController < ApplicationController
  def create

    @photo = current_user.photos.new(photo_params)

    if @photo.save
      redirect_to user_path(current_user), :notice => 'Photo was successfully created.'
    else
      render :new
    end
  end

  def photo_params
    params.require(:photo).permit(:picture_url)
  end
end
