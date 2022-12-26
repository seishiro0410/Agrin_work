require "test_helper"

class Farmer::CustomerReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get farmer_customer_reviews_index_url
    assert_response :success
  end
end
