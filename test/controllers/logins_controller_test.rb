require "test_helper"

class LoginsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logins_index_url
    assert_response :success
  end

  test "should get create" do
    get logins_create_url
    assert_response :success
  end

  test "should get read" do
    get logins_read_url
    assert_response :success
  end
end
