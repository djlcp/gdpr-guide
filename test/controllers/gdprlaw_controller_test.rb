require 'test_helper'

class GdprlawControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gdprlaw_index_url
    assert_response :success
  end

  test "should get show" do
    get gdprlaw_show_url
    assert_response :success
  end

end
