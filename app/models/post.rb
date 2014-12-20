class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :context, :id, :user_id
  
  validates_presence_of :user
  validates :context, presence: true
  
  
  def self.posts_number(user_id)
     Post.group(:user_id).count[user_id.to_i]
  end
end
