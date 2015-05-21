# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SceneObject.create!([
  {
    id: 1,
    name: 'Box 1',
    kind: 'Cube', 
    locked: false,
    hidden: false,
    position_x: 0.0,
    position_y: 0.0,
    position_z: 0.0,
    scale_x: 1.0,
    scale_y: 1.0,
    scale_z: 1.0,
    rotation_x: 0.0,
    rotation_y: 0.0,
    rotation_z: 0.0
  },
  {
    id: 2,
    name: 'Ball 1',
    kind: 'Sphere',
    locked: true,
    hidden: false,
    position_x: 1.5,
    position_y: 2.0,
    position_z: 0.0,
    scale_x: 1.0,
    scale_y: 1.0,
    scale_z: 1.0,
    rotation_x: 0.0,
    rotation_y: 0.0,
    rotation_z: 0.0
  }
])
