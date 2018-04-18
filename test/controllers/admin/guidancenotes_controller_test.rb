require 'test_helper'

class Admin::GuidancenotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_guidancenotes_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_guidancenotes_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_guidancenotes_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_guidancenotes_update_url
    assert_response :success
  end

  test "should get create" do
    get admin_guidancenotes_create_url
    assert_response :success
  end

  test "should get new" do
    get admin_guidancenotes_new_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_guidancenotes_destroy_url
    assert_response :success
  end

end
