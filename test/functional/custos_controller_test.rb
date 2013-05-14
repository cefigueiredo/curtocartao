require 'test_helper'

class CustosControllerTest < ActionController::TestCase
  setup do
    @custo = custos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custo" do
    assert_difference('Custo.count') do
      post :create, custo: @custo.attributes
    end

    assert_redirected_to custo_path(assigns(:custo))
  end

  test "should show custo" do
    get :show, id: @custo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custo.to_param
    assert_response :success
  end

  test "should update custo" do
    put :update, id: @custo.to_param, custo: @custo.attributes
    assert_redirected_to custo_path(assigns(:custo))
  end

  test "should destroy custo" do
    assert_difference('Custo.count', -1) do
      delete :destroy, id: @custo.to_param
    end

    assert_redirected_to custos_path
  end
end
