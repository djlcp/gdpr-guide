require 'test_helper'

class Admin::JerseylawControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_jerseylaw_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_jerseylaw_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_jerseylaw_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_jerseylaw_update_url
    assert_response :success
  end

  test "should get create" do
    get admin_jerseylaw_create_url
    assert_response :success
  end

  test "should get new" do
    get admin_jerseylaw_new_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_jerseylaw_destroy_url
    assert_response :success
  end

end
