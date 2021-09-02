class RecipesController < ApplicationController

    def index
        @recipes = Recipe.paginate(page: params[:page])
    end 

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.new(recipe_params)
        @recipe.image.attach(params[:recipe][:image])
        if @recipe.save 
            flash[:success] = "Recipe saved"        
            redirect_to all_recipes_path
        else
            render 'new'
        end
    end

    def show
        @recipe = Recipe.find(params[:id])
    end


end


private

def recipe_params
    params.require(:recipe).permit(:name, :content, :category_id, :image)
end