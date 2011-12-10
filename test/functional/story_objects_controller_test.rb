require 'test_helper'

class StoryObjectsControllerTest < ActionController::TestCase
  setup do
    @story_object = story_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:story_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create story_object" do
    assert_difference('StoryObject.count') do
      post :create, story_object: @story_object.attributes
    end

    assert_redirected_to story_object_path(assigns(:story_object))
  end

  test "should show story_object" do
    get :show, id: @story_object.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @story_object.to_param
    assert_response :success
  end

  test "should update story_object" do
    put :update, id: @story_object.to_param, story_object: @story_object.attributes
    assert_redirected_to story_object_path(assigns(:story_object))
  end

  test "should destroy story_object" do
    assert_difference('StoryObject.count', -1) do
      delete :destroy, id: @story_object.to_param
    end

    assert_redirected_to story_objects_path
  end
end
