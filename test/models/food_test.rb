require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'valid if is blank'
  food = Food.new
  assert_not food.valid?
end
