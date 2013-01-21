require 'test_helper'

class WondersControllerTest < ActionController::TestCase
  setup do
    @wonder = wonders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wonders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wonder" do
    assert_difference('Wonder.count') do
      post :create, wonder: { name: @wonder.name, notes: @wonder.notes }
    end

    assert_redirected_to wonder_path(assigns(:wonder))
  end

  test "should show wonder" do
    get :show, id: @wonder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wonder
    assert_response :success
  end

  test "should update wonder" do
    put :update, id: @wonder, wonder: { name: @wonder.name, notes: @wonder.notes }
    assert_redirected_to wonder_path(assigns(:wonder))
  end

  test "should destroy wonder" do
    assert_difference('Wonder.count', -1) do
      delete :destroy, id: @wonder
    end

    assert_redirected_to wonders_path
  end
end
