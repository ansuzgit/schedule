require 'test_helper'

class SchedulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_path
    assert_response :success
  end

  test "should get show" do
    get show_path
    assert_response :success
  end

  test "should get new" do
    get new_path
    assert_response :success
  end

  test "should get edit" do
    get edit_path
    assert_response :success
  end

  test "should get create" do
    get create_path
    assert_response :success
  end

  test "should get update" do
    get pdate_path
    assert_response :success
  end

  test "should get destroy" do
    get destroy_path
    assert_response :success
  end

end
