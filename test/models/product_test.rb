require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "product must have a name" do
    product = Product.new(description: "Test product", price: 10)
    assert_not product.valid?
  end

  test "product must have a price" do
    product = Product.new(name: "Pen", description: "Blue pen")
    assert_not product.valid?
  end

  test "product is valid with name, description, and price" do
    product = Product.new(name: "Pen", description: "Blue pen", price: 10)
    assert product.valid?
  end
end
