require 'test_helper'

class Result1sControllerTest < ActionController::TestCase
  setup do
    @result1 = result1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:result1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create result1" do
    assert_difference('Result1.count') do
      post :create, result1: @result1.attributes
    end

    assert_redirected_to result1_path(assigns(:result1))
  end

  test "should show result1" do
    get :show, id: @result1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @result1
    assert_response :success
  end

  test "should update result1" do
    put :update, id: @result1, result1: @result1.attributes
    assert_redirected_to result1_path(assigns(:result1))
  end

  test "should destroy result1" do
    assert_difference('Result1.count', -1) do
      delete :destroy, id: @result1
    end

    assert_redirected_to result1s_path
  end
end
