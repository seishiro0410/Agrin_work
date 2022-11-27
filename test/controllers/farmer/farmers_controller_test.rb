require "test_helper"

class Farmer::FarmersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get farmer_farmers_show_url
    assert_response :success
  end

  test "should get edit" do
    get farmer_farmers_edit_url
    assert_response :success
  end
end
