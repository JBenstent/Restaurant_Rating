require 'test_helper'

class RestaurantControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get display_all" do
    get :display_all
    assert_response :success
  end

end
