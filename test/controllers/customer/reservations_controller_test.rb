require "test_helper"

class Customer::ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_reservations_index_url
    assert_response :success
  end

  test "should get show" do
    get customer_reservations_show_url
    assert_response :success
  end

  test "should get thanx" do
    get customer_reservations_thanx_url
    assert_response :success
  end

  test "should get information" do
    get customer_reservations_information_url
    assert_response :success
  end
end
