require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get billboard" do
    get static_pages_billboard_url
    assert_response :success
  end

end
