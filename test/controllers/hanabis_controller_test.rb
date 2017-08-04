require 'test_helper'

class HanabisControllerTest < ActionController::TestCase
  setup do
    @hanabi = hanabis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hanabis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hanabi" do
    assert_difference('Hanabi.count') do
      post :create, hanabi: { data: @hanabi.data, name: @hanabi.name }
    end

    assert_redirected_to hanabi_path(assigns(:hanabi))
  end

  test "should show hanabi" do
    get :show, id: @hanabi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hanabi
    assert_response :success
  end

  test "should update hanabi" do
    patch :update, id: @hanabi, hanabi: { data: @hanabi.data, name: @hanabi.name }
    assert_redirected_to hanabi_path(assigns(:hanabi))
  end

  test "should destroy hanabi" do
    assert_difference('Hanabi.count', -1) do
      delete :destroy, id: @hanabi
    end

    assert_redirected_to hanabis_path
  end
end
