class RemoveFollowedIdFromRelationship < ActiveRecord::Migration
  def up
    remove_column :relationships, :followed_id
  end

  def down
    add_column :relationships, :followed_id, :integer
  end
end
