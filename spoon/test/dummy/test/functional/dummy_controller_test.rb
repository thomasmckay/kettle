require 'test_helper'

class DummyControllerTest < ActionController::TestCase
  test "should get hellow" do
    get :hellow
    assert_response :success
  end

end
