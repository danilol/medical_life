require 'test_helper'

class NotepadsControllerTest < ActionController::TestCase
  setup do
    @notepad = notepads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notepads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notepad" do
    assert_difference('Notepad.count') do
      post :create, notepad: { content_data: @notepad.content_data, name: @notepad.name, user_id: @notepad.user_id }
    end

    assert_redirected_to notepad_path(assigns(:notepad))
  end

  test "should show notepad" do
    get :show, id: @notepad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notepad
    assert_response :success
  end

  test "should update notepad" do
    patch :update, id: @notepad, notepad: { content_data: @notepad.content_data, name: @notepad.name, user_id: @notepad.user_id }
    assert_redirected_to notepad_path(assigns(:notepad))
  end

  test "should destroy notepad" do
    assert_difference('Notepad.count', -1) do
      delete :destroy, id: @notepad
    end

    assert_redirected_to notepads_path
  end
end
