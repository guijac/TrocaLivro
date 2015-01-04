require 'test_helper'

class TrocasControllerTest < ActionController::TestCase
  setup do
    @troca = trocas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trocas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create troca" do
    assert_difference('Troca.count') do
      post :create, troca: { comentario: @troca.comentario, status: @troca.status, usuariolivro_id1: @troca.usuariolivro_id1, usuariolivro_id2: @troca.usuariolivro_id2 }
    end

    assert_redirected_to troca_path(assigns(:troca))
  end

  test "should show troca" do
    get :show, id: @troca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @troca
    assert_response :success
  end

  test "should update troca" do
    put :update, id: @troca, troca: { comentario: @troca.comentario, status: @troca.status, usuariolivro_id1: @troca.usuariolivro_id1, usuariolivro_id2: @troca.usuariolivro_id2 }
    assert_redirected_to troca_path(assigns(:troca))
  end

  test "should destroy troca" do
    assert_difference('Troca.count', -1) do
      delete :destroy, id: @troca
    end

    assert_redirected_to trocas_path
  end
end
