class Admin::ImagesController < Admin::BaseController


  def index
    @images = Image.all
  end

  def edit
    @image = Image.find(params[:id])
  end

  def destroy
    image = Image.find(params[:id])
    image.destroy
    redirect_to admin_images_path
  end

  def show
    @image = Image.find(params[:id])
  end


  def new
   @image = Image.new
 end

 def create
   @image = Image.create(image_params)
   if @image.save
   redirect_to admin_image_path(@image)
   else
     render :new
   end
 end

  private

  def image_params
    params.require(:image).permit(:name, :url)
  end


end
