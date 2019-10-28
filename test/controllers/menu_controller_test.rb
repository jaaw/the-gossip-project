require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get menu_contact_url
    assert_response :success
  end

end
