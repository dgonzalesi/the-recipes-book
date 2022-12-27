class RecipeFoodsController < ApplicationController
  def index
    @recipe_foods = RecipeFood.all
  end

  def new; end

  def show; end

  def create; end

  def destroy
    @recipe_food = RecipeFood.find(params[:id])
    @recipe_food.destroy
  end

  def update; end

end
