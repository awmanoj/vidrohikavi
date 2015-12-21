require 'test_helper'

class TributesControllerTest < ActionController::TestCase
  setup do
    @tribute = tributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tribute" do
    assert_difference('Tribute.count') do
      post :create, tribute: { title: @tribute.title, url: @tribute.url }
    end

    assert_redirected_to tribute_path(assigns(:tribute))
  end

  test "should show tribute" do
    get :show, id: @tribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tribute
    assert_response :success
  end

  test "should update tribute" do
    patch :update, id: @tribute, tribute: { title: @tribute.title, url: @tribute.url }
    assert_redirected_to tribute_path(assigns(:tribute))
  end

  test "should destroy tribute" do
    assert_difference('Tribute.count', -1) do
      delete :destroy, id: @tribute
    end

    assert_redirected_to tributes_path
  end
end
