require "test_helper"

class CoursePageControllerTest < ActionDispatch::IntegrationTest
  test "should get course_list" do
    get course_page_course_list_url
    assert_response :success
  end
end
