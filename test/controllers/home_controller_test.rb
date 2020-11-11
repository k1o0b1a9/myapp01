require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "My App"
  end
  
  test "should get top" do
    get root_path
    assert_response :success
    assert_select "title", "Top | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
    test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
