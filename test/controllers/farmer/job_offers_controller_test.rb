require "test_helper"

class Farmer::JobOffersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get farmer_job_offers_new_url
    assert_response :success
  end

  test "should get index" do
    get farmer_job_offers_index_url
    assert_response :success
  end

  test "should get show" do
    get farmer_job_offers_show_url
    assert_response :success
  end

  test "should get edit" do
    get farmer_job_offers_edit_url
    assert_response :success
  end
end
