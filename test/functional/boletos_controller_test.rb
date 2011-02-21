require 'test_helper'

class BoletosControllerTest < ActionController::TestCase
  setup do
    @boleto = boletos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boletos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boleto" do
    assert_difference('Boleto.count') do
      post :create, :boleto => @boleto.attributes
    end

    assert_redirected_to boleto_path(assigns(:boleto))
  end

  test "should show boleto" do
    get :show, :id => @boleto.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @boleto.to_param
    assert_response :success
  end

  test "should update boleto" do
    put :update, :id => @boleto.to_param, :boleto => @boleto.attributes
    assert_redirected_to boleto_path(assigns(:boleto))
  end

  test "should destroy boleto" do
    assert_difference('Boleto.count', -1) do
      delete :destroy, :id => @boleto.to_param
    end

    assert_redirected_to boletos_path
  end
end
