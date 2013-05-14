require 'test_helper'

class ContribControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get detalhes" do
    get :detalhes
    assert_response :success
  end

  test "should get confirma" do
    get :confirma
    assert_response :success
  end

end
