require 'test_helper'

class Parent::StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get parent_students_show_url
    assert_response :success
  end

end
