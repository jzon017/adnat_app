require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get organizations" do
    get pages_organizations_url
    assert_response :success
  end

  test "should get shifts" do
    get pages_shifts_url
    assert_response :success
  end

end
