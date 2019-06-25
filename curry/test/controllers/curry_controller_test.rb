require 'test_helper'

class CurryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get curry_index_url
    assert_response :success
  end

end
