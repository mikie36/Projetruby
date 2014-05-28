require 'test_helper'

class SceneChapitresControllerTest < ActionController::TestCase
  setup do
    @scene_chapitre = scene_chapitres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scene_chapitres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scene_chapitre" do
    assert_difference('SceneChapitre.count') do
      post :create, scene_chapitre: { chapitre_id: @scene_chapitre.chapitre_id, scene_id: @scene_chapitre.scene_id }
    end

    assert_redirected_to scene_chapitre_path(assigns(:scene_chapitre))
  end

  test "should show scene_chapitre" do
    get :show, id: @scene_chapitre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scene_chapitre
    assert_response :success
  end

  test "should update scene_chapitre" do
    put :update, id: @scene_chapitre, scene_chapitre: { chapitre_id: @scene_chapitre.chapitre_id, scene_id: @scene_chapitre.scene_id }
    assert_redirected_to scene_chapitre_path(assigns(:scene_chapitre))
  end

  test "should destroy scene_chapitre" do
    assert_difference('SceneChapitre.count', -1) do
      delete :destroy, id: @scene_chapitre
    end

    assert_redirected_to scene_chapitres_path
  end
end
