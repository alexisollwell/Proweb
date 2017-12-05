require 'test_helper'

class ActividadInstructorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actividad_instructor = actividad_instructors(:one)
  end

  test "should get index" do
    get actividad_instructors_url
    assert_response :success
  end

  test "should get new" do
    get new_actividad_instructor_url
    assert_response :success
  end

  test "should create actividad_instructor" do
    assert_difference('ActividadInstructor.count') do
      post actividad_instructors_url, params: { actividad_instructor: { actividadExtra_id: @actividad_instructor.actividadExtra_id, horario: @actividad_instructor.horario, instructor_id: @actividad_instructor.instructor_id, lugar: @actividad_instructor.lugar } }
    end

    assert_redirected_to actividad_instructor_url(ActividadInstructor.last)
  end

  test "should show actividad_instructor" do
    get actividad_instructor_url(@actividad_instructor)
    assert_response :success
  end

  test "should get edit" do
    get edit_actividad_instructor_url(@actividad_instructor)
    assert_response :success
  end

  test "should update actividad_instructor" do
    patch actividad_instructor_url(@actividad_instructor), params: { actividad_instructor: { actividadExtra_id: @actividad_instructor.actividadExtra_id, horario: @actividad_instructor.horario, instructor_id: @actividad_instructor.instructor_id, lugar: @actividad_instructor.lugar } }
    assert_redirected_to actividad_instructor_url(@actividad_instructor)
  end

  test "should destroy actividad_instructor" do
    assert_difference('ActividadInstructor.count', -1) do
      delete actividad_instructor_url(@actividad_instructor)
    end

    assert_redirected_to actividad_instructors_url
  end
end
