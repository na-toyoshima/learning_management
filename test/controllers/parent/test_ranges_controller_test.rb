require 'test_helper'

class Parent::TestRangesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get parent_test_ranges_show_url
    assert_response :success
  end

end
