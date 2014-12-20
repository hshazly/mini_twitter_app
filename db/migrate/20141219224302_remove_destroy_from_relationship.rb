class RemoveDestroyFromRelationship < ActiveRecord::Migration
  def up
    remove_column :relationships, :destroy
  end

  def down
    add_column :relationships, :destroy, :string
  end
end
