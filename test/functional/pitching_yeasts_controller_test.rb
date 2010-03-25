require 'test_helper'

class PitchingYeastsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pitching_yeasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pitching_yeast" do
    assert_difference('PitchingYeast.count') do
      post :create, :pitching_yeast => { }
    end

    assert_redirected_to pitching_yeast_path(assigns(:pitching_yeast))
  end

  test "should show pitching_yeast" do
    get :show, :id => pitching_yeasts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pitching_yeasts(:one).to_param
    assert_response :success
  end

  test "should update pitching_yeast" do
    put :update, :id => pitching_yeasts(:one).to_param, :pitching_yeast => { }
    assert_redirected_to pitching_yeast_path(assigns(:pitching_yeast))
  end

  test "should destroy pitching_yeast" do
    assert_difference('PitchingYeast.count', -1) do
      delete :destroy, :id => pitching_yeasts(:one).to_param
    end

    assert_redirected_to pitching_yeasts_path
  end
end
