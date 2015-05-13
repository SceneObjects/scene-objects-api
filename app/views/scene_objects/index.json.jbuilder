json.array!(@scene_objects) do |scene_object|
  json.extract! scene_object, :id, :type, :locked, :position_x, :position_y, :position_z, :texture_type, :texture_url, :scale_x, :scale_y, :scale_z, :rotation_x, :rotation_y, :rotation_z, :hidden, :name
  json.url scene_object_url(scene_object, format: :json)
end
