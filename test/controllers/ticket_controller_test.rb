require 'test_helper'

class TicketControllerTest < ActionDispatch::IntegrationTest
  test "should get information" do
    get ticket_information_url
    assert_response :success
  end

end
