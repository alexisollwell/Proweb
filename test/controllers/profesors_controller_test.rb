require 'test_helper'

class ProfesorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profesors_index_url
    assert_response :success
  end

end
