class RecipeFoodsController < ApplicationController
  before_action :set_current_recipe, only: [:new]
  before_action :set_foods, only: [:new]
  def index
    @recipe_foods = RecipeFood.all
  end

  def new
    @recipe_food = RecipeFood.new
  end

  def show; end

  def create
    @recipes_list = Recipe.all
    @foods_list = Food.all
    @recipe_food = RecipeFood.create(recipe_food_params)
    redirect_to recipe_path(recipe_food_params[:recipe_id])
  end

  def destroy
    @recipe_food = RecipeFood.find(params[:id])
    @recipe_food.destroy
  end

  def update; end

  private

  def set_current_recipe
    @current_recipe = Recipe.find(params[:recipe_id])
  end

  def set_foods
    @foods_list = Food.all
  end

  def recipe_food_params
    params.require(:recipe_food).permit(:quantity, :recipe_id, :food_id)
  end
end
