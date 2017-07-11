require 'test_helper'

class NongshimControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nongshim_index_url
    assert_response :success
  end

end
