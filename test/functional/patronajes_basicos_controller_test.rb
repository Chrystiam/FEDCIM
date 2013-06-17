require 'test_helper'

class PatronajesBasicosControllerTest < ActionController::TestCase
  setup do
    @patronaje_basico = patronajes_basicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patronajes_basicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patronaje_basico" do
    assert_difference('PatronajeBasico.count') do
      post :create, patronaje_basico: { pieza: @patronaje_basico.pieza, precio: @patronaje_basico.precio }
    end

    assert_redirected_to patronaje_basico_path(assigns(:patronaje_basico))
  end

  test "should show patronaje_basico" do
    get :show, id: @patronaje_basico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patronaje_basico
    assert_response :success
  end

  test "should update patronaje_basico" do
    put :update, id: @patronaje_basico, patronaje_basico: { pieza: @patronaje_basico.pieza, precio: @patronaje_basico.precio }
    assert_redirected_to patronaje_basico_path(assigns(:patronaje_basico))
  end

  test "should destroy patronaje_basico" do
    assert_difference('PatronajeBasico.count', -1) do
      delete :destroy, id: @patronaje_basico
    end

    assert_redirected_to patronajes_basicos_path
  end
end
