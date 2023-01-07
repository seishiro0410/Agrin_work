require "test_helper"

class Admin::FarmersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_farmers_index_url
    assert_response :success
  end
end
