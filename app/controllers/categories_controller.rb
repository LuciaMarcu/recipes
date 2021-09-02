class CategoriesController < ApplicationController
    
    def index
        @categories = Category.all
    end
   
    def show        
        @category = Category.find(params[:id])
        @recipes = @category.recipes.all
    end

    private

    def category_params
        params.require(:category).permit(:name, :description)
    end
end
