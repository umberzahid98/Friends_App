require 'test_helper'

class WindowControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get window_index_url
    assert_response :success
  end

end
