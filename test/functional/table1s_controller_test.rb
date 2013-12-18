require 'test_helper'

class Table1sControllerTest < ActionController::TestCase
  setup do
    @table1 = table1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:table1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create table1" do
    assert_difference('Table1.count') do
      post :create, table1: @table1.attributes
    end

    assert_redirected_to table1_path(assigns(:table1))
  end

  test "should show table1" do
    get :show, id: @table1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @table1
    assert_response :success
  end

  test "should update table1" do
    put :update, id: @table1, table1: @table1.attributes
    assert_redirected_to table1_path(assigns(:table1))
  end

  test "should destroy table1" do
    assert_difference('Table1.count', -1) do
      delete :destroy, id: @table1
    end

    assert_redirected_to table1s_path
  end
end
