require 'test_helper'

class InquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contact_path
    assert_response :success
  end

  test "should get confirm" do
    get contact_confirm_path
    assert_response :success
  end

  test "should get thanks" do
    get contact_thanks_path
    assert_response :success
  end

end
