require 'test_helper'

class RatingControllerTest < ActionController::TestCase
  test "should get create_rating" do
    get :create_rating
    assert_response :success
  end

end
