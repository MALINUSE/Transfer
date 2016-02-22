require 'test_helper'

class PeopleSimsControllerTest < ActionController::TestCase
  setup do
    @people_sim = people_sims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people_sims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create people_sim" do
    assert_difference('PeopleSim.count') do
      post :create, people_sim: { people_id: @people_sim.people_id, sim_carte_id: @people_sim.sim_carte_id }
    end

    assert_redirected_to people_sim_path(assigns(:people_sim))
  end

  test "should show people_sim" do
    get :show, id: @people_sim
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @people_sim
    assert_response :success
  end

  test "should update people_sim" do
    patch :update, id: @people_sim, people_sim: { people_id: @people_sim.people_id, sim_carte_id: @people_sim.sim_carte_id }
    assert_redirected_to people_sim_path(assigns(:people_sim))
  end

  test "should destroy people_sim" do
    assert_difference('PeopleSim.count', -1) do
      delete :destroy, id: @people_sim
    end

    assert_redirected_to people_sims_path
  end
end
