require 'test_helper'

class HomewebControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homeweb_index_url
    assert_response :success
  end

end
