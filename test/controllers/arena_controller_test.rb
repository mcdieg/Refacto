require 'test_helper'

class ArenaControllerTest < ActionDispatch::IntegrationTest
  test "should get arena page" do
  get '/' 
  assert_response :success
  assert_select "title", "Captain Challenge"
  end
end
