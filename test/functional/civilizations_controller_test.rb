require 'test_helper'

class CivilizationsControllerTest < ActionController::TestCase
  setup do
    @civilization = civilizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:civilizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create civilization" do
    assert_difference('Civilization.count') do
      post :create, civilization: { name: @civilization.name, notes: @civilization.notes }
    end

    assert_redirected_to civilization_path(assigns(:civilization))
  end

  test "should show civilization" do
    get :show, id: @civilization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @civilization
    assert_response :success
  end

  test "should update civilization" do
    put :update, id: @civilization, civilization: { name: @civilization.name, notes: @civilization.notes }
    assert_redirected_to civilization_path(assigns(:civilization))
  end

  test "should destroy civilization" do
    assert_difference('Civilization.count', -1) do
      delete :destroy, id: @civilization
    end

    assert_redirected_to civilizations_path
  end
end
