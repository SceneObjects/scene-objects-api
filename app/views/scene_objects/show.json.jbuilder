json.extract! @scene_object, :id, :kind, :locked, :texture_type, :texture_url, :hidden, :name, :created_at, :updated_at

json.position [@scene_object.position_x, @scene_object.position_y, @scene_object.position_z]
json.rotation [@scene_object.rotation_x, @scene_object.rotation_y, @scene_object.rotation_z]
json.scale [@scene_object.scale_x, @scene_object.scale_y, @scene_object.scale_z]


