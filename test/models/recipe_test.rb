require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # test "valid if is blank"?
  #   recipe = Recipe.new
  #   assert_not recipe.valid?
  # end
  test 'valid if is blank' do
    recipe = Recipe.new
    assert_not recipe.valid?
  end
end
