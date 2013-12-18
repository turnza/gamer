require 'test_helper'

class CarttsControllerTest < ActionController::TestCase
  setup do
    @cartt = cartts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cartts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartt" do
    assert_difference('Cartt.count') do
      post :create, cartt: @cartt.attributes
    end

    assert_redirected_to cartt_path(assigns(:cartt))
  end

  test "should show cartt" do
    get :show, id: @cartt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartt
    assert_response :success
  end

  test "should update cartt" do
    put :update, id: @cartt, cartt: @cartt.attributes
    assert_redirected_to cartt_path(assigns(:cartt))
  end

  test "should destroy cartt" do
    assert_difference('Cartt.count', -1) do
      delete :destroy, id: @cartt
    end

    assert_redirected_to cartts_path
  end
end
