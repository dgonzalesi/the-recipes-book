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

  # Use callbacks to share common setup or constraints between actions.

  # Only allow a list of trusted parameters through.
  # def recipe_params
  #   params.require(:recipe_foods).permit(:name, :preparation_time, :cooking_time, :description, :public)
  # end
end
