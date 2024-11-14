require "test_helper"

class ProductCartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_cart = product_carts(:one)
  end

  test "should get index" do
    get product_carts_url
    assert_response :success
  end

  test "should get new" do
    get new_product_cart_url
    assert_response :success
  end

  test "should create product_cart" do
    assert_difference("ProductCart.count") do
      post product_carts_url, params: { product_cart: { cart_id: @product_cart.cart_id, product_id: @product_cart.product_id } }
    end

    assert_redirected_to product_cart_url(ProductCart.last)
  end

  test "should show product_cart" do
    get product_cart_url(@product_cart)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_cart_url(@product_cart)
    assert_response :success
  end

  test "should update product_cart" do
    patch product_cart_url(@product_cart), params: { product_cart: { cart_id: @product_cart.cart_id, product_id: @product_cart.product_id } }
    assert_redirected_to product_cart_url(@product_cart)
  end

  test "should destroy product_cart" do
    assert_difference("ProductCart.count", -1) do
      delete product_cart_url(@product_cart)
    end

    assert_redirected_to product_carts_url
  end
end
