require 'test_helper'

class Student::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get student_homes_top_url
    assert_response :success
  end

  test "should get about" do
    get student_homes_about_url
    assert_response :success
  end

end
