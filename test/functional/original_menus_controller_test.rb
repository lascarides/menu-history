require 'test_helper'

class OriginalMenusControllerTest < ActionController::TestCase
  setup do
    @original_menu = original_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:original_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create original_menu" do
    assert_difference('OriginalMenu.count') do
      post :create, :original_menu => @original_menu.attributes
    end

    assert_redirected_to original_menu_path(assigns(:original_menu))
  end

  test "should show original_menu" do
    get :show, :id => @original_menu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @original_menu.to_param
    assert_response :success
  end

  test "should update original_menu" do
    put :update, :id => @original_menu.to_param, :original_menu => @original_menu.attributes
    assert_redirected_to original_menu_path(assigns(:original_menu))
  end

  test "should destroy original_menu" do
    assert_difference('OriginalMenu.count', -1) do
      delete :destroy, :id => @original_menu.to_param
    end

    assert_redirected_to original_menus_path
  end
end
