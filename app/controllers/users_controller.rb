class UsersController < ApplicationController
before_filter :get_posts_number, 
              :get_followings_number, :get_followers_number
  
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by_id(params[:id])
  end
  
  def followers
    @user = User.find_by_id(params[:id])
    @followers = @user.followers
        
    render "followers/show"
  end
  
  def following
    @user = User.find_by_id(params[:id])
    @followings = @user.followings
    
    render "following/show"
  end
  
  private
  def get_posts_number
     @posts_number = Post.posts_number(params[:id])
     @posts_number = 0 if @posts_number.nil? 
  end

  def get_followings_number
     @user = User.find_by_id(params[:id].to_i)
     if @user.present?
        @followings_number = @user.followings.count 
        @followings_number = 0 if @user.followings.nil? 
     end   
  end

  def get_followers_number
     @user = User.find_by_id(params[:id].to_i)
     if @user.present?
        @followers_number = @user.followers.count
        @followers_number = 0 if @user.followers.nil? 
     end   
  end

end
