require "test_helper"

class Customer::CustomerReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customer_customer_reviews_new_url
    assert_response :success
  end
end
