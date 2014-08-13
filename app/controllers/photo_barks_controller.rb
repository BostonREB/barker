class PhotoBarksController < ApplicationController

  def create
    content = build_content
    bark = current_user.barks.build(content: content)
    if bark.save
      redirect_to dashboard_path
    else
      flash.alert = "Could not Bark"
      redirect_to dashboard_path
    end
  end

  private

  def build_content
    PhotoBark.new(photo_bark_parameters)
  end

  def photo_bark_parameters
    params.require(:photo_bark).permit(:image)
  end

end
