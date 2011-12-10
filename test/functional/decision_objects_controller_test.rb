require 'test_helper'

class DecisionObjectsControllerTest < ActionController::TestCase
  setup do
    @decision_object = decision_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:decision_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create decision_object" do
    assert_difference('DecisionObject.count') do
      post :create, decision_object: @decision_object.attributes
    end

    assert_redirected_to decision_object_path(assigns(:decision_object))
  end

  test "should show decision_object" do
    get :show, id: @decision_object.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @decision_object.to_param
    assert_response :success
  end

  test "should update decision_object" do
    put :update, id: @decision_object.to_param, decision_object: @decision_object.attributes
    assert_redirected_to decision_object_path(assigns(:decision_object))
  end

  test "should destroy decision_object" do
    assert_difference('DecisionObject.count', -1) do
      delete :destroy, id: @decision_object.to_param
    end

    assert_redirected_to decision_objects_path
  end
end
