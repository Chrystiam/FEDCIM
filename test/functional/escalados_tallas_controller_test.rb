require 'test_helper'

class EscaladosTallasControllerTest < ActionController::TestCase
  setup do
    @escalado_talla = escalados_tallas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:escalados_tallas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create escalado_talla" do
    assert_difference('EscaladoTalla.count') do
      post :create, escalado_talla: { pieza: @escalado_talla.pieza, precio: @escalado_talla.precio }
    end

    assert_redirected_to escalado_talla_path(assigns(:escalado_talla))
  end

  test "should show escalado_talla" do
    get :show, id: @escalado_talla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @escalado_talla
    assert_response :success
  end

  test "should update escalado_talla" do
    put :update, id: @escalado_talla, escalado_talla: { pieza: @escalado_talla.pieza, precio: @escalado_talla.precio }
    assert_redirected_to escalado_talla_path(assigns(:escalado_talla))
  end

  test "should destroy escalado_talla" do
    assert_difference('EscaladoTalla.count', -1) do
      delete :destroy, id: @escalado_talla
    end

    assert_redirected_to escalados_tallas_path
  end
end
