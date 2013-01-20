require 'test_helper'

class DonatesControllerTest < ActionController::TestCase
  setup do
    @donate = donates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donate" do
    assert_difference('Donate.count') do
      post :create, donate: {  }
    end

    assert_redirected_to donate_path(assigns(:donate))
  end

  test "should show donate" do
    get :show, id: @donate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donate
    assert_response :success
  end

  test "should update donate" do
    put :update, id: @donate, donate: {  }
    assert_redirected_to donate_path(assigns(:donate))
  end

  test "should destroy donate" do
    assert_difference('Donate.count', -1) do
      delete :destroy, id: @donate
    end

    assert_redirected_to donates_path
  end
end
