require 'test_helper'

class StoryTestsControllerTest < ActionController::TestCase
  setup do
    @story_test = story_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:story_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create story_test" do
    assert_difference('StoryTest.count') do
      post :create, story_test: @story_test.attributes
    end

    assert_redirected_to story_test_path(assigns(:story_test))
  end

  test "should show story_test" do
    get :show, id: @story_test.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @story_test.to_param
    assert_response :success
  end

  test "should update story_test" do
    put :update, id: @story_test.to_param, story_test: @story_test.attributes
    assert_redirected_to story_test_path(assigns(:story_test))
  end

  test "should destroy story_test" do
    assert_difference('StoryTest.count', -1) do
      delete :destroy, id: @story_test.to_param
    end

    assert_redirected_to story_tests_path
  end
end
