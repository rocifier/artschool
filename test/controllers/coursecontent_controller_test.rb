require 'test_helper'

class CoursecontentControllerTest < ActionController::TestCase
  test "should get ajax" do
    get :ajax
    assert_response :success
  end

end
