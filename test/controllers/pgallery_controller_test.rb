require 'test_helper'

class PgalleryControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get pgallery_show_url
    assert_response :success
  end

  test "should get index" do
    get pgallery_index_url
    assert_response :success
  end

end
