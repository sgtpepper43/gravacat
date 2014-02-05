require 'test_helper'

class KittensControllerTest < ActionController::TestCase
  test "should get kittens" do
    get :kittens
    assert_response :success
  end

end
