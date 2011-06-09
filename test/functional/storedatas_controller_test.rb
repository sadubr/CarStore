require 'test_helper'

class StoredatasControllerTest < ActionController::TestCase
  setup do
    @storedata = storedatas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storedatas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storedata" do
    assert_difference('Storedata.count') do
      post :create, :storedata => @storedata.attributes
    end

    assert_redirected_to storedata_path(assigns(:storedata))
  end

  test "should show storedata" do
    get :show, :id => @storedata.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @storedata.to_param
    assert_response :success
  end

  test "should update storedata" do
    put :update, :id => @storedata.to_param, :storedata => @storedata.attributes
    assert_redirected_to storedata_path(assigns(:storedata))
  end

  test "should destroy storedata" do
    assert_difference('Storedata.count', -1) do
      delete :destroy, :id => @storedata.to_param
    end

    assert_redirected_to storedatas_path
  end
end
