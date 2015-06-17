require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get eventTop" do
    get :eventTop
    assert_response :success
  end

end
