require 'test_helper'

class SimCartesControllerTest < ActionController::TestCase
  setup do
    @sim_carte = sim_cartes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sim_cartes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sim_carte" do
    assert_difference('SimCarte.count') do
      post :create, sim_carte: { numero: @sim_carte.numero }
    end

    assert_redirected_to sim_carte_path(assigns(:sim_carte))
  end

  test "should show sim_carte" do
    get :show, id: @sim_carte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sim_carte
    assert_response :success
  end

  test "should update sim_carte" do
    patch :update, id: @sim_carte, sim_carte: { numero: @sim_carte.numero }
    assert_redirected_to sim_carte_path(assigns(:sim_carte))
  end

  test "should destroy sim_carte" do
    assert_difference('SimCarte.count', -1) do
      delete :destroy, id: @sim_carte
    end

    assert_redirected_to sim_cartes_path
  end
end
