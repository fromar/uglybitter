require 'test_helper'

class HopsAdditionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hops_additions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hops_addition" do
    assert_difference('HopsAddition.count') do
      post :create, :hops_addition => { }
    end

    assert_redirected_to hops_addition_path(assigns(:hops_addition))
  end

  test "should show hops_addition" do
    get :show, :id => hops_additions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hops_additions(:one).to_param
    assert_response :success
  end

  test "should update hops_addition" do
    put :update, :id => hops_additions(:one).to_param, :hops_addition => { }
    assert_redirected_to hops_addition_path(assigns(:hops_addition))
  end

  test "should destroy hops_addition" do
    assert_difference('HopsAddition.count', -1) do
      delete :destroy, :id => hops_additions(:one).to_param
    end

    assert_redirected_to hops_additions_path
  end
end
