require 'test_helper'

class AdjunctAdditionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adjunct_additions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adjunct_addition" do
    assert_difference('AdjunctAddition.count') do
      post :create, :adjunct_addition => { }
    end

    assert_redirected_to adjunct_addition_path(assigns(:adjunct_addition))
  end

  test "should show adjunct_addition" do
    get :show, :id => adjunct_additions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => adjunct_additions(:one).to_param
    assert_response :success
  end

  test "should update adjunct_addition" do
    put :update, :id => adjunct_additions(:one).to_param, :adjunct_addition => { }
    assert_redirected_to adjunct_addition_path(assigns(:adjunct_addition))
  end

  test "should destroy adjunct_addition" do
    assert_difference('AdjunctAddition.count', -1) do
      delete :destroy, :id => adjunct_additions(:one).to_param
    end

    assert_redirected_to adjunct_additions_path
  end
end
