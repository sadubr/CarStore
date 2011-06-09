require 'test_helper'

class GaragedatasControllerTest < ActionController::TestCase
  setup do
    @garagedata = garagedatas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garagedatas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garagedata" do
    assert_difference('Garagedata.count') do
      post :create, :garagedata => @garagedata.attributes
    end

    assert_redirected_to garagedata_path(assigns(:garagedata))
  end

  test "should show garagedata" do
    get :show, :id => @garagedata.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @garagedata.to_param
    assert_response :success
  end

  test "should update garagedata" do
    put :update, :id => @garagedata.to_param, :garagedata => @garagedata.attributes
    assert_redirected_to garagedata_path(assigns(:garagedata))
  end

  test "should destroy garagedata" do
    assert_difference('Garagedata.count', -1) do
      delete :destroy, :id => @garagedata.to_param
    end

    assert_redirected_to garagedatas_path
  end
end
