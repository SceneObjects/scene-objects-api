json.extract! @scene_object, :id, :type, :locked, :texture_type, :texture_url, :hidden, :name, :created_at, :updated_at

json.position do
  [scene_object.position_x, scene_object.position_y, scene_object.position_z]
end

json.rotation do
  [scene_object.rotation_x, scene_object.rotation_y, scene_object.rotation_z]
end

json.scale do
  [scene_object.scale_x, scene_object.scale_y, scene_object.scale_z]
end

