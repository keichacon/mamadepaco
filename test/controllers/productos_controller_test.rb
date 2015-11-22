require 'test_helper'

class ProductosControllerTest < ActionController::TestCase
  setup do
    @producto = productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto" do
    assert_difference('Producto.count') do
      post :create, producto: { area: @producto.area, artesano: @producto.artesano, artesano_id: @producto.artesano_id, color: @producto.color, desc: @producto.desc, foto1: @producto.foto1, foto2: @producto.foto2, foto3: @producto.foto3, material: @producto.material, nombre: @producto.nombre, precio: @producto.precio, tipo: @producto.tipo }
    end

    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should show producto" do
    get :show, id: @producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto
    assert_response :success
  end

  test "should update producto" do
    patch :update, id: @producto, producto: { area: @producto.area, artesano: @producto.artesano, artesano_id: @producto.artesano_id, color: @producto.color, desc: @producto.desc, foto1: @producto.foto1, foto2: @producto.foto2, foto3: @producto.foto3, material: @producto.material, nombre: @producto.nombre, precio: @producto.precio, tipo: @producto.tipo }
    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should destroy producto" do
    assert_difference('Producto.count', -1) do
      delete :destroy, id: @producto
    end

    assert_redirected_to productos_path
  end
end
