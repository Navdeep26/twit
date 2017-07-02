require 'test_helper'

class TwitterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twitter_index_url
    assert_response :success
  end

end
