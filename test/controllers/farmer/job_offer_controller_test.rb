require "test_helper"

class Farmer::JobOfferControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get farmer_job_offer_new_url
    assert_response :success
  end

  test "should get index" do
    get farmer_job_offer_index_url
    assert_response :success
  end

  test "should get show" do
    get farmer_job_offer_show_url
    assert_response :success
  end

  test "should get edit" do
    get farmer_job_offer_edit_url
    assert_response :success
  end
end
