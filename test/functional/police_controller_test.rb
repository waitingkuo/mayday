require 'test_helper'

class PoliceControllerTest < ActionController::TestCase
  setup do
    @polouse = police(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:police)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create polouse" do
    assert_difference('Polouse.count') do
      post :create, polouse: { content: @polouse.content, display_addr: @polouse.display_addr, name: @polouse.name, poi_addr: @polouse.poi_addr, traffic_information: @polouse.traffic_information, x: @polouse.x, y: @polouse.y }
    end

    assert_redirected_to polouse_path(assigns(:polouse))
  end

  test "should show polouse" do
    get :show, id: @polouse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @polouse
    assert_response :success
  end

  test "should update polouse" do
    put :update, id: @polouse, polouse: { content: @polouse.content, display_addr: @polouse.display_addr, name: @polouse.name, poi_addr: @polouse.poi_addr, traffic_information: @polouse.traffic_information, x: @polouse.x, y: @polouse.y }
    assert_redirected_to polouse_path(assigns(:polouse))
  end

  test "should destroy polouse" do
    assert_difference('Polouse.count', -1) do
      delete :destroy, id: @polouse
    end

    assert_redirected_to police_path
  end
end
