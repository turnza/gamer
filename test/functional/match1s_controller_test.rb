require 'test_helper'

class Match1sControllerTest < ActionController::TestCase
  setup do
    @match1 = match1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match1" do
    assert_difference('Match1.count') do
      post :create, match1: @match1.attributes
    end

    assert_redirected_to match1_path(assigns(:match1))
  end

  test "should show match1" do
    get :show, id: @match1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match1
    assert_response :success
  end

  test "should update match1" do
    put :update, id: @match1, match1: @match1.attributes
    assert_redirected_to match1_path(assigns(:match1))
  end

  test "should destroy match1" do
    assert_difference('Match1.count', -1) do
      delete :destroy, id: @match1
    end

    assert_redirected_to match1s_path
  end
end
