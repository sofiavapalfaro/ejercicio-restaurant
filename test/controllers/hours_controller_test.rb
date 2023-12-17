require "test_helper"

class HoursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hours_index_url
    assert_response :success
  end

  test "should get show" do
    get hours_show_url
    assert_response :success
  end

  test "should get new" do
    get hours_new_url
    assert_response :success
  end

  test "should get create" do
    get hours_create_url
    assert_response :success
  end

  test "should get edit" do
    get hours_edit_url
    assert_response :success
  end

  test "should get update" do
    get hours_update_url
    assert_response :success
  end

  test "should get destroy" do
    get hours_destroy_url
    assert_response :success
  end
end
