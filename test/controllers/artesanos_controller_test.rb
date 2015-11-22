require 'test_helper'

class ArtesanosControllerTest < ActionController::TestCase
  setup do
    @artesano = artesanos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artesanos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artesano" do
    assert_difference('Artesano.count') do
      post :create, artesano: { banner1: @artesano.banner1, banner2: @artesano.banner2, banner3: @artesano.banner3, banner4: @artesano.banner4, desc: @artesano.desc, exp: @artesano.exp, foto: @artesano.foto, logo: @artesano.logo, nombre: @artesano.nombre, region: @artesano.region, t_artesania: @artesano.t_artesania, t_taller: @artesano.t_taller, tipo: @artesano.tipo }
    end

    assert_redirected_to artesano_path(assigns(:artesano))
  end

  test "should show artesano" do
    get :show, id: @artesano
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artesano
    assert_response :success
  end

  test "should update artesano" do
    patch :update, id: @artesano, artesano: { banner1: @artesano.banner1, banner2: @artesano.banner2, banner3: @artesano.banner3, banner4: @artesano.banner4, desc: @artesano.desc, exp: @artesano.exp, foto: @artesano.foto, logo: @artesano.logo, nombre: @artesano.nombre, region: @artesano.region, t_artesania: @artesano.t_artesania, t_taller: @artesano.t_taller, tipo: @artesano.tipo }
    assert_redirected_to artesano_path(assigns(:artesano))
  end

  test "should destroy artesano" do
    assert_difference('Artesano.count', -1) do
      delete :destroy, id: @artesano
    end

    assert_redirected_to artesanos_path
  end
end
