class RemoveDistroyFromRelationship < ActiveRecord::Migration
  def up
    remove_column :relationships, :distroy
  end

  def down
    add_column :relationships, :distroy, :string
  end
end
