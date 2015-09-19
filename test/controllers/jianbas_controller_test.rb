require 'test_helper'

class JianbasControllerTest < ActionController::TestCase
  setup do
    @jianba = jianbas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jianbas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jianba" do
    assert_difference('Jianba.count') do
      post :create, jianba: { author: @jianba.author, date: @jianba.date, link: @jianba.link, title: @jianba.title }
    end

    assert_redirected_to jianba_path(assigns(:jianba))
  end

  test "should show jianba" do
    get :show, id: @jianba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jianba
    assert_response :success
  end

  test "should update jianba" do
    patch :update, id: @jianba, jianba: { author: @jianba.author, date: @jianba.date, link: @jianba.link, title: @jianba.title }
    assert_redirected_to jianba_path(assigns(:jianba))
  end

  test "should destroy jianba" do
    assert_difference('Jianba.count', -1) do
      delete :destroy, id: @jianba
    end

    assert_redirected_to jianbas_path
  end
end
