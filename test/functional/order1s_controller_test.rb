require 'test_helper'

class Order1sControllerTest < ActionController::TestCase
  setup do
    @order1 = order1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order1" do
    assert_difference('Order1.count') do
      post :create, order1: @order1.attributes
    end

    assert_redirected_to order1_path(assigns(:order1))
  end

  test "should show order1" do
    get :show, id: @order1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order1
    assert_response :success
  end

  test "should update order1" do
    put :update, id: @order1, order1: @order1.attributes
    assert_redirected_to order1_path(assigns(:order1))
  end

  test "should destroy order1" do
    assert_difference('Order1.count', -1) do
      delete :destroy, id: @order1
    end

    assert_redirected_to order1s_path
  end
end
