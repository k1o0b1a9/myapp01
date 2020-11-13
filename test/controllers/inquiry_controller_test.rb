require 'test_helper'

class InquiryControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "My App"
  end
  test "should get index" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end
