require 'test_helper'

class JikochusControllerTest < ActionController::TestCase
  setup do
    @jikochu = jikochus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jikochus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jikochu" do
    assert_difference('Jikochu.count') do
      post :create, jikochu: { fought_at: @jikochu.fought_at, name: @jikochu.name }
    end

    assert_redirected_to jikochu_path(assigns(:jikochu))
  end

  test "should show jikochu" do
    get :show, id: @jikochu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jikochu
    assert_response :success
  end

  test "should update jikochu" do
    put :update, id: @jikochu, jikochu: { fought_at: @jikochu.fought_at, name: @jikochu.name }
    assert_redirected_to jikochu_path(assigns(:jikochu))
  end

  test "should destroy jikochu" do
    assert_difference('Jikochu.count', -1) do
      delete :destroy, id: @jikochu
    end

    assert_redirected_to jikochus_path
  end
end
