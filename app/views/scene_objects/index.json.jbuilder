json.array!(@scene_objects) do |scene_object|
  json.extract! scene_object, :id, :type, :locked, :texture_type, :texture_url, :hidden, :name

  json.position do
    [scene_object.position_x, scene_object.position_y, scene_object.position_z]
  end

  json.rotation do
    [scene_object.rotation_x, scene_object.rotation_y, scene_object.rotation_z]
  end

  json.scale do
    [scene_object.scale_x, scene_object.scale_y, scene_object.scale_z]
  end

  json.url scene_object_url(scene_object, format: :json)
end
