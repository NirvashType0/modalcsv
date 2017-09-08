require 'test_helper'

class InvmtolineasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invmtolinea = invmtolineas(:one)
  end

  test "should get index" do
    get invmtolineas_url
    assert_response :success
  end

  test "should get new" do
    get new_invmtolinea_url
    assert_response :success
  end

  test "should create invmtolinea" do
    assert_difference('Invmtolinea.count') do
      post invmtolineas_url, params: { invmtolinea: { codlinea: @invmtolinea.codlinea, feacceso: @invmtolinea.feacceso, nis: @invmtolinea.nis, nombre: @invmtolinea.nombre } }
    end

    assert_redirected_to invmtolinea_url(Invmtolinea.last)
  end

  test "should show invmtolinea" do
    get invmtolinea_url(@invmtolinea)
    assert_response :success
  end

  test "should get edit" do
    get edit_invmtolinea_url(@invmtolinea)
    assert_response :success
  end

  test "should update invmtolinea" do
    patch invmtolinea_url(@invmtolinea), params: { invmtolinea: { codlinea: @invmtolinea.codlinea, feacceso: @invmtolinea.feacceso, nis: @invmtolinea.nis, nombre: @invmtolinea.nombre } }
    assert_redirected_to invmtolinea_url(@invmtolinea)
  end

  test "should destroy invmtolinea" do
    assert_difference('Invmtolinea.count', -1) do
      delete invmtolinea_url(@invmtolinea)
    end

    assert_redirected_to invmtolineas_url
  end
end
