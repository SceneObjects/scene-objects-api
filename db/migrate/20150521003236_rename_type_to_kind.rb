class RenameTypeToKind < ActiveRecord::Migration
  def change
    rename_column :scene_objects, :type, :kind
  end
end
