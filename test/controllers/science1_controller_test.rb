require 'test_helper'

class Science1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get science1_index_url
    assert_response :success
  end

end
