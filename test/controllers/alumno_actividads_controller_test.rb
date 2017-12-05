require 'test_helper'

class AlumnoActividadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alumno_actividad = alumno_actividads(:one)
  end

  test "should get index" do
    get alumno_actividads_url
    assert_response :success
  end

  test "should get new" do
    get new_alumno_actividad_url
    assert_response :success
  end

  test "should create alumno_actividad" do
    assert_difference('AlumnoActividad.count') do
      post alumno_actividads_url, params: { alumno_actividad: { actividadinstructor_id: @alumno_actividad.actividadinstructor_id, alumno_id: @alumno_actividad.alumno_id } }
    end

    assert_redirected_to alumno_actividad_url(AlumnoActividad.last)
  end

  test "should show alumno_actividad" do
    get alumno_actividad_url(@alumno_actividad)
    assert_response :success
  end

  test "should get edit" do
    get edit_alumno_actividad_url(@alumno_actividad)
    assert_response :success
  end

  test "should update alumno_actividad" do
    patch alumno_actividad_url(@alumno_actividad), params: { alumno_actividad: { actividadinstructor_id: @alumno_actividad.actividadinstructor_id, alumno_id: @alumno_actividad.alumno_id } }
    assert_redirected_to alumno_actividad_url(@alumno_actividad)
  end

  test "should destroy alumno_actividad" do
    assert_difference('AlumnoActividad.count', -1) do
      delete alumno_actividad_url(@alumno_actividad)
    end

    assert_redirected_to alumno_actividads_url
  end
end
