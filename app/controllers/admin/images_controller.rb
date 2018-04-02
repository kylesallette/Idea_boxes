class Admin::ImagesController < Admin::BaseController

  


  private

  def image_params
    params.require(:image).permit(:image_url)
  end
end
