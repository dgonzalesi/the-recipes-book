class RecipeFoodsController < ApplicationController

	before_action :authenticate_user!, :set_recipe_food, only: %i[shoe edit update destroy]

	def index
		@foods = Food.includes([:food])
	end

def new
	@recipe = Recipe.find(params[:recipe_id])
	@recipe_food = @recipe.recipe_foods.new
end

def create
	@recipe = Recipe.find(params[:recipe_id])
	@recipe_food = @recipe.recipe_foods.create(recipe_food_params)
	if @recipe_food.save
		flash[:notice] = 'Food created succesfully'
		redirect_to @recipe
	else
		render :new
	end
end

def edit
	@recipe = RecipeFood.find(params[:id])
end

def destroy
	@recipe_food =RecipeFood.find(params[:id])
	@recipe_food.destroy
	flash[:success] = 'Recipe Food delted successfully'
	redirect_to recipe_path(@recipe_food.recipe_id)
end

def update
	@recipe = Recipe.find_by(id: params[:recipe_id])

	respond_to do |format|
	  if @recipe_food.update(recipe_food_params)
		format.html { redirect_to @recipe, notice: 'Recipe Food was successfully updated.' }
		format.json { render :show, status: :ok, location: @recipe_food }
	  else
		format.html { render :edit, status: :unprocessable_entity }
		format.json { render json: @recipe_food.errors, status: :unprocessable_entity }
	  end
	end
  end

  private

  def set_recipe_food
	@recipe_food = RecipeFood.find(params[:id])
  end

  def recipe_food_params
	params.require(:recipe_food).permit(:quantity, :food_id)
  end

end
