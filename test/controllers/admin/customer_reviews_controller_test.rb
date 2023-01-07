require "test_helper"

class Admin::CustomerReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_customer_reviews_index_url
    assert_response :success
  end
end
