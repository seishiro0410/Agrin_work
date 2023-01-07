require "test_helper"

class Customer::FarmerReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_farmer_reviews_index_url
    assert_response :success
  end
end
