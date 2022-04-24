require "test_helper"

class ServiceworkerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get serviceworker_index_url
    assert_response :success
  end
end
