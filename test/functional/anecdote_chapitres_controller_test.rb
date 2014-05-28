require 'test_helper'

class AnecdoteChapitresControllerTest < ActionController::TestCase
  setup do
    @anecdote_chapitre = anecdote_chapitres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anecdote_chapitres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anecdote_chapitre" do
    assert_difference('AnecdoteChapitre.count') do
      post :create, anecdote_chapitre: { anecdote_id: @anecdote_chapitre.anecdote_id, chapitre_id: @anecdote_chapitre.chapitre_id }
    end

    assert_redirected_to anecdote_chapitre_path(assigns(:anecdote_chapitre))
  end

  test "should show anecdote_chapitre" do
    get :show, id: @anecdote_chapitre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anecdote_chapitre
    assert_response :success
  end

  test "should update anecdote_chapitre" do
    put :update, id: @anecdote_chapitre, anecdote_chapitre: { anecdote_id: @anecdote_chapitre.anecdote_id, chapitre_id: @anecdote_chapitre.chapitre_id }
    assert_redirected_to anecdote_chapitre_path(assigns(:anecdote_chapitre))
  end

  test "should destroy anecdote_chapitre" do
    assert_difference('AnecdoteChapitre.count', -1) do
      delete :destroy, id: @anecdote_chapitre
    end

    assert_redirected_to anecdote_chapitres_path
  end
end
