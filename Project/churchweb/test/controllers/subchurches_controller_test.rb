require 'test_helper'

class SubchurchesControllerTest < ActionController::TestCase
  setup do
    @subchurch = subchurches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subchurches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subchurch" do
    assert_difference('Subchurch.count') do
      post :create, subchurch: { id_no: @subchurch.id_no, subchurch_address: @subchurch.subchurch_address, subchurch_name: @subchurch.subchurch_name, subchurch_phone_no: @subchurch.subchurch_phone_no }
    end

    assert_redirected_to subchurch_path(assigns(:subchurch))
  end

  test "should show subchurch" do
    get :show, id: @subchurch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subchurch
    assert_response :success
  end

  test "should update subchurch" do
    patch :update, id: @subchurch, subchurch: { id_no: @subchurch.id_no, subchurch_address: @subchurch.subchurch_address, subchurch_name: @subchurch.subchurch_name, subchurch_phone_no: @subchurch.subchurch_phone_no }
    assert_redirected_to subchurch_path(assigns(:subchurch))
  end

  test "should destroy subchurch" do
    assert_difference('Subchurch.count', -1) do
      delete :destroy, id: @subchurch
    end

    assert_redirected_to subchurches_path
  end
end
