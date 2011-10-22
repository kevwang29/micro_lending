require 'test_helper'

class BorrowersControllerTest < ActionController::TestCase
  setup do
    @borrower = borrowers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:borrowers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create borrower" do
    assert_difference('Borrower.count') do
      post :create, borrower: @borrower.attributes
    end

    assert_redirected_to borrower_path(assigns(:borrower))
  end

  test "should show borrower" do
    get :show, id: @borrower.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @borrower.to_param
    assert_response :success
  end

  test "should update borrower" do
    put :update, id: @borrower.to_param, borrower: @borrower.attributes
    assert_redirected_to borrower_path(assigns(:borrower))
  end

  test "should destroy borrower" do
    assert_difference('Borrower.count', -1) do
      delete :destroy, id: @borrower.to_param
    end

    assert_redirected_to borrowers_path
  end
end
