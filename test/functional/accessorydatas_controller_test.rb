require 'test_helper'

class AccessorydatasControllerTest < ActionController::TestCase
  setup do
    @accessorydata = accessorydatas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accessorydatas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accessorydata" do
    assert_difference('Accessorydata.count') do
      post :create, :accessorydata => @accessorydata.attributes
    end

    assert_redirected_to accessorydata_path(assigns(:accessorydata))
  end

  test "should show accessorydata" do
    get :show, :id => @accessorydata.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @accessorydata.to_param
    assert_response :success
  end

  test "should update accessorydata" do
    put :update, :id => @accessorydata.to_param, :accessorydata => @accessorydata.attributes
    assert_redirected_to accessorydata_path(assigns(:accessorydata))
  end

  test "should destroy accessorydata" do
    assert_difference('Accessorydata.count', -1) do
      delete :destroy, :id => @accessorydata.to_param
    end

    assert_redirected_to accessorydatas_path
  end
end
