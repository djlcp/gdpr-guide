require 'test_helper'

class GuidancenotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guidancenotes_index_url
    assert_response :success
  end

  test "should get show" do
    get guidancenotes_show_url
    assert_response :success
  end

end
