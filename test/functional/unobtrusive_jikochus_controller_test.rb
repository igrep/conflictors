require 'test_helper'

class UnobtrusiveJikochusControllerTest < ActionController::TestCase
  setup do
    @unobtrusive_jikochu = unobtrusive_jikochus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unobtrusive_jikochus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unobtrusive_jikochu" do
    assert_difference('UnobtrusiveJikochu.count') do
      post :create, unobtrusive_jikochu: { name: @unobtrusive_jikochu.name }
    end

    assert_redirected_to unobtrusive_jikochu_path(assigns(:unobtrusive_jikochu))
  end

  test "should show unobtrusive_jikochu" do
    get :show, id: @unobtrusive_jikochu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unobtrusive_jikochu
    assert_response :success
  end

  test "should update unobtrusive_jikochu" do
    put :update, id: @unobtrusive_jikochu, unobtrusive_jikochu: { name: @unobtrusive_jikochu.name }
    assert_redirected_to unobtrusive_jikochu_path(assigns(:unobtrusive_jikochu))
  end

  test "should destroy unobtrusive_jikochu" do
    assert_difference('UnobtrusiveJikochu.count', -1) do
      delete :destroy, id: @unobtrusive_jikochu
    end

    assert_redirected_to unobtrusive_jikochus_path
  end
end
