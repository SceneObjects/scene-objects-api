require 'test_helper'

class SceneObjectsControllerTest < ActionController::TestCase
  setup do
    @scene_object = scene_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scene_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scene_object" do
    assert_difference('SceneObject.count') do
      post :create, scene_object: { hidden: @scene_object.hidden, locked: @scene_object.locked, name: @scene_object.name, position_x: @scene_object.position_x, position_y: @scene_object.position_y, position_z: @scene_object.position_z, rotation_x: @scene_object.rotation_x, rotation_y: @scene_object.rotation_y, rotation_z: @scene_object.rotation_z, scale_x: @scene_object.scale_x, scale_y: @scene_object.scale_y, scale_z: @scene_object.scale_z, texture_type: @scene_object.texture_type, texture_url: @scene_object.texture_url, type: @scene_object.type }
    end

    assert_redirected_to scene_object_path(assigns(:scene_object))
  end

  test "should show scene_object" do
    get :show, id: @scene_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scene_object
    assert_response :success
  end

  test "should update scene_object" do
    patch :update, id: @scene_object, scene_object: { hidden: @scene_object.hidden, locked: @scene_object.locked, name: @scene_object.name, position_x: @scene_object.position_x, position_y: @scene_object.position_y, position_z: @scene_object.position_z, rotation_x: @scene_object.rotation_x, rotation_y: @scene_object.rotation_y, rotation_z: @scene_object.rotation_z, scale_x: @scene_object.scale_x, scale_y: @scene_object.scale_y, scale_z: @scene_object.scale_z, texture_type: @scene_object.texture_type, texture_url: @scene_object.texture_url, type: @scene_object.type }
    assert_redirected_to scene_object_path(assigns(:scene_object))
  end

  test "should destroy scene_object" do
    assert_difference('SceneObject.count', -1) do
      delete :destroy, id: @scene_object
    end

    assert_redirected_to scene_objects_path
  end
end
