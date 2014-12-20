class Relationship < ActiveRecord::Base
  attr_accessible :user_id, :followings_id
  belongs_to :user
  belongs_to :followings, :class_name => "User"
  

end
