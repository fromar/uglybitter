require 'test_helper'

class BrewersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brewers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brewer" do
    assert_difference('Brewer.count') do
      post :create, :brewer => { }
    end

    assert_redirected_to brewer_path(assigns(:brewer))
  end

  test "should show brewer" do
    get :show, :id => brewers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => brewers(:one).to_param
    assert_response :success
  end

  test "should update brewer" do
    put :update, :id => brewers(:one).to_param, :brewer => { }
    assert_redirected_to brewer_path(assigns(:brewer))
  end

  test "should destroy brewer" do
    assert_difference('Brewer.count', -1) do
      delete :destroy, :id => brewers(:one).to_param
    end

    assert_redirected_to brewers_path
  end
end
