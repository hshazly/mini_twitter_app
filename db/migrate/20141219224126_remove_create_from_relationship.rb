class RemoveCreateFromRelationship < ActiveRecord::Migration
  def up
    remove_column :relationships, :create
  end

  def down
    add_column :relationships, :create, :string
  end
end
