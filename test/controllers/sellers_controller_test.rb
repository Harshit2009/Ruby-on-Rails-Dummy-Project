require 'test_helper'

class SellersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seller = sellers(:one)
  end

  test "should get index" do
    get sellers_url
    assert_response :success
  end

  test "should get new" do
    get new_seller_url
    assert_response :success
  end

  test "should create seller" do
    assert_difference('Seller.count') do
      post sellers_url, params: { seller: { email: @seller.email, first_name: @seller.first_name, last_name: @seller.last_name, phone: @seller.phone, product_description: @seller.product_description } }
    end

    assert_redirected_to seller_url(Seller.last)
  end

  test "should show seller" do
    get seller_url(@seller)
    assert_response :success
  end

  test "should get edit" do
    get edit_seller_url(@seller)
    assert_response :success
  end

  test "should update seller" do
    patch seller_url(@seller), params: { seller: { email: @seller.email, first_name: @seller.first_name, last_name: @seller.last_name, phone: @seller.phone, product_description: @seller.product_description } }
    assert_redirected_to seller_url(@seller)
  end

  test "should destroy seller" do
    assert_difference('Seller.count', -1) do
      delete seller_url(@seller)
    end

    assert_redirected_to sellers_url
  end
end
