require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one)
    sign_in @user
    @category = categories(:one)
  end

  test "should get index" do
    get products_url
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { name: 'Example Product',
                                              user_id: @user.id,
                                              category_id: @category.id,
                                              description: 'Example description',
                                              price: 10.99 } }
    end

    assert_redirected_to product_url(Product.last)
  end

  # Add more tests as needed

end
