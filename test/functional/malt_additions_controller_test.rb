require 'test_helper'

class MaltAdditionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:malt_additions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create malt_addition" do
    assert_difference('MaltAddition.count') do
      post :create, :malt_addition => { }
    end

    assert_redirected_to malt_addition_path(assigns(:malt_addition))
  end

  test "should show malt_addition" do
    get :show, :id => malt_additions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => malt_additions(:one).to_param
    assert_response :success
  end

  test "should update malt_addition" do
    put :update, :id => malt_additions(:one).to_param, :malt_addition => { }
    assert_redirected_to malt_addition_path(assigns(:malt_addition))
  end

  test "should destroy malt_addition" do
    assert_difference('MaltAddition.count', -1) do
      delete :destroy, :id => malt_additions(:one).to_param
    end

    assert_redirected_to malt_additions_path
  end
end
