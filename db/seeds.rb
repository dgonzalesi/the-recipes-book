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

recipe1 = Recipe.create! :name => 'Sopa', :preparation_time => 90, :cooking_time => 100, :description => 'This is a soup description', :public => false, :user_id => user1.id

recipe2 = Recipe.create! :name => 'Sopa', :preparation_time => 90, :cooking_time => 100, :description => 'This is a soup description', :public => false, :user_id => user2.id

recipe3 = Recipe.create! :name => 'Sopa', :preparation_time => 90, :cooking_time => 100, :description => 'This is a soup description', :public => false, :user_id => user3.id

recipe4 = Recipe.create! :name => 'Sopa', :preparation_time => 90, :cooking_time => 100, :description => 'This is a soup description', :public => false, :user_id => user4.id

recipe5 = Recipe.create! :name => 'Sopa', :preparation_time => 90, :cooking_time => 100, :description => 'This is a soup description', :public => false, :user_id => user5.id

recipe6 = Recipe.create! :name => 'Sopa', :preparation_time => 90, :cooking_time => 100, :description => 'This is a soup description', :public => false, :user_id => user6.id

recipe7 = Recipe.create! :name => 'Sopa', :preparation_time => 90, :cooking_time => 100, :description => 'This is a soup description', :public => false, :user_id => user6.id

recipe8 = Recipe.create! :name => 'Sopa', :preparation_time => 90, :cooking_time => 100, :description => 'This is a soup description', :public => false, :user_id => user1.id

recipe9 = Recipe.create! :name => 'Sopa', :preparation_time => 90, :cooking_time => 100, :description => 'This is a soup description', :public => false, :user_id => user1.id

recipe10 = Recipe.create! :name => 'Sopa', :preparation_time => 90, :cooking_time => 100, :description => 'This is a soup description', :public => false, :user_id => user1.id
