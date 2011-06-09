require 'test_helper'

class PersondatasControllerTest < ActionController::TestCase
  setup do
    @persondata = persondatas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:persondatas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persondata" do
    assert_difference('Persondata.count') do
      post :create, :persondata => @persondata.attributes
    end

    assert_redirected_to persondata_path(assigns(:persondata))
  end

  test "should show persondata" do
    get :show, :id => @persondata.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @persondata.to_param
    assert_response :success
  end

  test "should update persondata" do
    put :update, :id => @persondata.to_param, :persondata => @persondata.attributes
    assert_redirected_to persondata_path(assigns(:persondata))
  end

  test "should destroy persondata" do
    assert_difference('Persondata.count', -1) do
      delete :destroy, :id => @persondata.to_param
    end

    assert_redirected_to persondatas_path
  end
end
