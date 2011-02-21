require 'test_helper'

class MenuSectionsControllerTest < ActionController::TestCase
  setup do
    @menu_section = menu_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_section" do
    assert_difference('MenuSection.count') do
      post :create, :menu_section => @menu_section.attributes
    end

    assert_redirected_to menu_section_path(assigns(:menu_section))
  end

  test "should show menu_section" do
    get :show, :id => @menu_section.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @menu_section.to_param
    assert_response :success
  end

  test "should update menu_section" do
    put :update, :id => @menu_section.to_param, :menu_section => @menu_section.attributes
    assert_redirected_to menu_section_path(assigns(:menu_section))
  end

  test "should destroy menu_section" do
    assert_difference('MenuSection.count', -1) do
      delete :destroy, :id => @menu_section.to_param
    end

    assert_redirected_to menu_sections_path
  end
end
