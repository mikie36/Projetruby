require 'test_helper'

class PersoScenesControllerTest < ActionController::TestCase
  setup do
    @perso_scene = perso_scenes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perso_scenes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perso_scene" do
    assert_difference('PersoScene.count') do
      post :create, perso_scene: { perso_id: @perso_scene.perso_id, scene_id: @perso_scene.scene_id }
    end

    assert_redirected_to perso_scene_path(assigns(:perso_scene))
  end

  test "should show perso_scene" do
    get :show, id: @perso_scene
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perso_scene
    assert_response :success
  end

  test "should update perso_scene" do
    put :update, id: @perso_scene, perso_scene: { perso_id: @perso_scene.perso_id, scene_id: @perso_scene.scene_id }
    assert_redirected_to perso_scene_path(assigns(:perso_scene))
  end

  test "should destroy perso_scene" do
    assert_difference('PersoScene.count', -1) do
      delete :destroy, id: @perso_scene
    end

    assert_redirected_to perso_scenes_path
  end
end
