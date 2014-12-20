module RelationshipsHelper

  def following?(user_id)
    Relationship.find_by_user_id_and_followings_id(current_user.id, user_id).present?
  end
  

end
