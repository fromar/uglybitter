require 'test_helper'

class YeastTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yeast_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yeast_type" do
    assert_difference('YeastType.count') do
      post :create, :yeast_type => { }
    end

    assert_redirected_to yeast_type_path(assigns(:yeast_type))
  end

  test "should show yeast_type" do
    get :show, :id => yeast_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => yeast_types(:one).to_param
    assert_response :success
  end

  test "should update yeast_type" do
    put :update, :id => yeast_types(:one).to_param, :yeast_type => { }
    assert_redirected_to yeast_type_path(assigns(:yeast_type))
  end

  test "should destroy yeast_type" do
    assert_difference('YeastType.count', -1) do
      delete :destroy, :id => yeast_types(:one).to_param
    end

    assert_redirected_to yeast_types_path
  end
end
