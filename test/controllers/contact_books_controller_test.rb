require "test_helper"

class ContactBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contact_books_index_url
    assert_response :success
  end
end
