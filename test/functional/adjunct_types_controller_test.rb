require 'test_helper'

class AdjunctTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adjunct_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adjunct_type" do
    assert_difference('AdjunctType.count') do
      post :create, :adjunct_type => { }
    end

    assert_redirected_to adjunct_type_path(assigns(:adjunct_type))
  end

  test "should show adjunct_type" do
    get :show, :id => adjunct_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => adjunct_types(:one).to_param
    assert_response :success
  end

  test "should update adjunct_type" do
    put :update, :id => adjunct_types(:one).to_param, :adjunct_type => { }
    assert_redirected_to adjunct_type_path(assigns(:adjunct_type))
  end

  test "should destroy adjunct_type" do
    assert_difference('AdjunctType.count', -1) do
      delete :destroy, :id => adjunct_types(:one).to_param
    end

    assert_redirected_to adjunct_types_path
  end
end
