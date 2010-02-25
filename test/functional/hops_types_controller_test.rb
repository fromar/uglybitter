require 'test_helper'

class HopsTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hops_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hops_type" do
    assert_difference('HopsType.count') do
      post :create, :hops_type => { }
    end

    assert_redirected_to hops_type_path(assigns(:hops_type))
  end

  test "should show hops_type" do
    get :show, :id => hops_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hops_types(:one).to_param
    assert_response :success
  end

  test "should update hops_type" do
    put :update, :id => hops_types(:one).to_param, :hops_type => { }
    assert_redirected_to hops_type_path(assigns(:hops_type))
  end

  test "should destroy hops_type" do
    assert_difference('HopsType.count', -1) do
      delete :destroy, :id => hops_types(:one).to_param
    end

    assert_redirected_to hops_types_path
  end
end
