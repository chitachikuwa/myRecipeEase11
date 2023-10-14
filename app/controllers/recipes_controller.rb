class RecipesController < ApplicationController
  def index
   @recipes = Recipe.all
  end

  def new
   @recipe = Recipe.new
  end  

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end  

  private
  def recipe_params
    params.require(:recipe).permit(:image, :title, :category_id, ingredients: [], seasonings: [], steps: []) 
  end
end
