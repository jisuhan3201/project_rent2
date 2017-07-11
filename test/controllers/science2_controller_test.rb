require 'test_helper'

class Science2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get science2_index_url
    assert_response :success
  end

end
