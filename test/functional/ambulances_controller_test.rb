require 'test_helper'

class AmbulancesControllerTest < ActionController::TestCase
  setup do
    @ambulance = ambulances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ambulances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ambulance" do
    assert_difference('Ambulance.count') do
      post :create, ambulance: { category: @ambulance.category, display_addr: @ambulance.display_addr, name: @ambulance.name, poi_addr: @ambulance.poi_addr, tel: @ambulance.tel, traffic_info: @ambulance.traffic_info, x: @ambulance.x, y: @ambulance.y }
    end

    assert_redirected_to ambulance_path(assigns(:ambulance))
  end

  test "should show ambulance" do
    get :show, id: @ambulance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ambulance
    assert_response :success
  end

  test "should update ambulance" do
    put :update, id: @ambulance, ambulance: { category: @ambulance.category, display_addr: @ambulance.display_addr, name: @ambulance.name, poi_addr: @ambulance.poi_addr, tel: @ambulance.tel, traffic_info: @ambulance.traffic_info, x: @ambulance.x, y: @ambulance.y }
    assert_redirected_to ambulance_path(assigns(:ambulance))
  end

  test "should destroy ambulance" do
    assert_difference('Ambulance.count', -1) do
      delete :destroy, id: @ambulance
    end

    assert_redirected_to ambulances_path
  end
end
