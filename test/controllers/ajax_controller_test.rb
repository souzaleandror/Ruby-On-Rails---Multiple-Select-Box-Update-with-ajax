require 'test_helper'

class AjaxControllerTest < ActionController::TestCase
  test "should get update_state" do
    get :update_state
    assert_response :success
  end

end
