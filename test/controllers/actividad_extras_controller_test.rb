require 'test_helper'

class ActividadExtrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actividad_extra = actividad_extras(:one)
  end

  test "should get index" do
    get actividad_extras_url
    assert_response :success
  end

  test "should get new" do
    get new_actividad_extra_url
    assert_response :success
  end

  test "should create actividad_extra" do
    assert_difference('ActividadExtra.count') do
      post actividad_extras_url, params: { actividad_extra: { descripcion: @actividad_extra.descripcion, nombre: @actividad_extra.nombre } }
    end

    assert_redirected_to actividad_extra_url(ActividadExtra.last)
  end

  test "should show actividad_extra" do
    get actividad_extra_url(@actividad_extra)
    assert_response :success
  end

  test "should get edit" do
    get edit_actividad_extra_url(@actividad_extra)
    assert_response :success
  end

  test "should update actividad_extra" do
    patch actividad_extra_url(@actividad_extra), params: { actividad_extra: { descripcion: @actividad_extra.descripcion, nombre: @actividad_extra.nombre } }
    assert_redirected_to actividad_extra_url(@actividad_extra)
  end

  test "should destroy actividad_extra" do
    assert_difference('ActividadExtra.count', -1) do
      delete actividad_extra_url(@actividad_extra)
    end

    assert_redirected_to actividad_extras_url
  end
end
