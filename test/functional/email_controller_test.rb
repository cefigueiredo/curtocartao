require 'test_helper'

class EmailControllerTest < ActionController::TestCase
  test "should get personalizado" do
    get :personalizado
    assert_response :success
  end

  test "should get geral" do
    get :geral
    assert_response :success
  end

end
