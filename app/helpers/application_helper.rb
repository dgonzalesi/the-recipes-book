module ApplicationHelper
	def total_price_recipe(recipe)
		total_price = 0
		recipe_ingredients = RecipeFood.includes([:food]).where(recipe:)
		recipe_ingredients.each do |ri|
			total_price += ri.food[:price] * ri[:quantity].to_i
		end
		total_price
	end
end
