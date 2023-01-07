require "test_helper"

class Farmer::FarmerReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get farmer_farmer_reviews_new_url
    assert_response :success
  end
end
