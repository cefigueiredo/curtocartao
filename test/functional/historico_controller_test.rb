require 'test_helper'

class HistoricoControllerTest < ActionController::TestCase
  test "should get detalhes" do
    get :detalhes
    assert_response :success
  end

end
