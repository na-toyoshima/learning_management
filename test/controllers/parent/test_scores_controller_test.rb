require 'test_helper'

class Parent::TestScoresControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get parent_test_scores_show_url
    assert_response :success
  end

end
