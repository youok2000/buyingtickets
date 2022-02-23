require 'test_helper'

class HostControllerTest < ActionDispatch::IntegrationTest
  test "should get login_host_form" do
    get host_login_host_form_url
    assert_response :success
  end

end
