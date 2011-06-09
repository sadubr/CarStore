require 'test_helper'

class StorecarsControllerTest < ActionController::TestCase
  setup do
    @storecar = storecars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storecars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storecar" do
    assert_difference('Storecar.count') do
      post :create, :storecar => @storecar.attributes
    end

    assert_redirected_to storecar_path(assigns(:storecar))
  end

  test "should show storecar" do
    get :show, :id => @storecar.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @storecar.to_param
    assert_response :success
  end

  test "should update storecar" do
    put :update, :id => @storecar.to_param, :storecar => @storecar.attributes
    assert_redirected_to storecar_path(assigns(:storecar))
  end

  test "should destroy storecar" do
    assert_difference('Storecar.count', -1) do
      delete :destroy, :id => @storecar.to_param
    end

    assert_redirected_to storecars_path
  end
end
