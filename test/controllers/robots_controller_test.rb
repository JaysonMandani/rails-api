require 'test_helper'

class RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get extinguish" do
    get robots_extinguish_url
    assert_response :success
  end

  test "should get recycle" do
    get robots_recycle_url
    assert_response :success
  end

end
