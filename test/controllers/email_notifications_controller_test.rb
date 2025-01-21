require "test_helper"

class EmailNotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get email_notifications_create_url
    assert_response :success
  end

  test "should get index" do
    get email_notifications_index_url
    assert_response :success
  end
end
