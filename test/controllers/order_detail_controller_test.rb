require "test_helper"

class OrderDetailControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get order_detail_index_url
    assert_response :success
  end
end
