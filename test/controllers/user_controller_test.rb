require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get userList" do
    get user_userList_url
    assert_response :success
  end

  test "should get addUser" do
    get user_addUser_url
    assert_response :success
  end

  test "should get deleteUser" do
    get user_deleteUser_url
    assert_response :success
  end

  test "should get searchUser" do
    get user_searchUser_url
    assert_response :success
  end

  test "should get editUser" do
    get user_editUser_url
    assert_response :success
  end
end
