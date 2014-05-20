require 'test_helper'

class ShortcutsControllerTest < ActionController::TestCase
  setup do
    @shortcut = shortcuts(:one)
  end

  test "should get index" do
    get :index, format: :json
    assert_response :success
    assert_not_nil assigns(:shortcuts)
  end

  test "should get new" do
    get :new, format: :json
    assert_response :success
  end

  test "should create shortcut" do
    assert_difference('Shortcut.count') do
      post :create, shortcut: { key: @shortcut.key, title: @shortcut.title }, format: :json
    end
  end

  test "should show shortcut" do
    get :show, id: @shortcut, format: :json
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shortcut, format: :json
    assert_response :success
  end

  test "should update shortcut" do
    patch :update, id: @shortcut, shortcut: { key: @shortcut.key, title: @shortcut.title }, format: :json
    assert_response :success
  end

  test "should destroy shortcut" do
    assert_difference('Shortcut.count', -1) do
      delete :destroy, id: @shortcut, format: :json
    end
  end
end
