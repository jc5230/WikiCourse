require "test_helper"

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get main_page" do
    get courses_main_page_url
    assert_response :success
  end

  test "should get detail_page" do
    get courses_detail_page_url
    assert_response :success
  end
end
