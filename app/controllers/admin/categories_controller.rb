class Admin::CategoriesController < Admin::BaseController






  private

    def category_params
      params.require(:category).permit(:title)
    end

end
