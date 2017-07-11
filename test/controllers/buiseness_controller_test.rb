require 'test_helper'

class BuisenessControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buiseness_index_url
    assert_response :success
  end

end
