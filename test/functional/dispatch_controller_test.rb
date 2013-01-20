require 'test_helper'

class DispatchControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
