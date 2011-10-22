require 'test_helper'

class BadgeListsControllerTest < ActionController::TestCase
  setup do
    @badge_list = badge_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:badge_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create badge_list" do
    assert_difference('BadgeList.count') do
      post :create, badge_list: @badge_list.attributes
    end

    assert_redirected_to badge_list_path(assigns(:badge_list))
  end

  test "should show badge_list" do
    get :show, id: @badge_list.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @badge_list.to_param
    assert_response :success
  end

  test "should update badge_list" do
    put :update, id: @badge_list.to_param, badge_list: @badge_list.attributes
    assert_redirected_to badge_list_path(assigns(:badge_list))
  end

  test "should destroy badge_list" do
    assert_difference('BadgeList.count', -1) do
      delete :destroy, id: @badge_list.to_param
    end

    assert_redirected_to badge_lists_path
  end
end
