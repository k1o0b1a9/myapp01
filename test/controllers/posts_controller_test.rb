require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "My App"
  end
  
  test "should get index" do
    get index_path
    assert_response :success
    assert_select "title", "Post | #{@base_title}"
  end
  
end
