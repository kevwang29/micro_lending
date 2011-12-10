require 'test_helper'

class DecisionTestsControllerTest < ActionController::TestCase
  setup do
    @decision_test = decision_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:decision_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create decision_test" do
    assert_difference('DecisionTest.count') do
      post :create, decision_test: @decision_test.attributes
    end

    assert_redirected_to decision_test_path(assigns(:decision_test))
  end

  test "should show decision_test" do
    get :show, id: @decision_test.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @decision_test.to_param
    assert_response :success
  end

  test "should update decision_test" do
    put :update, id: @decision_test.to_param, decision_test: @decision_test.attributes
    assert_redirected_to decision_test_path(assigns(:decision_test))
  end

  test "should destroy decision_test" do
    assert_difference('DecisionTest.count', -1) do
      delete :destroy, id: @decision_test.to_param
    end

    assert_redirected_to decision_tests_path
  end
end
