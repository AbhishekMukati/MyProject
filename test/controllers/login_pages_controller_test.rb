require "test_helper"

class LoginPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get login_pages_index_url
    assert_response :success
  end
end
