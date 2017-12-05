require 'test_helper'

class ClaseAlumnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clase_alumno = clase_alumnos(:one)
  end

  test "should get index" do
    get clase_alumnos_url
    assert_response :success
  end

  test "should get new" do
    get new_clase_alumno_url
    assert_response :success
  end

  test "should create clase_alumno" do
    assert_difference('ClaseAlumno.count') do
      post clase_alumnos_url, params: { clase_alumno: { alumno_id: @clase_alumno.alumno_id, clase_id: @clase_alumno.clase_id, comentario: @clase_alumno.comentario } }
    end

    assert_redirected_to clase_alumno_url(ClaseAlumno.last)
  end

  test "should show clase_alumno" do
    get clase_alumno_url(@clase_alumno)
    assert_response :success
  end

  test "should get edit" do
    get edit_clase_alumno_url(@clase_alumno)
    assert_response :success
  end

  test "should update clase_alumno" do
    patch clase_alumno_url(@clase_alumno), params: { clase_alumno: { alumno_id: @clase_alumno.alumno_id, clase_id: @clase_alumno.clase_id, comentario: @clase_alumno.comentario } }
    assert_redirected_to clase_alumno_url(@clase_alumno)
  end

  test "should destroy clase_alumno" do
    assert_difference('ClaseAlumno.count', -1) do
      delete clase_alumno_url(@clase_alumno)
    end

    assert_redirected_to clase_alumnos_url
  end
end
