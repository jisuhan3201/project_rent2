require 'test_helper'

class LiberalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get liberal_index_url
    assert_response :success
  end

end
