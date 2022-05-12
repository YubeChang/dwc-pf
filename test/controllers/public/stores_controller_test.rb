require "test_helper"

class Public::StoresControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_stores_show_url
    assert_response :success
  end

  test "should get index" do
    get public_stores_index_url
    assert_response :success
  end

  test "should get new" do
    get public_stores_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_stores_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get public_stores_destroy_url
    assert_response :success
  end

  test "should get update" do
    get public_stores_update_url
    assert_response :success
  end

  test "should get create" do
    get public_stores_create_url
    assert_response :success
  end
end
