require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get contacts_create_url
    assert_response :success
  end

  test "should get read" do
    get contacts_read_url
    assert_response :success
  end

  test "should get update" do
    get contacts_update_url
    assert_response :success
  end

  test "should get delete" do
    get contacts_delete_url
    assert_response :success
  end
end
