require 'test_helper'

class DetallesControllerTest < ActionController::TestCase
  setup do
    @detalle = detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle" do
    assert_difference('Detalle.count') do
      post :create, detalle: { pieza: @detalle.pieza, precio: @detalle.precio }
    end

    assert_redirected_to detalle_path(assigns(:detalle))
  end

  test "should show detalle" do
    get :show, id: @detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle
    assert_response :success
  end

  test "should update detalle" do
    put :update, id: @detalle, detalle: { pieza: @detalle.pieza, precio: @detalle.precio }
    assert_redirected_to detalle_path(assigns(:detalle))
  end

  test "should destroy detalle" do
    assert_difference('Detalle.count', -1) do
      delete :destroy, id: @detalle
    end

    assert_redirected_to detalles_path
  end
end
