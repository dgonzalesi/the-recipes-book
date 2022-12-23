class UpdateForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :recipe_foods, :recipes
    add_foreign_key :recipe_foods
  end
end