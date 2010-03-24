require 'test_helper'

class MaltTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:malt_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create malt_type" do
    assert_difference('MaltType.count') do
      post :create, :malt_type => { }
    end

    assert_redirected_to malt_type_path(assigns(:malt_type))
  end

  test "should show malt_type" do
    get :show, :id => malt_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => malt_types(:one).to_param
    assert_response :success
  end

  test "should update malt_type" do
    put :update, :id => malt_types(:one).to_param, :malt_type => { }
    assert_redirected_to malt_type_path(assigns(:malt_type))
  end

  test "should destroy malt_type" do
    assert_difference('MaltType.count', -1) do
      delete :destroy, :id => malt_types(:one).to_param
    end

    assert_redirected_to malt_types_path
  end
end
