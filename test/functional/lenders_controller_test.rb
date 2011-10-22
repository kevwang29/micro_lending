require 'test_helper'

class LendersControllerTest < ActionController::TestCase
  setup do
    @lender = lenders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lenders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lender" do
    assert_difference('Lender.count') do
      post :create, lender: @lender.attributes
    end

    assert_redirected_to lender_path(assigns(:lender))
  end

  test "should show lender" do
    get :show, id: @lender.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lender.to_param
    assert_response :success
  end

  test "should update lender" do
    put :update, id: @lender.to_param, lender: @lender.attributes
    assert_redirected_to lender_path(assigns(:lender))
  end

  test "should destroy lender" do
    assert_difference('Lender.count', -1) do
      delete :destroy, id: @lender.to_param
    end

    assert_redirected_to lenders_path
  end
end
