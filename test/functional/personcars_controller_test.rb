require 'test_helper'

class PersoncarsControllerTest < ActionController::TestCase
  setup do
    @personcar = personcars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personcars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personcar" do
    assert_difference('Personcar.count') do
      post :create, :personcar => @personcar.attributes
    end

    assert_redirected_to personcar_path(assigns(:personcar))
  end

  test "should show personcar" do
    get :show, :id => @personcar.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @personcar.to_param
    assert_response :success
  end

  test "should update personcar" do
    put :update, :id => @personcar.to_param, :personcar => @personcar.attributes
    assert_redirected_to personcar_path(assigns(:personcar))
  end

  test "should destroy personcar" do
    assert_difference('Personcar.count', -1) do
      delete :destroy, :id => @personcar.to_param
    end

    assert_redirected_to personcars_path
  end
end
