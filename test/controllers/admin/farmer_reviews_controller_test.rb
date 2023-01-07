require "test_helper"

class Admin::FarmerReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_farmer_reviews_index_url
    assert_response :success
  end
end
