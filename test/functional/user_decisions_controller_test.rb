require 'test_helper'

class UserDecisionsControllerTest < ActionController::TestCase
  setup do
    @user_decision = user_decisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_decisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_decision" do
    assert_difference('UserDecision.count') do
      post :create, user_decision: @user_decision.attributes
    end

    assert_redirected_to user_decision_path(assigns(:user_decision))
  end

  test "should show user_decision" do
    get :show, id: @user_decision.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_decision.to_param
    assert_response :success
  end

  test "should update user_decision" do
    put :update, id: @user_decision.to_param, user_decision: @user_decision.attributes
    assert_redirected_to user_decision_path(assigns(:user_decision))
  end

  test "should destroy user_decision" do
    assert_difference('UserDecision.count', -1) do
      delete :destroy, id: @user_decision.to_param
    end

    assert_redirected_to user_decisions_path
  end
end
