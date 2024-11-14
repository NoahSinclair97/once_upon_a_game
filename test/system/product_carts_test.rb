require "application_system_test_case"

class ProductCartsTest < ApplicationSystemTestCase
  setup do
    @product_cart = product_carts(:one)
  end

  test "visiting the index" do
    visit product_carts_url
    assert_selector "h1", text: "Product carts"
  end

  test "should create product cart" do
    visit product_carts_url
    click_on "New product cart"

    fill_in "Cart", with: @product_cart.cart_id
    fill_in "Product", with: @product_cart.product_id
    click_on "Create Product cart"

    assert_text "Product cart was successfully created"
    click_on "Back"
  end

  test "should update Product cart" do
    visit product_cart_url(@product_cart)
    click_on "Edit this product cart", match: :first

    fill_in "Cart", with: @product_cart.cart_id
    fill_in "Product", with: @product_cart.product_id
    click_on "Update Product cart"

    assert_text "Product cart was successfully updated"
    click_on "Back"
  end

  test "should destroy Product cart" do
    visit product_cart_url(@product_cart)
    click_on "Destroy this product cart", match: :first

    assert_text "Product cart was successfully destroyed"
  end
end
