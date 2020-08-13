require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get ranking" do
    get users_ranking_url
    assert_response :success
  end

end
