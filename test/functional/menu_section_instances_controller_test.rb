require 'test_helper'

class MenuSectionInstancesControllerTest < ActionController::TestCase
  setup do
    @menu_section_instance = menu_section_instances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_section_instances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_section_instance" do
    assert_difference('MenuSectionInstance.count') do
      post :create, :menu_section_instance => @menu_section_instance.attributes
    end

    assert_redirected_to menu_section_instance_path(assigns(:menu_section_instance))
  end

  test "should show menu_section_instance" do
    get :show, :id => @menu_section_instance.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @menu_section_instance.to_param
    assert_response :success
  end

  test "should update menu_section_instance" do
    put :update, :id => @menu_section_instance.to_param, :menu_section_instance => @menu_section_instance.attributes
    assert_redirected_to menu_section_instance_path(assigns(:menu_section_instance))
  end

  test "should destroy menu_section_instance" do
    assert_difference('MenuSectionInstance.count', -1) do
      delete :destroy, :id => @menu_section_instance.to_param
    end

    assert_redirected_to menu_section_instances_path
  end
end
