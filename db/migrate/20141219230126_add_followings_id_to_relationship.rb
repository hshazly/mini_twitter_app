class AddFollowingsIdToRelationship < ActiveRecord::Migration
  def change
    add_column :relationships, :followings_id, :integer
  end
end
