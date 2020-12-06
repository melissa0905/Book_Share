require 'test_helper'

class TradeableControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tradeable_index_url
    assert_response :success
  end

  test "should get show" do
    get tradeable_show_url
    assert_response :success
  end

end
