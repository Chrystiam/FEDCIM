require 'test_helper'

class CotizacionesControllerTest < ActionController::TestCase
  setup do
    @cotizacion = cotizaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cotizaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cotizacion" do
    assert_difference('Cotizacion.count') do
      post :create, cotizacion: { precio_escala: @cotizacion.precio_escala, precio_patro: @cotizacion.precio_patro, total: @cotizacion.total }
    end

    assert_redirected_to cotizacion_path(assigns(:cotizacion))
  end

  test "should show cotizacion" do
    get :show, id: @cotizacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cotizacion
    assert_response :success
  end

  test "should update cotizacion" do
    put :update, id: @cotizacion, cotizacion: { precio_escala: @cotizacion.precio_escala, precio_patro: @cotizacion.precio_patro, total: @cotizacion.total }
    assert_redirected_to cotizacion_path(assigns(:cotizacion))
  end

  test "should destroy cotizacion" do
    assert_difference('Cotizacion.count', -1) do
      delete :destroy, id: @cotizacion
    end

    assert_redirected_to cotizaciones_path
  end
end
