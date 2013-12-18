require 'test_helper'

class Admin1sControllerTest < ActionController::TestCase
  setup do
    @admin1 = admin1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin1" do
    assert_difference('Admin1.count') do
      post :create, admin1: @admin1.attributes
    end

    assert_redirected_to admin1_path(assigns(:admin1))
  end

  test "should show admin1" do
    get :show, id: @admin1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin1
    assert_response :success
  end

  test "should update admin1" do
    put :update, id: @admin1, admin1: @admin1.attributes
    assert_redirected_to admin1_path(assigns(:admin1))
  end

  test "should destroy admin1" do
    assert_difference('Admin1.count', -1) do
      delete :destroy, id: @admin1
    end

    assert_redirected_to admin1s_path
  end
end
