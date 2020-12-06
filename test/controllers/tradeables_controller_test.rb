require 'test_helper'

class TradeablesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tradeables_index_url
    assert_response :success
  end

  test "should get show" do
    get tradeables_show_url
    assert_response :success
  end

end
