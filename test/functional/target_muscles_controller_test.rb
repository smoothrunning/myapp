require 'test_helper'

class TargetMusclesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:target_muscles)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_target_muscle
    assert_difference('TargetMuscle.count') do
      post :create, :target_muscle => { }
    end

    assert_redirected_to target_muscle_path(assigns(:target_muscle))
  end

  def test_should_show_target_muscle
    get :show, :id => target_muscles(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => target_muscles(:one).id
    assert_response :success
  end

  def test_should_update_target_muscle
    put :update, :id => target_muscles(:one).id, :target_muscle => { }
    assert_redirected_to target_muscle_path(assigns(:target_muscle))
  end

  def test_should_destroy_target_muscle
    assert_difference('TargetMuscle.count', -1) do
      delete :destroy, :id => target_muscles(:one).id
    end

    assert_redirected_to target_muscles_path
  end
end
