require 'test_helper'
 
class CakesHelperTest < ActionView::TestCase  
  test "Test recipe 1" do
    @recipe = {flour: 500, sugar: 200, eggs: 1}
    @ingredients = {flour: 1200, sugar: 1200, eggs: 5, milk: 200}
    assert_equal cakes(@recipe, @ingredients), 2
  end

  test "Test recipe 2" do
    @recipe = {apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}
    @ingredients = {sugar: 500, flour: 2000, milk: 2000}
    assert_equal cakes(@recipe, @ingredients), 0
  end
end