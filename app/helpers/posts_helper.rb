module PostsHelper

  def get_post_owner(user_id)
     user = User.find_by_id(user_id).email
  end

  def get_posts(user)
    followings = user.followings
    users_ids = []
    users_ids << user.id
    if followings.present?
       followings.each do |following|
           users_ids << following.id
       end
    end
    posts = Post.find(:all, :conditions => {:user_id => users_ids}).sort_by{|post| post[:created_at]}.reverse
    
  end

end
