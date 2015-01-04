require 'test_helper'

class UsuariolivrosControllerTest < ActionController::TestCase
  setup do
    @usuariolivro = usuariolivros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuariolivros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuariolivro" do
    assert_difference('Usuariolivro.count') do
      post :create, usuariolivro: { comentario: @usuariolivro.comentario, id_usuario: @usuariolivro.id_usuario, isbn: @usuariolivro.isbn }
    end

    assert_redirected_to usuariolivro_path(assigns(:usuariolivro))
  end

  test "should show usuariolivro" do
    get :show, id: @usuariolivro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuariolivro
    assert_response :success
  end

  test "should update usuariolivro" do
    put :update, id: @usuariolivro, usuariolivro: { comentario: @usuariolivro.comentario, id_usuario: @usuariolivro.id_usuario, isbn: @usuariolivro.isbn }
    assert_redirected_to usuariolivro_path(assigns(:usuariolivro))
  end

  test "should destroy usuariolivro" do
    assert_difference('Usuariolivro.count', -1) do
      delete :destroy, id: @usuariolivro
    end

    assert_redirected_to usuariolivros_path
  end
end
