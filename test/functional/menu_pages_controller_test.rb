require 'test_helper'

class MenuPagesControllerTest < ActionController::TestCase
  setup do
    @menu_page = menu_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_page" do
    assert_difference('MenuPage.count') do
      post :create, :menu_page => @menu_page.attributes
    end

    assert_redirected_to menu_page_path(assigns(:menu_page))
  end

  test "should show menu_page" do
    get :show, :id => @menu_page.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @menu_page.to_param
    assert_response :success
  end

  test "should update menu_page" do
    put :update, :id => @menu_page.to_param, :menu_page => @menu_page.attributes
    assert_redirected_to menu_page_path(assigns(:menu_page))
  end

  test "should destroy menu_page" do
    assert_difference('MenuPage.count', -1) do
      delete :destroy, :id => @menu_page.to_param
    end

    assert_redirected_to menu_pages_path
  end
end
