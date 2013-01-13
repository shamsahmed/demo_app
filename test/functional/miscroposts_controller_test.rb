require 'test_helper'

class MiscropostsControllerTest < ActionController::TestCase
  setup do
    @miscropost = miscroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miscroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miscropost" do
    assert_difference('Miscropost.count') do
      post :create, miscropost: { content: @miscropost.content, user_id: @miscropost.user_id }
    end

    assert_redirected_to miscropost_path(assigns(:miscropost))
  end

  test "should show miscropost" do
    get :show, id: @miscropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miscropost
    assert_response :success
  end

  test "should update miscropost" do
    put :update, id: @miscropost, miscropost: { content: @miscropost.content, user_id: @miscropost.user_id }
    assert_redirected_to miscropost_path(assigns(:miscropost))
  end

  test "should destroy miscropost" do
    assert_difference('Miscropost.count', -1) do
      delete :destroy, id: @miscropost
    end

    assert_redirected_to miscroposts_path
  end
end
