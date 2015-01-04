require 'test_helper'

class LivroBancosControllerTest < ActionController::TestCase
  setup do
    @livro_banco = livro_bancos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:livro_bancos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create livro_banco" do
    assert_difference('LivroBanco.count') do
      post :create, livro_banco: { autor: @livro_banco.autor, editora: @livro_banco.editora, isbn: @livro_banco.isbn, titulo: @livro_banco.titulo }
    end

    assert_redirected_to livro_banco_path(assigns(:livro_banco))
  end

  test "should show livro_banco" do
    get :show, id: @livro_banco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @livro_banco
    assert_response :success
  end

  test "should update livro_banco" do
    put :update, id: @livro_banco, livro_banco: { autor: @livro_banco.autor, editora: @livro_banco.editora, isbn: @livro_banco.isbn, titulo: @livro_banco.titulo }
    assert_redirected_to livro_banco_path(assigns(:livro_banco))
  end

  test "should destroy livro_banco" do
    assert_difference('LivroBanco.count', -1) do
      delete :destroy, id: @livro_banco
    end

    assert_redirected_to livro_bancos_path
  end
end
