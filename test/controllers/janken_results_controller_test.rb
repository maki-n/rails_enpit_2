require 'test_helper'

class JankenResultsControllerTest < ActionController::TestCase
  setup do
    @janken_result = janken_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:janken_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create janken_result" do
    assert_difference('JankenResult.count') do
      post :create, janken_result: { result: @janken_result.result, your_hand: @janken_result.your_hand }
    end

    assert_redirected_to janken_result_path(assigns(:janken_result))
  end

  test "should show janken_result" do
    get :show, id: @janken_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @janken_result
    assert_response :success
  end

  test "should update janken_result" do
    patch :update, id: @janken_result, janken_result: { result: @janken_result.result, your_hand: @janken_result.your_hand }
    assert_redirected_to janken_result_path(assigns(:janken_result))
  end

  test "should destroy janken_result" do
    assert_difference('JankenResult.count', -1) do
      delete :destroy, id: @janken_result
    end

    assert_redirected_to janken_results_path
  end
end
