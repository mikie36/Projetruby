require 'test_helper'

class PersonnagesControllerTest < ActionController::TestCase
  setup do
    @personnage = personnages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personnages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personnage" do
    assert_difference('Personnage.count') do
      post :create, personnage: { nom: @personnage.nom, presnom: @personnage.presnom }
    end

    assert_redirected_to personnage_path(assigns(:personnage))
  end

  test "should show personnage" do
    get :show, id: @personnage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personnage
    assert_response :success
  end

  test "should update personnage" do
    put :update, id: @personnage, personnage: { nom: @personnage.nom, presnom: @personnage.presnom }
    assert_redirected_to personnage_path(assigns(:personnage))
  end

  test "should destroy personnage" do
    assert_difference('Personnage.count', -1) do
      delete :destroy, id: @personnage
    end

    assert_redirected_to personnages_path
  end
end
