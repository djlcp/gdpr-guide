require 'test_helper'

class JerseylawControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jerseylaw_index_url
    assert_response :success
  end

  test "should get show" do
    get jerseylaw_show_url
    assert_response :success
  end

end
