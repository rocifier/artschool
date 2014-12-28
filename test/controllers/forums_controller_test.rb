require 'test_helper'

class ForumsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get category" do
    get :category
    assert_response :success
  end

  test "should get forum" do
    get :forum
    assert_response :success
  end

  test "should get topic" do
    get :topic
    assert_response :success
  end

  test "should get post" do
    get :post
    assert_response :success
  end

end
