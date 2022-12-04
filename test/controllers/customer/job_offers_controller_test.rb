require "test_helper"

class Customer::JobOffersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_job_offers_index_url
    assert_response :success
  end

  test "should get show" do
    get customer_job_offers_show_url
    assert_response :success
  end
end
