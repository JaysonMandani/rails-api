require 'test_helper'

class ShipmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get shipments_create_url
    assert_response :success
  end

end
