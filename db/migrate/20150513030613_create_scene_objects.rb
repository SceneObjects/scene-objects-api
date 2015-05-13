class CreateSceneObjects < ActiveRecord::Migration
  def change
    create_table :scene_objects do |t|
      t.string :type
      t.boolean :locked
      t.float :position_x
      t.float :position_y
      t.float :position_z
      t.string :texture_type
      t.string :texture_url
      t.float :scale_x
      t.float :scale_y
      t.float :scale_z
      t.float :rotation_x
      t.float :rotation_y
      t.float :rotation_z
      t.boolean :hidden
      t.string :name

      t.timestamps null: false
    end
  end
end
