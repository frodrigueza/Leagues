require 'test_helper'

class GroupInscriptionsControllerTest < ActionController::TestCase
  setup do
    @group_inscription = group_inscriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_inscriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_inscription" do
    assert_difference('GroupInscription.count') do
      post :create, group_inscription: { group_id: @group_inscription.group_id, inscription_id: @group_inscription.inscription_id }
    end

    assert_redirected_to group_inscription_path(assigns(:group_inscription))
  end

  test "should show group_inscription" do
    get :show, id: @group_inscription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_inscription
    assert_response :success
  end

  test "should update group_inscription" do
    patch :update, id: @group_inscription, group_inscription: { group_id: @group_inscription.group_id, inscription_id: @group_inscription.inscription_id }
    assert_redirected_to group_inscription_path(assigns(:group_inscription))
  end

  test "should destroy group_inscription" do
    assert_difference('GroupInscription.count', -1) do
      delete :destroy, id: @group_inscription
    end

    assert_redirected_to group_inscriptions_path
  end
end
