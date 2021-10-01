class RecipesController < ApplicationController
    before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]
    before_action :correct_user, only: [:edit, :update]
    before_action :admin_user, only: :destroy
    

    def index
        @recipes = Recipe.paginate(page: params[:page])
    end 

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = current_user.recipes.build(recipe_params)
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

    def edit
        @recipe = Recipe.find(params[:id])
    end

    def update
        @recipe = Recipe.find(params[:id])
        if @recipe.update(recipe_params)
            flash[:success] = "Recipe updated"
            redirect_to @recipe
        else
            render 'edit'
        end

    end

    def destroy
        Recipe.find(params[:id]).destroy
        flash[:success] = "Recipe deleted"
        redirect_to all_recipes_path
    end


end


private

def recipe_params
    params.require(:recipe).permit(:name, :content, :category_id, :image, :details)
end

def correct_user
    @recipe = current_user.recipes.find_by(id: params[:id])
    redirect_to root_url if @recipe.nil?
end

def admin_user
    redirect_to(root_url) unless current_user.admin?
end