require 'test_helper'

class FormControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get form_create_url
    assert_response :success
  end

  test "should get read" do
    get form_read_url
    assert_response :success
  end

  test "should get edit" do
    get form_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get form_destroy_url
    assert_response :success
  end

end
