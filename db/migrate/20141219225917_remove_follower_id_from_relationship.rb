class RemoveFollowerIdFromRelationship < ActiveRecord::Migration
  def up
    remove_column :relationships, :follower_id
  end

  def down
    add_column :relationships, :follower_id, :integer
  end
end
