require 'test_helper'

class WordbooksControllerTest < ActionController::TestCase
  setup do
    @wordbook = wordbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wordbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wordbook" do
    assert_difference('Wordbook.count') do
      post :create, wordbook: { english: @wordbook.english, japanese: @wordbook.japanese }
    end

    assert_redirected_to wordbook_path(assigns(:wordbook))
  end

  test "should show wordbook" do
    get :show, id: @wordbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wordbook
    assert_response :success
  end

  test "should update wordbook" do
    patch :update, id: @wordbook, wordbook: { english: @wordbook.english, japanese: @wordbook.japanese }
    assert_redirected_to wordbook_path(assigns(:wordbook))
  end

  test "should destroy wordbook" do
    assert_difference('Wordbook.count', -1) do
      delete :destroy, id: @wordbook
    end

    assert_redirected_to wordbooks_path
  end
end
