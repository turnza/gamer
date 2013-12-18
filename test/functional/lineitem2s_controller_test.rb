require 'test_helper'

class Lineitem2sControllerTest < ActionController::TestCase
  setup do
    @lineitem2 = lineitem2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lineitem2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lineitem2" do
    assert_difference('Lineitem2.count') do
      post :create, lineitem2: @lineitem2.attributes
    end

    assert_redirected_to lineitem2_path(assigns(:lineitem2))
  end

  test "should show lineitem2" do
    get :show, id: @lineitem2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lineitem2
    assert_response :success
  end

  test "should update lineitem2" do
    put :update, id: @lineitem2, lineitem2: @lineitem2.attributes
    assert_redirected_to lineitem2_path(assigns(:lineitem2))
  end

  test "should destroy lineitem2" do
    assert_difference('Lineitem2.count', -1) do
      delete :destroy, id: @lineitem2
    end

    assert_redirected_to lineitem2s_path
  end
end
