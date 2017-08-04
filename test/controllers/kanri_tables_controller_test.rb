require 'test_helper'

class KanriTablesControllerTest < ActionController::TestCase
  setup do
    @kanri_table = kanri_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kanri_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kanri_table" do
    assert_difference('KanriTable.count') do
      post :create, kanri_table: { TEL: @kanri_table.TEL, mail_address: @kanri_table.mail_address, password: @kanri_table.password, user_id: @kanri_table.user_id, user_name: @kanri_table.user_name }
    end

    assert_redirected_to kanri_table_path(assigns(:kanri_table))
  end

  test "should show kanri_table" do
    get :show, id: @kanri_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kanri_table
    assert_response :success
  end

  test "should update kanri_table" do
    patch :update, id: @kanri_table, kanri_table: { TEL: @kanri_table.TEL, mail_address: @kanri_table.mail_address, password: @kanri_table.password, user_id: @kanri_table.user_id, user_name: @kanri_table.user_name }
    assert_redirected_to kanri_table_path(assigns(:kanri_table))
  end

  test "should destroy kanri_table" do
    assert_difference('KanriTable.count', -1) do
      delete :destroy, id: @kanri_table
    end

    assert_redirected_to kanri_tables_path
  end
end
