require 'test_helper'

class Parent::DiariesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get parent_diaries_show_url
    assert_response :success
  end

  test "should get index" do
    get parent_diaries_index_url
    assert_response :success
  end

end
