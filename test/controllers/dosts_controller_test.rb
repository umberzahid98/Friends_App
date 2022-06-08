require 'test_helper'

class DostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dost = dosts(:one)
  end

  test "should get index" do
    get dosts_url
    assert_response :success
  end

  test "should get new" do
    get new_dost_url
    assert_response :success
  end

  test "should create dost" do
    assert_difference('Dost.count') do
      post dosts_url, params: { dost: { email: @dost.email, first_name: @dost.first_name, last_name: @dost.last_name, phone: @dost.phone, twitter: @dost.twitter } }
    end

    assert_redirected_to dost_url(Dost.last)
  end

  test "should show dost" do
    get dost_url(@dost)
    assert_response :success
  end

  test "should get edit" do
    get edit_dost_url(@dost)
    assert_response :success
  end

  test "should update dost" do
    patch dost_url(@dost), params: { dost: { email: @dost.email, first_name: @dost.first_name, last_name: @dost.last_name, phone: @dost.phone, twitter: @dost.twitter } }
    assert_redirected_to dost_url(@dost)
  end

  test "should destroy dost" do
    assert_difference('Dost.count', -1) do
      delete dost_url(@dost)
    end

    assert_redirected_to dosts_url
  end
end
