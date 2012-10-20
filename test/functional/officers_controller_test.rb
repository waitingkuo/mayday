require 'test_helper'

class OfficersControllerTest < ActionController::TestCase
  setup do
    @officer = officers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:officers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create officer" do
    assert_difference('Officer.count') do
      post :create, officer: { content: @officer.content, display_addr: @officer.display_addr, name: @officer.name, poi_addr: @officer.poi_addr, traffic_information: @officer.traffic_information, x: @officer.x, y: @officer.y }
    end

    assert_redirected_to officer_path(assigns(:officer))
  end

  test "should show officer" do
    get :show, id: @officer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @officer
    assert_response :success
  end

  test "should update officer" do
    put :update, id: @officer, officer: { content: @officer.content, display_addr: @officer.display_addr, name: @officer.name, poi_addr: @officer.poi_addr, traffic_information: @officer.traffic_information, x: @officer.x, y: @officer.y }
    assert_redirected_to officer_path(assigns(:officer))
  end

  test "should destroy officer" do
    assert_difference('Officer.count', -1) do
      delete :destroy, id: @officer
    end

    assert_redirected_to officers_path
  end
end
