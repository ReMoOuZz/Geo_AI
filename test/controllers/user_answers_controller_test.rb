require "test_helper"

class UserAnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_answers_show_url
    assert_response :success
  end

  test "should get create" do
    get user_answers_create_url
    assert_response :success
  end
end
