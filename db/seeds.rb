# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create! :name => 'Juan', :email => 'juan@mail.com', :password => '123456', :password_confirmation => '123456'
user2 = User.create! :name => 'DanieL', :email => 'daniel@mail.com', :password => '123456', :password_confirmation => '123456'
user3 = User.create! :name => 'MarIa Ana', :email => 'maria@mail.com', :password => '123456', :password_confirmation => '123456'
user4 = User.create! :name => 'Pancho', :email => 'pancho@mail.com', :password => '123456', :password_confirmation => '123456'
user5 = User.create! :name => 'Lucas', :email => 'lucas@mail.com', :password => '123456', :password_confirmation => '123456'
user6 = User.create! :name => 'joSe', :email => 'jose@mail.com', :password => '123456', :password_confirmation => '123456'

recipe1 = Recipe.create! :name => 'Soup', :preparation_time => 90, :cooking_time => 100, :description => 'This is a soup description', :public => false, :user_id => user1.id

recipe2 = Recipe.create! :name => 'Chicken', :preparation_time => 90, :cooking_time => 100, :description => 'This is a Checken description', :public => false, :user_id => user2.id

recipe3 = Recipe.create! :name => 'Cream', :preparation_time => 90, :cooking_time => 100, :description => 'This is a Cream description', :public => false, :user_id => user3.id

recipe4 = Recipe.create! :name => 'Spagetti', :preparation_time => 90, :cooking_time => 100, :description => 'This is a Spagetti description', :public => false, :user_id => user4.id

recipe5 = Recipe.create! :name => 'Tamales', :preparation_time => 90, :cooking_time => 100, :description => 'This is a Tamales description', :public => false, :user_id => user5.id

recipe6 = Recipe.create! :name => 'Turkey', :preparation_time => 90, :cooking_time => 100, :description => 'This is a Turkey description', :public => false, :user_id => user6.id

recipe7 = Recipe.create! :name => 'Hamburguers', :preparation_time => 90, :cooking_time => 100, :description => 'This is a Hamburguers description', :public => false, :user_id => user6.id

recipe8 = Recipe.create! :name => 'Meat', :preparation_time => 90, :cooking_time => 100, :description => 'This is a Meat description', :public => false, :user_id => user1.id

recipe9 = Recipe.create! :name => 'Hot Dog', :preparation_time => 90, :cooking_time => 100, :description => 'This is a Hot Dog description', :public => false, :user_id => user1.id

recipe10 = Recipe.create! :name => 'Tacos', :preparation_time => 90, :cooking_time => 100, :description => 'This is a tacos description', :public => false, :user_id => user1.id

food1 = Food.create! :name => "Macarrones", :measurement_unit => "Kgs", :price => rand(1..100), :user_id => rand(1..6)

food1 = Food.create! :name => "Strawberrys", :measurement_unit => "Kgs", :price => rand(1..100), :user_id => rand(1..6)

food10 = Food.create! :name => "Sauce", :measurement_unit => "ml", :price => rand(1..100), :user_id => rand(1..6)

food2 = Food.create! :name => "Pasta", :measurement_unit => "Kgs", :price => rand(1..100), :user_id => rand(1..6)

food3 = Food.create! :name => "Carrots", :measurement_unit => "Unit", :price => rand(1..100), :user_id => rand(1..6)

food4 = Food.create! :name => "Onions", :measurement_unit => "grms", :price => rand(1..100), :user_id => rand(1..6)

food5 = Food.create! :name => "Water", :measurement_unit => "lts", :price => rand(1..100), :user_id => rand(1..6)

food6 = Food.create! :name => "Salt", :measurement_unit => "spoon", :price => rand(1..100), :user_id => rand(1..6)

food7 = Food.create! :name => "Eggs", :measurement_unit => "Pieces", :price => rand(1..100), :user_id => rand(1..6)

food8 = Food.create! :name => "Flowr", :measurement_unit => "cups", :price => rand(1..100), :user_id => rand(1..6)

food9 = Food.create! :name => "Corn", :measurement_unit => "Kgs", :price => rand(1..100), :user_id => rand(1..6)

food11 = Food.create! :name => "Corn", :measurement_unit => "Kgs", :price => rand(1..100), :user_id => 1

food12 = Food.create! :name => "Corn", :measurement_unit => "Kgs", :price => rand(1..100), :user_id => 2

food13 = Food.create! :name => "Corn", :measurement_unit => "Kgs", :price => rand(1..100), :user_id => 3

food14 = Food.create! :name => "Corn", :measurement_unit => "Kgs", :price => rand(1..100), :user_id => 4

food15 = Food.create! :name => "Corn", :measurement_unit => "Kgs", :price => rand(1..100), :user_id => 5

recipe_food = RecipeFood.create! :quantity => 10, :recipe_id => recipe1.id, :food_id => food1.id

recipe_food2 = RecipeFood.create! :quantity => 11, :recipe_id => recipe2.id, :food_id => food2.id

recipe_food3 = RecipeFood.create! :quantity => 12, :recipe_id => recipe3.id, :food_id => food3.id

recipe_food4 = RecipeFood.create! :quantity => 13, :recipe_id => recipe4.id, :food_id => food4.id

recipe_food5 = RecipeFood.create! :quantity => 14, :recipe_id => recipe5.id, :food_id => food5.id

recipe_food6 = RecipeFood.create! :quantity => 15, :recipe_id => recipe7.id, :food_id => food1.id

recipe_food7 = RecipeFood.create! :quantity => 16, :recipe_id => recipe8.id, :food_id => food1.id

recipe_food8 = RecipeFood.create! :quantity => 17, :recipe_id => recipe1.id, :food_id => food1.id

recipe_food9 = RecipeFood.create! :quantity => 18, :recipe_id => recipe1.id, :food_id => food1.id
