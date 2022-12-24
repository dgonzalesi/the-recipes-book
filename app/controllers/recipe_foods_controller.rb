class RecipeFoodsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recipe_food, only: [:show, :edit, :update, :destroy]
  before_action :set_recipe, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_food, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_recipe_food, only: [:show, :edit, :update, :destroy]

  # GET /recipe_foods
  # GET /recipe_foods.json
  def index
	@recipe_foods = RecipeFood.all
  end

  # GET /recipe_foods/1
  # GET /recipe_foods/1.json
  def show
  end

  # GET /recipe_foods/new
  def new
	@recipe = Recipe.find(params[:recipe_id])
	@recipe_food = @recipe.recipe_foods.new
  end

  # GET /recipe_foods/1/edit
  def edit
  end

  # POST /recipe_foods
  # POST /recipe_foods.json
  def create
	@recipe = Recipe.find(params[:recipe_id])
	@recipe_food = @recipe.recipe_foods.create(recipe_food_params)


	respond_to do |format|
	  if @recipe_food.save
		format.html { redirect_to @recipe, notice: 'Recipe food was successfully created.' }
	  else
		format.html { render :new }
	  end
	end
  end

  # PATCH/PUT /recipe_foods/1
  # PATCH/PUT /recipe_foods/1.json
  def update
	respond_to do |format|
	  if @recipe_food.update(recipe_food_params)
		format.html { redirect_to @recipe_food, notice: 'Recipe food was successfully updated.' }
		format.json { render :show, status: :ok, location: @recipe_food }
	  else
		format.html { render :edit }
		format.json { render json: @recipe_food.errors, status: :unprocessable_entity }
	  end
	end
  end

  # DELETE /recipe_foods/1
  # DELETE /recipe_foods/1.json
  def destroy
	@recipe_food.destroy
	respond_to do |format|
	  format.html { redirect_to recipe_foods_url}
	end
  end
	private
    def set_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end
end
