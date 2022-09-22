require "test_helper"

class DbExportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get db_export_index_url
    assert_response :success
  end
end
