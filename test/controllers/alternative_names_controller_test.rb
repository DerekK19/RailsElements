require 'test_helper'

class AlternativeNamesControllerTest < ActionController::TestCase
  setup do
    @alternative_name = alternative_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alternative_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alternative_name" do
    assert_difference('AlternativeName.count') do
      post :create, alternative_name: { name: @alternative_name.name }
    end

    assert_redirected_to alternative_name_path(assigns(:alternative_name))
  end

  test "should show alternative_name" do
    get :show, id: @alternative_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alternative_name
    assert_response :success
  end

  test "should update alternative_name" do
    patch :update, id: @alternative_name, alternative_name: { name: @alternative_name.name }
    assert_redirected_to alternative_name_path(assigns(:alternative_name))
  end

  test "should destroy alternative_name" do
    assert_difference('AlternativeName.count', -1) do
      delete :destroy, id: @alternative_name
    end

    assert_redirected_to alternative_names_path
  end
end
