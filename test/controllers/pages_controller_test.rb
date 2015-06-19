require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get setname" do
    get :setname
    assert_response :success
  end

end
